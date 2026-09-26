package org.idempierelbr.rtc.service;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;

import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.compiere.util.Trx;
import org.idempierelbr.base.model.MLBRRTCFiscoConfig;
import org.idempierelbr.base.model.MLBRRTCFiscoRequest;
import org.idempierelbr.rtc.client.RTCHttpClient;
import org.idempierelbr.rtc.provider.IRTCFiscoApuracaoProvider;
import org.idempierelbr.rtc.provider.RTCFiscoApuracaoCBSProvider;
import org.idempierelbr.rtc.provider.RTCFiscoApuracaoProviderFactory;
import org.idempierelbr.rtc.provider.RTCFiscoStatus;

/**
 * Acompanha as solicitações abertas até a importação do arquivo.
 *
 * <p>Para cada solicitação, em transação própria:
 * <ol>
 * <li>arquivo já anexado e ainda não importado → importa;
 * <li>URL assinada válida (posta pelo webhook ou por uma consulta anterior)
 *     → baixa, anexa, descarta a URL e confirma; depois importa;
 * <li>URL assinada vencida sem download → {@code EXPIRED};
 * <li>sem URL → consulta a situação na Receita. É o caminho que funciona
 *     mesmo quando o webhook nunca chega; o webhook só encurta a espera.
 * </ol>
 *
 * <p>O arquivo é anexado e confirmado <b>antes</b> da importação: se ela
 * falhar, o dado bruto não se perde e a próxima execução importa do anexo, sem
 * baixar de novo.
 *
 * @author Alan Lescano
 */
public class RTCFiscoPollService {
	private static final CLogger log = CLogger.getCLogger(RTCFiscoPollService.class);

	/** Tempo máximo de processamento da Receita, em minutos */
	private static final int MAX_PROCESSING_MINUTES = 240;

	/** Folga sobre o tempo máximo antes de dar a solicitação por perdida, em minutos */
	private static final int PROCESSING_MARGIN_MINUTES = 30;

	/** Código gravado quando é o LBR, e não a Receita, que encerra a solicitação */
	private static final String ERROR_CODE_TIMEOUT = "LBR-TIMEOUT";

	private final Properties ctx;
	private final RTCHttpClient http;

	private final List<String> messages = new ArrayList<String>();

	private int imported = 0;
	private int waiting = 0;
	private int failed = 0;

	public RTCFiscoPollService(Properties ctx) {
		this.ctx = ctx;
		this.http = new RTCHttpClient(RTCFiscoSysConfig.getHttpTimeoutSeconds(Env.getAD_Client_ID(ctx)));
	}

	/**
	 * Faz a solicitação andar o que puder nesta execução.
	 *
	 * @param force ignora o intervalo mínimo entre consultas e reimporta do
	 *        anexo uma solicitação já importada — para quem roda o processo à
	 *        mão sobre uma solicitação específica
	 */
	public void process(int LBR_RTCFiscoRequest_ID, boolean force) {
		Trx trx = Trx.get(Trx.createTrxName("RTCFiscoPoll"), true);
		String trxName = trx.getTrxName();
		String description = "Solicitação " + LBR_RTCFiscoRequest_ID;

		try {
			MLBRRTCFiscoRequest request = new MLBRRTCFiscoRequest(ctx, LBR_RTCFiscoRequest_ID, trxName);
			MLBRRTCFiscoConfig config = new MLBRRTCFiscoConfig(ctx, request.getLBR_RTCFiscoConfig_ID(), trxName);
			description = describe(config, request);

			if (MLBRRTCFiscoRequest.LBR_RTCFISCOREQSTATUS_Importada.equals(request.getLBR_RTCFiscoReqStatus())
					&& force && request.getAttachedFile() != null) {
				importAttached(config, request, trx, description);
				return;
			}

			if (!request.isOpen()) {
				messages.add(description + ": nada a fazer, a solicitação já terminou ("
						+ request.getLBR_RTCFiscoReqStatus() + ").");
				return;
			}

			IRTCFiscoApuracaoProvider provider = RTCFiscoApuracaoProviderFactory.get(config.getLBR_RTCTaxType(), http);

			// 1. baixado numa execução anterior, mas a importação falhou
			if (MLBRRTCFiscoRequest.LBR_RTCFISCOREQSTATUS_Concluída.equals(request.getLBR_RTCFiscoReqStatus())
					&& request.getAttachedFile() != null && !request.hasValidSignedURL()) {
				importAttached(config, request, trx, description);
				return;
			}

			// 4. ainda sem URL: pergunta à Receita
			if (request.getLBR_SignedURL() == null || request.getLBR_SignedURL().trim().isEmpty()) {
				if (!force && !isTimeToPoll(request)) {
					waiting++;
					return;
				}

				if (!poll(provider, config, request, description)) {
					request.saveEx();
					trx.commit(true);
					return;
				}
			}

			// 3. a URL venceu antes do download
			if (!request.hasValidSignedURL()) {
				request.setExpired();
				request.saveEx();
				trx.commit(true);
				failed++;
				messages.add(description + ": " + request.getLBR_ErrorMsg());
				return;
			}

			// 2. baixa e anexa, e só então importa
			byte[] content = provider.download(config, request.getLBR_SignedURL(),
					RTCFiscoSysConfig.getDownloadMaxBytes(config.getAD_Client_ID()));

			request.attachFile(getFileName(request), content);
			request.clearSignedURL();
			request.setLBR_RTCFiscoReqStatus(MLBRRTCFiscoRequest.LBR_RTCFISCOREQSTATUS_Concluída);
			request.saveEx();
			trx.commit(true);

			importAttached(config, request, trx, description);
		} catch (Exception e) {
			trx.rollback();
			failed++;
			log.log(Level.SEVERE, description + " não pôde ser processada", e);
			messages.add(description + ": " + RTCFiscoImportService.getReason(e));
		} finally {
			trx.close();
		}
	}

	/**
	 * Consulta a situação e aplica o resultado na solicitação (sem gravar).
	 *
	 * @return true se a URL de download está disponível
	 */
	private boolean poll(IRTCFiscoApuracaoProvider provider, MLBRRTCFiscoConfig config,
			MLBRRTCFiscoRequest request, String description) {
		RTCFiscoStatus status = provider.getStatus(config, request.getLBR_Ticket());

		if (status.getState() == null) {
			waiting++;
			messages.add(description + ": a Receita informou um estado desconhecido (" + status.getRawState()
					+ "); nova consulta na próxima execução.");
			request.markPolled();
			return false;
		}

		switch (status.getState()) {
			case CONCLUIDA:
				if (status.getSignedURL() == null) {
					waiting++;
					messages.add(description + ": a Receita deu a solicitação por concluída, mas sem a URL de "
							+ "download; nova consulta na próxima execução.");
					return false;
				}

				request.setDone(status.getSignedURL(), status.getSignedURLExpiresAt());
				return true;

			case ERRO:
				request.setError(status.getErrorCode(), status.getErrorMessage() == null
						? "A Receita encerrou a solicitação com erro, sem informar o motivo." : status.getErrorMessage());
				failed++;
				messages.add(description + ": a Receita encerrou a solicitação com erro"
						+ (status.getErrorCode() == null ? "" : " " + status.getErrorCode())
						+ (status.getErrorMessage() == null ? "." : ": " + status.getErrorMessage()));
				return false;

			default:
				request.setLBR_RTCFiscoReqStatus(status.getState() == RTCFiscoStatus.State.PENDENTE
						? MLBRRTCFiscoRequest.LBR_RTCFISCOREQSTATUS_Pendente
						: MLBRRTCFiscoRequest.LBR_RTCFISCOREQSTATUS_EmProcessamento);

				if (isOverdue(request.getLBR_DateRequested(), new Timestamp(System.currentTimeMillis()))) {
					request.setError(ERROR_CODE_TIMEOUT, "A Receita não concluiu a solicitação em "
							+ (MAX_PROCESSING_MINUTES / 60) + " horas, o prazo máximo que ela mesma estabelece. "
							+ "É preciso abrir uma nova solicitação.");
					failed++;
					messages.add(description + ": " + request.getLBR_ErrorMsg());
				} else {
					waiting++;
				}

				// marca a consulta, para o intervalo mínimo contar a partir dela
				request.markPolled();
				return false;
		}
	}

	private void importAttached(MLBRRTCFiscoConfig config, MLBRRTCFiscoRequest request, Trx trx, String description)
			throws Exception {
		RTCFiscoImportService importService = new RTCFiscoImportService(ctx, trx.getTrxName());

		String summary = importService.importFile(config, request.getLBR_RTCFiscoService(), request,
				request.getAttachedFile());

		request.setImported();
		request.saveEx();
		trx.commit(true);

		imported++;
		messages.add(description + " — " + summary);

		for (String message : importService.getMessages())
			messages.add(description + ": " + message);
	}

	/**
	 * Já está na hora de perguntar de novo? Espera a estimativa da própria
	 * Receita e, depois dela, o intervalo mínimo entre consultas — com um
	 * minuto de tolerância, para o agendador que roda no mesmo intervalo não
	 * pular uma volta.
	 */
	private boolean isTimeToPoll(MLBRRTCFiscoRequest request) {
		long now = System.currentTimeMillis();

		if (request.getLBR_DateRequested() != null && request.getLBR_TEASeconds() > 0
				&& now < request.getLBR_DateRequested().getTime() + request.getLBR_TEASeconds() * 1000L)
			return false;

		// a primeira consulta não espera o intervalo: só a estimativa acima
		if (MLBRRTCFiscoRequest.LBR_RTCFISCOREQSTATUS_Enviada.equals(request.getLBR_RTCFiscoReqStatus()))
			return true;

		int pollMinutes = RTCFiscoSysConfig.getPollMinutes(request.getAD_Client_ID());
		long elapsed = TimeUnit.MILLISECONDS.toMinutes(now - request.getUpdated().getTime());

		return elapsed >= pollMinutes - 1;
	}

	/**
	 * A Receita já passou do próprio prazo de processamento, com folga?
	 */
	public static boolean isOverdue(Timestamp dateRequested, Timestamp now) {
		if (dateRequested == null)
			return false;

		long minutes = TimeUnit.MILLISECONDS.toMinutes(now.getTime() - dateRequested.getTime());

		return minutes > MAX_PROCESSING_MINUTES + PROCESSING_MARGIN_MINUTES;
	}

	private static String getFileName(MLBRRTCFiscoRequest request) {
		String ticket = request.getLBR_Ticket() == null ? String.valueOf(request.getLBR_RTCFiscoRequest_ID())
				: request.getLBR_Ticket().replaceAll("[^A-Za-z0-9._-]", "_");

		return RTCFiscoApuracaoCBSProvider.getServiceLabel(request.getLBR_RTCFiscoService())
				.replace("é", "e") + "_" + ticket + ".json";
	}

	private static String describe(MLBRRTCFiscoConfig config, MLBRRTCFiscoRequest request) {
		return "CNPJ base " + config.getLBR_CNPJBase() + ", "
				+ RTCFiscoApuracaoCBSProvider.getServiceLabel(request.getLBR_RTCFiscoService())
				+ (request.getLBR_Ticket() == null ? "" : ", tíquete " + request.getLBR_Ticket());
	}

	/**
	 * Ocorrências desta execução, na ordem em que aconteceram — quem opera não
	 * lê log de servidor.
	 */
	public List<String> getMessages() {
		return messages;
	}

	public String getSummary() {
		return "Importadas: " + imported + "; aguardando a Receita: " + waiting + "; com erro: " + failed + ".";
	}
}
