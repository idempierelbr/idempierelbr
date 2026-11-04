package org.idempierelbr.rtc.provider;

import org.idempierelbr.rtc.client.RTCQuota;

/**
 * Resposta da abertura de uma solicitação: o tíquete, o tempo que a Receita
 * estima para concluí-la e a cota de aberturas que sobrou.
 *
 * @author Alan Lescano
 */
public final class RTCFiscoOpenResult {

	private final String ticket;
	private final int estimatedSeconds;
	private final RTCQuota quota;

	public RTCFiscoOpenResult(String ticket, int estimatedSeconds) {
		this(ticket, estimatedSeconds, null);
	}

	public RTCFiscoOpenResult(String ticket, int estimatedSeconds, RTCQuota quota) {
		this.ticket = ticket;
		this.estimatedSeconds = estimatedSeconds;
		this.quota = quota;
	}

	public String getTicket() {
		return ticket;
	}

	/** Estimativa da Receita, em segundos; zero ou negativo quando ela não informa */
	public int getEstimatedSeconds() {
		return estimatedSeconds;
	}

	/** Cota da rota de abertura depois desta chamada, ou nulo */
	public RTCQuota getQuota() {
		return quota;
	}
}
