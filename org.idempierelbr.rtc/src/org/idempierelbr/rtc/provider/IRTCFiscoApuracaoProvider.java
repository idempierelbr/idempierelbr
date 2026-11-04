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
	 * Situação da solicitação — para saber por que o arquivo ainda não está
	 * disponível (em processamento, erro, expirada). Um tíquete que a Receita
	 * não conhece mais volta como {@link RTCFiscoStatus#isNotFound()}.
	 */
	RTCFiscoStatus getStatus(MLBRRTCFiscoConfig config, String ticket);

	/**
	 * Link temporário do arquivo. Pode ser pedido sem consultar a situação
	 * antes: com a solicitação concluída, o link vem; sem ela, a Receita diz
	 * que o arquivo está indisponível.
	 *
	 * @return o link, ou {@link RTCFiscoDownloadLink#isAvailable() indisponível}
	 */
	RTCFiscoDownloadLink getDownloadLink(MLBRRTCFiscoConfig config, String ticket);

	/**
	 * Baixa o arquivo da URL assinada.
	 *
	 * @param maxBytes tamanho máximo aceito
	 */
	byte[] download(MLBRRTCFiscoConfig config, String signedURL, long maxBytes);
}
