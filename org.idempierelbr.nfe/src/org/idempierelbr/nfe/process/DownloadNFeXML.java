package org.idempierelbr.nfe.process;

import java.util.logging.Level;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.Env;
import org.idempierelbr.nfe.model.MLBRNFeXML;

public class DownloadNFeXML extends SvrProcess
{
	private int p_AD_Org_ID = 0;
	private String p_LBR_LastNSU = null;
	private String p_LBR_NSU = null;
	private String p_LBR_NFeID = null;
	
	@Override
	protected void prepare() 
	{
		ProcessInfoParameter[] para = getParameter();
		
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			
			if (para[i].getParameter() == null)
				;
			else if (name.equals("AD_Org_ID"))
				p_AD_Org_ID = para[i].getParameterAsInt();
			else if (name.equals("LBR_LastNSU"))
				p_LBR_LastNSU = para[i].getParameterAsString();
			else if (name.equals("LBR_NSU"))
				p_LBR_NSU = para[i].getParameterAsString();
			else if (name.equals("LBR_NFeID"))
				p_LBR_NFeID = para[i].getParameterAsString();
			else {
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
			}
		}
	}
	
	@Override
	protected String doIt() throws Exception {
		if (p_AD_Org_ID == 0)
			throw new Exception("No Organization defined");
		
		if ((p_LBR_LastNSU != null && (p_LBR_NSU != null || p_LBR_NFeID != null)) ||
				(p_LBR_NSU != null && (p_LBR_LastNSU != null || p_LBR_NFeID != null)) ||
				(p_LBR_NFeID != null && (p_LBR_LastNSU != null || p_LBR_NSU != null)))
			throw new Exception("Please enter only one of the optional fields!");			
		
		if (p_LBR_LastNSU == null && p_LBR_NSU == null && p_LBR_NFeID == null)
			p_LBR_LastNSU = "000000000000000";
		
		return MLBRNFeXML.requestWSAndProcess(getCtx(), p_AD_Org_ID, p_LBR_LastNSU, p_LBR_NSU, p_LBR_NFeID, get_TrxName());
	}
}
