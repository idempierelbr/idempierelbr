package org.idempierelbr.rtc.json;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

/**
 * Leitura tolerante das respostas curtas da Receita (token, abertura,
 * situação, webhook): campo ausente, nulo ou vazio vira nulo, e texto que não
 * é JSON não derruba quem chama.
 *
 * @author Alan Lescano
 */
public final class RTCJson {

	private RTCJson() {
	}

	/**
	 * @return o objeto, ou nulo se o texto for vazio, inválido ou não for um
	 *         objeto JSON
	 */
	public static JsonObject parseObject(String text) {
		if (text == null || text.trim().isEmpty())
			return null;

		try {
			JsonElement element = JsonParser.parseString(text);
			return element.isJsonObject() ? element.getAsJsonObject() : null;
		} catch (RuntimeException e) {
			return null;
		}
	}

	/**
	 * @return o valor do campo como texto, sem espaços nas pontas, ou nulo se
	 *         ausente, nulo, vazio ou não for um valor simples
	 */
	public static String getString(JsonObject json, String name) {
		if (json == null)
			return null;

		JsonElement element = json.get(name);

		if (element == null || element.isJsonNull() || !element.isJsonPrimitive())
			return null;

		String value = element.getAsString().trim();

		return value.isEmpty() ? null : value;
	}
}
