package org.idempierelbr.nfe.process;

import java.util.logging.Level;

import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.idempierelbr.base.model.MLBRDigitalCertificate;

public class ValidateDigitalCertificate extends SvrProcess
{
	private int p_LBR_DigitalCertificate_ID = 0;
	private boolean p_UpdateFields = false;
	
	@Override
	protected void prepare() 
	{
		ProcessInfoParameter[] para = getParameter();
		
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			
			if (para[i].getParameter() == null)
				;
			else if (name.equals("UpdateFields")) {
				p_UpdateFields = para[i].getParameterAsBoolean();
			} else {
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
			}
		}
		
		p_LBR_DigitalCertificate_ID = getRecord_ID();
	}
	
	@Override
	protected String doIt() throws Exception {
		if (p_LBR_DigitalCertificate_ID <= 0)	{
			throw new Exception("No LBR_DigitalCertificate_ID defined");
		}
		
		MLBRDigitalCertificate dc = new MLBRDigitalCertificate(getCtx(),
				p_LBR_DigitalCertificate_ID, get_TrxName());
		String returnMsg = dc.validateIt(p_UpdateFields);
		
		if (returnMsg != null && !returnMsg.trim().equals(""))
			throw new Exception(returnMsg);

		return "Ok";
	}
}
