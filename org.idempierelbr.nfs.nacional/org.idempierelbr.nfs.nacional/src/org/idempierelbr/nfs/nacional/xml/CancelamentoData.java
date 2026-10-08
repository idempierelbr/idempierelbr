package org.idempierelbr.nfs.nacional.xml;

/**
 * Dados do evento de cancelamento de NFS-e (TE101101), conforme
 * tiposEventos_v1.01.xsd.
 */
public class CancelamentoData {

	public String versao = "1.01";
	public String idEvento;      // TSIdEvento: EVT + chave(50) + tipoEvento(6) + nSeqEvento(3)
	public String idPedReg;      // TSIdPedRegEvt: PRE + chave(50) + tipoEvento(6)
	public String verAplic;
	public String ambGer;        // 1 Prefeitura, 2 Sefin Nacional, 3 Ambiente Nacional
	public String nSeqEvento;    // sempre "001" para cancelamento
	public String dhProc;
	public String nDFSe;         // numero sequencial do doc gerado pelo municipio - normalmente 1
	public String tpAmb;
	public String dhEvento;
	public String cnpjAutor;
	public String cpfAutor;
	public String chNFSe;

	// TE101101
	public String cMotivo;   // 1 Erro na Emissao; 2 Servico nao Prestado; 9 Outros
	public String xMotivo;   // 15 a 255 caracteres
}
