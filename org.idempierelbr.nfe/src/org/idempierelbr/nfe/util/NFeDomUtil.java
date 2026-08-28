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
package org.idempierelbr.nfe.util;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import org.compiere.util.CLogger;
import org.idempierelbr.base.util.TextUtil;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/**
 * Leitura de XML de NF-e por filho direto.
 *
 * <p>O layout da NF-e repete nomes de tag em níveis diferentes, e ler por
 * {@code getElementsByTagName} num nó alto pega o valor errado sem avisar:
 * {@code ide/NFref/refNF} tem {@code nNF}, {@code mod} e {@code serie} iguais
 * aos do próprio {@code ide}, e os grupos {@code gDif}, {@code gDevTrib} e
 * {@code gRed} da Reforma Tributária aparecem idênticos dentro de
 * {@code gIBSUF}, {@code gIBSMun} e {@code gCBS}.
 *
 * <p>Por isso os métodos daqui andam apenas pelos filhos diretos do elemento
 * informado. As buscas em profundidade que sobraram são as poucas em que o
 * nome é único no documento.
 *
 * @author Alan Lescano
 */
public class NFeDomUtil {

	private static final CLogger log = CLogger.getCLogger(NFeDomUtil.class);

	private NFeDomUtil() {
	}

	/**
	 * Primeiro elemento com o nome informado em qualquer nível do documento.
	 * Só serve para nomes que não se repetem — {@code emit}, {@code ICMSTot},
	 * {@code infProt}.
	 *
	 * @return o elemento, ou nulo
	 */
	public static Element element(Document doc, String tag) {
		NodeList list = doc.getElementsByTagName(tag);

		if (list == null || list.getLength() == 0)
			return null;

		return (Element) list.item(0);
	}

	/**
	 * Valor do primeiro elemento com o nome informado em qualquer nível.
	 *
	 * @return o texto, ou nulo se ausente ou vazio
	 */
	public static String value(Document doc, String tag) {
		Element element = element(doc, tag);

		return element == null ? null : trimToNull(element.getTextContent());
	}

	/**
	 * Filho direto com o nome informado.
	 *
	 * @return o elemento, ou nulo
	 */
	public static Element child(Element parent, String tag) {
		if (parent == null)
			return null;

		NodeList children = parent.getChildNodes();

		for (int i = 0; i < children.getLength(); i++) {
			Node child = children.item(i);

			if (child.getNodeType() == Node.ELEMENT_NODE && tag.equals(child.getNodeName()))
				return (Element) child;
		}

		return null;
	}

	/**
	 * Todos os filhos diretos com o nome informado, na ordem do documento.
	 *
	 * @return a lista, vazia se não houver nenhum
	 */
	public static List<Element> children(Element parent, String tag) {
		List<Element> result = new ArrayList<Element>();

		if (parent == null)
			return result;

		NodeList children = parent.getChildNodes();

		for (int i = 0; i < children.getLength(); i++) {
			Node child = children.item(i);

			if (child.getNodeType() == Node.ELEMENT_NODE && tag.equals(child.getNodeName()))
				result.add((Element) child);
		}

		return result;
	}

	/**
	 * Valor do filho direto com o nome informado.
	 *
	 * @return o texto, ou nulo se ausente ou vazio
	 */
	public static String childValue(Element parent, String tag) {
		Element child = child(parent, tag);

		return child == null ? null : trimToNull(child.getTextContent());
	}

	/**
	 * Valor do filho direto, já sem as entidades HTML que alguns emitentes
	 * deixam escapar em descrições e razões sociais.
	 */
	public static String childText(Element parent, String tag) {
		String value = childValue(parent, tag);

		return value == null ? null : TextUtil.unescapeHtml3(value);
	}

	/**
	 * Valor numérico do filho direto.
	 *
	 * @return o valor, ou nulo se ausente ou ilegível
	 */
	public static BigDecimal childAmt(Element parent, String tag) {
		return toBigDecimal(childValue(parent, tag));
	}

	/**
	 * Valor numérico do filho direto de um neto — atalho para os grupos de dois
	 * níveis que se repetem na Reforma Tributária, como
	 * {@code gIBSUF/gDif/pDif}.
	 *
	 * @return o valor, ou nulo se qualquer nível estiver ausente
	 */
	public static BigDecimal childAmt(Element parent, String groupTag, String tag) {
		return childAmt(child(parent, groupTag), tag);
	}

	/**
	 * Data/hora do filho direto, no formato do layout ({@code AAAA-MM-DDThh:mm:ssTZD}
	 * na 4.00, {@code AAAA-MM-DD} na 3.10).
	 *
	 * @return o instante, ou nulo se ausente ou ilegível
	 */
	public static Timestamp childDate(Element parent, String tag) {
		return toTimestamp(childValue(parent, tag));
	}

	public static BigDecimal toBigDecimal(String value) {
		if (value == null)
			return null;

		try {
			return new BigDecimal(value.trim());
		} catch (NumberFormatException e) {
			log.warning("Valor inválido no XML: " + value);
			return null;
		}
	}

	public static Timestamp toTimestamp(String value) {
		if (value == null)
			return null;

		String date = value.trim();

		try {
			if (date.length() == 10)
				return TextUtil.stringToTime(date, "yyyy-MM-dd");

			return TextUtil.stringToTime(date.replace('T', ' '), "yyyy-MM-dd HH:mm:ss");
		} catch (Exception e) {
			log.warning("Data inválida no XML: " + value);
			return null;
		}
	}

	public static int toInt(String value, int defaultValue) {
		if (value == null)
			return defaultValue;

		try {
			return Integer.parseInt(value.trim());
		} catch (NumberFormatException e) {
			return defaultValue;
		}
	}

	/** @return o texto sem espaços nas pontas, ou nulo se nada sobrar */
	public static String trimToNull(String value) {
		if (value == null)
			return null;

		String trimmed = value.trim();

		return trimmed.isEmpty() ? null : trimmed;
	}
}	//	NFeDomUtil
