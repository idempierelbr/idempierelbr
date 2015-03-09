package org.idempierelbr.openitems.process;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MBankAccount;
import org.compiere.model.MDocType;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoicePaySchedule;
import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.compiere.process.DocAction;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.idempierelbr.openitems.model.MLBRBankAccountCarteira;
import org.idempierelbr.openitems.model.MLBRBankAccountConvenio;
import org.idempierelbr.openitems.model.MLBRBoleto;
import org.idempierelbr.openitems.model.MLBRCollectionDefault;

/**
 *	Generate Boletos
 */
public class BoletoGenerate extends SvrProcess
{
	/**	Manual Selection		*/
	private boolean 	p_Selection = false;
	/**	Date Invoiced			*/
	private Timestamp	p_DateInvoiced = null;
	/**	Org						*/
	private int			p_AD_Org_ID = 0;
	/** BPartner				*/
	private int			p_C_BPartner_ID = 0;
	/** Invoice					*/
	private int			p_C_Invoice_ID = 0;
	/** Invoice Pay Schedule 	*/
	private int 		p_C_InvoicePaySchedule_ID = 0;
	/** Issue/Distribution		*/
	private String		p_LBR_CollectionIssueDistrib = null;
	/** Invoice Document Action	*/
	private String		p_docAction = DocAction.ACTION_Complete;
	
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
			else if (name.equals("DateInvoiced"))
				p_DateInvoiced = (Timestamp)para[i].getParameter();
			else if (name.equals("AD_Org_ID"))
				p_AD_Org_ID = para[i].getParameterAsInt();
			else if (name.equals("C_BPartner_ID"))
				p_C_BPartner_ID = para[i].getParameterAsInt();
			else if (name.equals("C_Invoice_ID"))
				p_C_Invoice_ID = para[i].getParameterAsInt();
			else if (name.equals("C_InvoicePaySchedule_ID"))
				p_C_InvoicePaySchedule_ID = para[i].getParameterAsInt();
			else if (name.equals("LBR_CollectionIssueDistrib"))
				p_LBR_CollectionIssueDistrib = para[i].getParameterAsString();
			else if (name.equals("DocAction"))
				p_docAction = (String)para[i].getParameter();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}

		//	DocAction check
		if (p_docAction == null || !DocAction.ACTION_Complete.equals(p_docAction))
			p_docAction = DocAction.ACTION_Prepare;
	}	//	prepare

	/**
	 * 	Generate Boletos
	 *	@return info
	 *	@throws Exception
	 */
	protected String doIt () throws Exception
	{
		if (log.isLoggable(Level.INFO)) log.info("Selection=" + p_Selection + ", DateInvoiced=" + p_DateInvoiced
				+ ", AD_Org_ID=" + p_AD_Org_ID + ", C_BPartner_ID=" + p_C_BPartner_ID
				+ ", C_Invoice_ID=" + p_C_Invoice_ID + ", LBR_CollectionIssueDistrib=" + p_LBR_CollectionIssueDistrib
				+ ", DocAction=" + p_docAction);
		
		if (getTable_ID() == MInvoice.Table_ID) {
			p_C_Invoice_ID = getRecord_ID();
			MInvoice invoice = new MInvoice(getCtx(), p_C_Invoice_ID, get_TrxName());
			p_AD_Org_ID = invoice.getAD_Org_ID();
		}
			
		if (p_AD_Org_ID < 1)
			throw new AdempiereException(); //TODO: Corrigir
		
		StringBuilder sql = null;
		if (p_Selection)	//	VBoletoGen
		{
			//TODO: To be implemented...
		}
		else
		{
			sql = new StringBuilder("SELECT * FROM C_Invoice i ")
			.append("WHERE DocStatus IN('CO','CL') AND IsSOTrx='Y' AND IsPaid<>'Y' AND PaymentRule='P'")
			.append(" AND LBR_PayInstrument='BC' AND LBR_CollectionIssueDistrib IN ('BAN','ORG') AND LBR_BankAccount_ID>0");
		if (p_AD_Org_ID != 0)
			sql.append(" AND AD_Org_ID=?");
		if (p_C_BPartner_ID != 0)
			sql.append(" AND C_BPartner_ID=?");
		if (p_C_Invoice_ID != 0)
			sql.append(" AND C_Invoice_ID=?");
		if (p_LBR_CollectionIssueDistrib != null)
			sql.append(" AND LBR_CollectionIssueDistrib=?");
		//
		sql.append(" AND EXISTS (SELECT * FROM C_InvoicePaySchedule ips ")
				.append("WHERE i.C_Invoice_ID=ips.C_Invoice_ID ");
		
				if (p_C_InvoicePaySchedule_ID != 0)
				 sql.append(" AND C_InvoicePaySchedule_ID=? ");
		
				 sql.append(" AND NOT EXISTS (SELECT * FROM LBR_Boleto b ")
						.append("WHERE b.C_InvoicePaySchedule_ID=ips.C_InvoicePaySchedule_ID)")
				.append(") ")
			.append("ORDER BY C_Invoice_ID");
		}
		
		PreparedStatement pstmt = null;
		try {
			pstmt = DB.prepareStatement (sql.toString(), get_TrxName());
			int index = 1;
			if (p_Selection) {
				// TODO: To be implemented...
			} else {
				if (p_AD_Org_ID != 0)
					pstmt.setInt(index++, p_AD_Org_ID);
				if (p_C_BPartner_ID != 0)
					pstmt.setInt(index++, p_C_BPartner_ID);
				if (p_C_Invoice_ID != 0)
					pstmt.setInt(index++, p_C_Invoice_ID);
				if (p_LBR_CollectionIssueDistrib != null)
					pstmt.setString(index++, p_LBR_CollectionIssueDistrib);
				if (p_C_InvoicePaySchedule_ID != 0)
					pstmt.setInt(index++, p_C_InvoicePaySchedule_ID);
			}
		} catch (Exception e) {
			throw new AdempiereException(e);
		}
		
		return generate(pstmt);
	}	//	doIt
	
	/**
	 * 	Generate Boletos
	 * 	@param pstmt invoice query 
	 *	@return info
	 */
	private String generate(PreparedStatement pstmt)
	{
		ResultSet rs = null;
		try
		{
			rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				MInvoice invoice = new MInvoice(getCtx(), rs, get_TrxName());
				MInvoicePaySchedule[] scheds = MInvoicePaySchedule.getInvoicePaySchedule(getCtx(),
						invoice.get_ID(), 0, get_TrxName());
				
				for (MInvoicePaySchedule sched : scheds) {
					String msg = null;
					
					if (p_C_InvoicePaySchedule_ID > 0) {
						if (p_C_InvoicePaySchedule_ID == sched.get_ID()) {
							if (isOkToCreateBoleto(sched)) // Just specific invoice pay schedule
								msg = createBoleto(invoice, sched);
							else
								return "Could not generate boleto for the Invoice Pay Schedule";
						}
					} else {
						if (isOkToCreateBoleto(sched))
							msg = createBoleto(invoice, sched);
					}
					
					if (msg != null)
						return msg;
				}
			}	//	for all invoices
		}
		catch (Exception e)
		{
			throw new AdempiereException(e);
		}
		finally
		{
			DB.close(rs, pstmt);
			rs = null;
			pstmt = null;
		}

		return "Ok";
	}	//	generate
	
	private String createBoleto(MInvoice invoice, MInvoicePaySchedule sched) throws Exception {
		// Source document type
		MDocType docType = new MDocType(getCtx(), invoice.getC_DocType_ID(), get_TrxName());
		if (docType.get_ID() <= 0)
			docType = new MDocType(getCtx(), invoice.getC_DocTypeTarget_ID(), get_TrxName());
		
		// Check document type
		int LBR_C_DocTypeBoleto_ID = docType.get_ValueAsInt("LBR_C_DocTypeBoleto_ID");

		if (LBR_C_DocTypeBoleto_ID <= 0)
			throw new Exception("No document type defined");
		
		// BP Location
		MBPartnerLocation bpartnerLoc = null;
		MBPartnerLocation[] locs = MBPartnerLocation.getForBPartner(getCtx(), invoice.getC_BPartner_ID(), get_TrxName());
		
		for (MBPartnerLocation loc : locs) {
			if (loc.isPayFrom() && loc.isActive())
				bpartnerLoc = loc;
		}

		// Create the Boleto
		MLBRBoleto boleto = new MLBRBoleto(getCtx(), 0, get_TrxName());
		boleto.setAD_Org_ID(invoice.getAD_Org_ID());
		boleto.setC_DocType_ID(LBR_C_DocTypeBoleto_ID);
		boleto.setDateDoc(new Timestamp(new java.util.Date().getTime()));
		boleto.setDateAcct(boleto.getDateDoc());
		boleto.setC_Invoice_ID(invoice.get_ID());
		boleto.setC_InvoicePaySchedule_ID(sched.get_ID());
		boleto.setC_BPartner_ID(invoice.getC_BPartner_ID());
		
		if (bpartnerLoc == null)
			boleto.setC_BPartner_Location_ID(invoice.getC_BPartner_Location_ID());
		else
			boleto.setC_BPartner_Location_ID(bpartnerLoc.get_ID());
		
		MBankAccount bA = new MBankAccount(getCtx(), invoice.get_ValueAsInt("LBR_BankAccount_ID"), get_TrxName());
		
		if (bA.getC_Bank_ID() <= 0)
			throw new Exception("No bank or bank account defined");
		
		boleto.setC_Bank_ID(bA.getC_Bank_ID());
		boleto.setC_BankAccount_ID(bA.get_ID());
		boleto.setLBR_NumberInOrg(MLBRBoleto.generateRelativeNumberInOrg(sched.get_ID(), false));

		MDocType docTypeBoleto = new MDocType(getCtx(), LBR_C_DocTypeBoleto_ID, get_TrxName());
		Integer LBR_Collection_Default_ID = docTypeBoleto.get_ValueAsInt("LBR_Collection_Default_ID");
		
		if (LBR_Collection_Default_ID == null || LBR_Collection_Default_ID == 0)
			throw new Exception("No bank collection default defined");
		
		MLBRCollectionDefault def = new MLBRCollectionDefault(getCtx(), LBR_Collection_Default_ID, get_TrxName()) ;
		boleto.setLBR_CollectionType(def.getLBR_CollectionType());
		boleto.setLBR_CNAB240DocType(def.getLBR_CNAB240DocType());
		boleto.setLBR_CollectionRegType(def.getLBR_CollectionRegType());
		
		String LBR_CollectionIssueDistrib = invoice.get_ValueAsString("LBR_CollectionIssueDistrib");
		
		if (LBR_CollectionIssueDistrib == null)
			throw new Exception("No issue/distribution defined");
		
		if (LBR_CollectionIssueDistrib.equals("BAN")) {
			boleto.setLBR_IssueType(MLBRBoleto.LBR_ISSUETYPE_1_BancoEmite);
			boleto.setLBR_DistributionType(MLBRBoleto.LBR_DISTRIBUTIONTYPE_1_BancoDistribui);
		} else if (LBR_CollectionIssueDistrib.equals("ORG")) {
			boleto.setLBR_IssueType(MLBRBoleto.LBR_ISSUETYPE_2_ClienteEmite);
			boleto.setLBR_DistributionType(MLBRBoleto.LBR_DISTRIBUTIONTYPE_2_ClienteDistribui);
		}
		
		boleto.setLBR_Accepted(def.getLBR_Accepted());
		boleto.setLBR_PartialPayment(def.getLBR_PartialPayment());
		boleto.setLBR_DirectDebitNotice(def.getLBR_DirectDebitNotice());

		if (bA.get_ValueAsInt("LBR_CorrespBank_ID") > 0) {
			boleto.setLBR_CorrespBank_ID(bA.get_ValueAsInt("LBR_CorrespBank_ID"));
			boleto.setLBR_NumberInCorrespBank(bA.get_ValueAsString("LBR_NumberInCorrespBank"));
		}
		
		boleto.setLBR_CNAB240Currency(MLBRBoleto.getConvertedCurrencyForCNAB(bA.getC_Currency_ID()));
		
		MLBRBankAccountConvenio[] convenios = MLBRBankAccountConvenio.getConvenios(getCtx(), bA.get_ID(), get_TrxName());

		if (convenios.length <= 0)
			throw new Exception("No convenio defined");
		
		boleto.setLBR_BankAccount_Convenio_ID(convenios[0].get_ID());
		
		MLBRBankAccountCarteira[] carteiras = convenios[0].getCarteiras();
		
		if (carteiras.length <= 0)
			throw new Exception("No carteira defined");
		
		boleto.setLBR_BankAccount_Carteira_ID(carteiras[0].get_ID());
		boleto.setLBR_CarteiraType(carteiras[0].getLBR_CarteiraType());
		boleto.setDueDate(sched.getDueDate());
		
		// Adjust GrandTotal if necessary
		BigDecimal GrandTotal = null;
		
		String sql = "SELECT invoiceOpen(?, ?)"
			+ " FROM dual";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, get_TrxName());
			pstmt.setInt (1, sched.getC_Invoice_ID());
			pstmt.setInt (2, sched.getC_InvoicePaySchedule_ID());
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				GrandTotal = rs.getBigDecimal(1);
				
				if (GrandTotal == null)
					GrandTotal = sched.getDueAmt();
			}
		} catch (SQLException e) {
			log.log (Level.SEVERE, sql, e);
		} finally {
			DB.close (rs, pstmt);
			rs = null;
			pstmt = null;
		}			

		boleto.setGrandTotal(GrandTotal);
		boleto.saveEx();
		
		if (!boleto.processIt(p_docAction)) {
			addBufferLog(0, null, null,"Boleto Process - failed: " + boleto, boleto.get_Table_ID(), boleto.getLBR_Boleto_ID());
			throw new IllegalStateException("Boleto Process Failed: " + boleto + " - " + boleto.getProcessMsg());
		}
		
		boleto.saveEx();
		
		return null;
	}
	
	private boolean isOkToCreateBoleto(MInvoicePaySchedule sched) {
		MTable table = MTable.get (getCtx(), MLBRBoleto.Table_Name);
		String whereClause = "C_InvoicePaySchedule_ID=?";
		Query query =  new Query(getCtx(), table, whereClause, get_TrxName());
		query.setParameters(new Object[]{sched.get_ID()});

		List<MLBRBoleto> list = query.list();

		if (list.size() > 0)
			return false;
		
		return true;		
	}
	
}	//	BoletoGenerate
