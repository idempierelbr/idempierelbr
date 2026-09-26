package org.idempierelbr.rtc.provider;

import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;

import org.adempiere.exceptions.AdempiereException;
import org.idempierelbr.base.model.MLBRRTCFiscoConfig;
import org.idempierelbr.base.model.MLBRRTCFiscoRequest;
import org.idempierelbr.rtc.client.RTCApiException;
import org.idempierelbr.rtc.client.RTCHttpClient;
import org.idempierelbr.rtc.client.RTCHttpResponse;
import org.idempierelbr.rtc.client.ReceitaIntegraTokenService;
import org.idempierelbr.rtc.json.RTCJson;
import org.idempierelbr.rtc.util.RTCUtil;

import com.google.gson.JsonObject;

/**
 * APIs assíncronas de apuração da CBS da Receita Federal, versão 2
 * (documentação de 03/09/2026, revisada em 17/09/2026).
 *
 * <pre>
 * Abertura  POST {base}/{servico}/{cnpj8}     { "urlRetorno": ... } → 201 { tiqueteSolicitacao, tEASegundos }
 * Situação  GET  {base}/situacao/{tiquete}   → { estado, urlAssinada, urlAssinadaExpiraEm, codigoErro, mensagemErro }
 * </pre>
 *
 * @author Alan Lescano
 */
public class RTCFiscoApuracaoCBSProvider implements IRTCFiscoApuracaoProvider {

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

		if (!response.isSuccess())
			throw RTCApiException.of(operation, response);

		JsonObject json = RTCJson.parseObject(response.getBodyAsString());
		String ticket = json == null ? null : RTCJson.getString(json, "tiqueteSolicitacao");

		if (ticket == null)
			throw new AdempiereException("A Receita Federal aceitou a " + operation
					+ " (HTTP " + response.getStatus() + "), mas não devolveu o tíquete.");

		return new RTCFiscoOpenResult(ticket, RTCUtil.parseSeconds(RTCJson.getString(json, "tEASegundos")));
	}

	@Override
	public RTCFiscoStatus getStatus(MLBRRTCFiscoConfig config, String ticket) {
		String url = config.getAPIBaseURL() + "/situacao/"
				+ URLEncoder.encode(ticket, StandardCharsets.UTF_8).replace("+", "%20");

		RTCHttpResponse response = http.getJson(url, token(config));

		if (response.getStatus() == 401) {
			ReceitaIntegraTokenService.invalidate(config.getLBR_RTCFiscoConfig_ID());
			response = http.getJson(url, token(config));
		}

		JsonObject json = RTCJson.parseObject(response.getBodyAsString());
		String rawState = json == null ? null : RTCJson.getString(json, "estado");

		// a Receita devolve estado=ERRO também com HTTP 4xx/5xx: se o estado
		// veio, é ele que vale
		if (rawState == null) {
			if (!response.isSuccess())
				throw RTCApiException.of("consulta da situação do tíquete " + ticket, response);

			throw new AdempiereException("A Receita Federal respondeu à consulta da situação do tíquete " + ticket
					+ " sem informar o estado.");
		}

		return new RTCFiscoStatus(RTCFiscoStatus.State.of(rawState), rawState,
				RTCJson.getString(json, "urlAssinada"),
				RTCUtil.parseDateTimeOrNull(RTCJson.getString(json, "urlAssinadaExpiraEm")),
				RTCJson.getString(json, "codigoErro"),
				RTCJson.getString(json, "mensagemErro"));
	}

	@Override
	public byte[] download(MLBRRTCFiscoConfig config, String signedURL, long maxBytes) {
		return http.download(signedURL, maxBytes);
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
