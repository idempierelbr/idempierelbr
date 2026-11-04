package org.idempierelbr.rtc.client;

import java.nio.charset.StandardCharsets;

/**
 * Resposta HTTP já lida por inteiro: status, corpo e a espera pedida no
 * {@code Retry-After}, quando vier.
 *
 * @author Alan Lescano
 */
public final class RTCHttpResponse {

	private final int status;
	private final byte[] body;
	private final Integer retryAfterSeconds;

	public RTCHttpResponse(int status, byte[] body) {
		this(status, body, null);
	}

	public RTCHttpResponse(int status, byte[] body, Integer retryAfterSeconds) {
		this.status = status;
		this.body = body == null ? new byte[0] : body;
		this.retryAfterSeconds = retryAfterSeconds;
	}

	public int getStatus() {
		return status;
	}

	public byte[] getBody() {
		return body;
	}

	public String getBodyAsString() {
		return new String(body, StandardCharsets.UTF_8);
	}

	public boolean isSuccess() {
		return status >= 200 && status < 300;
	}

	/** Espera pedida pelo servidor no {@code Retry-After}, em segundos, ou nulo */
	public Integer getRetryAfterSeconds() {
		return retryAfterSeconds;
	}

	/**
	 * Lê o {@code Retry-After} na forma em segundos. A forma em data HTTP não
	 * é interpretada: a espera fica desconhecida.
	 *
	 * @return os segundos, ou nulo se ausente ou em outro formato
	 */
	public static Integer parseRetryAfter(String value) {
		if (value == null || value.trim().isEmpty())
			return null;

		try {
			int seconds = Integer.parseInt(value.trim());
			return seconds < 0 ? null : seconds;
		} catch (NumberFormatException e) {
			return null;
		}
	}
}
