package org.idempierelbr.openitems.util;

import org.compiere.util.CLogger;

public class OpenItemsUtil {
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(OpenItemsUtil.class);

	/**
	 * Get a substring of a two-part text, separated by '-', ex: 1234-56
	 * @param text
	 * @param isDigit true if you want to get the text second part
	 * @return String substring or null
	 */
	public static String getPartialText(String text, boolean isDigit)
	{
		if (text == null)
			return null;
		
		String main = null;
		String digit = null;
		
		if (text.contains("-")) {
			int index = text.indexOf("-");
			main = text.substring(0, index);
			digit = text.substring(index+1, text.length());
		} else {
			main = text;
		}
		
		if (isDigit)
			return digit;
		else
			return main;
	}
}
