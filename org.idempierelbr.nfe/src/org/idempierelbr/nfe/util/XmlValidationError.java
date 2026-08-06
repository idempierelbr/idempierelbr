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

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 	Um erro de validação do XML contra o schema, já interpretado.
 *
 * 	As mensagens do validador (Xerces) são padronizadas, em inglês e pouco úteis
 * 	para o usuário final. Esta classe extrai delas o campo, o valor recusado e o
 * 	motivo, e reescreve tudo em português apontando o campo pelo nome com que a
 * 	SEFAZ o documenta.
 *
 * 	@author Alan Lescano
 */
public class XmlValidationError
{
	/**	Tamanho máximo do valor exibido na mensagem	*/
	private static final int MAX_VALUE_LENGTH = 150;

	/**	Tamanho máximo da máscara exibida na mensagem	*/
	private static final int MAX_PATTERN_LENGTH = 80;

	//	Restrições de conteúdo
	private static final Pattern P_MAX_LENGTH = Pattern.compile
			("cvc-maxLength-valid: Value '(.*)' with length = '(\\d+)' is not facet-valid with respect to maxLength '(\\d+)'", Pattern.DOTALL);
	private static final Pattern P_MIN_LENGTH = Pattern.compile
			("cvc-minLength-valid: Value '(.*)' with length = '(\\d+)' is not facet-valid with respect to minLength '(\\d+)'", Pattern.DOTALL);
	private static final Pattern P_LENGTH = Pattern.compile
			("cvc-length-valid: Value '(.*)' with length = '(\\d+)' is not facet-valid with respect to length '(\\d+)'", Pattern.DOTALL);
	private static final Pattern P_PATTERN = Pattern.compile
			("cvc-pattern-valid: Value '(.*)' is not facet-valid with respect to pattern '(.*)' for type '(.*)'\\.?", Pattern.DOTALL);
	private static final Pattern P_ENUMERATION = Pattern.compile
			("cvc-enumeration-valid: Value '(.*)' is not facet-valid with respect to enumeration '\\[(.*)\\]'", Pattern.DOTALL);
	private static final Pattern P_MIN_INCLUSIVE = Pattern.compile
			("cvc-minInclusive-valid: Value '(.*)' is not facet-valid with respect to minInclusive '(.*)' for type", Pattern.DOTALL);
	private static final Pattern P_MAX_INCLUSIVE = Pattern.compile
			("cvc-maxInclusive-valid: Value '(.*)' is not facet-valid with respect to maxInclusive '(.*)' for type", Pattern.DOTALL);
	private static final Pattern P_MIN_EXCLUSIVE = Pattern.compile
			("cvc-minExclusive-valid: Value '(.*)' is not facet-valid with respect to minExclusive '(.*)' for type", Pattern.DOTALL);
	private static final Pattern P_MAX_EXCLUSIVE = Pattern.compile
			("cvc-maxExclusive-valid: Value '(.*)' is not facet-valid with respect to maxExclusive '(.*)' for type", Pattern.DOTALL);
	private static final Pattern P_FRACTION_DIGITS = Pattern.compile
			("cvc-fractionDigits-valid: Value '(.*)' has (\\d+) fraction digits, but the number of fraction digits has been limited to (\\d+)", Pattern.DOTALL);
	private static final Pattern P_TOTAL_DIGITS = Pattern.compile
			("cvc-totalDigits-valid: Value '(.*)' has (\\d+) total digits, but the number of total digits has been limited to (\\d+)", Pattern.DOTALL);
	private static final Pattern P_DATATYPE = Pattern.compile
			("cvc-datatype-valid\\.1\\.2\\.1: '(.*)' is not a valid value for '(.*)'", Pattern.DOTALL);

	//	Identificação do elemento / estrutura
	private static final Pattern P_TYPE_313 = Pattern.compile
			("cvc-type\\.3\\.1\\.3: The value '(.*)' of element '(.*)' is not valid", Pattern.DOTALL);
	private static final Pattern P_INVALID_CONTENT = Pattern.compile
			("cvc-complex-type\\.2\\.4\\.(?:a|c): Invalid content was found starting with element '(.*?)'\\. One of '(.*)' is expected", Pattern.DOTALL);
	private static final Pattern P_INCOMPLETE_CONTENT = Pattern.compile
			("cvc-complex-type\\.2\\.4\\.b: The content of element '(.*?)' is not complete\\. One of '(.*)' is expected", Pattern.DOTALL);
	private static final Pattern P_UNEXPECTED_CONTENT = Pattern.compile
			("cvc-complex-type\\.2\\.4\\.d: Invalid content was found starting with element '(.*?)'\\.", Pattern.DOTALL);
	private static final Pattern P_EMPTY_CONTENT = Pattern.compile
			("cvc-complex-type\\.2\\.(?:1|3\\.2\\.1): Element '(.*?)' .*", Pattern.DOTALL);
	private static final Pattern P_MISSING_ATTRIBUTE = Pattern.compile
			("cvc-complex-type\\.4: Attribute '(.*?)' must appear on element '(.*?)'", Pattern.DOTALL);
	private static final Pattern P_INVALID_ATTRIBUTE = Pattern.compile
			("cvc-attribute\\.3: The value '(.*)' of attribute '(.*?)' on element '(.*?)' is not valid", Pattern.DOTALL);
	private static final Pattern P_UNDECLARED_ELEMENT = Pattern.compile
			("cvc-elt\\.1(?:\\.a)?: Cannot find the declaration of element '(.*?)'", Pattern.DOTALL);

	//	XML malformado
	private static final Pattern P_UNCLOSED_TAG = Pattern.compile
			("The element type \"(.*?)\" must be terminated by the matching end-tag", Pattern.DOTALL);

	/**	Prefixo de namespace nos nomes qualificados: {"namespace":elemento}	*/
	private static final Pattern P_NAMESPACE = Pattern.compile ("\"[^\"]*\":");

	private final String m_rawMessage;
	private final int m_line;
	private final int m_column;
	private final boolean m_fatal;

	private List<String> m_path = Collections.emptyList();
	private String m_itemNumber;
	private String m_element;
	private String m_attribute;
	private String m_description;
	private String m_value;
	private String m_reason;

	/**
	 * 	@param rawMessage mensagem original do validador
	 * 	@param line linha reportada
	 * 	@param column coluna reportada
	 * 	@param fatal true quando o XML está malformado e a validação foi interrompida
	 */
	public XmlValidationError (String rawMessage, int line, int column, boolean fatal)
	{
		m_rawMessage = (rawMessage != null) ? rawMessage.trim() : "";
		m_line = line;
		m_column = column;
		m_fatal = fatal;
		//
		interpret();
	}	//	XmlValidationError

	/**
	 * 	Traduz a mensagem do validador, extraindo campo, valor e motivo.
	 */
	private void interpret()
	{
		Matcher m;
		//
		if (m_fatal)
		{
			if ((m = P_UNCLOSED_TAG.matcher (m_rawMessage)).find())
				m_reason = "XML malformado, a tag <" + clean (m.group (1)) + "> não foi fechada corretamente.";
			else
				m_reason = "XML malformado: " + m_rawMessage;
			//
			return;
		}
		//
		if ((m = P_MAX_LENGTH.matcher (m_rawMessage)).find())
		{
			m_value = m.group (1);
			m_reason = "o valor informado tem " + m.group (2) + " caracteres, mas o máximo permitido é "
					+ m.group (3) + ".";
		}
		else if ((m = P_MIN_LENGTH.matcher (m_rawMessage)).find())
		{
			m_value = m.group (1);
			m_reason = "o valor informado tem " + m.group (2) + " caractere(s), mas o mínimo exigido é "
					+ m.group (3) + ".";
		}
		else if ((m = P_LENGTH.matcher (m_rawMessage)).find())
		{
			m_value = m.group (1);
			m_reason = "o valor informado tem " + m.group (2) + " caractere(s), mas são exigidos exatamente "
					+ m.group (3) + ".";
		}
		else if ((m = P_ENUMERATION.matcher (m_rawMessage)).find())
		{
			m_value = m.group (1);
			m_reason = "valor não permitido. Os valores aceitos são: " + m.group (2) + ".";
		}
		else if ((m = P_PATTERN.matcher (m_rawMessage)).find())
		{
			m_value = m.group (1);
			m_reason = "o valor não está no formato exigido pelo layout" + describePattern (m.group (2));
		}
		else if ((m = P_FRACTION_DIGITS.matcher (m_rawMessage)).find())
		{
			m_value = m.group (1);
			m_reason = "o valor tem " + m.group (2) + " casas decimais, mas o máximo permitido é "
					+ m.group (3) + ".";
		}
		else if ((m = P_TOTAL_DIGITS.matcher (m_rawMessage)).find())
		{
			m_value = m.group (1);
			m_reason = "o valor tem " + m.group (2) + " dígitos, mas o máximo permitido é " + m.group (3) + ".";
		}
		else if ((m = P_MIN_INCLUSIVE.matcher (m_rawMessage)).find())
		{
			m_value = m.group (1);
			m_reason = "o valor é menor que o mínimo permitido (" + m.group (2) + ").";
		}
		else if ((m = P_MAX_INCLUSIVE.matcher (m_rawMessage)).find())
		{
			m_value = m.group (1);
			m_reason = "o valor é maior que o máximo permitido (" + m.group (2) + ").";
		}
		else if ((m = P_MIN_EXCLUSIVE.matcher (m_rawMessage)).find())
		{
			m_value = m.group (1);
			m_reason = "o valor deve ser maior que " + m.group (2) + ".";
		}
		else if ((m = P_MAX_EXCLUSIVE.matcher (m_rawMessage)).find())
		{
			m_value = m.group (1);
			m_reason = "o valor deve ser menor que " + m.group (2) + ".";
		}
		else if ((m = P_DATATYPE.matcher (m_rawMessage)).find())
		{
			m_value = m.group (1);
			m_reason = "o valor não corresponde ao tipo de dado esperado (" + m.group (2) + ").";
		}
		else if ((m = P_TYPE_313.matcher (m_rawMessage)).find())
		{
			m_value = m.group (1);
			m_element = clean (m.group (2));
			m_reason = "o valor informado é inválido para este campo.";
		}
		else if ((m = P_INVALID_CONTENT.matcher (m_rawMessage)).find())
		{
			m_element = clean (m.group (1));
			m_reason = "campo fora de ordem, não previsto no grupo, ou campo obrigatório anterior não informado."
					+ " Neste ponto era esperado: " + clean (m.group (2)) + ".";
		}
		else if ((m = P_INCOMPLETE_CONTENT.matcher (m_rawMessage)).find())
		{
			m_element = clean (m.group (1));
			m_reason = "o grupo está incompleto, falta informar: " + clean (m.group (2)) + ".";
		}
		else if ((m = P_UNEXPECTED_CONTENT.matcher (m_rawMessage)).find())
		{
			m_element = clean (m.group (1));
			m_reason = "campo não previsto neste ponto do layout.";
		}
		else if ((m = P_MISSING_ATTRIBUTE.matcher (m_rawMessage)).find())
		{
			m_element = clean (m.group (2));
			m_reason = "o atributo obrigatório '" + clean (m.group (1)) + "' não foi informado.";
		}
		else if ((m = P_INVALID_ATTRIBUTE.matcher (m_rawMessage)).find())
		{
			m_value = m.group (1);
			m_attribute = clean (m.group (2));
			m_element = clean (m.group (3));
			m_reason = "o valor informado é inválido para este atributo.";
		}
		else if ((m = P_UNDECLARED_ELEMENT.matcher (m_rawMessage)).find())
		{
			m_element = clean (m.group (1));
			m_reason = "campo não existe no layout desta versão da NF-e.";
		}
		else if ((m = P_EMPTY_CONTENT.matcher (m_rawMessage)).find())
		{
			m_element = clean (m.group (1));
			m_reason = "o conteúdo do campo é inválido ou está vazio.";
		}
		//
		//	Campo presente porém sem conteúdo: a máscara do layout não explica nada
		//	ao usuário, o que ele precisa saber é que a informação não foi preenchida
		if (m_reason != null && m_value != null && m_value.trim().isEmpty())
			m_reason = "o campo foi gerado sem valor. Verifique o cadastro de origem desta informação.";
	}	//	interpret

	/**
	 * 	Absorve um erro complementar reportado pelo validador na mesma posição.
	 *
	 * 	O Xerces reporta a restrição violada (ex.: cvc-maxLength-valid) e, logo em
	 * 	seguida, um cvc-type.3.1.3 que nomeia o elemento. São o mesmo problema, e
	 * 	juntos formam uma única mensagem completa.
	 *
	 * 	@param other erro seguinte
	 * 	@return true se o erro foi absorvido e não deve ser listado separadamente
	 */
	public boolean absorb (XmlValidationError other)
	{
		if (other == null || other.m_line != m_line || other.m_column != m_column)
			return false;
		//
		//	O mesmo erro fatal chega pelo handler e pela exceção lançada ao parar a validação
		if (other.m_rawMessage.equals (m_rawMessage))
			return true;
		//
		//	cvc-type.3.1.3 nomeia o elemento, cvc-attribute.3 nomeia o atributo
		if (!other.m_rawMessage.startsWith ("cvc-type.3.1.3")
				&& !other.m_rawMessage.startsWith ("cvc-attribute.3"))
			return false;
		//
		if (m_element == null)
			m_element = other.m_element;
		if (m_attribute == null)
			m_attribute = other.m_attribute;
		if (m_value == null)
			m_value = other.m_value;
		//
		return true;
	}	//	absorb

	/**
	 * 	Mensagem final, em português, apresentada ao usuário.
	 */
	public String getUserMessage()
	{
		StringBuilder sb = new StringBuilder();
		//
		String field = (m_element != null && !m_element.isEmpty()) ? m_element : lastPathName();
		//
		if (m_fatal)
			sb.append ("Erro na estrutura do XML");
		else if (field != null)
		{
			sb.append ("Campo ").append (field);
			if (m_description != null && !m_description.isEmpty())
				sb.append (" (").append (m_description).append (")");
			if (m_attribute != null)
				sb.append (", atributo ").append (m_attribute);
		}
		else
			sb.append ("Erro de estrutura no XML");
		//
		if (m_itemNumber != null)
			sb.append (", item ").append (m_itemNumber).append (" da nota");
		//
		String group = m_fatal ? fullPath() : groupPath();
		if (group != null)
			sb.append ("\n   Grupo: ").append (group);
		//
		if (m_reason != null)
			sb.append ("\n   Motivo: ").append (m_reason);
		//
		if (m_value != null && !m_value.isEmpty())
			sb.append ("\n   Valor informado: ").append (truncate (m_value));
		//
		//	Sem tradução conhecida, entrega a mensagem original em vez de omitir o problema
		if (m_reason == null)
			sb.append ("\n   Detalhe: ").append (m_rawMessage);
		//
		return sb.toString();
	}	//	getUserMessage

	/**
	 * 	Resumo do erro em uma única linha.
	 *
	 * 	A barra de status da janela mostra apenas os primeiros caracteres da
	 * 	mensagem, então o essencial precisa caber logo no início dela.
	 */
	public String getShortMessage()
	{
		StringBuilder sb = new StringBuilder();
		//
		String field = (m_element != null && !m_element.isEmpty()) ? m_element : lastPathName();
		//
		if (!m_fatal && field != null)
		{
			sb.append ("campo ").append (field);
			//
			String group = groupPath();
			if (group != null)
			{
				//	Só o grupo imediato, o caminho completo fica no detalhamento
				sb.append (" (").append (m_path.get (m_path.size() - 2));
				if (m_itemNumber != null)
					sb.append (", item ").append (m_itemNumber);
				sb.append (")");
			}
			else if (m_itemNumber != null)
				sb.append (" (item ").append (m_itemNumber).append (")");
			//
			sb.append (" - ");
		}
		//
		sb.append ((m_reason != null) ? m_reason : m_rawMessage);
		return sb.toString();
	}	//	getShortMessage

	/**
	 * 	Caminho do grupo que contém o campo, sem a raiz e sem o próprio campo.
	 */
	private String groupPath()
	{
		if (m_path.size() < 2)
			return null;
		//
		return join (m_path.size() - 1);
	}	//	groupPath

	/**
	 * 	Caminho completo, usado quando o problema não é de um campo específico.
	 */
	private String fullPath()
	{
		return m_path.isEmpty() ? null : join (m_path.size());
	}	//	fullPath

	private String join (int size)
	{
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < size; i++)
		{
			if (sb.length() > 0)
				sb.append (" > ");
			sb.append (m_path.get (i));
		}
		//
		return sb.toString();
	}	//	join

	private String lastPathName()
	{
		return m_path.isEmpty() ? null : m_path.get (m_path.size() - 1);
	}	//	lastPathName

	/**
	 * 	Remove os namespaces dos nomes qualificados reportados pelo validador,
	 * 	deixando apenas o nome do elemento.
	 */
	private static String clean (String value)
	{
		if (value == null)
			return null;
		//
		//	O validador lista os elementos esperados como {"namespace":a, "namespace":b}
		String result = P_NAMESPACE.matcher (value).replaceAll ("");
		return result.replace ("{", "").replace ("}", "").replace ("\"", "").trim();
	}	//	clean

	/**
	 * 	Complementa o motivo com a máscara do campo.
	 *
	 * 	As máscaras de alguns campos (QR-Code, chave de acesso) têm centenas de
	 * 	caracteres e só atrapalhariam a leitura. Nesses casos ficam apenas no log,
	 * 	junto da mensagem original do validador.
	 */
	private static String describePattern (String pattern)
	{
		if (pattern == null || pattern.length() > MAX_PATTERN_LENGTH)
			return ".";
		//
		return " (formato esperado: " + pattern + ").";
	}	//	describePattern

	private static String truncate (String value)
	{
		String result = value.replaceAll ("\\s+", " ").trim();
		if (result.length() <= MAX_VALUE_LENGTH)
			return result;
		//
		return result.substring (0, MAX_VALUE_LENGTH) + "... (" + value.length() + " caracteres)";
	}	//	truncate

	/**
	 * 	Define o caminho do elemento no XML e enriquece o erro com a descrição
	 * 	oficial do campo publicada no schema.
	 *
	 * 	@param path caminho da raiz até o campo
	 * 	@param itemNumber número do item (nItem) quando o campo está dentro de det
	 * 	@param docIndex índice de descrições do schema
	 */
	public void setLocation (List<String> path, String itemNumber, XsdDocIndex docIndex)
	{
		m_path = (path != null) ? new ArrayList<String> (path) : Collections.<String>emptyList();
		m_itemNumber = itemNumber;
		//
		if (m_fatal)
			return;
		//
		if (m_element == null && !m_path.isEmpty())
			m_element = lastPathName();
		//
		if (docIndex != null && !m_path.isEmpty())
			m_description = docIndex.getDescription (m_path);
	}	//	setLocation

	public String getRawMessage()
	{
		return m_rawMessage;
	}	//	getRawMessage

	public int getLine()
	{
		return m_line;
	}	//	getLine

	public int getColumn()
	{
		return m_column;
	}	//	getColumn

	public String getElement()
	{
		return m_element;
	}	//	getElement

	public String getValue()
	{
		return m_value;
	}	//	getValue

	@Override
	public String toString()
	{
		return getUserMessage();
	}	//	toString
}	//	XmlValidationError
