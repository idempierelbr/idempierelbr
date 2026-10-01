package org.idempierelbr.rtc.client;

import java.nio.charset.StandardCharsets;
import java.sql.Timestamp;
import java.util.Base64;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import org.adempiere.exceptions.AdempiereException;
import org.idempierelbr.base.model.MLBRRTCFiscoConfig;
import org.idempierelbr.rtc.json.RTCJson;

import com.google.gson.JsonObject;

/**
 * Token OAuth 2.0 (client credentials) do Receita Integra, em cache por
 * configuração.
 *
 * <p>O token vale 60 minutos; é renovado 5 minutos antes para que nenhuma
 * chamada saia com ele vencendo no meio do caminho. A troca da credencial na
 * configuração invalida o cache sozinha, porque a entrada guarda o instante da
 * última alteração do registro.
 *
 * @author Alan Lescano
 */
public final class ReceitaIntegraTokenService {

	/** Validade assumida quando a resposta não traz {@code expires_in}, em segundos */
	private static final long DEFAULT_EXPIRES_IN_SECONDS = 3600;

	/** Antecedência da renovação em relação ao vencimento, em segundos */
	private static final long RENEW_BEFORE_SECONDS = 300;

	private static final Map<Integer, CachedToken> cache = new ConcurrentHashMap<Integer, CachedToken>();

	private ReceitaIntegraTokenService() {
	}

	/**
	 * Token válido para a configuração, do cache ou recém-obtido.
	 *
	 * @throws RTCApiException se a Receita recusar a credencial
	 */
	public static String getToken(MLBRRTCFiscoConfig config, RTCHttpClient http) {
		CachedToken cached = cache.get(config.getLBR_RTCFiscoConfig_ID());

		if (cached != null && cached.isValidFor(config))
			return cached.token;

		CachedToken fresh = requestToken(config, http);
		cache.put(config.getLBR_RTCFiscoConfig_ID(), fresh);

		return fresh.token;
	}

	/**
	 * Descarta o token da configuração — para quando a Receita responder 401
	 * com um token que ainda parecia válido.
	 */
	public static void invalidate(int LBR_RTCFiscoConfig_ID) {
		cache.remove(LBR_RTCFiscoConfig_ID);
	}

	private static CachedToken requestToken(MLBRRTCFiscoConfig config, RTCHttpClient http) {
		String clientID = config.getLBR_ClientID();
		String clientSecret = config.getLBR_ClientSecret();

		if (clientID == null || clientID.trim().isEmpty() || clientSecret == null || clientSecret.trim().isEmpty())
			throw new AdempiereException("Informe o Client ID e o Client Secret do Receita Integra na configuração "
					+ describe(config) + ".");

		String credentials = Base64.getEncoder().encodeToString(
				(clientID.trim() + ":" + clientSecret.trim()).getBytes(StandardCharsets.UTF_8));

		RTCHttpResponse response = http.postForm(config.getTokenURL(), credentials, "grant_type=client_credentials");

		if (!response.isSuccess()) {
			RTCApiException e = RTCApiException.of("credencial do Receita Integra da configuração "
					+ describe(config), response);

			if (response.getStatus() == 400 || response.getStatus() == 401)
				throw new RTCApiException(e.getMessage() + ". Confira o Client ID e o Client Secret, que são "
						+ "gerados em https://consumo.tributos.gov.br/ para o CNPJ matriz.",
						e.getHttpStatus(), e.getErrorCode(), e.getErrorMessage());

			throw e;
		}

		JsonObject json = RTCJson.parseObject(response.getBodyAsString());
		String token = json == null ? null : RTCJson.getString(json, "access_token");

		if (token == null)
			throw new AdempiereException("A Receita Federal respondeu ao pedido de token sem o access_token.");

		long expiresIn = DEFAULT_EXPIRES_IN_SECONDS;
		String expiresInText = RTCJson.getString(json, "expires_in");

		if (expiresInText != null) {
			try {
				expiresIn = Long.parseLong(expiresInText);
			} catch (NumberFormatException e) {
				// mantém o padrão
			}
		}

		long renewAt = System.currentTimeMillis() + Math.max(expiresIn - RENEW_BEFORE_SECONDS, 60) * 1000L;

		return new CachedToken(token, renewAt, config.getUpdated());
	}

	private static String describe(MLBRRTCFiscoConfig config) {
		return config.getLBR_CNPJBase() + "/" + config.getLBR_RTCTaxType();
	}

	private static final class CachedToken {
		final String token;
		final long renewAt;
		final Timestamp configUpdated;

		CachedToken(String token, long renewAt, Timestamp configUpdated) {
			this.token = token;
			this.renewAt = renewAt;
			this.configUpdated = configUpdated;
		}

		boolean isValidFor(MLBRRTCFiscoConfig config) {
			if (System.currentTimeMillis() >= renewAt)
				return false;

			// a configuração mudou desde que o token foi obtido: pode ter sido a
			// credencial
			return configUpdated != null && configUpdated.equals(config.getUpdated());
		}
	}
}
