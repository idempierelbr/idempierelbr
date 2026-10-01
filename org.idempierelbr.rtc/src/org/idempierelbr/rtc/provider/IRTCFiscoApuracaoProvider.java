package org.idempierelbr.rtc.provider;

import org.idempierelbr.base.model.MLBRRTCFiscoConfig;

/**
 * Transporte das APIs de apuração de um tributo. Hoje só a CBS tem API
 * publicada (Receita Federal); o IBS entra com outra implementação quando o
 * CGIBS publicar a sua, sem mexer em quem chama.
 *
 * @author Alan Lescano
 */
public interface IRTCFiscoApuracaoProvider {

	/**
	 * Abre a solicitação assíncrona. Cada chamada conta no limite diário da
	 * Receita, inclusive as recusadas.
	 *
	 * @param service serviço de {@code LBR_RTCFiscoService} (débitos, créditos...)
	 * @param callbackURL endereço do webhook, que a Receita valida com HEAD
	 *        antes de aceitar
	 * @return o tíquete da solicitação
	 */
	RTCFiscoOpenResult open(MLBRRTCFiscoConfig config, String service, String callbackURL);

	/**
	 * Situação da solicitação — o caminho confiável para obter a URL de
	 * download quando o webhook não chega.
	 */
	RTCFiscoStatus getStatus(MLBRRTCFiscoConfig config, String ticket);

	/**
	 * Baixa o arquivo da URL assinada.
	 *
	 * @param maxBytes tamanho máximo aceito
	 */
	byte[] download(MLBRRTCFiscoConfig config, String signedURL, long maxBytes);
}
