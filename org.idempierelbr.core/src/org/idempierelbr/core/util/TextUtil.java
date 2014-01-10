package org.idempierelbr.core.util;

public class TextUtil {
	/**
	 * Obtém apenas os números [0-9] de uma String
	 * @return String apenas os números, null ou vazio
	 */
	public String getNumbersOnly(String text)
	{
		if (text == null)
			return null;

		return text.trim().replaceAll("[^0-9]*", "");
	}
}
