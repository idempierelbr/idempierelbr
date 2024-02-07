package org.idempierelbr.core.model;

import java.util.logging.Level;

import org.compiere.util.CLogger;
import org.idempierelbr.base.util.TextUtil;

public class MIE {
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(MIE.class);
	private String ie;
	
	public MIE(String ie) {
		setIE(ie);
	}

	/**
	 *	Formata a IE para manter o DB consistente
	 *	@return String IE formatada
	 */
	public String getFormated()
	{
		if (getIE() == null)
			return null;

		String ieFormated = getIE().trim();
		
		if (ieFormated.length() > 0) {
			TextUtil textUtil = new TextUtil();
			ieFormated = textUtil.getNumbersOnly(ieFormated);
			log.log(Level.INFO, "iDempiereLBR: Formatando IE");
		}
		
		return ieFormated;
	}
	
	public String getIE() {
		return ie;
	}

	public void setIE(String ie) {
		this.ie = ie;
	}
}
