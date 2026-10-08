package org.idempierelbr.nfs.nacional.xml;

/**
 * Dados do DPS (Declaracao de Prestacao de Servico) ja no formato final do
 * schema nacional v1.01 (TCDPS / TCInfDPS). Nao depende de nada do iDempiere,
 * o que permite testar o {@link DPSXmlWriter} isoladamente contra os XSDs.
 *
 * Campos null sao opcionais e nao sao gravados no XML.
 */
public class DPSData {

	// --- DPS / infDPS ---
	/** Atributo versao de DPS (TVerNFSe: 1.00 ou 1.01) */
	public String versao = "1.01";
	/** Atributo Id de infDPS (TSIdDPS: DPS + 42 digitos) */
	public String id;
	public String tpAmb;      // 1 - Producao; 2 - Homologacao
	public String dhEmi;      // AAAA-MM-DDThh:mm:ss+hh:00
	public String verAplic;   // ate 20 posicoes
	public String serie;      // ate 5 digitos
	public String nDPS;       // [1-9][0-9]{0,14}
	public String dCompet;    // AAAA-MM-DD
	public String tpEmit;     // 1 - Prestador; 2 - Tomador; 3 - Intermediario
	public String cLocEmi;    // IBGE (7 digitos)

	// --- subst (TCSubstituicao, opcional - grupo vem logo antes de "prest") ---
	public String chSubstda;  // chave da NFS-e substituida (50 digitos)
	public String substCMotivo; // TSCodJustSubst: 01,02,03,04,05,99
	public String substXMotivo; // opcional, 15 a 255 caracteres

	// --- prest ---
	public String prestCNPJ;
	public String prestCPF;
	public String prestIM;
	public String opSimpNac;      // 1 - Nao optante; 2 - MEI; 3 - ME/EPP
	public String regApTribSN;    // so quando opSimpNac = 3
	public String regEspTrib;     // 0 - Nenhum ...

	// --- toma (opcional) ---
	public String tomaCNPJ;
	public String tomaCPF;
	public String tomaNome;
	public Endereco tomaEnd;

	// --- serv ---
	public String cLocPrestacao;
	public String cTribNac;       // 6 digitos
	public String cTribMun;       // 3 digitos (opcional)
	public String xDescServ;
	public String cNBS;           // 9 digitos (opcional)

	// --- valores ---
	public String vServ;
	public String vDescIncond;
	public String vDescCond;
	public String tribISSQN;      // 1 tributavel; 2 imunidade; 3 exportacao; 4 nao incidencia
	public String tpImunidade;    // opcional
	public String tpRetISSQN;     // 1 nao retido; 2 retido tomador; 3 retido intermediario
	public String pAliq;          // opcional, ate 9.99
	public String indTotTrib = "0";

	/** Endereco nacional (TCEndereco com endNac) */
	public static class Endereco {
		public String cMun;
		public String cep;
		public String xLgr;
		public String nro;
		public String xCpl;
		public String xBairro;
	}
}
