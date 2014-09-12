package org.idempierelbr.openitems.process;

import java.util.List;
import java.util.logging.Level;

import org.adempiere.base.Service;
import org.adempiere.base.ServiceQuery;
import org.compiere.model.MBankAccount;
import org.compiere.process.ProcessCall;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.Trx;

/**
 *	Return CNAB
 */
public class CNABReturn extends SvrProcess
{
	private String 	p_CNABFile = null;
	/**	Org						*/
	private int		p_AD_Org_ID = 0;
	/** BankAccount				*/
	private int		p_C_BankAccount_ID = 0;
	
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
			else if (name.equals("AD_Org_ID"))
				p_AD_Org_ID = para[i].getParameterAsInt();
			else if (name.equals("C_BankAccount_ID"))
				p_C_BankAccount_ID = para[i].getParameterAsInt();
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
		if (p_CNABFile == null || p_CNABFile.length() == 0 || p_AD_Org_ID < 1 || p_C_BankAccount_ID < 1)
			throw new IllegalArgumentException("Missing required parameters");
		
		MBankAccount bA = new MBankAccount(getCtx(), p_C_BankAccount_ID, get_TrxName());
		String routingNo = bA.getC_Bank().getRoutingNo();
		
		if (routingNo != null) {
			ProcessCall process = getProcess(routingNo, false);
			process.setProcessUI(processUI);
			
			Trx trx = Trx.get(get_TrxName(), true);
			
			process.startProcess(getCtx(), getProcessInfo(), trx);			
		}
		
		return "Ok";
	}	//	doIt

	private ProcessCall getProcess(String routingNo, boolean isReturn) {
		ServiceQuery query = new ServiceQuery();
		List<ICNABFactory> factoryList = Service.locator().list(ICNABFactory.class, query).getServices();
		if (factoryList != null)
		{
			for(ICNABFactory factory : factoryList)
			{
				ProcessCall process = factory.newProcessInstance(routingNo, isReturn);
				if (process != null)
					return process;
			}
		}
		
		return null;
	}
}	//	CNABReturn
