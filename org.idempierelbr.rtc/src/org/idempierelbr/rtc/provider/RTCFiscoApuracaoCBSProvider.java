package org.idempierelbr.rtc.provider;

import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.time.ZoneId;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.util.CLogger;
import org.idempierelbr.base.model.MLBRRTCFiscoConfig;
import org.idempierelbr.base.model.MLBRRTCFiscoRequest;
import org.idempierelbr.rtc.client.RTCApiException;
import org.idempierelbr.rtc.client.RTCHttpClient;
import org.idempierelbr.rtc.client.RTCHttpResponse;
import org.idempierelbr.rtc.client.RTCQuota;
import org.idempierelbr.rtc.client.ReceitaIntegraTokenService;
import org.idempierelbr.rtc.json.RTCJson;
import org.idempierelbr.rtc.util.RTCUtil;

import com.google.gson.JsonObject;

/**
 * APIs assíncronas de apuração da CBS da Receita Federal, versão 2
 * (documentação de 03/09/2026, revisada em 14/10/2026).
 *
 * <pre>
 * Abertura  POST {base}/{servico}/{cnpj8}     { "urlRetorno": ... } → 201 { tiqueteSolicitacao, tEASegundos }
 * Situação  GET  {base}/situacao/{tiquete}   → { situacao, codigoErro, mensagemErro }
 * Link      GET  {base}/download/{tiquete}   → { urlAssinada, urlAssinadaExpiraEm }
 * </pre>
 *
 * <p>Cada rota tem a sua cota diária, não documentada, que o gateway informa
 * nos cabeçalhos {@code RateLimit-*}; ela vai para o log a cada chamada.
 *
 * @author Alan Lescano
 */
public class RTCFiscoApuracaoCBSProvider implements IRTCFiscoApuracaoProvider {
	private static final CLogger log = CLogger.getCLogger(RTCFiscoApuracaoCBSProvider.class);

	private final RTCHttpClient http;

	public RTCFiscoApuracaoCBSProvider(RTCHttpClient http) {
		this.http = http;
	}

	@Override
	public RTCFiscoOpenResult open(MLBRRTCFiscoConfig config, String service, String callbackURL) {
		String url = config.getAPIBaseURL() + "/" + getServicePath(service) + "/" + config.getLBR_CNPJBase();

		JsonObject body = new JsonObject();
		body.addProperty("urlRetorno", callbackURL);

		RTCHttpResponse response = http.postJson(url, token(config), body.toString());

		// token recusado antes de vencer: é o gateway que barra, a solicitação
		// não chegou a ser aberta — vale uma nova tentativa com token novo
		if (response.getStatus() == 401) {
			ReceitaIntegraTokenService.invalidate(config.getLBR_RTCFiscoConfig_ID());
			response = http.postJson(url, token(config), body.toString());
		}

		String operation = "abertura da solicitação de " + getServiceLabel(service);

		logQuota(operation + " do CNPJ base " + config.getLBR_CNPJBase(), response);

		if (!response.isSuccess())
			throw RTCApiException.of(operation, response);

		JsonObject json = RTCJson.parseObject(response.getBodyAsString());
		String ticket = json == null ? null : RTCJson.getString(json, "tiqueteSolicitacao");

		if (ticket == null)
			throw new AdempiereException("A Receita Federal aceitou a " + operation
					+ " (HTTP " + response.getStatus() + "), mas não devolveu o tíquete.");

		return new RTCFiscoOpenResult(ticket, RTCUtil.parseSeconds(RTCJson.getString(json, "tEASegundos")),
				response.getQuota());
	}

	@Override
	public RTCFiscoStatus getStatus(MLBRRTCFiscoConfig config, String ticket) {
		return parseStatus(ticket, getByTicket(config, "situacao", ticket));
	}

	/**
	 * Interpreta a resposta da consulta da situação.
	 *
	 * @throws RTCApiException se a Receita recusou a consulta sem informar a
	 *         situação — a solicitação continua em aberto
	 */
	public static RTCFiscoStatus parseStatus(String ticket, RTCHttpResponse response) {
		JsonObject json = RTCJson.parseObject(response.getBodyAsString());
		String rawState = json == null ? null : RTCJson.getString(json, "situacao");

		// a Receita devolve situacao=ERRO também com HTTP 4xx/5xx: se a situação
		// veio, é ela que vale
		if (rawState == null) {
			String errorCode = json == null ? null : RTCJson.getString(json, "codigoErro");

			// tíquete que deixou de existir (SOLICITACAO_NAO_ENCONTRADA). Só com
			// o codigoErro: o 404 do gateway sem ele ("no Route matched") é
			// endereço errado na configuração, e não tíquete perdido
			if (response.getStatus() == 404 && errorCode != null)
				return RTCFiscoStatus.notFound(errorCode, RTCJson.getString(json, "mensagemErro"), response.getQuota());

			if (!response.isSuccess())
				throw RTCApiException.of("consulta da situação do tíquete " + ticket, response);

			throw new AdempiereException("A Receita Federal respondeu à consulta da situação do tíquete " + ticket
					+ " sem informar a situação.");
		}

		return new RTCFiscoStatus(RTCFiscoStatus.State.of(rawState), rawState,
				RTCJson.getString(json, "codigoErro"),
				RTCJson.getString(json, "mensagemErro"),
				response.getQuota());
	}

	@Override
	public RTCFiscoDownloadLink getDownloadLink(MLBRRTCFiscoConfig config, String ticket) {
		return parseDownloadLink(ticket, getByTicket(config, "download", ticket));
	}

	/**
	 * Interpreta a resposta do pedido de link.
	 *
	 * @return o link; indisponível no 404 ({@code ARQUIVO_INDISPONIVEL}:
	 *         inexistente, ainda não concluído ou já baixado)
	 * @throws RTCApiException se a Receita recusou o pedido por outro motivo
	 */
	public static RTCFiscoDownloadLink parseDownloadLink(String ticket, RTCHttpResponse response) {
		if (response.getStatus() == 404)
			return RTCFiscoDownloadLink.unavailable(response.getQuota());

		String operation = "consulta do link de download do tíquete " + ticket;

		if (!response.isSuccess())
			throw RTCApiException.of(operation, response);

		JsonObject json = RTCJson.parseObject(response.getBodyAsString());
		String signedURL = json == null ? null : RTCJson.getString(json, "urlAssinada");

		if (signedURL == null)
			throw new AdempiereException("A Receita Federal respondeu à " + operation + " sem informar o link.");

		return new RTCFiscoDownloadLink(signedURL,
				RTCUtil.parseDateTimeOrNull(RTCJson.getString(json, "urlAssinadaExpiraEm")), response.getQuota());
	}

	@Override
	public byte[] download(MLBRRTCFiscoConfig config, String signedURL, long maxBytes) {
		return http.download(signedURL, maxBytes);
	}

	private RTCHttpResponse getByTicket(MLBRRTCFiscoConfig config, String resource, String ticket) {
		String url = config.getAPIBaseURL() + "/" + resource + "/"
				+ URLEncoder.encode(ticket, StandardCharsets.UTF_8).replace("+", "%20");

		RTCHttpResponse response = http.getJson(url, token(config));

		if (response.getStatus() == 401) {
			ReceitaIntegraTokenService.invalidate(config.getLBR_RTCFiscoConfig_ID());
			response = http.getJson(url, token(config));
		}

		logQuota(resource + " do tíquete " + ticket, response);

		return response;
	}

	/**
	 * Registra a cota que sobrou na rota. É o único jeito de conhecer os
	 * limites, que a Receita não documenta; a cota esgotada vai como aviso.
	 */
	private static void logQuota(String operation, RTCHttpResponse response) {
		RTCQuota quota = response.getQuota();

		if (quota == null)
			return;

		Level level = quota.getRemaining() == 0 ? Level.WARNING : Level.INFO;

		if (log.isLoggable(level))
			log.log(level, "Receita, " + operation + ": HTTP " + response.getStatus() + "; cota "
					+ quota.describe(response.getReceivedAt(), ZoneId.systemDefault()));
	}

	private String token(MLBRRTCFiscoConfig config) {
		return ReceitaIntegraTokenService.getToken(config, http);
	}

	/** Trecho do caminho de cada serviço na API */
	static String getServicePath(String service) {
		if (MLBRRTCFiscoRequest.LBR_RTCFISCOSERVICE_Débitos.equals(service))
			return "debitos";
		if (MLBRRTCFiscoRequest.LBR_RTCFISCOSERVICE_Créditos.equals(service))
			return "creditos";
		if (MLBRRTCFiscoRequest.LBR_RTCFISCOSERVICE_Pagamentos.equals(service))
			return "pagamentos";
		if (MLBRRTCFiscoRequest.LBR_RTCFISCOSERVICE_Recolhimentos.equals(service))
			return "recolhimentos";

		throw new AdempiereException("Serviço de apuração desconhecido: " + service);
	}

	/** Nome do serviço como o usuário o conhece */
	public static String getServiceLabel(String service) {
		if (MLBRRTCFiscoRequest.LBR_RTCFISCOSERVICE_Débitos.equals(service))
			return "débitos";
		if (MLBRRTCFiscoRequest.LBR_RTCFISCOSERVICE_Créditos.equals(service))
			return "créditos";
		if (MLBRRTCFiscoRequest.LBR_RTCFISCOSERVICE_Pagamentos.equals(service))
			return "pagamentos";
		if (MLBRRTCFiscoRequest.LBR_RTCFISCOSERVICE_Recolhimentos.equals(service))
			return "recolhimentos";

		return String.valueOf(service);
	}
}
