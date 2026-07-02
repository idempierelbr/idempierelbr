package org.idempierelbr.nfe.test;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatCode;
import static org.assertj.core.api.Assertions.assertThatThrownBy;

import java.io.ByteArrayInputStream;
import java.nio.charset.StandardCharsets;

import javax.xml.parsers.DocumentBuilder;

import org.adempiere.exceptions.AdempiereException;
import org.idempierelbr.base.model.MLBRNFeWebService;
import org.idempierelbr.nfe.util.SefazSoapUtils;
import org.junit.jupiter.api.Test;

/**
 * Pure logic tests for {@link SefazSoapUtils}.
 * No DB, no network, no iDempiere container required.
 */
class SefazSoapTest {

	// -------------------------------------------------------------------------
	// stripDadosMsgWrapper
	// -------------------------------------------------------------------------

	@Test
	void stripDadosMsgWrapper_returnsInnerContent_whenAlreadyWrapped() {
		String result = SefazSoapUtils.stripDadosMsgWrapper("<nfeDadosMsg><inner/></nfeDadosMsg>");
		assertThat(result).isEqualTo("<inner/>");
	}

	@Test
	void stripDadosMsgWrapper_returnsTrimmed_whenNotWrapped() {
		String result = SefazSoapUtils.stripDadosMsgWrapper("  <inner/>  ");
		assertThat(result).isEqualTo("<inner/>");
	}

	@Test
	void stripDadosMsgWrapper_returnsEmpty_whenWhitespaceOnly() {
		String result = SefazSoapUtils.stripDadosMsgWrapper("   ");
		assertThat(result).isEmpty();
	}

	@Test
	void stripDadosMsgWrapper_returnsTrimmedAsIs_whenOnlyOpenTag() {
		String input = "<nfeDadosMsg><inner/>";
		String result = SefazSoapUtils.stripDadosMsgWrapper(input);
		assertThat(result).isEqualTo(input.trim());
	}

	// -------------------------------------------------------------------------
	// buildEnvelope — standard service
	// -------------------------------------------------------------------------

	@Test
	void buildEnvelope_containsSoapNamespace_whenStandardService() {
		String envelope = SefazSoapUtils.buildEnvelope(
			MLBRNFeWebService.SERVICE_NFE_AUTORIZACAO, "<payload/>");
		assertThat(envelope).contains("http://www.w3.org/2003/05/soap-envelope");
	}

	@Test
	void buildEnvelope_containsCorrectWsdlNamespace_whenStandardService() {
		String envelope = SefazSoapUtils.buildEnvelope(
			MLBRNFeWebService.SERVICE_NFE_AUTORIZACAO, "<payload/>");
		assertThat(envelope).contains("http://www.portalfiscal.inf.br/nfe/wsdl/NFeAutorizacao4");
	}

	@Test
	void buildEnvelope_usesNfeDadosMsgWrapper_whenStandardService() {
		String envelope = SefazSoapUtils.buildEnvelope(
			MLBRNFeWebService.SERVICE_NFE_AUTORIZACAO, "<payload/>");
		assertThat(envelope)
			.contains("<nfeDadosMsg")
			.doesNotContain("nfeDistDFeInteresse");
	}

	@Test
	void buildEnvelope_stripsPreExistingWrapper_whenStandardService() {
		String envelope = SefazSoapUtils.buildEnvelope(
			MLBRNFeWebService.SERVICE_NFE_AUTORIZACAO, "<nfeDadosMsg><payload/></nfeDadosMsg>");
		assertThat(countOccurrences(envelope, "<nfeDadosMsg"))
			.as("double-wrap must not occur")
			.isEqualTo(1);
	}

	@Test
	void buildEnvelope_producesParseableXml_whenStandardService() {
		String envelope = SefazSoapUtils.buildEnvelope(
			MLBRNFeWebService.SERVICE_NFE_AUTORIZACAO, "<payload/>");
		assertThatCode(() ->
			SefazSoapUtils.newHardenedDocumentBuilder().parse(
				new ByteArrayInputStream(envelope.getBytes(StandardCharsets.UTF_8))))
			.doesNotThrowAnyException();
	}

	// -------------------------------------------------------------------------
	// buildEnvelope — DistribuicaoDFe
	// -------------------------------------------------------------------------

	@Test
	void buildEnvelope_usesDistribuicaoWrapper_whenDfeService() {
		String envelope = SefazSoapUtils.buildEnvelope(
			MLBRNFeWebService.SERVICE_NFE_DISTRIBUICAO_DFE, "<payload/>");
		assertThat(envelope)
			.contains("<nfeDistDFeInteresse")
			.contains("<nfeDadosMsg>")
			.contains("<payload/>");
	}

	@Test
	void buildEnvelope_usesCorrectNamespace_whenDfeService() {
		String envelope = SefazSoapUtils.buildEnvelope(
			MLBRNFeWebService.SERVICE_NFE_DISTRIBUICAO_DFE, "<payload/>");
		assertThat(envelope).contains("http://www.portalfiscal.inf.br/nfe/wsdl/NFeDistribuicaoDFe");
	}

	@Test
	void buildEnvelope_stripsPreExistingWrapper_whenDfeService() {
		String envelope = SefazSoapUtils.buildEnvelope(
			MLBRNFeWebService.SERVICE_NFE_DISTRIBUICAO_DFE,
			"<nfeDadosMsg><payload/></nfeDadosMsg>");
		assertThat(countOccurrences(envelope, "<nfeDadosMsg"))
			.as("pre-existing nfeDadosMsg is stripped so exactly one wrapper is emitted inside nfeDistDFeInteresse")
			.isEqualTo(1);
	}

	// -------------------------------------------------------------------------
	// extractSoapBodyContent — success paths
	// -------------------------------------------------------------------------

	@Test
	void extractSoapBodyContent_returnsInnerElement_whenTwoLevelBody() throws Exception {
		String soap = "<soap12:Envelope xmlns:soap12=\"http://www.w3.org/2003/05/soap-envelope\">"
			+ "<soap12:Body>"
			+ "<nfeResultMsg xmlns=\"http://www.portalfiscal.inf.br/nfe/wsdl/NFeAutorizacao4\">"
			+ "<retEnviNFe><cStat>104</cStat></retEnviNFe>"
			+ "</nfeResultMsg>"
			+ "</soap12:Body>"
			+ "</soap12:Envelope>";
		String result = SefazSoapUtils.extractSoapBodyContent(soap);
		assertThat(result)
			.contains("cStat")
			.doesNotContain("nfeResultMsg");
	}

	@Test
	void extractSoapBodyContent_returnsServiceElement_whenSingleLevelBody() throws Exception {
		String soap = "<soap12:Envelope xmlns:soap12=\"http://www.w3.org/2003/05/soap-envelope\">"
			+ "<soap12:Body>"
			+ "<retConsStatServ><cStat>107</cStat></retConsStatServ>"
			+ "</soap12:Body>"
			+ "</soap12:Envelope>";
		String result = SefazSoapUtils.extractSoapBodyContent(soap);
		assertThat(result).contains("cStat");
	}

	// -------------------------------------------------------------------------
	// extractSoapBodyContent — SOAP Fault
	// -------------------------------------------------------------------------

	@Test
	void extractSoapBodyContent_throwsWithFaultTextReason_whenSoapFault() {
		String soap = "<soap12:Envelope xmlns:soap12=\"http://www.w3.org/2003/05/soap-envelope\">"
			+ "<soap12:Body>"
			+ "<soap12:Fault>"
			+ "<soap12:Code><soap12:Value>env:Receiver</soap12:Value></soap12:Code>"
			+ "<soap12:Reason><soap12:Text>Serviço Paralisado</soap12:Text></soap12:Reason>"
			+ "</soap12:Fault>"
			+ "</soap12:Body>"
			+ "</soap12:Envelope>";
		assertThatThrownBy(() -> SefazSoapUtils.extractSoapBodyContent(soap))
			.isInstanceOf(AdempiereException.class)
			.hasMessageContaining("Serviço Paralisado");
	}

	@Test
	void extractSoapBodyContent_throwsWithFaultCodeValue_whenSoapFaultHasNoText() {
		String soap = "<soap12:Envelope xmlns:soap12=\"http://www.w3.org/2003/05/soap-envelope\">"
			+ "<soap12:Body>"
			+ "<soap12:Fault>"
			+ "<soap12:Code><soap12:Value>env:Sender</soap12:Value></soap12:Code>"
			+ "</soap12:Fault>"
			+ "</soap12:Body>"
			+ "</soap12:Envelope>";
		assertThatThrownBy(() -> SefazSoapUtils.extractSoapBodyContent(soap))
			.isInstanceOf(AdempiereException.class)
			.hasMessageContaining("env:Sender");
	}

	// -------------------------------------------------------------------------
	// extractSoapBodyContent — error cases
	// -------------------------------------------------------------------------

	@Test
	void extractSoapBodyContent_throwsAdempiereException_whenNoBody() {
		String soap = "<soap12:Envelope xmlns:soap12=\"http://www.w3.org/2003/05/soap-envelope\"/>";
		assertThatThrownBy(() -> SefazSoapUtils.extractSoapBodyContent(soap))
			.isInstanceOf(AdempiereException.class);
	}

	@Test
	void extractSoapBodyContent_throwsAdempiereException_whenEmptyBody() {
		String soap = "<soap12:Envelope xmlns:soap12=\"http://www.w3.org/2003/05/soap-envelope\">"
			+ "<soap12:Body/>"
			+ "</soap12:Envelope>";
		assertThatThrownBy(() -> SefazSoapUtils.extractSoapBodyContent(soap))
			.isInstanceOf(AdempiereException.class);
	}

	@Test
	void extractSoapBodyContent_throwsException_whenMalformedXml() {
		assertThatThrownBy(() -> SefazSoapUtils.extractSoapBodyContent("<not-closed"))
			.isInstanceOf(Exception.class);
	}

	// -------------------------------------------------------------------------
	// newHardenedDocumentBuilder — XXE prevention
	// -------------------------------------------------------------------------

	@Test
	void newHardenedDocumentBuilder_rejectsDoctype_whenDoctypePresent() throws Exception {
		String xxe = "<?xml version=\"1.0\"?>"
			+ "<!DOCTYPE foo [<!ENTITY xxe SYSTEM \"file:///etc/passwd\">]>"
			+ "<root>&xxe;</root>";
		DocumentBuilder db = SefazSoapUtils.newHardenedDocumentBuilder();
		assertThatThrownBy(() -> db.parse(new ByteArrayInputStream(xxe.getBytes())))
			.as("DOCTYPE declaration must be rejected by hardened parser")
			.isInstanceOf(Exception.class);
	}

	@Test
	void newHardenedDocumentBuilder_parsesSuccessfully_whenValidXml() throws Exception {
		DocumentBuilder db = SefazSoapUtils.newHardenedDocumentBuilder();
		assertThatCode(() -> db.parse(new ByteArrayInputStream("<root><child/></root>".getBytes())))
			.doesNotThrowAnyException();
	}

	// -------------------------------------------------------------------------
	// helpers
	// -------------------------------------------------------------------------

	private static int countOccurrences(String text, String pattern) {
		int count = 0;
		int idx = 0;
		while ((idx = text.indexOf(pattern, idx)) != -1) {
			count++;
			idx += pattern.length();
		}
		return count;
	}
}
