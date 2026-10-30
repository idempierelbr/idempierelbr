package org.idempierelbr.rtc.provider;

import java.sql.Timestamp;

/**
 * Link temporário do arquivo de retorno, como o endpoint de download o devolve.
 * A URL autoriza o download: não vai para log nem para mensagem de erro.
 *
 * @author Alan Lescano
 */
public final class RTCFiscoDownloadLink {

	private final String signedURL;
	private final Timestamp expiresAt;

	public RTCFiscoDownloadLink(String signedURL, Timestamp expiresAt) {
		this.signedURL = signedURL;
		this.expiresAt = expiresAt;
	}

	public String getSignedURL() {
		return signedURL;
	}

	/** Vencimento, ou nulo se a Receita não informar */
	public Timestamp getExpiresAt() {
		return expiresAt;
	}
}
