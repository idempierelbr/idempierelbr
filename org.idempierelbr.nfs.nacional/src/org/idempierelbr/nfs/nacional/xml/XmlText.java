package org.idempierelbr.nfs.nacional.xml;

/**
 * Utilitarios de texto compartilhados pelos serializadores de XML do padrao
 * nacional ({@link DPSXmlWriter}, {@link EventoXmlWriter}).
 */
final class XmlText {

	private XmlText() {
	}

	/** Grava {@code <name>value</name>}; nao grava nada se o valor for vazio. */
	static void el(StringBuilder x, String name, String value) {
		if (value == null || value.isEmpty())
			return;
		x.append('<').append(name).append('>').append(escape(value)).append("</").append(name).append('>');
	}

	/**
	 * Escapa o texto para conteudo de elemento e remove caracteres que nao
	 * sao permitidos em XML 1.0 (ex.: caracteres de controle vindos de uma
	 * descricao colada de outro programa), que fariam o DPS ser rejeitado.
	 */
	static String escape(String s) {
		StringBuilder sb = new StringBuilder(s.length());
		for (int i = 0; i < s.length(); i++) {
			char c = s.charAt(i);
			switch (c) {
			case '&': sb.append("&amp;"); break;
			case '<': sb.append("&lt;"); break;
			case '>': sb.append("&gt;"); break;
			default:
				if (c == 0x9 || c == 0xA || c == 0xD || (c >= 0x20 && c <= 0xD7FF) || (c >= 0xE000 && c <= 0xFFFD)
						|| Character.isSurrogate(c))
					sb.append(c);
			}
		}
		return sb.toString();
	}

	static String leftPad(String s, int size) {
		StringBuilder sb = new StringBuilder();
		for (int i = s.length(); i < size; i++)
			sb.append('0');
		return sb.append(s).toString();
	}
}
