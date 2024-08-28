package org.idempierelbr.nfe.process;

import java.util.logging.Level;

import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.idempierelbr.base.model.MLBRNotaFiscalLot;
import org.idempierelbr.nfe.util.NFeLotUtil;

public class SendNFeLot extends SvrProcess
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
		
		if (p_LBR_NotaFiscalLot_ID > 0) {
			String result = send(p_LBR_NotaFiscalLot_ID);
			
			if (result != null && !result.equals(""))
				throw new Exception(result);
		} else {
			// TODO:Implement to all org unsent lots
		}
		
		return "";
	}
	
	/**
	 * 	Send NF-e Lot to Sefaz 
	 *
	 * @param LBR_NotaFiscalLot_ID
	 */
	private String send(int LBR_NotaFiscalLot_ID) throws Exception{
		MLBRNotaFiscalLot lot = new MLBRNotaFiscalLot(getCtx(), LBR_NotaFiscalLot_ID, get_TrxName());
		NFeLotUtil lotUtil = new NFeLotUtil(lot);
		return lotUtil.sendLot();
	}
}
