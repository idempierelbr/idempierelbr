package org.idempierelbr.core.util;

import java.util.Arrays;

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
	
	/**
	 * 	Verifica se lista contém uma determinada string.
	 * 
	 * 	@param stra
	 * 	@param strings
	 * 	@return TRUE se a lista contém a string, senão FALSO
	 */
	public static boolean match (Object obj, Object... objects)
	{
		if (obj == null || objects == null || objects.length == 0)
			return false;

		return Arrays.asList (objects).contains (obj);
	}
}
