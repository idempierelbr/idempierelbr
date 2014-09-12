package org.idempierelbr.openitems.process;

import java.sql.Timestamp;
import java.util.List;
import java.util.logging.Level;

import org.adempiere.base.Service;
import org.adempiere.base.ServiceQuery;
import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MBankAccount;
import org.compiere.process.ProcessCall;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.Trx;

/**
 *	Generate CNAB
 */
public class CNABGenerate extends SvrProcess
{
	/**	Manual Selection		*/
	@SuppressWarnings("unused")
	private boolean 	p_Selection = false;
	/**	Created					*/
	@SuppressWarnings("unused")
	private Timestamp	p_Created = null;
	/**	Org						*/
	private int			p_AD_Org_ID = 0;
	/** BankAccount				*/
	private int			p_C_BankAccount_ID = 0;
	/** Convenio				*/
	private int			p_LBR_BankAccount_Convenio_ID = 0;
	
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
			else if (name.equals("Selection"))
				p_Selection = "Y".equals(para[i].getParameter());
			else if (name.equals("Created"))
				p_Created = (Timestamp)para[i].getParameter();
			else if (name.equals("AD_Org_ID"))
				p_AD_Org_ID = para[i].getParameterAsInt();
			else if (name.equals("C_BankAccount_ID"))
				p_C_BankAccount_ID = para[i].getParameterAsInt();
			else if (name.equals("LBR_BankAccount_Convenio_ID"))
				p_LBR_BankAccount_Convenio_ID = para[i].getParameterAsInt();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
	}	//	prepare

	/**
	 * 	Generate CNAB
	 *	@return info
	 *	@throws Exception
	 */
	protected String doIt () throws Exception
	{
		if (p_AD_Org_ID < 1 || p_C_BankAccount_ID < 1 || p_LBR_BankAccount_Convenio_ID < 1)
			throw new AdempiereException(); //TODO: Corrigir
		
		MBankAccount bA = new MBankAccount(getCtx(), p_C_BankAccount_ID, get_TrxName());
		String routingNo = bA.getC_Bank().getRoutingNo();
		
		String msg = "Ok";
		
		if (routingNo != null) {
			ProcessCall process = getProcess(routingNo, false);
			process.setProcessUI(processUI);
			
			Trx trx = Trx.get(get_TrxName(), false);
			
			process.startProcess(getCtx(), getProcessInfo(), trx);
			msg = getProcessInfo().getSummary();
		}
		
		return msg;
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
}	//	CNABGenerate
