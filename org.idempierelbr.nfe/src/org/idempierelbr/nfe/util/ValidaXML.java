/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil					  *
 * This program is free software; you can redistribute it and/or modify it	  *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.		      *
 * See the GNU General Public License for more details.					      *
 * You should have received a copy of the GNU General Public License along	  *
 * with this program; if not, write to the Free Software Foundation, Inc.,	  *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.					  *
 *****************************************************************************/
package org.idempierelbr.nfe.util;

import java.io.StringReader;
import java.net.URL;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Deque;
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
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;


/**
 * 	Validação dos arquivos XML contra os schemas (XSD) publicados pela SEFAZ.
 *
 * 	A validação coleta todos os erros encontrados, e não apenas o primeiro, e
 * 	devolve uma mensagem em português identificando o campo, o grupo em que ele
 * 	está, o valor recusado e o motivo da recusa.
 *
 * 	@author Dilnei Cunha
 * 	@contributor Ricardo Santana (Kenos, www.kenos.com.br)
 * 	@contributor Alan Lescano
 */
public class ValidaXML
{
	/**	Logger						*/
	private static CLogger log = CLogger.getCLogger(ValidaXML.class);

	/**	Diretório dos schemas		*/
	private static final String XSD_PATH = "/org/idempierelbr/nfe/xsd/";

	/**	Número máximo de erros detalhados na mensagem ao usuário	*/
	private static final int MAX_REPORTED_ERRORS = 10;

	/**
	 * 	Schemas já compilados. Diferente do Validator, um Schema é imutável e
	 * 	pode ser compartilhado entre threads com segurança.
	 */
	private static final Map<String,Schema> s_schemas = new ConcurrentHashMap<String,Schema>();

	/**
	 * 		Método que faz a validação de arquivos XML.
	 *
	 * @param xmlContent
	 * @param xsdName
	 * @throws AdempiereException com o detalhamento dos erros encontrados
	 */
	public static void ValidaDocEx (String xmlContent, String xsdName) throws AdempiereException
	{
		String result = ValidaDoc (xmlContent, xsdName);
		//
		if (result != null && result.length() > 0)
			throw new AdempiereException (result);
	}	//	ValidaDocEx

	 /**
	 * Método que faz a validação de arquivos XML.
	 *
	 * @param xmlContent conteúdo do XML
	 * @param xsdFullFileName nome do schema, relativo ao diretório de schemas
	 * @return mensagem detalhada dos erros ou string vazia quando o XML é válido
	 */
	public static String ValidaDoc (String xmlContent, String xsdFullFileName)
	{
		List<XmlValidationError> errors;
		//
		try
		{
			errors = validate (xmlContent, xsdFullFileName);
		}
		catch (Exception e)
		{
			//	Falha na própria validação (schema ausente, XML malformado, etc.)
			log.log (Level.SEVERE, "Não foi possível validar o XML contra o schema " + xsdFullFileName, e);
			return "Não foi possível validar o XML contra o schema " + xsdFullFileName + ": " + e.getMessage();
		}
		//
		if (errors.isEmpty())
			return "";
		//
		String message = format (errors, xsdFullFileName);
		//
		//	O log recebe todos os erros, inclusive a mensagem original do validador
		log.severe (message + "\n\nMensagens originais do validador:\n" + raw (errors));
		//
		return toHtml (message);
	}	//	ValidaDoc

	/**
	 * 	Valida o XML e devolve todos os erros encontrados, já interpretados.
	 *
	 * 	@param xmlContent conteúdo do XML
	 * 	@param xsdFullFileName nome do schema, relativo ao diretório de schemas
	 * 	@return lista de erros, vazia quando o XML é válido
	 * 	@throws Exception quando não é possível executar a validação
	 */
	public static List<XmlValidationError> validate (String xmlContent, String xsdFullFileName) throws Exception
	{
		if (xmlContent == null || xmlContent.isEmpty())
			throw new IllegalArgumentException ("Conteúdo do XML não informado");
		//
		log.fine ("Validando XML contra " + xsdFullFileName);
		//
		Validator validator = getSchema (xsdFullFileName).newValidator();
		CollectingErrorHandler handler = new CollectingErrorHandler();
		validator.setErrorHandler (handler);
		//
		try
		{
			//	Não resolve entidades externas presentes no documento validado
			validator.setProperty (XMLConstants.ACCESS_EXTERNAL_DTD, "");
			validator.setProperty (XMLConstants.ACCESS_EXTERNAL_SCHEMA, "");
		}
		catch (SAXException e)
		{
			log.fine ("Validador não suporta restrição de acesso externo: " + e.getMessage());
		}
		//
		try
		{
			validator.validate (new StreamSource (new StringReader (xmlContent)));
		}
		catch (SAXParseException e)
		{
			//	Erro fatal: o parser interrompe a validação. Já passou pelo handler,
			//	mas é registrado aqui caso tenha sido lançado sem notificá-lo.
			handler.fatalError (e);
		}
		//
		List<XmlValidationError> errors = handler.getErrors();
		if (errors.isEmpty())
			return errors;
		//
		//	Localiza cada erro no XML e acrescenta a descrição oficial do campo
		XsdDocIndex docIndex = XsdDocIndex.get (xsdFullFileName);
		for (XmlValidationError error : errors)
		{
			ElementLocation location = locate (xmlContent, error.getLine(), error.getColumn());
			error.setLocation (location.path, location.itemNumber, docIndex);
		}
		//
		return errors;
	}	//	validate

	/**
	 * 	Obtém (compilando na primeira chamada) o schema.
	 */
	private static Schema getSchema (String xsdFullFileName) throws Exception
	{
		Schema schema = s_schemas.get (xsdFullFileName);
		if (schema != null)
			return schema;
		//
		URL xsdURL = ValidaXML.class.getResource (XSD_PATH + xsdFullFileName);
		if (xsdURL == null)
			throw new IllegalStateException ("Schema não encontrado: " + xsdFullFileName);
		//
		SchemaFactory schemaFactory = SchemaFactory.newInstance (XMLConstants.W3C_XML_SCHEMA_NS_URI);
		schema = schemaFactory.newSchema (xsdURL);
		//
		s_schemas.putIfAbsent (xsdFullFileName, schema);
		return schema;
	}	//	getSchema

	/**
	 * 	Monta a mensagem apresentada ao usuário.
	 *
	 * 	A primeira linha é um resumo autocontido, porque a barra de status da
	 * 	janela exibe apenas o início da mensagem; o detalhamento vem em seguida e
	 * 	é visto ao abrir a mensagem completa.
	 */
	private static String format (List<XmlValidationError> errors, String xsdFullFileName)
	{
		StringBuilder sb = new StringBuilder ("XML fora do layout da SEFAZ: ");
		//
		if (errors.size() > 1)
			sb.append (errors.size()).append (" problemas encontrados, o primeiro deles no ");
		//
		sb.append (errors.get (0).getShortMessage());
		//
		sb.append ("\n\nDetalhamento (").append (xsdFullFileName).append ("):");
		//
		int reported = Math.min (errors.size(), MAX_REPORTED_ERRORS);
		for (int i = 0; i < reported; i++)
			sb.append ("\n\n").append (i + 1).append (") ").append (errors.get (i).getUserMessage());
		//
		if (errors.size() > reported)
			sb.append ("\n\n... e mais ").append (errors.size() - reported)
				.append (" problema(s). A lista completa está no log do servidor.");
		//
		return sb.toString();
	}	//	format

	/**
	 * 	Converte a mensagem para o formato em que a interface a exibe.
	 *
	 * 	O iDempiere trata a mensagem de erro do documento como HTML (é assim que
	 * 	ModelValidationEngine une os erros dos event handlers, com &lt;br&gt;), então
	 * 	as quebras de linha precisam ser marcadas e o conteúdo dos campos escapado,
	 * 	sob pena de o sanitizador descartar trechos do texto.
	 *
	 * 	O arroba vira &amp;#64; para não ser confundido com um token de tradução por
	 * 	Msg.parseTranslation; a interface o restaura antes de exibir.
	 */
	private static String toHtml (String text)
	{
		return text
				.replace ("&", "&amp;")
				.replace ("<", "&lt;")
				.replace (">", "&gt;")
				.replace ("@", "&#64;")
				.replace ("\n", "<br>");
	}	//	toHtml

	/**
	 * 	Mensagens originais do validador, para o log.
	 */
	private static String raw (List<XmlValidationError> errors)
	{
		StringBuilder sb = new StringBuilder();
		int counter = 1;
		//
		for (XmlValidationError error : errors)
			sb.append (counter++).append (") [linha ").append (error.getLine())
				.append (", coluna ").append (error.getColumn()).append ("] ")
				.append (error.getRawMessage()).append ("\n");
		//
		return sb.toString();
	}	//	raw

	/**
	 * 	Reconstrói o caminho do elemento a partir da posição reportada pelo validador.
	 *
	 * 	O validador informa linha e coluna, mas não o caminho do elemento. Percorrer
	 * 	o XML até essa posição é o que permite distinguir, por exemplo, o xNome do
	 * 	destinatário do xNome do emitente, e identificar o item da nota.
	 *
	 * 	@param xml conteúdo do XML
	 * 	@param line linha reportada, 1-based
	 * 	@param column coluna reportada, 1-based
	 * 	@return localização, com caminho vazio quando não for possível determiná-la
	 */
	private static ElementLocation locate (String xml, int line, int column)
	{
		ElementLocation result = new ElementLocation();
		//
		int offset = offsetOf (xml, line, column);
		if (offset < 0)
			return result;
		//
		Deque<String> stack = new ArrayDeque<String>();
		String itemNumber = null;
		//
		//	Caminho do último elemento encerrado, e onde ele terminou. Os erros de
		//	conteúdo são reportados no fechamento da tag, quando ela já saiu da pilha.
		List<String> closedPath = null;
		String closedItem = null;
		int closedEnd = -1;
		//
		int i = 0;
		while (i < offset && i < xml.length())
		{
			if (xml.charAt (i) != '<')
			{
				i++;
				continue;
			}
			//
			if (xml.startsWith ("<!--", i))
			{
				int end = xml.indexOf ("-->", i);
				i = (end < 0) ? xml.length() : end + 3;
				continue;
			}
			//
			if (xml.startsWith ("<![CDATA[", i))
			{
				int end = xml.indexOf ("]]>", i);
				i = (end < 0) ? xml.length() : end + 3;
				continue;
			}
			//
			if (xml.startsWith ("<?", i) || xml.startsWith ("<!", i))
			{
				int end = xml.indexOf ('>', i);
				i = (end < 0) ? xml.length() : end + 1;
				continue;
			}
			//
			int end = xml.indexOf ('>', i);
			if (end < 0)
				break;
			//
			String tag = xml.substring (i + 1, end);
			String name = tagName (tag);
			//
			if (tag.startsWith ("/"))
			{
				if (!stack.isEmpty())
				{
					closedPath = new ArrayList<String> (stack);
					closedItem = itemNumber;
					closedEnd = end + 1;
					stack.removeLast();
					//
					if ("det".equals (name))
						itemNumber = null;
				}
			}
			else if (tag.endsWith ("/"))
			{
				stack.addLast (name);
				closedPath = new ArrayList<String> (stack);
				closedItem = itemNumber;
				closedEnd = end + 1;
				stack.removeLast();
			}
			else
			{
				stack.addLast (name);
				//
				if ("det".equals (name))
					itemNumber = attributeOf (tag, "nItem");
			}
			//
			i = end + 1;
		}
		//
		//	A posição coincide com o fim de um elemento: o erro é dele, não do pai
		if (closedPath != null && Math.abs (closedEnd - offset) <= 1)
		{
			result.path = closedPath;
			result.itemNumber = closedItem;
		}
		else
		{
			result.path = new ArrayList<String> (stack);
			result.itemNumber = itemNumber;
		}
		//
		return result;
	}	//	locate

	/**
	 * 	Converte linha e coluna em posição absoluta dentro do XML.
	 */
	private static int offsetOf (String xml, int line, int column)
	{
		if (line < 1 || column < 1)
			return -1;
		//
		int offset = 0;
		for (int current = 1; current < line; current++)
		{
			int breakAt = xml.indexOf ('\n', offset);
			if (breakAt < 0)
				return -1;
			//
			offset = breakAt + 1;
		}
		//
		offset += column - 1;
		return Math.min (offset, xml.length());
	}	//	offsetOf

	/**
	 * 	Nome do elemento a partir do conteúdo da tag, sem prefixo de namespace.
	 */
	private static String tagName (String tag)
	{
		int start = tag.startsWith ("/") ? 1 : 0;
		int end = start;
		//
		while (end < tag.length() && !Character.isWhitespace (tag.charAt (end)) && tag.charAt (end) != '/')
			end++;
		//
		String name = tag.substring (start, end);
		int colon = name.indexOf (':');
		return (colon < 0) ? name : name.substring (colon + 1);
	}	//	tagName

	/**
	 * 	Valor de um atributo declarado na tag.
	 */
	private static String attributeOf (String tag, String attribute)
	{
		int at = tag.indexOf (attribute + "=");
		if (at < 0)
			return null;
		//
		int start = at + attribute.length() + 1;
		if (start >= tag.length())
			return null;
		//
		char quote = tag.charAt (start);
		if (quote != '"' && quote != '\'')
			return null;
		//
		int end = tag.indexOf (quote, start + 1);
		return (end < 0) ? null : tag.substring (start + 1, end);
	}	//	attributeOf

	public static String validaEnvXML(String stringXml) {
		return ValidaDoc(stringXml, "enviNFe_v4.00.xsd");
	}

	public static String validaXML(String stringXml) {
		return ValidaDoc(stringXml, "nfe_v4.00.xsd");
	}

	public static String validaRetXML(String stringXml) {
		return ValidaDoc(stringXml, "retEnviNFe_v4.00.xsd");
	}

	public static String validaConsultaProt(String stringXml) {
		return ValidaDoc(stringXml, "consReciNFe_v4.00.xsd");
	}

	public static String validaRetornoConsultaProt(String stringXml) {
		return ValidaDoc(stringXml, "retConsReciNFe_v4.00.xsd");
	}

	public static String validaConsultaNFe(String stringXml) {
		return ValidaDoc(stringXml, "consSitNFe_v4.00.xsd");
	}

	public static String validaRetConsultaNFe(String stringXml) {
		return ValidaDoc(stringXml, "retConsSitNFe_v4.00.xsd");
	}

	public static String validaRecebimentoNFe(String stringXml) {
		return ValidaDoc(stringXml, "procNFe_v4.00.xsd");
	}

	public static String validaPedCancelamentoNFe(String stringXml) {
		return ValidaDoc(stringXml, "cancNFe_v2.00.xsd");
	}

	public static String validaRetCancelamentoNFe(String stringXml) {
		return ValidaDoc(stringXml, "retCancNFe_v2.00.xsd");
	}

	public static String validaPedInutilizacaoNFe(String stringXml) {
		return ValidaDoc(stringXml, "inutNFe_v4.00.xsd");
	}

	public static String validaRetInutilizacaoNFe(String stringXml) {
		return ValidaDoc(stringXml, "retInutNFe_v4.00.xsd");
	}

	/**
	 * 	Caminho de um elemento dentro do XML.
	 */
	private static class ElementLocation
	{
		List<String> path = Collections.emptyList();
		String itemNumber = null;
	}	//	ElementLocation
}	//	ValidaXML

/**
 * 	Coleta todos os erros da validação em vez de interromper no primeiro.
 *
 * 	@author Dilnei Cunha
 *	@contributor Ricardo Santana (Kenos, www.kenos.com.br)
 *	@contributor Alan Lescano
 */
class CollectingErrorHandler implements org.xml.sax.ErrorHandler
{
	private final List<XmlValidationError> m_errors = new ArrayList<XmlValidationError>();

	/**
	 * 	Erros encontrados, na ordem em que ocorrem no XML.
	 */
	List<XmlValidationError> getErrors()
	{
		return m_errors;
	}	//	getErrors

	@Override
	public void warning (SAXParseException exception) throws SAXException
	{
		//	Avisos não impedem a transmissão do arquivo
	}

	@Override
	public void error (SAXParseException exception) throws SAXException
	{
		add (exception, false);
	}

	@Override
	public void fatalError (SAXParseException exception) throws SAXException
	{
		add (exception, true);
	}

	/**
	 * 	Registra o erro, unindo-o ao anterior quando ambos descrevem o mesmo problema.
	 */
	private void add (SAXParseException exception, boolean fatal)
	{
		XmlValidationError error = new XmlValidationError (exception.getMessage(),
				exception.getLineNumber(), exception.getColumnNumber(), fatal);
		//
		if (!m_errors.isEmpty() && m_errors.get (m_errors.size() - 1).absorb (error))
			return;
		//
		m_errors.add (error);
	}	//	add
} 	//	CollectingErrorHandler
