package org.idempierelbr.openitems.processcnab240;

import java.io.File;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MBank;
import org.compiere.model.MBankAccount;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.idempierelbr.cnab240.annotated.CNABRecords;
import org.idempierelbr.openitems.process.IBankCollection;
import org.idempierelbr.openitems.util.OpenItemsUtil;


/**
 *	Return CNAB
 */
public class CNAB240Return extends SvrProcess
{
	private String p_CNABFile = null;
	private int p_C_BankAccount_ID;
	
	private CNABRecords records = null;
	
	private IBankCollection bankCollection;
	
	public CNAB240Return(CNABRecords records , IBankCollection bankCollection ) {
		super();
		this.records = records;
		this.bankCollection = bankCollection;
	}

	public CNAB240Return() {
		super();
	}

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

		MBankAccount bA = new MBankAccount(this.getCtx(), p_C_BankAccount_ID, this.get_TrxName());
		MBank m_bank = (MBank) bA.getC_Bank();

		String routingNo = m_bank.getRoutingNo();
		
		if (bankCollection == null ) {
			bankCollection = OpenItemsUtil.getBankCollectionInstance( routingNo );
		}
		
		if (bankCollection == null) {
			throw new AdempiereException ( "BankCollection não encontrado para banco nr. " + routingNo );
		}
		
		if (records == null) {
			log.warning("Utilizando registros no padrão FEBRABAN");
			records = new CNABRecords();
		}

		records.loadRecords(CNABFile);
		
		return CNABRecordsProcess.process( records , this , bankCollection );

	}	//	doIt


}	//	CNABReturn
