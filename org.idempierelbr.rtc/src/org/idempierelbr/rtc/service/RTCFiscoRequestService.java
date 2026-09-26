package org.idempierelbr.rtc.service;

import java.sql.Timestamp;
import java.util.Properties;
import java.util.concurrent.TimeUnit;
import java.util.function.Consumer;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.compiere.util.Trx;
import org.idempierelbr.base.model.MLBRRTCFiscoConfig;
import org.idempierelbr.base.model.MLBRRTCFiscoRequest;
import org.idempierelbr.rtc.client.RTCApiException;
import org.idempierelbr.rtc.client.RTCHttpClient;
import org.idempierelbr.rtc.provider.IRTCFiscoApuracaoProvider;
import org.idempierelbr.rtc.provider.RTCFiscoApuracaoCBSProvider;
import org.idempierelbr.rtc.provider.RTCFiscoApuracaoProviderFactory;
import org.idempierelbr.rtc.provider.RTCFiscoOpenResult;

/**
 * Abre solicitações às APIs de apuração do fisco, respeitando o limite diário
 * da Receita.
 *
 * <p>A solicitação é gravada e confirmada <b>antes</b> da chamada, em
 * transação própria: uma chamada feita é uma chamada gasta do limite, e ela
 * precisa continuar contando mesmo que o processo de quem chamou termine em
 * erro e desfaça a sua transação.
 *
 * @author Alan Lescano
 */
public class RTCFiscoRequestService {
	private static final CLogger log = CLogger.getCLogger(RTCFiscoRequestService.class);

	/** Janela máxima da consulta incremental da Receita, em dias */
	public static final int INCREMENTAL_WINDOW_DAYS = 8;

	private final Properties ctx;
	private final RTCHttpClient http;

	public RTCFiscoRequestService(Properties ctx) {
		this.ctx = ctx;
		this.http = new RTCHttpClient(RTCFiscoSysConfig.getHttpTimeoutSeconds(Env.getAD_Client_ID(ctx)));
	}

	/**
	 * Abre a solicitação do serviço para a configuração.
	 *
	 * @return a solicitação gravada, já com o tíquete
	 * @throws AdempiereException com o motivo, se a abertura for recusada pelo
	 *         LBR ou pela Receita — neste caso a solicitação fica gravada em
	 *         erro, para contar no limite do dia
	 */
	public MLBRRTCFiscoRequest open(MLBRRTCFiscoConfig config, String service) {
		checkImportable(service);

		IRTCFiscoApuracaoProvider provider = RTCFiscoApuracaoProviderFactory.get(config.getLBR_RTCTaxType(), http);

		MLBRRTCFiscoRequest pending = MLBRRTCFiscoRequest.getOpen(ctx, config.getLBR_RTCFiscoConfig_ID(), service, null);

		if (pending != null)
			throw new AdempiereException("Já há uma solicitação de " + label(service) + " em andamento (tíquete "
					+ (pending.getLBR_Ticket() == null ? "ainda não recebido" : pending.getLBR_Ticket())
					+ "). Aguarde a importação dela antes de abrir outra.");

		int maxPerDay = RTCFiscoSysConfig.getMaxOpenPerDay(config.getAD_Client_ID());
		int openedToday = MLBRRTCFiscoRequest.countOpenedToday(ctx, config.getLBR_RTCFiscoConfig_ID(), service, null);

		if (openedToday >= maxPerDay)
			throw new AdempiereException("Limite diário atingido: já foram " + openedToday + " solicitações de "
					+ label(service) + " hoje, e a Receita aceita " + maxPerDay + " por dia.");

		int requestID = create(config, service);

		RTCFiscoOpenResult result;

		try {
			result = provider.open(config, service, config.getWebhookURL());
		} catch (RuntimeException e) {
			String errorCode = e instanceof RTCApiException ? ((RTCApiException) e).getErrorCode() : null;

			try {
				update(requestID, request -> request.setError(errorCode, e.getLocalizedMessage()));
			} catch (RuntimeException e2) {
				// o motivo que interessa a quem opera é o da abertura
				log.log(Level.SEVERE, "Não foi possível registrar o erro na solicitação " + requestID, e2);
			}

			throw e;
		}

		return update(requestID, request -> {
			request.setLBR_Ticket(result.getTicket());
			request.setLBR_TEASeconds(result.getEstimatedSeconds());
		});
	}

	/**
	 * Aviso sobre a janela incremental da Receita, se houver o que avisar.
	 *
	 * <p>A Receita devolve só o que mudou desde a consulta anterior, limitado
	 * a {@value #INCREMENTAL_WINDOW_DAYS} dias. Passar disso perde as
	 * alterações mais antigas em definitivo.
	 *
	 * @param lastImported abertura da última solicitação importada, ou nulo
	 * @return o aviso, ou nulo se a última importação é recente
	 */
	public static String getWindowWarning(Timestamp lastImported, Timestamp now, int warnDays, String serviceLabel) {
		if (lastImported == null)
			return "Primeira importação de " + serviceLabel + ": a Receita devolve as inclusões e atualizações "
					+ "desde o 1º dia do mês corrente.";

		long days = TimeUnit.MILLISECONDS.toDays(now.getTime() - lastImported.getTime());

		if (days >= INCREMENTAL_WINDOW_DAYS)
			return "Atenção: a última importação de " + serviceLabel + " foi há " + days + " dias. A Receita só "
					+ "devolve os últimos " + INCREMENTAL_WINDOW_DAYS + " dias; alterações anteriores podem não "
					+ "ter sido baixadas.";

		if (days >= warnDays)
			return "A última importação de " + serviceLabel + " foi há " + days + " dias. Passando de "
					+ INCREMENTAL_WINDOW_DAYS + " dias, a Receita deixa de devolver as alterações mais antigas.";

		return null;
	}

	/** Aviso da janela para a configuração e o serviço, ou nulo */
	public String getWindowWarning(MLBRRTCFiscoConfig config, String service) {
		Timestamp lastImported = MLBRRTCFiscoRequest.getLastImportedDate(ctx, config.getLBR_RTCFiscoConfig_ID(),
				service, null);

		return getWindowWarning(lastImported, new Timestamp(System.currentTimeMillis()),
				RTCFiscoSysConfig.getWindowWarnDays(config.getAD_Client_ID()), label(service));
	}

	/**
	 * Só abre o que o LBR sabe importar: abrir outra coisa gastaria uma das
	 * chamadas do dia com um arquivo que ficaria sem destino.
	 */
	public static void checkImportable(String service) {
		if (MLBRRTCFiscoRequest.LBR_RTCFISCOSERVICE_Débitos.equals(service)
				|| MLBRRTCFiscoRequest.LBR_RTCFISCOSERVICE_Créditos.equals(service)
				|| MLBRRTCFiscoRequest.LBR_RTCFISCOSERVICE_Pagamentos.equals(service)
				|| MLBRRTCFiscoRequest.LBR_RTCFISCOSERVICE_Recolhimentos.equals(service))
			return;

		throw new AdempiereException("O LBR não sabe importar o serviço de apuração " + label(service) + ".");
	}

	private static String label(String service) {
		return RTCFiscoApuracaoCBSProvider.getServiceLabel(service);
	}

	private int create(MLBRRTCFiscoConfig config, String service) {
		Trx trx = Trx.get(Trx.createTrxName("RTCFiscoOpen"), true);

		try {
			MLBRRTCFiscoRequest request = MLBRRTCFiscoRequest.create(config, service, trx.getTrxName());
			request.saveEx();
			trx.commit(true);

			return request.getLBR_RTCFiscoRequest_ID();
		} catch (Exception e) {
			trx.rollback();
			throw new AdempiereException("Não foi possível gravar a solicitação: " + e.getLocalizedMessage(), e);
		} finally {
			trx.close();
		}
	}

	private MLBRRTCFiscoRequest update(int requestID, Consumer<MLBRRTCFiscoRequest> change) {
		Trx trx = Trx.get(Trx.createTrxName("RTCFiscoOpen"), true);

		try {
			MLBRRTCFiscoRequest request = new MLBRRTCFiscoRequest(ctx, requestID, trx.getTrxName());
			change.accept(request);
			request.saveEx();
			trx.commit(true);

			return request;
		} catch (Exception e) {
			trx.rollback();
			throw new AdempiereException("Não foi possível atualizar a solicitação: " + e.getLocalizedMessage(), e);
		} finally {
			trx.close();
		}
	}
}
