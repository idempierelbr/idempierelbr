package org.idempierelbr.openitems.util;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
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

	public static File createFile() throws IOException {
	
		String now = new SimpleDateFormat("ddMMyyHHmmss").format(new Date());
		File file = new File(System.getProperty("java.io.tmpdir") +
				System.getProperty("file.separator") + now + ".log");
		
		return file;
	}	
}
