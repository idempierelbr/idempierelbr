package org.idempierelbr.rtc.provider;

/**
 * Resposta da abertura de uma solicitação: o tíquete e o tempo que a Receita
 * estima para concluí-la.
 *
 * @author Alan Lescano
 */
public final class RTCFiscoOpenResult {

	private final String ticket;
	private final int estimatedSeconds;

	public RTCFiscoOpenResult(String ticket, int estimatedSeconds) {
		this.ticket = ticket;
		this.estimatedSeconds = estimatedSeconds;
	}

	public String getTicket() {
		return ticket;
	}

	public int getEstimatedSeconds() {
		return estimatedSeconds;
	}
}
