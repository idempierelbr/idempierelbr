/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil                      *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.idempierelbr.nfe.imports;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import org.w3c.dom.Document;

/**
 * Uma NF-e de terceiro pronta para virar {@code LBR_NotaFiscal}: o que o XML
 * traz, mais o que já foi resolvido contra o cadastro (organização, parceiro,
 * produtos).
 *
 * <p>Preenchido pelo {@link NFeXMLParser} e consumido pela tela de conciliação
 * e pelo {@link NFeImportService}. Campos públicos, como em
 * {@link NFeImportItem}.
 *
 * @author Alan Lescano
 */
public class NFeImportDocument {

	/** Origem: arquivo escolhido pelo usuário */
	public static final String SOURCE_FILE = "F";
	/** Origem: documento baixado da SEFAZ pela Distribuição de DF-e */
	public static final String SOURCE_DFE = "D";

	/** Documento XML completo — os impostos são lidos dele */
	public Document doc;

	/**
	 * XML como veio, byte a byte, para virar anexo da nota.
	 *
	 * <p>Bytes, e não String: o encoding do documento é o que a declaração dele
	 * diz. Decodificar para String obrigaria a escolher um charset aqui, e a
	 * escolha erraria em toda instância cujo XML não viesse nesse charset.
	 */
	public byte[] xml;

	/** De onde este documento veio: {@link #SOURCE_FILE} ou {@link #SOURCE_DFE} */
	public String source = SOURCE_FILE;
	/** Nome do arquivo ou do anexo, para exibição e para o anexo da nota */
	public String fileName;
	/** DF-e de origem, quando veio do monitor */
	public int LBR_NFeXML_ID = 0;

	/** Versão do layout ({@code infNFe@versao}) */
	public String versionNo;
	public String chNFe;

	public String nNF;
	public String serie;
	public String mod;
	public String natOp;
	public String finNFe;
	public String tpNF;
	public String tpEmis;
	public String idDest;
	public String indFinal;
	public String indPres;
	public String indIntermed;
	public String cMunFG;

	public Timestamp dhEmi;
	public Timestamp dhSaiEnt;

	/**
	 * Indicador de pagamento à vista/a prazo (referência LBR_NFE_PaymentRule).
	 * Vem de {@code ide/indPag} na 3.10 e do primeiro {@code detPag} na 4.00.
	 */
	public String indPag;

	/** Emitente — o fornecedor, do nosso lado */
	public String emitCNPJ;
	public String emitCPF;
	public String emitName;
	public String emitIE;
	public String emitLocation;

	/** Destinatário — a nossa organização */
	public String destCNPJ;
	public String destCPF;
	public String destName;
	public String destLocation;

	public BigDecimal vProd;
	public BigDecimal vNF;
	public BigDecimal vTroco;

	/** Informações complementares de interesse do contribuinte ({@code infCpl}) */
	public String infCpl;
	/** Informações adicionais de interesse do Fisco ({@code infAdFisco}) */
	public String infAdFisco;
	/** As duas acima em uma linha, para exibição */
	public String info;

	/** Protocolo de autorização */
	public String cStat;
	public String xMotivo;
	public String nProt;

	/** Organização destinatária, resolvida pelo CNPJ/CPF do {@code dest} */
	public Integer AD_Org_ID;
	/** Parceiro emitente, resolvido pelo CNPJ/CPF do {@code emit} */
	public Integer C_BPartner_ID;
	public Integer C_BPartner_Location_ID;

	public List<NFeImportItem> items = new ArrayList<NFeImportItem>();
	public List<DocRef> docRefs = new ArrayList<DocRef>();
	public List<Payment> payments = new ArrayList<Payment>();

	/** Cobrança ({@code cobr}), quando houver — é opcional no layout */
	public Billing billing;

	/** @return true se a NF-e está autorizada (cStat 100 ou 150) */
	public boolean isAuthorized() {
		return "100".equals(cStat) || "150".equals(cStat);
	}

	/** @return itens que o de-para não resolveu */
	public List<NFeImportItem> getPendingItems() {
		List<NFeImportItem> pending = new ArrayList<NFeImportItem>();

		for (NFeImportItem item : items) {
			if (!item.isResolved())
				pending.add(item);
		}

		return pending;
	}

	/** @return descrição curta do documento, para listas e mensagens */
	public String getLabel() {
		StringBuilder label = new StringBuilder();

		if (nNF != null)
			label.append("NF ").append(nNF);

		if (serie != null)
			label.append("/").append(serie);

		if (emitName != null)
			label.append(" - ").append(emitName);

		return label.length() > 0 ? label.toString() : (fileName != null ? fileName : chNFe);
	}

	@Override
	public String toString() {
		return new StringBuilder("NFeImportDocument[").append(getLabel())
			.append(", chNFe=").append(chNFe)
			.append(", itens=").append(items.size())
			.append("]").toString();
	}

	/**
	 * Documento referenciado — {@code ide/NFref} e {@code ide/gPagAntecipado},
	 * ambos destino da {@code LBR_NotaFiscalDocRef}, distinguidos pelo tipo.
	 */
	public static class DocRef {
		/** Tipo, na referência LBR_NFeDocRefType (0=NF-e, 1=CT-e, 2=NF, 3=Produtor, 4=Cupom, 5=Antecipado) */
		public String type;

		/** Chave de acesso, para NF-e, CT-e e pagamento antecipado */
		public String chNFe;

		/** Modelos 1/1A e Produtor Rural */
		public String cUF;
		public String AAMM;
		public String CNPJ;
		public String CPF;
		public String IE;
		public String mod;
		public String serie;
		public String nNF;

		/** Cupom fiscal */
		public String ECFMod;
		public String nECF;
		public String nCOO;
	}

	/** Fatura do grupo {@code cobr/fat} */
	public static class Billing {
		public String nFat;
		public BigDecimal vOrig;
		public BigDecimal vDesc;
		public BigDecimal vLiq;

		public List<Duplicata> duplicatas = new ArrayList<Duplicata>();
	}

	/** Duplicata do grupo {@code cobr/dup} */
	public static class Duplicata {
		public String nDup;
		public Timestamp dVenc;
		public BigDecimal vDup;
	}

	/** Forma de pagamento do grupo {@code pag/detPag} */
	public static class Payment {
		public String indPag;
		public String tPag;
		public String xPag;
		public BigDecimal vPag;
		public Timestamp dPag;
		public String CNPJPag;
		public String UFPag;

		/** Grupo {@code card}, quando o pagamento é eletrônico */
		public String tpIntegra;
		public String cardCNPJ;
		public String tBand;
		public String cAut;
		public String CNPJReceb;
		public String idTermPag;
	}
}	//	NFeImportDocument
