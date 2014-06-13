package org.idempierelbr.nfe.process;

import java.io.InputStream;
import java.util.logging.Level;

import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.idempierelbr.nfe.model.MLBRNotaFiscalLot;

public class QueryNFeLot extends SvrProcess
{
	private int p_AD_Org_ID = 0;
	private int p_LBR_NotaFiscalLot_ID = 0;
	
	@Override
	protected void prepare() 
	{
		ProcessInfoParameter[] para = getParameter();
		
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			
			if (para[i].getParameter() == null)
				;
			else if (name.equals("AD_Org_ID")) {
				p_AD_Org_ID = para[i].getParameterAsInt();
			} else {
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
			}
		}
		
		p_LBR_NotaFiscalLot_ID = getRecord_ID();
	}
	
	@Override
	protected String doIt() throws Exception {
		if (p_LBR_NotaFiscalLot_ID == 0 && p_AD_Org_ID == 0)	{
			throw new Exception("No Organization defined");
		}
		
		if (p_LBR_NotaFiscalLot_ID > 0)
			query(p_LBR_NotaFiscalLot_ID);
		else {
			// TODO:Implement to all org unqueried lots
		}

		return "OK";
	}
	
	private String query(int LBR_NotaFiscalLot_ID) {
		MLBRNotaFiscalLot lot = new MLBRNotaFiscalLot(getCtx(), LBR_NotaFiscalLot_ID, get_TrxName());
		try {
			lot.consultaNFe();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "";
	}
	
	private String convertStreamToString(InputStream is) {
	    java.util.Scanner s = new java.util.Scanner(is).useDelimiter("\\A");
	    return s.hasNext() ? s.next() : "";
	}
}
