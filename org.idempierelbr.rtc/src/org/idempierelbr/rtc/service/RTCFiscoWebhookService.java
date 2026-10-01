package org.idempierelbr.rtc.service;

import java.util.Properties;
import java.util.logging.Level;

import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.compiere.util.Trx;
import org.idempierelbr.base.model.MLBRRTCFiscoConfig;
import org.idempierelbr.base.model.MLBRRTCFiscoRequest;
import org.idempierelbr.rtc.json.RTCJson;
import org.idempierelbr.rtc.util.RTCUtil;

import com.google.gson.JsonObject;

/**
 * Recebe o aviso de conclusão que a Receita manda para o {@code urlRetorno}.
 *
 * <p>O segredo no fim do caminho identifica a configuração — e com ela o
 * tenant. Segredo desconhecido recebe 404, sem dizer mais nada.
 *
 * <p>A resposta 2xx só sai depois de gravado o que chegou: qualquer outro
 * status faz a Receita reenviar. Nada da URL assinada vai para o log; só o
 * tíquete, o horário e o resultado.
 *
 * <p>O webhook apenas encurta a espera. Se ele falhar ou nunca chegar, a
 * consulta de situação feita por {@link RTCFiscoPollService} obtém a mesma
 * URL.
 *
 * @author Alan Lescano
 */
public class RTCFiscoWebhookService {
	private static final CLogger log = CLogger.getCLogger(RTCFiscoWebhookService.class);

	public static final int HTTP_OK = 200;
	public static final int HTTP_BAD_REQUEST = 400;
	public static final int HTTP_NOT_FOUND = 404;
	public static final int HTTP_SERVER_ERROR = 500;

	private final Properties ctx;

	public RTCFiscoWebhookService(Properties ctx) {
		this.ctx = ctx;
	}

	/**
	 * Validação do endereço que a Receita faz com HEAD na abertura da
	 * solicitação. Sem 200, ela cancela a solicitação.
	 *
	 * @return o status HTTP da resposta
	 */
	public int validate(String secret) {
		MLBRRTCFiscoConfig config = findConfig(secret);

		if (config == null) {
			log.warning("Webhook RTC: validação (HEAD) com segredo desconhecido");
			return HTTP_NOT_FOUND;
		}

		return HTTP_OK;
	}

	/**
	 * Aviso de conclusão da solicitação.
	 *
	 * @return o status HTTP da resposta
	 */
	public int receive(String secret, String body) {
		MLBRRTCFiscoConfig config = findConfig(secret);

		if (config == null) {
			log.warning("Webhook RTC: aviso com segredo desconhecido");
			return HTTP_NOT_FOUND;
		}

		JsonObject json = RTCJson.parseObject(body);

		if (json == null) {
			log.warning("Webhook RTC: aviso sem JSON válido");
			return HTTP_BAD_REQUEST;
		}

		String ticket = RTCJson.getString(json, "tiqueteSolicitacao");
		String signedURL = RTCJson.getString(json, "urlAssinada");
		String errorCode = RTCJson.getString(json, "codigoErro");
		String errorMessage = RTCJson.getString(json, "mensagemErro");

		if (ticket == null) {
			// o aviso de erro, pela documentação, pode vir sem o tíquete: não há
			// a que solicitação ligá-lo, e a consulta de situação vai trazer o
			// mesmo erro. Aceitar evita que a Receita reenvie à toa.
			if (errorCode != null || errorMessage != null) {
				log.warning("Webhook RTC: aviso de erro sem tíquete (" + errorCode + "); fica para a consulta de situação");
				return HTTP_OK;
			}

			log.warning("Webhook RTC: aviso sem tíquete");
			return HTTP_BAD_REQUEST;
		}

		if (signedURL == null && errorCode == null && errorMessage == null) {
			log.warning("Webhook RTC: aviso do tíquete " + ticket + " sem URL e sem erro");
			return HTTP_BAD_REQUEST;
		}

		// daqui em diante tudo acontece no tenant da configuração
		Env.setContext(ctx, Env.AD_CLIENT_ID, config.getAD_Client_ID());
		Env.setContext(ctx, Env.AD_ORG_ID, 0);

		Trx trx = Trx.get(Trx.createTrxName("RTCFiscoWebhook"), true);

		try {
			MLBRRTCFiscoRequest request = MLBRRTCFiscoRequest.getByTicket(ctx, config.getAD_Client_ID(), ticket,
					trx.getTrxName());

			// tíquete de outra configuração é tratado como desconhecido. O 404
			// também cobre o caso raro de o aviso chegar antes de o tíquete ser
			// gravado: a Receita reenvia.
			if (request == null || request.getLBR_RTCFiscoConfig_ID() != config.getLBR_RTCFiscoConfig_ID()) {
				log.warning("Webhook RTC: tíquete " + ticket + " não encontrado");
				return HTTP_NOT_FOUND;
			}

			// aviso repetido, ou chegou depois de a consulta de situação resolver
			if (!request.isOpen() || !isWaitingForURL(request)) {
				log.info("Webhook RTC: tíquete " + ticket + " já tratado (" + request.getLBR_RTCFiscoReqStatus() + ")");
				return HTTP_OK;
			}

			if (signedURL != null) {
				request.setDone(signedURL, RTCUtil.parseDateTimeOrNull(RTCJson.getString(json, "urlAssinadaExpiraEm")));
			} else {
				request.setError(errorCode, errorMessage == null
						? "A Receita encerrou a solicitação com erro, sem informar o motivo." : errorMessage);
			}

			request.saveEx();
			trx.commit(true);

			log.info("Webhook RTC: tíquete " + ticket + " → " + request.getLBR_RTCFiscoReqStatus());

			return HTTP_OK;
		} catch (Exception e) {
			trx.rollback();
			log.log(Level.SEVERE, "Webhook RTC: não foi possível gravar o aviso do tíquete " + ticket, e);
			return HTTP_SERVER_ERROR;
		} finally {
			trx.close();
		}
	}

	/**
	 * Configuração dona do segredo, comparando em tempo constante com todas.
	 */
	MLBRRTCFiscoConfig findConfig(String secret) {
		if (secret == null || secret.trim().isEmpty())
			return null;

		MLBRRTCFiscoConfig found = null;

		for (MLBRRTCFiscoConfig config : MLBRRTCFiscoConfig.getActiveAllTenants(ctx, null)) {
			// sem interromper no primeiro acerto, para o tempo não variar com a posição
			if (RTCUtil.secretEquals(config.getLBR_WebhookSecret(), secret.trim()) && found == null)
				found = config;
		}

		return found;
	}

	/** Ainda sem URL de download e sem arquivo baixado */
	private static boolean isWaitingForURL(MLBRRTCFiscoRequest request) {
		return !MLBRRTCFiscoRequest.LBR_RTCFISCOREQSTATUS_Concluída.equals(request.getLBR_RTCFiscoReqStatus());
	}
}
