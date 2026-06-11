package org.idempierelbr.nfe.util;

import java.io.ByteArrayInputStream;
import java.io.StringWriter;
import java.nio.charset.StandardCharsets;
import java.util.Map;

import javax.xml.XMLConstants;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.adempiere.exceptions.AdempiereException;
import org.idempierelbr.base.model.MLBRNFeWebService;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/**
 * Pure SOAP 1.2 / XML utilities for SEFAZ NF-e 4.0 web services.
 * <p>
 * Contains no dependency on HTTP, TLS, or iDempiere models — only string and DOM
 * operations. Extracted from {@link SefazHttpClient} so this logic can be tested
 * directly without a network or database.
 */
public class SefazSoapUtils {

	private static final String SOAP_NS          = "http://www.w3.org/2003/05/soap-envelope";
	private static final String NFE_WSDL_BASE    = "http://www.portalfiscal.inf.br/nfe/wsdl/";
	private static final String DADOS_MSG_OPEN   = "<nfeDadosMsg>";
	private static final String DADOS_MSG_CLOSE  = "</nfeDadosMsg>";
	private static final String DIST_DFE_WRAPPER = "nfeDistDFeInteresse";

	private record ServiceConfig(String wsdlName, String operationName) {
		String soapAction()    { return NFE_WSDL_BASE + wsdlName + "/" + operationName; }
		String wsdlNamespace() { return NFE_WSDL_BASE + wsdlName; }
	}

	private static final ServiceConfig CFG_AUTORIZACAO        = new ServiceConfig("NFeAutorizacao4",       "nfeAutorizacaoLote");
	private static final ServiceConfig CFG_RET_AUTORIZACAO    = new ServiceConfig("NFeRetAutorizacao4",    "nfeRetAutorizacaoLote");
	private static final ServiceConfig CFG_INUTILIZACAO       = new ServiceConfig("NFeInutilizacao4",      "nfeInutilizacaoNF");
	private static final ServiceConfig CFG_RECEPCAO_EVENTO    = new ServiceConfig("NFeRecepcaoEvento4",    "nfeRecepcaoEvento");
	private static final ServiceConfig CFG_CONSULTA_PROTOCOLO = new ServiceConfig("NFeConsultaProtocolo4", "nfeConsultaNF");
	private static final ServiceConfig CFG_STATUS_SERVICO     = new ServiceConfig("NFeStatusServico4",     "nfeStatusServicoNF");
	private static final ServiceConfig CFG_CONSULTA_CADASTRO  = new ServiceConfig("CadConsultaCadastro4",  "consultaCadastro");
	private static final ServiceConfig CFG_DISTRIBUICAO_DFE   = new ServiceConfig("NFeDistribuicaoDFe",    "nfeDistDFeInteresse");

	private static final Map<String, ServiceConfig> SERVICE_CONFIGS = Map.ofEntries(
		Map.entry(MLBRNFeWebService.SERVICE_NFE_AUTORIZACAO,        CFG_AUTORIZACAO),
		Map.entry(MLBRNFeWebService.SERVICE_NFE_RET_AUTORIZACAO,    CFG_RET_AUTORIZACAO),
		Map.entry(MLBRNFeWebService.SERVICE_NFE_INUTILIZACAO,       CFG_INUTILIZACAO),
		Map.entry(MLBRNFeWebService.SERVICE_NFE_RECEPCAO_EVENTO,    CFG_RECEPCAO_EVENTO),
		Map.entry(MLBRNFeWebService.SERVICE_NFE_RECEPCAO_EVENTO_AN, CFG_RECEPCAO_EVENTO),
		Map.entry(MLBRNFeWebService.SERVICE_NFCE_RECEPCAO_EVENTO,   CFG_RECEPCAO_EVENTO),
		Map.entry(MLBRNFeWebService.SERVICE_NFE_CONSULTA_PROTOCOLO, CFG_CONSULTA_PROTOCOLO),
		Map.entry(MLBRNFeWebService.SERVICE_NFE_STATUS_SERVICO,     CFG_STATUS_SERVICO),
		Map.entry(MLBRNFeWebService.SERVICE_NFE_CONSULTA_CADASTRO,  CFG_CONSULTA_CADASTRO),
		Map.entry(MLBRNFeWebService.SERVICE_NFE_DISTRIBUICAO_DFE,   CFG_DISTRIBUICAO_DFE)
	);

	private SefazSoapUtils() {}

	static boolean isKnownService(String serviceName) {
		return SERVICE_CONFIGS.containsKey(serviceName);
	}

	static String getSoapAction(String serviceName) {
		ServiceConfig cfg = SERVICE_CONFIGS.get(serviceName);
		if (cfg == null)
			throw new IllegalArgumentException("Unknown SEFAZ service: " + serviceName);
		return cfg.soapAction();
	}

	public static String buildEnvelope(String serviceName, String xmlPayload) {
		ServiceConfig cfg = SERVICE_CONFIGS.get(serviceName);
		if (cfg == null)
			throw new IllegalArgumentException("Unknown SEFAZ service: " + serviceName);
		String wsdlNs = cfg.wsdlNamespace();

		if (CFG_DISTRIBUICAO_DFE.equals(cfg)) {
			return "<soap12:Envelope xmlns:soap12=\"" + SOAP_NS + "\">"
					+ "<soap12:Header/>"
					+ "<soap12:Body>"
					+ "<" + DIST_DFE_WRAPPER + " xmlns=\"" + wsdlNs + "\">"
					+ stripDadosMsgWrapper(xmlPayload)
					+ "</" + DIST_DFE_WRAPPER + ">"
					+ "</soap12:Body>"
					+ "</soap12:Envelope>";
		}

		return "<soap12:Envelope xmlns:soap12=\"" + SOAP_NS + "\">"
				+ "<soap12:Header/>"
				+ "<soap12:Body>"
				+ "<nfeDadosMsg xmlns=\"" + wsdlNs + "\">"
				+ stripDadosMsgWrapper(xmlPayload)
				+ DADOS_MSG_CLOSE
				+ "</soap12:Body>"
				+ "</soap12:Envelope>";
	}

	/**
	 * Strips the {@code <nfeDadosMsg>} wrapper from {@code xmlPayload} if present.
	 * Legacy callers may pre-wrap the payload before passing it in; since
	 * {@link #buildEnvelope} always adds the wrapper, a double-wrap would produce
	 * invalid SOAP. Also applied to the DistribuicaoDFe path, which uses a different
	 * outer element but must equally avoid a nested {@code <nfeDadosMsg>}.
	 */
	public static String stripDadosMsgWrapper(String xmlPayload) {
		String trimmed = xmlPayload.trim();
		if (trimmed.startsWith(DADOS_MSG_OPEN) && trimmed.endsWith(DADOS_MSG_CLOSE))
			return trimmed.substring(DADOS_MSG_OPEN.length(), trimmed.length() - DADOS_MSG_CLOSE.length());
		return trimmed;
	}

	/**
	 * Parses a SOAP 1.2 response and extracts the business-level XML from the Body.
	 * <p>
	 * Navigation is two levels deep: Body → service-response wrapper → actual NF-e result.
	 * Some SEFAZ services omit the inner wrapper and place the result directly under Body,
	 * in which case the service-response element itself is serialised and returned.
	 * <p>
	 * A {@code soap12:Fault} at the Body's first child position is raised as an
	 * {@link AdempiereException} rather than returned to the caller.
	 */
	public static String extractSoapBodyContent(String responseXml) throws Exception {
		DocumentBuilder db = newHardenedDocumentBuilder();
		Document doc = db.parse(
				new ByteArrayInputStream(responseXml.getBytes(StandardCharsets.UTF_8)));

		NodeList bodies = doc.getElementsByTagNameNS(SOAP_NS, "Body");
		if (bodies.getLength() == 0)
			throw new AdempiereException("SEFAZ response contains no SOAP Body");

		Element serviceResponse = firstChildElement((Element) bodies.item(0));
		if (serviceResponse == null)
			throw new AdempiereException("SEFAZ SOAP Body is empty");

		// Detect SOAP Fault before returning content to callers
		if (SOAP_NS.equals(serviceResponse.getNamespaceURI()) && "Fault".equals(serviceResponse.getLocalName()))
			throw new AdempiereException("SEFAZ SOAP Fault: " + extractFaultReason(serviceResponse));

		Element nfeResult = firstChildElement(serviceResponse);
		return elementToString(nfeResult != null ? nfeResult : serviceResponse);
	}

	/**
	 * Creates a namespace-aware {@link DocumentBuilder} with all OWASP-recommended XXE
	 * mitigations applied. Without these flags the default factory resolves DOCTYPE
	 * declarations and external entity references, allowing a rogue endpoint to read
	 * local files or trigger SSRF through the XML parser.
	 */
	public static DocumentBuilder newHardenedDocumentBuilder() throws Exception {
		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
		dbf.setNamespaceAware(true);
		dbf.setFeature(XMLConstants.FEATURE_SECURE_PROCESSING, true);
		dbf.setFeature("http://apache.org/xml/features/disallow-doctype-decl", true);
		dbf.setFeature("http://xml.org/sax/features/external-general-entities", false);
		dbf.setFeature("http://xml.org/sax/features/external-parameter-entities", false);
		dbf.setFeature("http://apache.org/xml/features/nonvalidating/load-external-dtd", false);
		dbf.setXIncludeAware(false);
		dbf.setExpandEntityReferences(false);
		dbf.setAttribute(XMLConstants.ACCESS_EXTERNAL_DTD, "");
		dbf.setAttribute(XMLConstants.ACCESS_EXTERNAL_SCHEMA, "");
		return dbf.newDocumentBuilder();
	}

	/**
	 * Creates a {@link TransformerFactory} hardened against external stylesheet injection.
	 * Without {@code ACCESS_EXTERNAL_STYLESHEET = ""}, a crafted XML containing an
	 * {@code xml-stylesheet} processing instruction could cause the transformer to fetch
	 * an attacker-controlled URL, enabling SSRF or data exfiltration.
	 */
	public static TransformerFactory newHardenedTransformerFactory() throws Exception {
		TransformerFactory tf = TransformerFactory.newInstance();
		tf.setFeature(XMLConstants.FEATURE_SECURE_PROCESSING, true);
		tf.setAttribute(XMLConstants.ACCESS_EXTERNAL_DTD, "");
		tf.setAttribute(XMLConstants.ACCESS_EXTERNAL_STYLESHEET, "");
		return tf;
	}

	private static String extractFaultReason(Element fault) {
		NodeList texts = fault.getElementsByTagNameNS(SOAP_NS, "Text");
		if (texts.getLength() > 0)
			return texts.item(0).getTextContent().trim();
		NodeList values = fault.getElementsByTagNameNS(SOAP_NS, "Value");
		if (values.getLength() > 0)
			return values.item(0).getTextContent().trim();
		return "Unknown SOAP fault";
	}

	private static Element firstChildElement(Element parent) {
		Node child = parent.getFirstChild();
		while (child != null && child.getNodeType() != Node.ELEMENT_NODE)
			child = child.getNextSibling();
		return (Element) child;
	}

	private static String elementToString(Element element) throws Exception {
		TransformerFactory tf = newHardenedTransformerFactory();
		Transformer t = tf.newTransformer();
		t.setOutputProperty(OutputKeys.OMIT_XML_DECLARATION, "yes");
		StringWriter sw = new StringWriter();
		t.transform(new DOMSource(element), new StreamResult(sw));
		return sw.toString();
	}
}
