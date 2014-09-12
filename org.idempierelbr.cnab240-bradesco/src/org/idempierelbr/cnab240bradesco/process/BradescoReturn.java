package org.idempierelbr.cnab240bradesco.process;

import java.io.File;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.idempierelbr.cnab240febraban.model.pojo.ArquivoBanco;

/**
 *	Return CNAB
 */
public class BradescoReturn extends SvrProcess
{
	private String p_CNABFile = null;
	
	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else if (name.equals("CNABFile"))
				p_CNABFile = (String) para[i].getParameter();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
	}	//	prepare

	/**
	 * 	Return CNAB
	 *	@return info
	 *	@throws Exception
	 */
	protected String doIt () throws Exception
	{
		// Validate Mandatory parameter
		if (p_CNABFile == null || p_CNABFile.length() == 0)
			throw new IllegalArgumentException("Missing required parameters");
		
		File CNABFile = new File(p_CNABFile);
		if (!CNABFile.exists())
			throw new AdempiereException("CNABFile " + p_CNABFile + " does not exist");
		if (!CNABFile.canRead())
			throw new AdempiereException("Cannot read CNABFile " + p_CNABFile);
		if (!CNABFile.isFile())
			throw new AdempiereException("CNABFile " + p_CNABFile + " is not a file");
		if (CNABFile.length() <= 0L)
			throw new AdempiereException("CNABFile " + p_CNABFile + " is empty");
		
		ArquivoBanco arquivoBanco = new ArquivoBanco(CNABFile);
		
		if (!arquivoBanco.isFileRead())
			throw new AdempiereException("CNAB Return failed");
				
		return process(arquivoBanco);	
	}	//	doIt

	private String process(ArquivoBanco arquivoBanco) {
		return null;
	}
}	//	CNABReturn
