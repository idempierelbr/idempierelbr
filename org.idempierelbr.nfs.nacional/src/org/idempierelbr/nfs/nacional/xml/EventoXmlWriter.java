package org.idempierelbr.nfs.nacional.xml;

/**
 * Serializa o evento de cancelamento (TCEvento > TCInfEvento > TCPedRegEvt >
 * TCInfPedReg > TE101101), na ordem de tiposEventos_v1.01.xsd.
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

	public static String toXml(CancelamentoData d) {

		StringBuilder x = new StringBuilder();
		x.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
		x.append("<evento xmlns=\"").append(NAMESPACE).append("\" versao=\"").append(d.versao).append("\">");
		x.append("<infEvento Id=\"").append(d.idEvento).append("\">");

		el(x, "verAplic", d.verAplic);
		el(x, "ambGer", d.ambGer);
		el(x, "nSeqEvento", d.nSeqEvento);
		el(x, "dhProc", d.dhProc);
		el(x, "nDFSe", d.nDFSe);

		x.append("<pedRegEvento versao=\"").append(d.versao).append("\">");
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
		// Assinatura de infPedReg e' opcional no schema (minOccurs=0) - nao
		// incluida aqui. So' o infEvento (evento como um todo) e' assinado.
		x.append("</pedRegEvento>");

		x.append("</infEvento>");
		x.append("</evento>");
		return x.toString();
	}

	public static String buildIdEvento(String chaveNFSe, String nSeqEvento) {
		return "EVT" + chaveNFSe + COD_EVENTO_CANCELAMENTO + nSeqEvento;
	}

	/** Ver nota da classe sobre o tamanho deste Id. */
	public static String buildIdPedReg(String chaveNFSe) {
		return "PRE" + chaveNFSe + COD_EVENTO_CANCELAMENTO;
	}

	private static void el(StringBuilder x, String name, String value) {
		if (value == null || value.isEmpty())
			return;
		x.append('<').append(name).append('>').append(escape(value)).append("</").append(name).append('>');
	}

	private static String escape(String s) {
		return s.replace("&", "&amp;").replace("<", "&lt;").replace(">", "&gt;");
	}
}
