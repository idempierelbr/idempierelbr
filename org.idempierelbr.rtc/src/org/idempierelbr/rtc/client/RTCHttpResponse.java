package org.idempierelbr.rtc.client;

import java.nio.charset.StandardCharsets;
import java.time.Instant;

/**
 * Resposta HTTP já lida por inteiro: status, corpo, a espera pedida no
 * {@code Retry-After} e a cota da rota, quando vierem.
 *
 * @author Alan Lescano
 */
public final class RTCHttpResponse {

	private final int status;
	private final byte[] body;
	private final Integer retryAfterSeconds;
	private final RTCQuota quota;
	private final Instant receivedAt;

	public RTCHttpResponse(int status, byte[] body) {
		this(status, body, null);
	}

	public RTCHttpResponse(int status, byte[] body, Integer retryAfterSeconds) {
		this(status, body, retryAfterSeconds, null, Instant.now());
	}

	public RTCHttpResponse(int status, byte[] body, Integer retryAfterSeconds, RTCQuota quota, Instant receivedAt) {
		this.status = status;
		this.body = body == null ? new byte[0] : body;
		this.retryAfterSeconds = retryAfterSeconds;
		this.quota = quota;
		this.receivedAt = receivedAt == null ? Instant.now() : receivedAt;
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

	/** Cota de chamadas da rota, ou nulo se o servidor não informou */
	public RTCQuota getQuota() {
		return quota;
	}

	/** Quando a resposta chegou: base do {@code Retry-After} e da renovação da cota */
	public Instant getReceivedAt() {
		return receivedAt;
	}

	/**
	 * Quando a Receita volta a aceitar chamadas desta rota: pelo
	 * {@code Retry-After} ou, sem ele, pela renovação da cota.
	 *
	 * @return o momento, ou nulo se nenhum dos dois veio
	 */
	public Instant getRetryAt() {
		if (retryAfterSeconds != null)
			return receivedAt.plusSeconds(retryAfterSeconds);

		return quota == null ? null : quota.getResetAt();
	}

	/**
	 * Lê o {@code Retry-After} na forma em segundos. A forma em data HTTP não
	 * é interpretada: a espera fica desconhecida.
	 *
	 * @return os segundos, ou nulo se ausente ou em outro formato
	 */
	public static Integer parseRetryAfter(String value) {
		return RTCQuota.parseNonNegative(value);
	}
}
