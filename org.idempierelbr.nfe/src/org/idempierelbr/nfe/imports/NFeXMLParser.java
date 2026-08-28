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

import static org.idempierelbr.nfe.util.NFeDomUtil.child;
import static org.idempierelbr.nfe.util.NFeDomUtil.childAmt;
import static org.idempierelbr.nfe.util.NFeDomUtil.childDate;
import static org.idempierelbr.nfe.util.NFeDomUtil.childText;
import static org.idempierelbr.nfe.util.NFeDomUtil.childValue;
import static org.idempierelbr.nfe.util.NFeDomUtil.children;
import static org.idempierelbr.nfe.util.NFeDomUtil.element;

import java.util.List;

import org.idempierelbr.base.model.MLBRNotaFiscalDocRef;
import org.idempierelbr.nfe.imports.NFeImportDocument.Billing;
import org.idempierelbr.nfe.imports.NFeImportDocument.DocRef;
import org.idempierelbr.nfe.imports.NFeImportDocument.Duplicata;
import org.idempierelbr.nfe.imports.NFeImportDocument.Payment;
import org.idempierelbr.nfe.util.NFeDomUtil;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

/**
 * Lê o XML de uma NF-e de terceiro e devolve o que ele diz, sem tocar no banco
 * e sem depender de tela.
 *
 * <p>Essa independência é o que permite testar a leitura sozinha e reaproveitá-la
 * fora da tela de conciliação — de um processo em lote, por exemplo. A
 * resolução contra o cadastro (organização, parceiro, produto) e a criação da
 * nota ficam no {@link NFeImportService}.
 *
 * <p>Os grupos de imposto do item não são lidos aqui: o elemento {@code det}
 * viaja no {@link NFeImportItem} e é lido na criação da nota, onde a lógica de
 * cada tributo já vive.
 *
 * @author Alan Lescano
 */
public class NFeXMLParser {

	private NFeXMLParser() {
	}

	/**
	 * @param doc XML da NF-e — aceita tanto o {@code nfeProc} autorizado quanto
	 *            a {@code NFe} avulsa
	 * @return o documento lido, nunca nulo
	 */
	public static NFeImportDocument parse(Document doc) {
		NFeImportDocument nfe = new NFeImportDocument();
		nfe.doc = doc;

		parseInfNFe(nfe, doc);
		parseIde(nfe, doc);
		parseEmit(nfe, doc);
		parseDest(nfe, doc);
		parseItems(nfe, doc);
		parseTotal(nfe, doc);
		parseBilling(nfe, doc);
		parsePayment(nfe, doc);
		parseInfAdic(nfe, doc);
		parseProtocol(nfe, doc);

		return nfe;
	}

	private static void parseInfNFe(NFeImportDocument nfe, Document doc) {
		Element infNFe = element(doc, "infNFe");

		if (infNFe == null)
			return;

		nfe.versionNo = NFeDomUtil.trimToNull(infNFe.getAttribute("versao"));

		String id = infNFe.getAttribute("Id");

		if (id != null && id.length() == 47)
			nfe.chNFe = id.substring(3);
	}

	private static void parseIde(NFeImportDocument nfe, Document doc) {
		Element ide = element(doc, "ide");

		if (ide == null)
			return;

		nfe.nNF = childValue(ide, "nNF");
		nfe.serie = childValue(ide, "serie");
		nfe.mod = childValue(ide, "mod");
		nfe.natOp = childText(ide, "natOp");
		nfe.finNFe = childValue(ide, "finNFe");
		nfe.tpNF = childValue(ide, "tpNF");
		nfe.tpEmis = childValue(ide, "tpEmis");
		nfe.idDest = childValue(ide, "idDest");
		nfe.indFinal = childValue(ide, "indFinal");
		nfe.indPres = childValue(ide, "indPres");
		nfe.indIntermed = childValue(ide, "indIntermed");
		nfe.cMunFG = childValue(ide, "cMunFG");

		// 4.00 usa dhEmi/dhSaiEnt; a 3.10 usava dEmi/dSaiEnt
		nfe.dhEmi = childDate(ide, "dhEmi") != null ? childDate(ide, "dhEmi") : childDate(ide, "dEmi");
		nfe.dhSaiEnt = childDate(ide, "dhSaiEnt") != null ? childDate(ide, "dhSaiEnt") : childDate(ide, "dSaiEnt");

		// na 3.10 o indPag era do cabeçalho; na 4.00 vive em cada detPag
		nfe.indPag = childValue(ide, "indPag");

		parseDocRefs(nfe, ide);
	}

	/**
	 * Documentos referenciados. O {@code NFref} tradicional e o
	 * {@code gPagAntecipado} da NT 2025.002 caem na mesma tabela, separados
	 * pelo tipo — o antecipado é o que permite abater o IBS/CBS já recolhido.
	 */
	private static void parseDocRefs(NFeImportDocument nfe, Element ide) {
		for (Element NFref : children(ide, "NFref")) {
			DocRef ref = new DocRef();

			Element refNF = child(NFref, "refNF");
			Element refNFP = child(NFref, "refNFP");
			Element refECF = child(NFref, "refECF");

			if (childValue(NFref, "refNFe") != null) {
				ref.type = MLBRNotaFiscalDocRef.LBR_NFEDOCREFTYPE_NF_E;
				ref.chNFe = childValue(NFref, "refNFe");
			}
			else if (childValue(NFref, "refCTe") != null) {
				ref.type = MLBRNotaFiscalDocRef.LBR_NFEDOCREFTYPE_CT_E;
				ref.chNFe = childValue(NFref, "refCTe");
			}
			else if (refNF != null) {
				ref.type = MLBRNotaFiscalDocRef.LBR_NFEDOCREFTYPE_NotaFiscal;
				ref.cUF = childValue(refNF, "cUF");
				ref.AAMM = childValue(refNF, "AAMM");
				ref.CNPJ = childValue(refNF, "CNPJ");
				ref.mod = childValue(refNF, "mod");
				ref.serie = childValue(refNF, "serie");
				ref.nNF = childValue(refNF, "nNF");
			}
			else if (refNFP != null) {
				ref.type = MLBRNotaFiscalDocRef.LBR_NFEDOCREFTYPE_NotaFiscalDeProdutor;
				ref.cUF = childValue(refNFP, "cUF");
				ref.AAMM = childValue(refNFP, "AAMM");
				ref.CNPJ = childValue(refNFP, "CNPJ");
				ref.CPF = childValue(refNFP, "CPF");
				ref.IE = childValue(refNFP, "IE");
				ref.mod = childValue(refNFP, "mod");
				ref.serie = childValue(refNFP, "serie");
				ref.nNF = childValue(refNFP, "nNF");
			}
			else if (refECF != null) {
				ref.type = MLBRNotaFiscalDocRef.LBR_NFEDOCREFTYPE_CupomFiscal;
				ref.ECFMod = childValue(refECF, "mod");
				ref.nECF = childValue(refECF, "nECF");
				ref.nCOO = childValue(refECF, "nCOO");
			}
			else
				continue;

			nfe.docRefs.add(ref);
		}

		// BB. cada nota de antecipação vira uma referência do tipo 5
		Element gPagAntecipado = child(ide, "gPagAntecipado");

		if (gPagAntecipado == null)
			return;

		for (Element refNFe : children(gPagAntecipado, "refNFe")) {
			DocRef ref = new DocRef();
			ref.type = MLBRNotaFiscalDocRef.LBR_NFEDOCREFTYPE_NFeDePagamentoAntecipado;
			ref.chNFe = NFeDomUtil.trimToNull(refNFe.getTextContent());

			if (ref.chNFe != null)
				nfe.docRefs.add(ref);
		}
	}

	private static void parseEmit(NFeImportDocument nfe, Document doc) {
		Element emit = element(doc, "emit");

		if (emit == null)
			return;

		nfe.emitCNPJ = childValue(emit, "CNPJ");
		nfe.emitCPF = childValue(emit, "CPF");
		nfe.emitName = childText(emit, "xNome");
		nfe.emitIE = childValue(emit, "IE");
		nfe.emitLocation = formatLocation(child(emit, "enderEmit"));
	}

	private static void parseDest(NFeImportDocument nfe, Document doc) {
		Element dest = element(doc, "dest");

		if (dest == null)
			return;

		nfe.destCNPJ = childValue(dest, "CNPJ");
		nfe.destCPF = childValue(dest, "CPF");
		nfe.destName = childText(dest, "xNome");
		nfe.destLocation = formatLocation(child(dest, "enderDest"));
	}

	private static void parseItems(NFeImportDocument nfe, Document doc) {
		Element infNFe = element(doc, "infNFe");

		if (infNFe == null)
			return;

		int line = 0;

		for (Element det : children(infNFe, "det")) {
			Element prod = child(det, "prod");

			if (prod == null)
				continue;

			NFeImportItem item = new NFeImportItem();
			item.det = det;
			item.nItem = NFeDomUtil.toInt(det.getAttribute("nItem"), ++line);

			item.cProd = childValue(prod, "cProd");
			item.cEAN = childValue(prod, "cEAN");
			item.xProd = childText(prod, "xProd");
			item.NCM = childValue(prod, "NCM");
			item.CEST = childValue(prod, "CEST");
			item.CFOP = childValue(prod, "CFOP");
			item.uCom = childValue(prod, "uCom");
			item.indTot = childValue(prod, "indTot");

			item.qCom = childAmt(prod, "qCom");
			item.vUnCom = childAmt(prod, "vUnCom");
			item.vProd = childAmt(prod, "vProd");
			item.vDesc = childAmt(prod, "vDesc");
			item.vFrete = childAmt(prod, "vFrete");
			item.vSeg = childAmt(prod, "vSeg");
			item.vOutro = childAmt(prod, "vOutro");

			Element comb = child(prod, "comb");

			if (comb != null) {
				item.cProdANP = childValue(comb, "cProdANP");
				item.CODIF = childValue(comb, "CODIF");
				item.UFCons = childValue(comb, "UFCons");
				item.pMixGN = childAmt(comb, "pMixGN");
				item.qTemp = childAmt(comb, "qTemp");
			}

			nfe.items.add(item);
		}
	}

	private static void parseTotal(NFeImportDocument nfe, Document doc) {
		Element icmsTot = element(doc, "ICMSTot");

		if (icmsTot == null)
			return;

		nfe.vProd = childAmt(icmsTot, "vProd");
		nfe.vNF = childAmt(icmsTot, "vNF");
	}

	/**
	 * Cobrança ({@code cobr}) — opcional no layout, e independente do grupo de
	 * pagamento: uma nota à vista tem {@code pag} sem ter {@code cobr}.
	 */
	private static void parseBilling(NFeImportDocument nfe, Document doc) {
		Element cobr = element(doc, "cobr");

		if (cobr == null)
			return;

		Billing billing = new Billing();
		Element fat = child(cobr, "fat");

		if (fat != null) {
			billing.nFat = childValue(fat, "nFat");
			billing.vOrig = childAmt(fat, "vOrig");
			billing.vDesc = childAmt(fat, "vDesc");
			billing.vLiq = childAmt(fat, "vLiq");
		}

		for (Element dup : children(cobr, "dup")) {
			Duplicata duplicata = new Duplicata();
			duplicata.nDup = childValue(dup, "nDup");
			duplicata.dVenc = childDate(dup, "dVenc");
			duplicata.vDup = childAmt(dup, "vDup");

			billing.duplicatas.add(duplicata);
		}

		if (billing.nFat != null || !billing.duplicatas.isEmpty())
			nfe.billing = billing;
	}

	private static void parsePayment(NFeImportDocument nfe, Document doc) {
		Element pag = element(doc, "pag");

		if (pag == null)
			return;

		nfe.vTroco = childAmt(pag, "vTroco");

		for (Element detPag : children(pag, "detPag")) {
			Payment payment = new Payment();
			payment.indPag = childValue(detPag, "indPag");
			payment.tPag = childValue(detPag, "tPag");
			payment.xPag = childText(detPag, "xPag");
			payment.vPag = childAmt(detPag, "vPag");
			payment.dPag = childDate(detPag, "dPag");
			payment.CNPJPag = childValue(detPag, "CNPJPag");
			payment.UFPag = childValue(detPag, "UFPag");

			Element card = child(detPag, "card");

			if (card != null) {
				payment.tpIntegra = childValue(card, "tpIntegra");
				payment.cardCNPJ = childValue(card, "CNPJ");
				payment.tBand = childValue(card, "tBand");
				payment.cAut = childValue(card, "cAut");
				payment.CNPJReceb = childValue(card, "CNPJReceb");
				payment.idTermPag = childValue(card, "idTermPag");
			}

			nfe.payments.add(payment);
		}

		// na 4.00 a indicação de à vista/a prazo desceu para o detPag
		if (nfe.indPag == null && !nfe.payments.isEmpty())
			nfe.indPag = nfe.payments.get(0).indPag;
	}

	private static void parseInfAdic(NFeImportDocument nfe, Document doc) {
		Element infAdic = element(doc, "infAdic");

		if (infAdic == null)
			return;

		String infCpl = childText(infAdic, "infCpl");
		String infAdFisco = childText(infAdic, "infAdFisco");

		if (infCpl == null && infAdFisco == null)
			return;

		nfe.infCpl = infCpl;
		nfe.infAdFisco = infAdFisco;

		StringBuilder info = new StringBuilder();

		if (infCpl != null)
			info.append(infCpl);

		if (infAdFisco != null) {
			if (info.length() > 0)
				info.append(" | ");

			info.append(infAdFisco);
		}

		nfe.info = info.toString();
	}

	private static void parseProtocol(NFeImportDocument nfe, Document doc) {
		Element infProt = element(doc, "infProt");

		if (infProt == null)
			return;

		nfe.cStat = childValue(infProt, "cStat");
		nfe.xMotivo = childText(infProt, "xMotivo");
		nfe.nProt = childValue(infProt, "nProt");

		if (nfe.chNFe == null)
			nfe.chNFe = childValue(infProt, "chNFe");
	}

	/**
	 * Endereço em uma linha, do jeito que a tela mostra ao usuário conferir de
	 * quem é a nota.
	 */
	private static String formatLocation(Element ender) {
		if (ender == null)
			return null;

		StringBuilder location = new StringBuilder();

		append(location, childText(ender, "xLgr"), "");
		append(location, childValue(ender, "nro"), ", ");
		append(location, childText(ender, "xMun"), ", ");
		append(location, childValue(ender, "UF"), "-");
		append(location, childValue(ender, "CEP"), ", CEP ");

		return location.length() > 0 ? location.toString() : null;
	}

	private static void append(StringBuilder builder, String value, String separator) {
		if (value == null)
			return;

		if (builder.length() > 0)
			builder.append(separator);

		builder.append(value);
	}

	/** @return os elementos {@code det} do documento, na ordem do XML */
	public static List<Element> getItemElements(Document doc) {
		return children(element(doc, "infNFe"), "det");
	}
}	//	NFeXMLParser
