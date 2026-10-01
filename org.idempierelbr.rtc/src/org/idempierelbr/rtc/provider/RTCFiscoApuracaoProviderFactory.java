package org.idempierelbr.rtc.provider;

import org.adempiere.exceptions.AdempiereException;
import org.idempierelbr.base.model.MLBRRTCFiscoConfig;
import org.idempierelbr.rtc.client.RTCHttpClient;

/**
 * Escolhe o transporte pelo tributo da configuração.
 *
 * @author Alan Lescano
 */
public final class RTCFiscoApuracaoProviderFactory {

	private RTCFiscoApuracaoProviderFactory() {
	}

	/**
	 * @throws AdempiereException se o tributo ainda não tiver API publicada
	 */
	public static IRTCFiscoApuracaoProvider get(String taxType, RTCHttpClient http) {
		if (MLBRRTCFiscoConfig.LBR_RTCTAXTYPE_CBS.equals(taxType))
			return new RTCFiscoApuracaoCBSProvider(http);

		if (MLBRRTCFiscoConfig.LBR_RTCTAXTYPE_IBS.equals(taxType))
			throw new AdempiereException("O CGIBS ainda não publicou a API de apuração do IBS. "
					+ "Por enquanto só a apuração da CBS pode ser baixada.");

		throw new AdempiereException("Tributo não suportado na apuração do fisco: " + taxType);
	}
}
