package org.idempierelbr.rtc.provider;

import java.sql.Timestamp;

import org.idempierelbr.rtc.client.RTCQuota;

/**
 * Resposta do endpoint de download: o link temporário do arquivo, ou a
 * indicação de que ele ainda não está disponível. A URL autoriza o download:
 * não vai para log nem para mensagem de erro.
 *
 * @author Alan Lescano
 */
public final class RTCFiscoDownloadLink {

	private final String signedURL;
	private final Timestamp expiresAt;
	private final RTCQuota quota;

	public RTCFiscoDownloadLink(String signedURL, Timestamp expiresAt) {
		this(signedURL, expiresAt, null);
	}

	public RTCFiscoDownloadLink(String signedURL, Timestamp expiresAt, RTCQuota quota) {
		this.signedURL = signedURL;
		this.expiresAt = expiresAt;
		this.quota = quota;
	}

	/** Arquivo indisponível: ainda não concluído, inexistente ou já baixado */
	public static RTCFiscoDownloadLink unavailable(RTCQuota quota) {
		return new RTCFiscoDownloadLink(null, null, quota);
	}

	/** A Receita entregou o link? */
	public boolean isAvailable() {
		return signedURL != null;
	}

	/** O link, ou nulo se o arquivo está indisponível */
	public String getSignedURL() {
		return signedURL;
	}

	public Timestamp getExpiresAt() {
		return expiresAt;
	}

	/** Cota da rota de download depois desta chamada, ou nulo */
	public RTCQuota getQuota() {
		return quota;
	}
}
