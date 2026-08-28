package org.idempierelbr.nfe.test;

import static org.assertj.core.api.Assertions.assertThat;

import java.io.ByteArrayInputStream;
import java.nio.charset.StandardCharsets;

import org.idempierelbr.nfe.util.NFeDistDFeUtil;
import org.idempierelbr.nfe.util.SefazSoapUtils;
import org.junit.jupiter.api.Test;
import org.w3c.dom.Document;

/**
 * Pure logic tests for {@link NFeDistDFeUtil} — classificação do docZip e
 * extração da chave de acesso.
 * No DB, no network, no iDempiere container required.
 */
class NFeDistDFeUtilTest {

	private static final String CHAVE = "35260812345678000199550010000123451234567890";

	private static final String NS = "xmlns=\"http://www.portalfiscal.inf.br/nfe\"";

	private static Document parse(String xml) throws Exception {
		return SefazSoapUtils.newHardenedDocumentBuilder()
			.parse(new ByteArrayInputStream(xml.getBytes(StandardCharsets.UTF_8)));
	}

	// -------------------------------------------------------------------------
	// getDFeType
	// -------------------------------------------------------------------------

	@Test
	void getDFeType_returnsNFE_whenSchemaIsResNFe() {
		assertThat(NFeDistDFeUtil.getDFeType("resNFe_v1.01.xsd")).isEqualTo("NFE");
	}

	@Test
	void getDFeType_returnsNFE_whenSchemaIsProcNFe() {
		assertThat(NFeDistDFeUtil.getDFeType("procNFe_v4.00.xsd")).isEqualTo("NFE");
	}

	@Test
	void getDFeType_returnsEVT_whenSchemaIsResEvento() {
		assertThat(NFeDistDFeUtil.getDFeType("resEvento_v1.01.xsd")).isEqualTo("EVT");
	}

	@Test
	void getDFeType_returnsEVT_whenSchemaIsProcEventoNFe() {
		assertThat(NFeDistDFeUtil.getDFeType("procEventoNFe_v1.00.xsd")).isEqualTo("EVT");
	}

	@Test
	void getDFeType_returnsCTE_whenSchemaIsProcCTe() {
		assertThat(NFeDistDFeUtil.getDFeType("procCTe_v3.00.xsd")).isEqualTo("CTE");
	}

	@Test
	void getDFeType_returnsNFE_whenSchemaIsNull() {
		assertThat(NFeDistDFeUtil.getDFeType(null)).isEqualTo("NFE");
	}

	// -------------------------------------------------------------------------
	// isCompleteSchema
	// -------------------------------------------------------------------------

	@Test
	void isCompleteSchema_isTrue_forProcSchemas() {
		assertThat(NFeDistDFeUtil.isCompleteSchema("procNFe_v4.00.xsd")).isTrue();
		assertThat(NFeDistDFeUtil.isCompleteSchema("procEventoNFe_v1.00.xsd")).isTrue();
	}

	@Test
	void isCompleteSchema_isFalse_forResSchemas() {
		assertThat(NFeDistDFeUtil.isCompleteSchema("resNFe_v1.01.xsd")).isFalse();
		assertThat(NFeDistDFeUtil.isCompleteSchema("resEvento_v1.01.xsd")).isFalse();
	}

	@Test
	void isCompleteSchema_isFalse_whenSchemaIsNull() {
		assertThat(NFeDistDFeUtil.isCompleteSchema(null)).isFalse();
	}

	// -------------------------------------------------------------------------
	// getNFeID
	// -------------------------------------------------------------------------

	@Test
	void getNFeID_readsKey_fromResNFe() throws Exception {
		String xml = "<resNFe " + NS + " versao=\"1.01\"><chNFe>" + CHAVE + "</chNFe>"
			+ "<CNPJ>12345678000199</CNPJ><xNome>FORNECEDOR LTDA</xNome>"
			+ "<dhEmi>2026-08-20T14:35:00-03:00</dhEmi><vNF>1234.56</vNF><cSitNFe>1</cSitNFe></resNFe>";

		assertThat(NFeDistDFeUtil.getNFeID(parse(xml))).isEqualTo(CHAVE);
	}

	@Test
	void getNFeID_readsKey_fromProtocol() throws Exception {
		assertThat(NFeDistDFeUtil.getNFeID(parse(procNFe(true)))).isEqualTo(CHAVE);
	}

	@Test
	void getNFeID_fallsBackToInfNFeId_whenProtocolHasNoKey() throws Exception {
		assertThat(NFeDistDFeUtil.getNFeID(parse(procNFe(false)))).isEqualTo(CHAVE);
	}

	@Test
	void getNFeID_readsKey_fromEvento() throws Exception {
		String xml = "<resEvento " + NS + " versao=\"1.01\"><cOrgao>35</cOrgao><CNPJ>98765432000188</CNPJ>"
			+ "<chNFe>" + CHAVE + "</chNFe><dhEvento>2026-08-21T09:00:00-03:00</dhEvento>"
			+ "<tpEvento>210210</tpEvento><nSeqEvento>1</nSeqEvento>"
			+ "<xEvento>Ciencia da Operacao</xEvento></resEvento>";

		assertThat(NFeDistDFeUtil.getNFeID(parse(xml))).isEqualTo(CHAVE);
	}

	@Test
	void getNFeID_returnsNull_whenDocumentHasNoKey() throws Exception {
		assertThat(NFeDistDFeUtil.getNFeID(parse("<resNFe " + NS + "><vNF>1.00</vNF></resNFe>"))).isNull();
	}

	/**
	 * NF-e completa com NFref antes do emit — o refNF repete os nomes nNF, mod,
	 * serie e CNPJ, que é onde uma leitura descuidada pega o documento errado.
	 *
	 * @param withProtocolKey se o protocolo traz a chNFe
	 */
	private static String procNFe(boolean withProtocolKey) {
		return "<nfeProc " + NS + " versao=\"4.00\"><NFe><infNFe Id=\"NFe" + CHAVE + "\" versao=\"4.00\">"
			+ "<ide><cUF>35</cUF><nNF>777</nNF><serie>1</serie><mod>55</mod>"
			+ "<dhEmi>2026-08-20T14:35:00-03:00</dhEmi>"
			+ "<NFref><refNF><cUF>35</cUF><AAMM>2601</AAMM><CNPJ>99999999000199</CNPJ>"
			+ "<mod>01</mod><serie>9</serie><nNF>111</nNF></refNF></NFref></ide>"
			+ "<emit><CNPJ>12345678000199</CNPJ><xNome>FORNECEDOR LTDA</xNome></emit>"
			+ "<dest><CNPJ>98765432000188</CNPJ><xNome>NOSSA EMPRESA</xNome></dest>"
			+ "<total><ICMSTot><vProd>1000.00</vProd><vNF>1234.56</vNF></ICMSTot></total>"
			+ "</infNFe></NFe><protNFe versao=\"4.00\"><infProt>"
			+ (withProtocolKey ? "<chNFe>" + CHAVE + "</chNFe>" : "")
			+ "<cStat>100</cStat><nProt>135260000123456</nProt></infProt></protNFe></nfeProc>";
	}
}
