package org.idempierelbr.nfs.nacional.xml;

/**
 * Dados do pedido de registro do evento de cancelamento de NFS-e
 * (TCPedRegEvt > TCInfPedReg > TE101101), conforme tiposEventos_v1.01.xsd.
 *
 * So' o pedido e' montado pelo contribuinte: o envelope {@code evento}
 * (infEvento com ambGer, nSeqEvento, dhProc, nDFSe) e' gerado pela Sefin
 * Nacional ao registrar o evento e volta na resposta.
 */
public class CancelamentoData {

	public String versao = "1.01";
	public String idPedReg;      // TSIdPedRegEvt: PRE + chave(50) + tipoEvento(6)
	public String tpAmb;
	public String verAplic;
	public String dhEvento;
	public String cnpjAutor;
	public String cpfAutor;
	public String chNFSe;

	// TE101101
	public String cMotivo;   // 1 Erro na Emissao; 2 Servico nao Prestado; 9 Outros
	public String xMotivo;   // 15 a 255 caracteres
}
