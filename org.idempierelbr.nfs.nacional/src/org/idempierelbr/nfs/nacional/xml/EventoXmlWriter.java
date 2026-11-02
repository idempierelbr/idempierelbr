package org.idempierelbr.nfs.nacional.xml;

import static org.idempierelbr.nfs.nacional.xml.XmlText.el;

/**
 * Serializa o pedido de registro do evento de cancelamento (TCPedRegEvt >
 * TCInfPedReg > TE101101), na ordem de tiposEventos_v1.01.xsd.
 *
 * O contribuinte envia apenas o {@code pedRegEvento}, com o {@code infPedReg}
 * assinado (a assinatura fica como filha de pedRegEvento, irma de
 * infPedReg). O envelope {@code evento/infEvento} e' montado pela Sefin
 * Nacional e devolvido na resposta.
 *
 * Codigo do evento de cancelamento (e101101): "101101" (6 digitos).
 *
 * NOTA sobre o Id do pedido de registro (TSIdPedRegEvt): o manual descreve
 * "PRE" + chave(50) + tipoEvento + nPedRegEvento, mas o pattern do XSD so
 * comporta 56 digitos depois de "PRE" (= chave[50] + tipoEvento[6], sem
 * sobrar espaco para nPedRegEvento). Segui o que o PATTERN exige (validado
 * contra o XSD); se a Sefin rejeitar o Id, e' o primeiro ponto a revisar
 * junto ao suporte do SNNFSe.
 */
public class EventoXmlWriter {

	public static final String NAMESPACE = "http://www.sped.fazenda.gov.br/nfse";
	public static final String COD_EVENTO_CANCELAMENTO = "101101";
	/** Elemento assinado no pedido de registro de evento */
	public static final String TAG_ASSINADA = "infPedReg";

	public static String toXml(CancelamentoData d) {

		StringBuilder x = new StringBuilder();
		x.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
		x.append("<pedRegEvento xmlns=\"").append(NAMESPACE).append("\" versao=\"").append(d.versao).append("\">");
		x.append("<infPedReg Id=\"").append(d.idPedReg).append("\">");
		el(x, "tpAmb", d.tpAmb);
		el(x, "verAplic", d.verAplic);
		el(x, "dhEvento", d.dhEvento);
		el(x, "CNPJAutor", d.cnpjAutor);
		el(x, "CPFAutor", d.cpfAutor);
		el(x, "chNFSe", d.chNFSe);
		x.append("<e101101>");
		x.append("<xDesc>Cancelamento de NFS-e</xDesc>");
		el(x, "cMotivo", d.cMotivo);
		el(x, "xMotivo", d.xMotivo);
		x.append("</e101101>");
		x.append("</infPedReg>");
		x.append("</pedRegEvento>");
		return x.toString();
	}

	/** Ver nota da classe sobre o tamanho deste Id. */
	public static String buildIdPedReg(String chaveNFSe) {
		return "PRE" + chaveNFSe + COD_EVENTO_CANCELAMENTO;
	}
}
