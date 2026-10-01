package org.idempierelbr.rtc.client;

import java.nio.charset.StandardCharsets;

/**
 * Resposta HTTP já lida por inteiro: status e corpo.
 *
 * @author Alan Lescano
 */
public final class RTCHttpResponse {

	private final int status;
	private final byte[] body;

	public RTCHttpResponse(int status, byte[] body) {
		this.status = status;
		this.body = body == null ? new byte[0] : body;
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
}
