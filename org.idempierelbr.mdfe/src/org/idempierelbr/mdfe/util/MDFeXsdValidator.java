package org.idempierelbr.mdfe.util;

import java.io.ByteArrayInputStream;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Level;

import javax.xml.XMLConstants;
import javax.xml.transform.stream.StreamSource;
import javax.xml.validation.Schema;
import javax.xml.validation.SchemaFactory;
import javax.xml.validation.Validator;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.util.CLogger;
import org.xml.sax.ErrorHandler;
import org.xml.sax.SAXParseException;

/**
 * Validacao do XML do MDF-e contra os schemas oficiais v3.00b.
 *
 * <p>Nao da para reusar {@code org.idempierelbr.nfe.util.ValidaXML}: ele resolve
 * o schema por {@code ValidaXML.class.getResource(XSD_PATH + nome)}, ou seja,
 * so enxerga os XSD que estao dentro do bundle da NF-e. Os do MDF-e estao aqui,
 * em {@code org/idempierelbr/mdfe/xsd/}.
 *
 * <p>Validar antes de transmitir evita a viagem de ida e volta ate a SEFAZ para
 * descobrir um campo fora de formato, e a mensagem local aponta a linha exata,
 * coisa que a rejeicao da SEFAZ nao faz.
 */
public class MDFeXsdValidator
{
	private static final CLogger log = CLogger.getCLogger(MDFeXsdValidator.class);

	private static final String XSD_PATH = "/org/idempierelbr/mdfe/xsd/";

	/**
	 * Nomes da propriedade de limite de maxOccurs, do mais novo para o mais
	 * antigo. JAXP padronizou o prefixo {@code jdk.xml.} depois; antes disso a
	 * chave era do proprio Oracle/Xerces.
	 */
	private static final String[] PROPS_MAX_OCCURS = {
		"jdk.xml.maxOccurLimit",
		"http://www.oracle.com/xml/jaxp/properties/maxOccurLimit",
		"http://apache.org/xml/properties/maxOccurLimit"
	};

	/** Schema do documento inteiro. */
	public static final String XSD_MDFE = "mdfe_v3.00.xsd";

	/**
	 * Schema do modal rodoviario.
	 *
	 * <p>Precisa de uma validacao a parte: em mdfeTiposBasico o grupo
	 * {@code infModal} e declarado como {@code <xs:any processContents="skip">},
	 * entao o schema principal passa por cima do conteudo do modal sem olhar.
	 */
	public static final String XSD_MODAL_RODOVIARIO = "mdfeModalRodoviario_v3.00.xsd";

	/** Schema do lote de envio sincrono. */
	public static final String XSD_ENVI_MDFE = "enviMDFe_v3.00.xsd";

	/** Schema do envelope de evento. */
	public static final String XSD_EVENTO = "eventoMDFe_v3.00.xsd";

	/**
	 * Schema do detalhe do evento de cancelamento.
	 *
	 * <p>Validado a parte pelo mesmo motivo do modal: em eventoMDFeTiposBasico o
	 * detEvento e {@code <xs:any processContents="skip">}.
	 */
	public static final String XSD_EV_CANCELAMENTO = "evCancMDFe_v3.00.xsd";

	/** Schema do detalhe do evento de encerramento. */
	public static final String XSD_EV_ENCERRAMENTO = "evEncMDFe_v3.00.xsd";

	/** Schema do detalhe do evento de inclusao de condutor. */
	public static final String XSD_EV_INC_CONDUTOR = "evIncCondutorMDFe_v3.00.xsd";

	/** Schemas ja compilados; Schema e imutavel e pode ser compartilhado entre threads. */
	private static final Map<String, Schema> s_schemas = new ConcurrentHashMap<>();

	private MDFeXsdValidator()
	{
	}

	/**
	 * Valida e estoura com a lista de erros quando o XML nao bate com o schema.
	 *
	 * @param xml     conteudo a validar
	 * @param xsdName nome do arquivo de schema, um dos {@code XSD_*} desta classe
	 */
	public static void validarEx(String xml, String xsdName)
	{
		List<String> erros = validar(xml, xsdName);

		if (!erros.isEmpty())
			throw new AdempiereException("XML do MDF-e invalido segundo " + xsdName + ":\n"
					+ String.join("\n", erros));
	}

	/**
	 * Valida e devolve os erros encontrados.
	 *
	 * @return lista vazia quando o XML e valido
	 */
	public static List<String> validar(String xml, String xsdName)
	{
		if (xml == null || xml.trim().isEmpty())
			throw new IllegalArgumentException("XML nao informado");

		List<String> erros = new ArrayList<>();

		try
		{
			Validator validator = getSchema(xsdName).newValidator();

			// Nao resolve entidade externa declarada no documento validado.
			// Xerces antigo (o que vem no target platform) nao reconhece estas
			// propriedades e lanca SAXNotRecognizedException - sem o try/catch a
			// validacao inteira morria antes de comecar. Onde nao ha suporte, o
			// bloqueio de entidade externa simplesmente nao se aplica; os XML
			// validados aqui sao os que nos mesmos geramos.
			blindar(validator, XMLConstants.ACCESS_EXTERNAL_DTD);
			blindar(validator, XMLConstants.ACCESS_EXTERNAL_SCHEMA);

			validator.setErrorHandler(new ErrorHandler()
			{
				@Override
				public void warning(SAXParseException e)
				{
				}

				@Override
				public void error(SAXParseException e)
				{
					erros.add(descrever(e));
				}

				@Override
				public void fatalError(SAXParseException e)
				{
					erros.add(descrever(e));
				}
			});

			validator.validate(new StreamSource(
					new ByteArrayInputStream(xml.getBytes(StandardCharsets.UTF_8))));
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "Falha ao validar contra " + xsdName, e);
			erros.add("Nao foi possivel validar contra " + xsdName + ": " + e.getMessage());
		}

		return erros;
	}

	/**
	 * Extrai o trecho {@code <rodo>...</rodo>} de dentro do infModal e valida
	 * contra o schema do modal rodoviario.
	 */
	public static void validarModalRodoviarioEx(String xmlMDFe)
	{
		int ini = xmlMDFe.indexOf("<rodo>");
		int fim = xmlMDFe.indexOf("</rodo>");

		if (ini < 0 || fim < 0)
			throw new AdempiereException("Grupo <rodo> nao encontrado no XML do MDF-e");

		String rodo = xmlMDFe.substring(ini, fim + "</rodo>".length());

		// o fragmento precisa carregar o namespace, que no documento inteiro
		// vem herdado do elemento MDFe
		rodo = rodo.replaceFirst("<rodo>",
				"<rodo xmlns=\"http://www.portalfiscal.inf.br/mdfe\">");

		validarEx(rodo, XSD_MODAL_RODOVIARIO);
	}

	// ------------------------------------------------------------------------

	private static Schema getSchema(String xsdName) throws Exception
	{
		Schema schema = s_schemas.get(xsdName);
		if (schema != null)
			return schema;

		URL url = MDFeXsdValidator.class.getResource(XSD_PATH + xsdName);
		if (url == null)
			throw new IllegalStateException("Schema do MDF-e nao encontrado no bundle: " + xsdName);

		SchemaFactory factory = SchemaFactory.newInstance(XMLConstants.W3C_XML_SCHEMA_NS_URI);
		liberarMaxOccurs(factory);
		schema = factory.newSchema(url);

		s_schemas.putIfAbsent(xsdName, schema);
		return schema;
	}

	/**
	 * Tira o teto de {@code maxOccurs} da compilacao do schema.
	 *
	 * <p>O leiaute oficial declara {@code infCTe} com {@code maxOccurs="20000"}
	 * (mdfeTiposBasico_v3.00.xsd, linha 359). O processamento seguro do JAXP,
	 * ligado por padrao, recusa qualquer {@code maxOccurs} acima de 5.000 - o
	 * limite existe contra schema bomb, um XSD hostil que faz o parser alocar
	 * memoria sem fim. O schema aqui nao e hostil nem vem de fora: e arquivo
	 * oficial da SEFAZ, empacotado dentro do bundle. Sem afrouxar isso, o
	 * mdfe_v3.00.xsd nao compila e nenhum MDF-e passa da validacao local.
	 *
	 * <p>Tenta primeiro so levantar o teto, mantendo o resto do processamento
	 * seguro de pe. Desligar o processamento seguro inteiro e o ultimo recurso,
	 * para JAXP que nao conheca nenhuma das duas propriedades.
	 *
	 * @return true se algum caminho funcionou
	 */
	private static boolean liberarMaxOccurs(SchemaFactory factory)
	{
		// Zero ou menos significa "sem limite" para os limites do JAXP.
		for (String propriedade : PROPS_MAX_OCCURS)
		{
			try
			{
				factory.setProperty(propriedade, "0");
				return true;
			}
			catch (Exception e)
			{
				log.fine("SchemaFactory nao suporta " + propriedade);
			}
		}

		try
		{
			factory.setFeature(XMLConstants.FEATURE_SECURE_PROCESSING, false);
			return true;
		}
		catch (Exception e)
		{
			log.log(Level.WARNING, "Nao foi possivel liberar o limite de maxOccurs", e);
			return false;
		}
	}

	/** setProperty tolerante: implementacoes antigas de Xerces nao conhecem estas chaves. */
	private static void blindar(Validator validator, String propriedade)
	{
		try
		{
			validator.setProperty(propriedade, "");
		}
		catch (Exception e)
		{
			log.fine("Validador nao suporta " + propriedade + ", seguindo sem a restricao");
		}
	}

	private static String descrever(SAXParseException e)
	{
		return "linha " + e.getLineNumber() + ", coluna " + e.getColumnNumber() + ": " + e.getMessage();
	}
}
