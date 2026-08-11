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

import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Level;

import javax.xml.XMLConstants;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.compiere.util.CLogger;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/**
 * 	Índice das descrições (xs:documentation) publicadas nos schemas da SEFAZ.
 *
 * 	Permite traduzir o caminho de um elemento do XML (ex.: NFe/infNFe/dest/xNome)
 * 	na descrição oficial do campo (ex.: "Razão Social ou nome do destinatário"),
 * 	desambiguando os nomes que se repetem em grupos diferentes (emit, dest, transp...).
 *
 * 	O índice é construído sob demanda e mantido em memória por schema.
 *
 * 	@author Alan Lescano
 */
public class XsdDocIndex
{
	/**	Logger							*/
	private static CLogger log = CLogger.getCLogger(XsdDocIndex.class);

	/**	Diretório dos schemas			*/
	private static final String XSD_PATH = "/org/idempierelbr/nfe/xsd/";

	/**	Namespace do XML Schema			*/
	private static final String XSD_NS = XMLConstants.W3C_XML_SCHEMA_NS_URI;

	/**	Índices já construídos			*/
	private static final Map<String, XsdDocIndex> s_cache = new ConcurrentHashMap<String, XsdDocIndex>();

	/**	Índice vazio, usado quando o schema não pode ser lido	*/
	private static final XsdDocIndex EMPTY = new XsdDocIndex();

	/**	escopo/elemento -> descrição do elemento					*/
	private final Map<String, String> m_docs = new HashMap<String, String>();

	/**	escopo/elemento -> tipo nomeado, para descer no caminho		*/
	private final Map<String, String> m_types = new HashMap<String, String>();

	/**	elemento -> descrição, apenas quando o nome não é ambíguo	*/
	private final Map<String, String> m_byName = new HashMap<String, String>();

	/**	Nomes de elemento que aparecem com descrições diferentes		*/
	private final Set<String> m_ambiguous = new HashSet<String>();

	/**
	 * 	Obtém (construindo na primeira chamada) o índice de um schema.
	 *
	 * 	@param xsdFileName nome do arquivo, relativo ao diretório de schemas
	 * 	@return índice, nunca nulo
	 */
	public static XsdDocIndex get (String xsdFileName)
	{
		if (xsdFileName == null || xsdFileName.isEmpty())
			return EMPTY;
		//
		return s_cache.computeIfAbsent (xsdFileName, name -> {
			try
			{
				XsdDocIndex index = new XsdDocIndex();
				index.load (name, new HashSet<String>());
				return index;
			}
			catch (Exception e)
			{
				//	O índice é apenas um enriquecimento da mensagem: sem ele a
				//	validação continua funcionando, apenas sem a descrição do campo.
				log.log (Level.WARNING, "Não foi possível indexar as descrições do schema " + name, e);
				return EMPTY;
			}
		});
	}	//	get

	/**
	 * 	Descrição oficial do campo apontado pelo caminho.
	 *
	 * 	Percorre o caminho de cima para baixo, seguindo os tipos nomeados,
	 * 	de forma que xNome dentro de dest não seja confundido com xNome dentro de emit.
	 *
	 * 	@param path caminho do elemento, da raiz até o campo (ex.: NFe, infNFe, dest, xNome)
	 * 	@return descrição ou null quando não for possível determiná-la com segurança
	 */
	public String getDescription (List<String> path)
	{
		if (path == null || path.isEmpty())
			return null;
		//
		String scope = "";
		String doc = null;
		boolean resolved = true;
		//
		for (String name : path)
		{
			String key = scope + "/" + name;
			//
			if (!m_docs.containsKey (key) && !m_types.containsKey (key))
			{
				resolved = false;
				break;
			}
			//
			doc = m_docs.get (key);
			String type = m_types.get (key);
			scope = (type != null) ? type : name;
		}
		//
		if (resolved && doc != null)
			return doc;
		//
		//	Caminho não resolvido (ex.: assinatura digital, grupo com xs:extension).
		//	Só usa o nome isolado quando ele não é ambíguo no schema.
		String last = path.get (path.size() - 1);
		return m_byName.get (last);
	}	//	getDescription

	/**
	 * 	Carrega um schema e os que ele inclui.
	 *
	 * 	@param xsdFileName arquivo a carregar
	 * 	@param loaded arquivos já processados, evita recursão em includes circulares
	 */
	private void load (String xsdFileName, Set<String> loaded) throws Exception
	{
		if (!loaded.add (xsdFileName))
			return;
		//
		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
		factory.setNamespaceAware (true);
		factory.setFeature ("http://apache.org/xml/features/disallow-doctype-decl", true);
		DocumentBuilder builder = factory.newDocumentBuilder();
		//
		Document document = null;
		try (InputStream is = XsdDocIndex.class.getResourceAsStream (XSD_PATH + xsdFileName))
		{
			if (is == null)
			{
				log.warning ("Schema não encontrado para indexação: " + xsdFileName);
				return;
			}
			//
			document = builder.parse (is);
		}
		//
		walk (document.getDocumentElement(), "");
		//
		//	Processa os includes, que compartilham o mesmo namespace
		for (Element include : childElements (document.getDocumentElement()))
		{
			if (!"include".equals (localName (include)))
				continue;
			//
			String location = include.getAttribute ("schemaLocation");
			if (location != null && !location.isEmpty())
				load (resolve (xsdFileName, location), loaded);
		}
	}	//	load

	/**
	 * 	Percorre a árvore do schema registrando os elementos nomeados.
	 *
	 * 	O escopo de um elemento é o tipo nomeado que o declara ou, quando o tipo é
	 * 	declarado inline, o nome do elemento pai. É o que permite distinguir
	 * 	dest/xNome de emit/xNome.
	 *
	 * 	@param node nó atual
	 * 	@param scope escopo corrente
	 */
	private void walk (Element node, String scope)
	{
		for (Element child : childElements (node))
		{
			String name = localName (child);
			//
			if ("element".equals (name) && !child.getAttribute ("name").isEmpty())
			{
				String elementName = child.getAttribute ("name");
				String key = scope + "/" + elementName;
				String type = stripPrefix (child.getAttribute ("type"));
				String doc = documentationOf (child);
				//
				if (doc != null)
				{
					m_docs.putIfAbsent (key, doc);
					indexByName (elementName, doc);
				}
				//
				if (!type.isEmpty())
					m_types.putIfAbsent (key, type);
				else if (doc == null)
					//	Sem descrição e sem tipo: registra a chave para não interromper
					//	a resolução do caminho nos elementos abaixo dele
					m_docs.putIfAbsent (key, null);
				//
				walk (child, !type.isEmpty() ? type : elementName);
			}
			else if (("complexType".equals (name) || "group".equals (name) || "simpleType".equals (name))
					&& !child.getAttribute ("name").isEmpty())
			{
				walk (child, child.getAttribute ("name"));
			}
			else
			{
				//	xs:sequence, xs:choice, xs:complexContent, xs:extension... não criam escopo
				walk (child, scope);
			}
		}
	}	//	walk

	/**
	 * 	Registra a descrição pelo nome isolado do elemento, marcando como ambíguo
	 * 	todo nome que apareça com descrições diferentes.
	 */
	private void indexByName (String elementName, String doc)
	{
		if (m_ambiguous.contains (elementName))
			return;
		//
		String previous = m_byName.get (elementName);
		if (previous == null)
			m_byName.put (elementName, doc);
		else if (!previous.equals (doc))
		{
			m_byName.remove (elementName);
			m_ambiguous.add (elementName);
		}
	}	//	indexByName

	/**
	 * 	Texto do xs:documentation declarado diretamente no elemento.
	 */
	private String documentationOf (Element element)
	{
		for (Element annotation : childElements (element))
		{
			if (!"annotation".equals (localName (annotation)))
				continue;
			//
			for (Element documentation : childElements (annotation))
			{
				if (!"documentation".equals (localName (documentation)))
					continue;
				//
				String text = documentation.getTextContent();
				if (text == null)
					continue;
				//
				text = text.replaceAll ("\\s+", " ").trim();
				if (!text.isEmpty())
					return text;
			}
		}
		//
		return null;
	}	//	documentationOf

	/**
	 * 	Resolve o caminho de um include em relação ao schema que o declara.
	 */
	private String resolve (String baseFileName, String location)
	{
		int slash = baseFileName.lastIndexOf ('/');
		if (slash < 0)
			return location;
		//
		String directory = baseFileName.substring (0, slash + 1);
		String resolved = directory + location;
		//
		//	Normaliza eventuais ../ sem depender do sistema de arquivos
		while (resolved.contains ("/../"))
		{
			int up = resolved.indexOf ("/../");
			int previous = resolved.lastIndexOf ('/', up - 1);
			if (previous < 0)
			{
				resolved = resolved.substring (up + 4);
				break;
			}
			//
			resolved = resolved.substring (0, previous + 1) + resolved.substring (up + 4);
		}
		//
		return resolved;
	}	//	resolve

	/**
	 * 	Filhos do nó que sejam elementos do namespace do XML Schema.
	 */
	private List<Element> childElements (Element parent)
	{
		List<Element> result = new ArrayList<Element>();
		NodeList children = parent.getChildNodes();
		//
		for (int i = 0; i < children.getLength(); i++)
		{
			Node child = children.item (i);
			if (child.getNodeType() == Node.ELEMENT_NODE && XSD_NS.equals (child.getNamespaceURI()))
				result.add ((Element) child);
		}
		//
		return result;
	}	//	childElements

	private String localName (Element element)
	{
		String name = element.getLocalName();
		return (name != null) ? name : element.getNodeName();
	}	//	localName

	private String stripPrefix (String value)
	{
		if (value == null)
			return "";
		//
		int colon = value.indexOf (':');
		return (colon < 0) ? value : value.substring (colon + 1);
	}	//	stripPrefix
}	//	XsdDocIndex
