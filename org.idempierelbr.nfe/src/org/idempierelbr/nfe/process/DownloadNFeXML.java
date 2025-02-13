package org.idempierelbr.nfe.process;

import java.util.logging.Level;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.idempierelbr.nfe.util.NFeUtil;

public class DownloadNFeXML extends SvrProcess {
	private int p_AD_Org_ID = 0;
	private String p_LBR_LastNSU = null;
	private String p_LBR_NSU = null;
	private String p_LBR_NFeID = null;
	
	@Override
	protected void prepare() {
		ProcessInfoParameter[] para = getParameter();
		
		for (int i = 0; i < para.length; i++) {
			String name = para[i].getParameterName();
			
			if (para[i].getParameter() == null);
			
			else if (name.equals("AD_Org_ID"))
				p_AD_Org_ID = para[i].getParameterAsInt();
			else if (name.equals("LBR_LastNSU"))
				p_LBR_LastNSU = para[i].getParameterAsString();
			else if (name.equals("LBR_NSU"))
				p_LBR_NSU = para[i].getParameterAsString();
			else if (name.equals("LBR_NFeID"))
				p_LBR_NFeID = para[i].getParameterAsString();
			else {
				log.log(Level.SEVERE, "Parâmetro Desconhecido: " + name);
			}
		}
	}
	
	@Override
	protected String doIt() throws Exception {
		if (p_AD_Org_ID == 0) {
			throw new Exception("Sem organização definida!");
		}
				
		if ((p_LBR_LastNSU != null && (p_LBR_NSU != null || p_LBR_NFeID != null)) ||
			(p_LBR_NSU != null && (p_LBR_LastNSU != null || p_LBR_NFeID != null)) ||
			(p_LBR_NFeID != null && (p_LBR_LastNSU != null || p_LBR_NSU != null))) {
				throw new Exception("Introduza apenas um dos campos opcionais!");	
		}
					
		
		if (p_LBR_LastNSU == null && p_LBR_NSU == null && p_LBR_NFeID == null) {
			String lastDbNSU = DB.getSQLValueString(get_TrxName(), "SELECT MAX(LBR_NSU) FROM LBR_NFeXML WHERE AD_Org_ID=?", p_AD_Org_ID);
			
			if (lastDbNSU == null || lastDbNSU.length() != 15) {
				p_LBR_LastNSU = "000000000000000";
			}				
			else {
				p_LBR_LastNSU = lastDbNSU;
			}
				
		}
		
		return NFeUtil.requestWSAndProcess(getCtx(), p_AD_Org_ID, p_LBR_LastNSU, p_LBR_NSU, p_LBR_NFeID, get_TrxName());
	}
}
