package org.idempierelbr.nfe.test;

import static org.assertj.core.api.Assertions.assertThat;

import java.io.ByteArrayInputStream;
import java.math.BigDecimal;
import java.nio.charset.StandardCharsets;

import org.idempierelbr.nfe.imports.NFeImportDocument;
import org.idempierelbr.nfe.imports.NFeImportItem;
import org.idempierelbr.nfe.imports.NFeXMLParser;
import org.idempierelbr.nfe.util.NFeDomUtil;
import org.idempierelbr.nfe.util.SefazSoapUtils;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

/**
 * Pure logic tests for {@link NFeXMLParser} — leitura de uma NF-e 4.00 com os
 * grupos que a importação anterior não tratava: documentos referenciados,
 * pagamento antecipado, cobrança, formas de pagamento e os tributos da Reforma
 * Tributária.
 * No DB, no network, no iDempiere container required.
 */
class NFeXMLParserTest {

	private static final String CHAVE = "35260812345678000199550010000123451234567890";
	private static final String CHAVE_REF = "35260712345678000199550010000111111234567891";
	private static final String CHAVE_ANTECIPADO = "35260612345678000199550010000099991234567892";

	private static NFeImportDocument nfe;

	@BeforeAll
	static void parseFixture() throws Exception {
		Document doc = SefazSoapUtils.newHardenedDocumentBuilder()
			.parse(new ByteArrayInputStream(procNFe().getBytes(StandardCharsets.UTF_8)));

		nfe = NFeXMLParser.parse(doc);
	}

	// -------------------------------------------------------------------------
	// Cabeçalho
	// -------------------------------------------------------------------------

	@Test
	void parse_readsHeader() {
		assertThat(nfe.chNFe).isEqualTo(CHAVE);
		assertThat(nfe.versionNo).isEqualTo("4.00");
		assertThat(nfe.nNF).isEqualTo("777");
		assertThat(nfe.serie).isEqualTo("1");
		assertThat(nfe.mod).isEqualTo("55");
		assertThat(nfe.natOp).isEqualTo("VENDA DE MERCADORIA");
		assertThat(nfe.tpNF).isEqualTo("1");
		assertThat(nfe.finNFe).isEqualTo("1");
		assertThat(nfe.cMunFG).isEqualTo("3550308");
		assertThat(nfe.dhEmi).isNotNull();
	}

	@Test
	void parse_readsParties() {
		assertThat(nfe.emitCNPJ).isEqualTo("12345678000199");
		assertThat(nfe.emitName).isEqualTo("FORNECEDOR & CIA LTDA");
		assertThat(nfe.emitLocation).contains("RUA DAS FLORES").contains("SAO PAULO-SP");
		assertThat(nfe.destCNPJ).isEqualTo("98765432000188");
		assertThat(nfe.destName).isEqualTo("NOSSA EMPRESA LTDA");
	}

	@Test
	void parse_readsTotalsAndProtocol() {
		assertThat(nfe.vProd).isEqualByComparingTo(new BigDecimal("1000.00"));
		assertThat(nfe.vNF).isEqualByComparingTo(new BigDecimal("1234.56"));
		assertThat(nfe.cStat).isEqualTo("100");
		assertThat(nfe.nProt).isEqualTo("135260000123456");
		assertThat(nfe.isAuthorized()).isTrue();
	}

	@Test
	void parse_readsAdditionalInfo() {
		assertThat(nfe.infCpl).isEqualTo("PEDIDO 4567");
		assertThat(nfe.infAdFisco).isEqualTo("DOCUMENTO EMITIDO POR ME");
		assertThat(nfe.info).isEqualTo("PEDIDO 4567 | DOCUMENTO EMITIDO POR ME");
	}

	// -------------------------------------------------------------------------
	// Itens
	// -------------------------------------------------------------------------

	@Test
	void parse_readsItems() {
		assertThat(nfe.items).hasSize(2);

		NFeImportItem first = nfe.items.get(0);
		assertThat(first.nItem).isEqualTo(1);
		assertThat(first.cProd).isEqualTo("FORN-001");
		assertThat(first.cEAN).isEqualTo("7891234567895");
		assertThat(first.xProd).isEqualTo("PARAFUSO SEXTAVADO 10MM");
		assertThat(first.NCM).isEqualTo("73181500");
		assertThat(first.CFOP).isEqualTo("5102");
		assertThat(first.uCom).isEqualTo("PC");
		assertThat(first.qCom).isEqualByComparingTo(new BigDecimal("100.0000"));
		assertThat(first.vUnCom).isEqualByComparingTo(new BigDecimal("8.0000000000"));
		assertThat(first.vProd).isEqualByComparingTo(new BigDecimal("800.00"));
		assertThat(first.vDesc).isEqualByComparingTo(new BigDecimal("10.00"));
		assertThat(first.det).isNotNull();
	}

	@Test
	void parse_readsFuelGroup() {
		NFeImportItem second = nfe.items.get(1);

		assertThat(second.cProdANP).isEqualTo("320102001");
		assertThat(second.UFCons).isEqualTo("SP");
		assertThat(second.pMixGN).isEqualByComparingTo(new BigDecimal("15.00"));
	}

	@Test
	void parse_startsWithoutProductMatch() {
		for (NFeImportItem item : nfe.items) {
			assertThat(item.isResolved()).isFalse();
			assertThat(item.matchLevel).isEqualTo(NFeImportItem.MATCH_NONE);
		}

		assertThat(nfe.getPendingItems()).hasSize(2);
	}

	// -------------------------------------------------------------------------
	// Documentos referenciados
	// -------------------------------------------------------------------------

	@Test
	void parse_readsReferencedNFe() {
		assertThat(nfe.docRefs).hasSize(3);

		NFeImportDocument.DocRef refNFe = nfe.docRefs.get(0);
		assertThat(refNFe.type).isEqualTo("0");
		assertThat(refNFe.chNFe).isEqualTo(CHAVE_REF);
	}

	@Test
	void parse_readsReferencedPaperInvoice() {
		NFeImportDocument.DocRef refNF = nfe.docRefs.get(1);

		assertThat(refNF.type).isEqualTo("2");
		assertThat(refNF.cUF).isEqualTo("35");
		assertThat(refNF.AAMM).isEqualTo("2601");
		assertThat(refNF.CNPJ).isEqualTo("99999999000199");
		assertThat(refNF.mod).isEqualTo("01");
		assertThat(refNF.serie).isEqualTo("9");
		assertThat(refNF.nNF).isEqualTo("111");
	}

	/**
	 * A nota de antecipação vem no grupo BB, fora do NFref, e é ela que permite
	 * abater o IBS/CBS já recolhido.
	 */
	@Test
	void parse_readsAdvancePaymentReference() {
		NFeImportDocument.DocRef antecipado = nfe.docRefs.get(2);

		assertThat(antecipado.type).isEqualTo("5");
		assertThat(antecipado.chNFe).isEqualTo(CHAVE_ANTECIPADO);
	}

	// -------------------------------------------------------------------------
	// Cobrança e pagamento
	// -------------------------------------------------------------------------

	@Test
	void parse_readsBilling() {
		assertThat(nfe.billing).isNotNull();
		assertThat(nfe.billing.nFat).isEqualTo("FAT-001");
		assertThat(nfe.billing.vOrig).isEqualByComparingTo(new BigDecimal("1244.56"));
		assertThat(nfe.billing.vDesc).isEqualByComparingTo(new BigDecimal("10.00"));
		assertThat(nfe.billing.vLiq).isEqualByComparingTo(new BigDecimal("1234.56"));
		assertThat(nfe.billing.duplicatas).hasSize(2);
		assertThat(nfe.billing.duplicatas.get(0).nDup).isEqualTo("001");
		assertThat(nfe.billing.duplicatas.get(0).vDup).isEqualByComparingTo(new BigDecimal("617.28"));
		assertThat(nfe.billing.duplicatas.get(0).dVenc).isNotNull();
	}

	@Test
	void parse_readsPayments() {
		assertThat(nfe.payments).hasSize(2);

		NFeImportDocument.Payment card = nfe.payments.get(0);
		assertThat(card.indPag).isEqualTo("1");
		assertThat(card.tPag).isEqualTo("03");
		assertThat(card.vPag).isEqualByComparingTo(new BigDecimal("617.28"));
		assertThat(card.tpIntegra).isEqualTo("1");
		assertThat(card.cardCNPJ).isEqualTo("11111111000191");
		assertThat(card.tBand).isEqualTo("01");
		assertThat(card.cAut).isEqualTo("AUT123456");

		NFeImportDocument.Payment pix = nfe.payments.get(1);
		assertThat(pix.tPag).isEqualTo("17");
		assertThat(pix.vPag).isEqualByComparingTo(new BigDecimal("617.28"));
		assertThat(pix.tpIntegra).isNull();
	}

	@Test
	void parse_readsChangeAndPaymentRule() {
		assertThat(nfe.vTroco).isEqualByComparingTo(new BigDecimal("0.00"));

		// na 4.00 o indPag desceu para o detPag — a leitura antiga, no ide,
		// deixava a condição de pagamento vazia
		assertThat(nfe.indPag).isEqualTo("1");
	}

	// -------------------------------------------------------------------------
	// Reforma Tributária: os grupos repetidos não podem se misturar
	// -------------------------------------------------------------------------

	/**
	 * {@code gDif}, {@code gDevTrib} e {@code gRed} têm nomes idênticos dentro
	 * de gIBSUF, gIBSMun e gCBS. Ler por descendente pegaria sempre o primeiro;
	 * a importação lê por filho direto de cada bloco.
	 */
	@Test
	void ibsCbsGroups_areReadPerBlock() {
		Element det = NFeXMLParser.getItemElements(nfe.doc).get(0);
		Element imposto = NFeDomUtil.child(det, "imposto");
		Element ibscbs = NFeDomUtil.child(imposto, "IBSCBS");
		Element gIBSCBS = NFeDomUtil.child(ibscbs, "gIBSCBS");

		assertThat(NFeDomUtil.childValue(ibscbs, "CST")).isEqualTo("000");
		assertThat(NFeDomUtil.childValue(ibscbs, "cClassTrib")).isEqualTo("000001");
		assertThat(NFeDomUtil.childAmt(gIBSCBS, "vBC")).isEqualByComparingTo(new BigDecimal("800.00"));

		Element gIBSUF = NFeDomUtil.child(gIBSCBS, "gIBSUF");
		assertThat(NFeDomUtil.childAmt(gIBSUF, "pIBSUF")).isEqualByComparingTo(new BigDecimal("0.1000"));
		assertThat(NFeDomUtil.childAmt(gIBSUF, "gDif", "pDif")).isEqualByComparingTo(new BigDecimal("10.0000"));
		assertThat(NFeDomUtil.childAmt(gIBSUF, "gDif", "vDif")).isEqualByComparingTo(new BigDecimal("0.08"));
		assertThat(NFeDomUtil.childAmt(gIBSUF, "gDevTrib", "vDevTrib")).isEqualByComparingTo(new BigDecimal("0.01"));
		assertThat(NFeDomUtil.childAmt(gIBSUF, "gRed", "pRedAliq")).isEqualByComparingTo(new BigDecimal("20.0000"));
		assertThat(NFeDomUtil.childAmt(gIBSUF, "gRed", "pAliqEfet")).isEqualByComparingTo(new BigDecimal("0.0800"));
		assertThat(NFeDomUtil.childAmt(gIBSUF, "vIBSUF")).isEqualByComparingTo(new BigDecimal("0.72"));

		Element gIBSMun = NFeDomUtil.child(gIBSCBS, "gIBSMun");
		assertThat(NFeDomUtil.childAmt(gIBSMun, "pIBSMun")).isEqualByComparingTo(new BigDecimal("0.0500"));
		assertThat(NFeDomUtil.childAmt(gIBSMun, "gDif", "pDif")).isEqualByComparingTo(new BigDecimal("5.0000"));
		assertThat(NFeDomUtil.childAmt(gIBSMun, "vIBSMun")).isEqualByComparingTo(new BigDecimal("0.38"));

		Element gCBS = NFeDomUtil.child(gIBSCBS, "gCBS");
		assertThat(NFeDomUtil.childAmt(gCBS, "pCBS")).isEqualByComparingTo(new BigDecimal("0.9000"));
		assertThat(NFeDomUtil.childAmt(gCBS, "gDif", "pDif")).isEqualByComparingTo(new BigDecimal("1.0000"));
		assertThat(NFeDomUtil.childAmt(gCBS, "gRed", "pAliqEfet")).isEqualByComparingTo(new BigDecimal("0.8500"));
		assertThat(NFeDomUtil.childAmt(gCBS, "vCBS")).isEqualByComparingTo(new BigDecimal("7.20"));
	}

	@Test
	void selectiveTax_isReadFromItem() {
		Element det = NFeXMLParser.getItemElements(nfe.doc).get(1);
		Element imposto = NFeDomUtil.child(det, "imposto");
		Element is = NFeDomUtil.child(imposto, "IS");

		assertThat(NFeDomUtil.childValue(is, "CSTIS")).isEqualTo("000");
		assertThat(NFeDomUtil.childValue(is, "cClassTribIS")).isEqualTo("000001");
		assertThat(NFeDomUtil.childAmt(is, "vBCIS")).isEqualByComparingTo(new BigDecimal("200.00"));
		assertThat(NFeDomUtil.childAmt(is, "pIS")).isEqualByComparingTo(new BigDecimal("2.5000"));
		assertThat(NFeDomUtil.childValue(is, "uTrib")).isEqualTo("LT");
		assertThat(NFeDomUtil.childAmt(is, "qTrib")).isEqualByComparingTo(new BigDecimal("50.0000"));
		assertThat(NFeDomUtil.childAmt(is, "vIS")).isEqualByComparingTo(new BigDecimal("5.00"));
	}

	/**
	 * O primeiro item não tem Imposto Seletivo — o grupo é opcional, e ler o
	 * do item seguinte seria pior do que não ler nada.
	 */
	@Test
	void selectiveTax_isAbsentOnFirstItem() {
		Element det = NFeXMLParser.getItemElements(nfe.doc).get(0);
		Element imposto = NFeDomUtil.child(det, "imposto");

		assertThat(NFeDomUtil.child(imposto, "IS")).isNull();
	}

	// -------------------------------------------------------------------------
	// Fixture
	// -------------------------------------------------------------------------

	private static String procNFe() {
		return "<nfeProc xmlns=\"http://www.portalfiscal.inf.br/nfe\" versao=\"4.00\">"
			+ "<NFe><infNFe Id=\"NFe" + CHAVE + "\" versao=\"4.00\">"
			+ "<ide><cUF>35</cUF><cNF>12345678</cNF><natOp>VENDA DE MERCADORIA</natOp>"
			+ "<mod>55</mod><serie>1</serie><nNF>777</nNF>"
			+ "<dhEmi>2026-08-20T14:35:00-03:00</dhEmi><dhSaiEnt>2026-08-20T16:00:00-03:00</dhSaiEnt>"
			+ "<tpNF>1</tpNF><idDest>1</idDest><cMunFG>3550308</cMunFG><tpImp>1</tpImp><tpEmis>1</tpEmis>"
			+ "<finNFe>1</finNFe><indFinal>0</indFinal><indPres>0</indPres>"
			+ "<NFref><refNFe>" + CHAVE_REF + "</refNFe></NFref>"
			+ "<NFref><refNF><cUF>35</cUF><AAMM>2601</AAMM><CNPJ>99999999000199</CNPJ>"
			+ "<mod>01</mod><serie>9</serie><nNF>111</nNF></refNF></NFref>"
			+ "<gPagAntecipado><refNFe>" + CHAVE_ANTECIPADO + "</refNFe></gPagAntecipado>"
			+ "</ide>"
			+ "<emit><CNPJ>12345678000199</CNPJ><xNome>FORNECEDOR &amp; CIA LTDA</xNome>"
			+ "<enderEmit><xLgr>RUA DAS FLORES</xLgr><nro>100</nro><xMun>SAO PAULO</xMun>"
			+ "<UF>SP</UF><CEP>01001000</CEP><cPais>1058</cPais><xPais>BRASIL</xPais></enderEmit>"
			+ "<IE>111222333444</IE></emit>"
			+ "<dest><CNPJ>98765432000188</CNPJ><xNome>NOSSA EMPRESA LTDA</xNome>"
			+ "<enderDest><xLgr>AVENIDA CENTRAL</xLgr><nro>500</nro><xMun>CAMPINAS</xMun>"
			+ "<UF>SP</UF><CEP>13010000</CEP><cPais>1058</cPais><xPais>BRASIL</xPais></enderDest></dest>"
			+ item1() + item2()
			+ "<total><ICMSTot><vProd>1000.00</vProd><vNF>1234.56</vNF></ICMSTot></total>"
			+ "<cobr><fat><nFat>FAT-001</nFat><vOrig>1244.56</vOrig><vDesc>10.00</vDesc><vLiq>1234.56</vLiq></fat>"
			+ "<dup><nDup>001</nDup><dVenc>2026-09-20</dVenc><vDup>617.28</vDup></dup>"
			+ "<dup><nDup>002</nDup><dVenc>2026-10-20</dVenc><vDup>617.28</vDup></dup></cobr>"
			+ "<pag><detPag><indPag>1</indPag><tPag>03</tPag><vPag>617.28</vPag>"
			+ "<card><tpIntegra>1</tpIntegra><CNPJ>11111111000191</CNPJ><tBand>01</tBand>"
			+ "<cAut>AUT123456</cAut></card></detPag>"
			+ "<detPag><indPag>0</indPag><tPag>17</tPag><vPag>617.28</vPag></detPag>"
			+ "<vTroco>0.00</vTroco></pag>"
			+ "<infAdic><infAdFisco>DOCUMENTO EMITIDO POR ME</infAdFisco><infCpl>PEDIDO 4567</infCpl></infAdic>"
			+ "</infNFe></NFe>"
			+ "<protNFe versao=\"4.00\"><infProt><chNFe>" + CHAVE + "</chNFe><cStat>100</cStat>"
			+ "<xMotivo>Autorizado o uso da NF-e</xMotivo><nProt>135260000123456</nProt></infProt></protNFe>"
			+ "</nfeProc>";
	}

	private static String item1() {
		return "<det nItem=\"1\"><prod><cProd>FORN-001</cProd><cEAN>7891234567895</cEAN>"
			+ "<xProd>PARAFUSO SEXTAVADO 10MM</xProd><NCM>73181500</NCM><CFOP>5102</CFOP>"
			+ "<uCom>PC</uCom><qCom>100.0000</qCom><vUnCom>8.0000000000</vUnCom><vProd>800.00</vProd>"
			+ "<vDesc>10.00</vDesc><vFrete>20.00</vFrete><indTot>1</indTot></prod>"
			+ "<imposto><ICMS><ICMS00><orig>0</orig><CST>00</CST><modBC>3</modBC>"
			+ "<vBC>800.00</vBC><pICMS>18.00</pICMS><vICMS>144.00</vICMS></ICMS00></ICMS>"
			+ "<IBSCBS><CST>000</CST><cClassTrib>000001</cClassTrib>"
			+ "<gIBSCBS><vBC>800.00</vBC>"
			+ "<gIBSUF><pIBSUF>0.1000</pIBSUF>"
			+ "<gDif><pDif>10.0000</pDif><vDif>0.08</vDif></gDif>"
			+ "<gDevTrib><vDevTrib>0.01</vDevTrib></gDevTrib>"
			+ "<gRed><pRedAliq>20.0000</pRedAliq><pAliqEfet>0.0800</pAliqEfet></gRed>"
			+ "<vIBSUF>0.72</vIBSUF></gIBSUF>"
			+ "<gIBSMun><pIBSMun>0.0500</pIBSMun>"
			+ "<gDif><pDif>5.0000</pDif><vDif>0.02</vDif></gDif>"
			+ "<vIBSMun>0.38</vIBSMun></gIBSMun>"
			+ "<gCBS><pCBS>0.9000</pCBS>"
			+ "<gDif><pDif>1.0000</pDif><vDif>0.07</vDif></gDif>"
			+ "<gRed><pRedAliq>5.0000</pRedAliq><pAliqEfet>0.8500</pAliqEfet></gRed>"
			+ "<vCBS>7.20</vCBS></gCBS>"
			+ "</gIBSCBS></IBSCBS></imposto></det>";
	}

	private static String item2() {
		return "<det nItem=\"2\"><prod><cProd>FORN-002</cProd><cEAN>SEM GTIN</cEAN>"
			+ "<xProd>GASOLINA COMUM</xProd><NCM>27101259</NCM><CFOP>5656</CFOP>"
			+ "<uCom>LT</uCom><qCom>50.0000</qCom><vUnCom>4.0000000000</vUnCom><vProd>200.00</vProd>"
			+ "<indTot>1</indTot>"
			+ "<comb><cProdANP>320102001</cProdANP><pMixGN>15.00</pMixGN><CODIF>1234</CODIF>"
			+ "<qTemp>50.0000</qTemp><UFCons>SP</UFCons></comb></prod>"
			+ "<imposto><IS><CSTIS>000</CSTIS><cClassTribIS>000001</cClassTribIS>"
			+ "<vBCIS>200.00</vBCIS><pIS>2.5000</pIS><uTrib>LT</uTrib><qTrib>50.0000</qTrib>"
			+ "<vIS>5.00</vIS></IS></imposto></det>";
	}
}
