package org.idempierelbr.nfe.test;

import static org.assertj.core.api.Assertions.assertThat;

import java.io.StringReader;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import javax.xml.XMLConstants;
import javax.xml.transform.stream.StreamSource;
import javax.xml.validation.Schema;
import javax.xml.validation.SchemaFactory;
import javax.xml.validation.Validator;

import org.idempierelbr.nfe.beans.CBSGrupoBean;
import org.idempierelbr.nfe.beans.IBSCBSBean;
import org.idempierelbr.nfe.beans.IBSCBSGrupoBean;
import org.idempierelbr.nfe.beans.IBSMunGrupoBean;
import org.idempierelbr.nfe.beans.IBSUFGrupoBean;
import org.idempierelbr.nfe.beans.ISBean;
import org.idempierelbr.nfe.beans.RedGrupoBean;
import org.idempierelbr.nfe.util.ValidaXML;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.ValueSource;
import org.xml.sax.ErrorHandler;
import org.xml.sax.SAXParseException;

/**
 * Schemas da NF-e do pacote PL_010h v1.03 (NT 2025.002-RTC v1.53): os XSD do bundle compilam
 * e os grupos IBSCBS e IS montados pelos beans são válidos contra eles.
 *
 * <p>O XStream do gerador fica embutido no bundle da NF-e. Aqui os beans são serializados por
 * reflexão, como o XStream faz: campos na ordem de declaração, nulos omitidos. Assim o teste
 * também pega um campo declarado fora da ordem do XSD.
 */
class NFeSchemaRTCTest {

	private static final String NFE_NS = "http://www.portalfiscal.inf.br/nfe";
	private static final String XSD_PATH = "/org/idempierelbr/nfe/xsd/";

	/** Grupos IBSCBS (TTribNFe) e IS (TIS) declarados como elementos, sobre o leiaute da NF-e */
	private static Schema fragments;

	@BeforeAll
	static void compileFragments() throws Exception {
		URL leiaute = ValidaXML.class.getResource(XSD_PATH + "leiauteNFe_v4.00.xsd");
		String xsd = "<xs:schema xmlns:xs=\"http://www.w3.org/2001/XMLSchema\" xmlns=\"" + NFE_NS + "\""
				+ " targetNamespace=\"" + NFE_NS + "\" elementFormDefault=\"qualified\">"
				+ "<xs:include schemaLocation=\"leiauteNFe_v4.00.xsd\"/>"
				+ "<xs:element name=\"IBSCBS\" type=\"TTribNFe\"/>"
				+ "<xs:element name=\"IS\" type=\"TIS\"/>"
				+ "</xs:schema>";
		// systemId de um arquivo vizinho: com o do próprio leiaute, o Xerces ignora o include
		String systemId = new URL(leiaute, "fragmentos-rtc.xsd").toExternalForm();
		fragments = factory().newSchema(new StreamSource(new StringReader(xsd), systemId));
	}

	@ParameterizedTest
	@ValueSource(strings = { "nfe_v4.00.xsd", "enviNFe_v4.00.xsd", "procNFe_v4.00.xsd", "retEnviNFe_v4.00.xsd",
			"consReciNFe_v4.00.xsd", "retConsReciNFe_v4.00.xsd", "consSitNFe_v4.00.xsd", "retConsSitNFe_v4.00.xsd",
			"consStatServ_v4.00.xsd", "retConsStatServ_v4.00.xsd", "inutNFe_v4.00.xsd", "procInutNFe_v4.00.xsd",
			"retInutNFe_v4.00.xsd" })
	void bundleSchemasCompileWithTheNewLayout(String xsd) throws Exception {
		URL url = ValidaXML.class.getResource(XSD_PATH + xsd);

		assertThat(url).as("%s no bundle da NF-e", xsd).isNotNull();
		assertThat(factory().newSchema(url)).as("%s compila com o leiaute do PL_010h", xsd).isNotNull();
	}

	@Test
	void selectiveTaxWithSpecificRate_isPublishedAsAdRemIS() throws Exception {
		ISBean is = new ISBean();
		is.setCSTIS("000");
		is.setcClassTribIS("000001");
		is.setvBCIS("100.00");
		is.setpIS("10.00");
		is.setadRemIS("1.50");
		is.setuTrib("UN");
		is.setqTrib("1.0000");
		is.setvIS("11.50");

		String xml = toXml("IS", is);

		assertThat(xml).contains("<adRemIS>1.50</adRemIS>").doesNotContain("pISEspec");
		assertThat(errors(xml)).as("grupo IS com alíquota específica").isEmpty();
	}

	@Test
	void selectiveTaxWithTheOldPISEspecTag_isRejectedByTheNewLayout() throws Exception {
		// UB07 passou a se chamar adRemIS; o XML antigo não passa mais no XSD
		String xml = "<IS xmlns=\"" + NFE_NS + "\"><CSTIS>000</CSTIS><cClassTribIS>000001</cClassTribIS>"
				+ "<vBCIS>100.00</vBCIS><pIS>10.00</pIS><pISEspec>1.50</pISEspec><uTrib>UN</uTrib>"
				+ "<qTrib>1.0000</qTrib><vIS>11.50</vIS></IS>";

		assertThat(errors(xml)).as("pISEspec não existe no PL_010h").isNotEmpty();
	}

	@Test
	void deprecatedPISEspecSetter_fillsAdRemIS() {
		ISBean is = new ISBean();
		is.setpISEspec(" 1.50 ");

		assertThat(is.getadRemIS()).isEqualTo("1.50");
	}

	@Test
	void ibscbsWithReduction_isValid() throws Exception {
		// cClassTrib 200034 (Anexo VII, redução de 60 %) sobre base de 100,00
		IBSCBSGrupoBean g = new IBSCBSGrupoBean();
		g.setvBC("100.00");

		IBSUFGrupoBean uf = new IBSUFGrupoBean();
		uf.setpIBSUF("0.10");
		uf.setgRed(red("60.00", "0.04"));
		uf.setvIBSUF("0.04");
		g.setgIBSUF(uf);

		IBSMunGrupoBean mun = new IBSMunGrupoBean();
		mun.setpIBSMun("0.00");
		mun.setgRed(red("60.00", "0.00"));
		mun.setvIBSMun("0.00");
		g.setgIBSMun(mun);

		g.setvIBS("0.04");

		CBSGrupoBean cbs = new CBSGrupoBean();
		cbs.setpCBS("0.90");
		cbs.setgRed(red("60.00", "0.36"));
		cbs.setvCBS("0.36");
		g.setgCBS(cbs);

		IBSCBSBean bean = new IBSCBSBean();
		bean.setCST("200");
		bean.setcClassTrib("200034");
		bean.setgIBSCBS(g);

		assertThat(errors(toXml("IBSCBS", bean))).as("IBSCBS com gRed nos três tributos").isEmpty();
	}

	@Test
	void ibscbsWithRatesUpToFourDecimals_isValid() throws Exception {
		// TDec_0302_04RTC aceita de 2 a 4 casas (ArredondamentoUtils.formatarAliquota)
		IBSCBSGrupoBean g = new IBSCBSGrupoBean();
		g.setvBC("1000.00");

		IBSUFGrupoBean uf = new IBSUFGrupoBean();
		uf.setpIBSUF("0.1234");
		uf.setvIBSUF("1.23");
		g.setgIBSUF(uf);

		IBSMunGrupoBean mun = new IBSMunGrupoBean();
		mun.setpIBSMun("0.00");
		mun.setvIBSMun("0.00");
		g.setgIBSMun(mun);

		g.setvIBS("1.23");

		CBSGrupoBean cbs = new CBSGrupoBean();
		cbs.setpCBS("8.812");
		cbs.setvCBS("88.12");
		g.setgCBS(cbs);

		IBSCBSBean bean = new IBSCBSBean();
		bean.setCST("000");
		bean.setcClassTrib("000001");
		bean.setgIBSCBS(g);

		assertThat(errors(toXml("IBSCBS", bean))).isEmpty();
	}

	@Test
	void ibscbsWithoutTheTaxGroup_isValid() throws Exception {
		// CST sem gIBSCBS (ex.: 410, imunidade): só CST e cClassTrib
		IBSCBSBean bean = new IBSCBSBean();
		bean.setCST("410");
		bean.setcClassTrib("410001");

		assertThat(errors(toXml("IBSCBS", bean))).isEmpty();
	}

	private static RedGrupoBean red(String pRedAliq, String pAliqEfet) {
		RedGrupoBean red = new RedGrupoBean();
		red.setpRedAliq(pRedAliq);
		red.setpAliqEfet(pAliqEfet);
		return red;
	}

	private static SchemaFactory factory() {
		return SchemaFactory.newInstance(XMLConstants.W3C_XML_SCHEMA_NS_URI);
	}

	private static List<String> errors(String xml) throws Exception {
		List<String> errors = new ArrayList<String>();
		Validator validator = fragments.newValidator();
		validator.setErrorHandler(new ErrorHandler() {
			@Override
			public void warning(SAXParseException e) {
			}

			@Override
			public void error(SAXParseException e) {
				errors.add(e.getMessage());
			}

			@Override
			public void fatalError(SAXParseException e) {
				errors.add(e.getMessage());
			}
		});
		validator.validate(new StreamSource(new StringReader(xml)));
		return errors;
	}

	/** Serializa como o XStream: campos na ordem de declaração, nulos omitidos */
	private static String toXml(String name, Object bean) throws Exception {
		StringBuilder sb = new StringBuilder("<").append(name).append(" xmlns=\"").append(NFE_NS).append("\">");
		appendFields(sb, bean);
		return sb.append("</").append(name).append(">").toString();
	}

	private static void appendFields(StringBuilder sb, Object bean) throws Exception {
		for (Field field : bean.getClass().getDeclaredFields()) {
			if (field.isSynthetic() || Modifier.isStatic(field.getModifiers()))
				continue;
			field.setAccessible(true);
			Object value = field.get(bean);
			if (value == null)
				continue;
			sb.append("<").append(field.getName()).append(">");
			if (value instanceof String)
				sb.append(value);
			else
				appendFields(sb, value);
			sb.append("</").append(field.getName()).append(">");
		}
	}
}
