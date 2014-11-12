package org.idempierelbr.openitems.model;

import java.io.File;
import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;

import org.adempiere.exceptions.DBException;
import org.compiere.model.MBPartner;
import org.compiere.model.MBankAccount;
import org.compiere.model.MDocType;
import org.compiere.model.MFactAcct;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoicePaySchedule;
import org.compiere.model.MLocation;
import org.compiere.model.MPayment;
import org.compiere.model.MPeriod;
import org.compiere.model.MSequence;
import org.compiere.model.MSysConfig;
import org.compiere.model.MTable;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.Query;
import org.compiere.process.DocAction;
import org.compiere.process.DocOptions;
import org.compiere.process.DocumentEngine;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.idempierelbr.core.util.TextUtil;
import org.idempierelbr.openitems.util.OpenItemsUtil;

public class MLBRBoleto extends X_LBR_Boleto implements DocAction, DocOptions {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4772056781951057155L;
	/**	Process Message 			*/
	private String		m_processMsg = null;

	public MLBRBoleto(Properties ctx, int LBR_Boleto_ID, String trxName) {
		super(ctx, LBR_Boleto_ID, trxName);
	}

	public MLBRBoleto(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	/**
	 *  Get Details
	 *  @return MLBRBoletoDetails[] details
	 */
	public MLBRBoletoDetails[] getDetails()
	{
		MTable table = MTable.get (getCtx(), MLBRBoletoDetails.Table_Name);
		Query query =  new Query(getCtx(), table, "LBR_Boleto_ID=?", get_TrxName());
		query.setParameters(new Object[]{getLBR_Boleto_ID()});

		List<MLBRBoletoDetails> list = query.list();
	 	return list.toArray(new MLBRBoletoDetails[list.size()]);
	}
	
	/**
	 *  Get Static Data
	 *  @return MLBRBoletoStaticData[] static data
	 */
	public MLBRBoletoStaticData[] getStaticData()
	{
		MTable table = MTable.get (getCtx(), MLBRBoletoStaticData.Table_Name);
		Query query =  new Query(getCtx(), table, "LBR_Boleto_ID=?", get_TrxName());
		query.setParameters(new Object[]{getLBR_Boleto_ID()});

		List<MLBRBoletoStaticData> list = query.list();
	 	return list.toArray(new MLBRBoletoStaticData[list.size()]);
	}
	
	/**
	 *  Get Payments
	 *  @return MPayment[] payment
	 */
	public MPayment[] getPayments()
	{
		MTable table = MTable.get (getCtx(), MPayment.Table_Name);
		Query query =  new Query(getCtx(), table, "LBR_Boleto_ID=?", get_TrxName());
		query.setParameters(new Object[]{getLBR_Boleto_ID()});

		List<MPayment> list = query.list();
	 	return list.toArray(new MPayment[list.size()]);
	}
	
	/**
	 *  Get the Document Type
	 *  @return MDocType doc type
	 */
	public MDocType getMDocType() {
		return new MDocType(getCtx(), getC_DocType_ID(), get_TrxName());
	}
	
	/**
	 *  Get the Bank Collection Default for current Document Type
	 *  @return MLBRCollectionDefault default or null (if not set)
	 */
	public MLBRCollectionDefault getMLBRCollectionDefault() {
		Integer LBR_Collection_Default_ID = getMDocType().get_ValueAsInt("LBR_Collection_Default_ID");
		
		if (LBR_Collection_Default_ID != null && LBR_Collection_Default_ID > 0)
			return new MLBRCollectionDefault(getCtx(), LBR_Collection_Default_ID, get_TrxName());
	
		
		return null;
	}

	@Override
	public int customizeValidActions(String docStatus, Object processing,
			String orderType, String isSOTrx, int AD_Table_ID,
			String[] docAction, String[] options, int index) {
		
		// Draft                       ..  DR/IP/IN
		if (docStatus.equals(DocumentEngine.STATUS_Drafted)
			|| docStatus.equals(DocumentEngine.STATUS_InProgress)
			|| docStatus.equals(DocumentEngine.STATUS_Invalid))
		{
			options[index++] = DocumentEngine.ACTION_Prepare;
			// options[index++] = DocumentEngine.ACTION_Close;
		}
		
		// Complete                    ..  CO
		else if (docStatus.equals(DocumentEngine.STATUS_Completed))
		{
			options[index++] = DocumentEngine.ACTION_Void;
			options[index++] = DocumentEngine.ACTION_ReActivate;
		}
		
		return index;
	}

	@Override
	public boolean processIt(String action) throws Exception {
		m_processMsg = null;
		DocumentEngine engine = new DocumentEngine (this, getDocStatus());
		return engine.processIt (action, getDocAction());
	}

	@Override
	public boolean unlockIt() {
		if (log.isLoggable(Level.INFO)) log.info("unlockIt - " + toString());
		setProcessing(false);
		return true;
	}

	@Override
	public boolean invalidateIt() {
		if (log.isLoggable(Level.INFO)) log.info(toString());
		setDocAction(DOCACTION_Prepare);
		return true;
	}

	@Override
	public String prepareIt() {
		if (log.isLoggable(Level.INFO)) log.info(toString());
		
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_BEFORE_PREPARE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;
		
		MDocType dt = MDocType.get(getCtx(), getC_DocType_ID());

		//	Std Period open?
		if (!MPeriod.isOpen(getCtx(), getDateDoc(), dt.getDocBaseType(), getAD_Org_ID()))
		{
			m_processMsg = "@PeriodClosed@";
			return DocAction.STATUS_Invalid;
		}
		
		//	Lines
		MLBRBoletoDetails[] details = getDetails();
		if (details.length == 0)
		{
			m_processMsg = "@NoDetails@";
			return DocAction.STATUS_Invalid;
		}
		
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_AFTER_PREPARE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;
		
		return DocAction.STATUS_InProgress;
	}

	@Override
	public boolean approveIt() {
		if (log.isLoggable(Level.INFO)) log.info("approveIt - " + toString());
		//setIsApproved(true);
		return true;
	}

	@Override
	public boolean rejectIt() {
		if (log.isLoggable(Level.INFO)) log.info("rejectIt - " + toString());
		//setIsApproved(false);
		return true;
	}

	@Override
	public String completeIt() {
		//	Just prepare
		if (DOCACTION_Prepare.equals(getDocAction()))
		{
			setProcessed(false);
			return DocAction.STATUS_InProgress;
		}

		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_BEFORE_COMPLETE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;
		
		// Create Static Data entries but before, delete old
		MLBRBoletoStaticData[] sds = getStaticData();
		
		for (MLBRBoletoStaticData sd : sds) {
			sd.deleteEx(true);
		}
		
		// Payer
		if (getC_BPartner_Location_ID() > 0) {
			createStaticData(MLBRBoletoStaticData.LBR_STATICDATATYPE_PagadorSacado,
					getC_BPartner_Location_ID());
		}
		
		// Guarantor
		if (getLBR_Guarantor_Location_ID() > 0) {
			createStaticData(MLBRBoletoStaticData.LBR_STATICDATATYPE_SacadorAvalista,
					getLBR_Guarantor_Location_ID());
		}
		
		// Generate Number In Bank (only if null)
		if (getLBR_NumberInBank() == null || getLBR_NumberInBank().trim().equals("")) {
			MBankAccount bA = new MBankAccount(getCtx(), getC_BankAccount_ID(), get_TrxName());
			int LBR_SeqNumberInBank_ID =  bA.get_ValueAsInt("LBR_SeqNumberInBank_ID");
			
			if (LBR_SeqNumberInBank_ID > 0) {
				MSequence seq = new MSequence(getCtx(), LBR_SeqNumberInBank_ID, get_TrxName());
				setLBR_NumberInBank(MSequence.getDocumentNoFromSeq(seq, get_TrxName(), this));			
			}
		}
		
		// Generate movement
		int LBR_Cob_Movimento_ID = MSysConfig.getIntValue("LBR_BOLETO_MOVIMENTO_ID_ON_COMPLETE", 1000000, getAD_Client_ID(), getAD_Org_ID());
		
		if (LBR_Cob_Movimento_ID > 0 && getMovements().length == 0) {
			MLBRBoletoMovement mov = new MLBRBoletoMovement(getCtx(), 0, get_TrxName());
			mov.setAD_Org_ID(getAD_Org_ID());
			mov.setLBR_Boleto_ID(get_ID());
			mov.setSeqNo(getNewMovementSeqNo());
			mov.setLBR_CNAB240MovementType(MLBRCobMovimento.LBR_CNAB240MOVEMENTTYPE_1_RemessaCliente_GtBanco);
			mov.setLBR_Cob_Movimento_ID(LBR_Cob_Movimento_ID);
			mov.saveEx();
		} else {
			m_processMsg = "Could not create intial movement";
			return DocAction.STATUS_Invalid;
		}

		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_AFTER_COMPLETE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;
		
		setProcessed(true);	
		m_processMsg = null;

		setDocAction(DOCACTION_Close);
		return DocAction.STATUS_Completed;	
	}
	
	/**
	 *  Get Movements
	 *  @return MLBRBoletoMovement[] movements
	 */
	public MLBRBoletoMovement[] getMovements() {
		MTable table = MTable.get (getCtx(), MLBRBoletoMovement.Table_Name);
		Query query =  new Query(getCtx(), table, "LBR_Boleto_ID=?", get_TrxName());
		query.setParameters(new Object[]{getLBR_Boleto_ID()});
	
		List<MLBRBoletoMovement> list = query.list();
	 	return list.toArray(new MLBRBoletoMovement[list.size()]);
	}

	/**
	 *  Create static data for current related tables. This is necessary because data may be
	 *  changed in local system, but old information should be kept as the collection is
	 *  registered (stored) in bank
	 */
	private void createStaticData(String type, int C_BPartner_Location_ID) {
		if (C_BPartner_Location_ID > 0) {
			MLocation loc = MLocation.getBPLocation(getCtx(), C_BPartner_Location_ID, get_TrxName());
			
			if (loc != null) {
				MBPartner bp = new MBPartner(getCtx(), getC_BPartner_ID(), get_TrxName());
				MLBRBoletoStaticData sd = new MLBRBoletoStaticData(getCtx(), 0, get_TrxName());
				sd.setAD_Org_ID(getAD_Org_ID());
				sd.setLBR_Boleto_ID(get_ID());
				sd.setLBR_StaticDataType(type);
				sd.setName(bp.getName());
				sd.setAddress1(loc.getAddress1());
				sd.setAddress2(loc.getAddress2());
				sd.setAddress3(loc.getAddress3());
				sd.setAddress4(loc.getAddress4());
				sd.setPostal(loc.getPostal());
				sd.setCity(loc.getCity());
				sd.setRegionName(loc.getRegionName());
				
				if (bp.get_ValueAsString("LBR_BPTypeBR").equals("PF")) {
					sd.setLBR_CNABInscEmpType(MLBRBoletoStaticData.LBR_CNABINSCEMPTYPE_1_CPF);
					sd.setLBR_CNABInscEmpNo(TextUtil.toNumeric(bp.get_ValueAsString("LBR_CPF")));
				} else if (bp.get_ValueAsString("LBR_BPTypeBR").equals("PJ")) {
					sd.setLBR_CNABInscEmpType(MLBRBoletoStaticData.LBR_CNABINSCEMPTYPE_2_CGCCNPJ);
					sd.setLBR_CNABInscEmpNo(TextUtil.toNumeric(bp.get_ValueAsString("LBR_CNPJ")));
				} else {
					sd.setLBR_CNABInscEmpType(MLBRBoletoStaticData.LBR_CNABINSCEMPTYPE_9_Outros);
					sd.setLBR_CNABInscEmpNo("0");
				}
				
				sd.saveEx();
			}
		}
	}

	@Override
	public boolean voidIt() {
		if (log.isLoggable(Level.INFO)) log.info(toString());
		
		// Before Void
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_BEFORE_VOID);
		if (m_processMsg != null)
			return false;
		
		// Check if Boleto can be voided
		if (hasCriticalDependencies()) {
			m_processMsg = "It is not possible to void because it has external (organization) dependencies";
			if (m_processMsg != null)
				return false;	
		}
		
		addDescription(Msg.getMsg(getCtx(), "Voided"));
		setC_InvoicePaySchedule_ID(0);
		
		/* Reactivating/Voiding must reset posted */
		MFactAcct.deleteEx(MLBRBoleto.Table_ID, get_ID(), get_TrxName());
		setPosted(false);
		
		// After Void
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_AFTER_VOID);
		if (m_processMsg != null)
			return false;
		
		setProcessed(true);
		setDocAction(DOCACTION_None);
		return true;	
	}
	
	/**
	 *  Check if this document has critical dependencies that prevents boleto to be
	 *  reactivated or voided
	 *  @return true or false
	 */
	public boolean hasCriticalDependencies() {
		// Check if it's in bank
		/*if (getLBR_BankAccount_Convenio_ID() > 0 ||
				getLBR_BankAccount_Carteira_ID() > 0)
			return true;*/
		
		// Check if there is any payment
		if (getPayments().length > 0)
			return true;
		
		// Check if there is any movement
		MLBRBoletoMovement[] movs = getMovements();
		
		for (MLBRBoletoMovement mov : movs) {
			if (mov.getLBR_FileGeneratingDate() != null)
				return true;
		}
		
		return false;
	}
	
	/**
	 * 	Add to Description
	 *	@param description text
	 */
	public void addDescription (String description)
	{
		String desc = getDescription();
		if (desc == null)
			setDescription(description);
		else
			setDescription(desc + " | " + description);
	}	//	addDescription

	@Override
	public boolean closeIt() {
		if (log.isLoggable(Level.INFO)) log.info(toString());
		
		// Before Close
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_BEFORE_CLOSE);
		if (m_processMsg != null)
			return false;
		
		setProcessed(true);
		setDocAction(DOCACTION_None);
		
		// After Close
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_AFTER_CLOSE);
		if (m_processMsg != null)
			return false;
		
		return true;
	}

	@Override
	public boolean reverseCorrectIt() {
		return false;
	}

	@Override
	public boolean reverseAccrualIt() {
		return false;
	}

	@Override
	public boolean reActivateIt() {
		if (log.isLoggable(Level.INFO)) log.info(toString());
		// Before reActivate
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_BEFORE_REACTIVATE);
		if (m_processMsg != null)
			return false;	
				
		/* globalqss - 2317928 - Reactivating/Voiding order must reset posted */
		MFactAcct.deleteEx(MLBRBoleto.Table_ID, get_ID(), get_TrxName());
		setPosted(false);
		
		// Check if Boleto can be reactivated
		if (hasCriticalDependencies()) {
			m_processMsg = "It is not possible to reactivate because it has external dependencies";
			return false;	
		}
		
		// Delete any movement
		deleteMovements();
		
		// After reActivate
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_AFTER_REACTIVATE);
		if (m_processMsg != null)
			return false;
		
		setDocAction(DOCACTION_Complete);
		setProcessed(false);
		return true;	
	}
	
	private int deleteMovements() throws DBException
	{
		final String sql = "DELETE LBR_BoletoMovement WHERE LBR_Boleto_ID=?";
		int no = DB.executeUpdateEx(sql, new Object[]{get_ID()}, get_TrxName());
		return no;
	}

	@Override
	public String getSummary() {
		StringBuilder sb = new StringBuilder();
		sb.append(getDocumentNo());
		//	: Grand Total = 123.00 (#1)
		sb.append(": ").
			append("Valor do Título").append("=").append(getGrandTotal());
		//	 - Description
		if (getDescription() != null && getDescription().length() > 0)
			sb.append(" - ").append(getDescription());
		return sb.toString();
	}

	@Override
	public String getDocumentInfo() {
		MDocType dt = MDocType.get(getCtx(), getC_DocType_ID());
		return dt.getNameTrl() + " " + getDocumentNo();
	}

	@Override
	public File createPDF() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getProcessMsg() {
		return m_processMsg;
	}

	@Override
	public int getDoc_User_ID() {
		return getCreatedBy();
	}

	@Override
	public int getC_Currency_ID() {
		if (getLBR_CNAB240Currency().equals(MLBRBoleto.LBR_CNAB240CURRENCY_09_Real))
			return 297;

		return 0;
	}

	@Override
	public BigDecimal getApprovalAmt() {
		return getGrandTotal();
	}
	
	/**
	 *  Generate relative Number In Org based on current Invoice Payment Schedule entries.
	 *  If nfBased, the first part of generate number is the Nota Fiscal document number. Otherwise,
	 *  will be used the invoice document number.
	 *  @return generated Number In Org
	 */
	public static String generateRelativeNumberInOrg(int C_InvoicePaySchedule_ID, boolean nfBased) {
		MInvoicePaySchedule sched = new MInvoicePaySchedule(Env.getCtx(), C_InvoicePaySchedule_ID, null);
		MInvoice invoice = new MInvoice(Env.getCtx(), sched.getC_Invoice_ID(), null);
		MInvoicePaySchedule[] schedules = MInvoicePaySchedule.getInvoicePaySchedule(Env.getCtx(),
				sched.getC_Invoice_ID(), 0, null);
		
		// TODO: implement nfBased. For now, only invoiceBased
		String documentNo = invoice.getDocumentNo();
		
		int index = 1;
		
		for (MInvoicePaySchedule s : schedules) {
			if (s.get_ID() == C_InvoicePaySchedule_ID)
				return documentNo + "/" + String.valueOf(index);
			
			index++;
		}
		
		return documentNo;
	}
	
	/**
	 * Get the CNAB currency based on system currency
	 */
	public static String getConvertedCurrencyForCNAB(int C_Currency_ID) {
		if (C_Currency_ID == 297)
			return LBR_CNAB240CURRENCY_09_Real;
		
		return null;
	}

	public static MLBRBoleto getByDocumentNo(Properties ctx, String documentNo,	String trxName) {
		MTable table = MTable.get (ctx, MLBRBoleto.Table_Name);
		Query query =  new Query(ctx, table, "DocumentNo=?", trxName);
		query.setParameters(new Object[]{documentNo});
		return query.firstOnly();
	}
	
	public static MLBRBoleto getByNumberInBank(Properties ctx, String numberInBank,	String trxName) {
		MTable table = MTable.get (ctx, MLBRBoleto.Table_Name);
		Query query =  new Query(ctx, table, "LBR_NumberInBank=?", trxName);
		query.setParameters(new Object[]{numberInBank});
		return query.firstOnly();
	}
	
	public int getNewMovementSeqNo() {
		final String sql = "SELECT COALESCE(MAX(SeqNo),0)+10 AS DefaultValue FROM LBR_BoletoMovement WHERE LBR_Boleto_ID=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
		      pstmt = DB.prepareStatement(sql, get_TrxName());
		      DB.setParameters(pstmt, new Object[]{get_ID()});
		      rs = pstmt.executeQuery();
		      
		      while(rs.next()) {
		    	  return rs.getInt(1);
		      }
		 } catch (SQLException e) {
		      throw new DBException(e, sql);
		 } finally {
		      DB.close(rs, pstmt);
		      rs = null; pstmt = null;
		 }
		
		return 10;
	}
	
	public String getRoutingNo ( ) {
		return getC_Bank().getRoutingNo();
	}

	/**
	 * Calculates and stores the Barcode and Typeable Lines
	 * of Brazilian Bank Collection document
	 * 
	 * @param campolivre
	 * @return
	 */
	public void genBarcode( String campolivre ) {
		String fatorVencimento = OpenItemsUtil.fatorVencimento(getDueDate());
		String valor = OpenItemsUtil.getCampoDecimal(getGrandTotal().doubleValue() , 8 , 2  );
		String routingNo = getRoutingNo( );
		
		String barcode = routingNo+"9"+fatorVencimento+valor+campolivre;
		String dv = OpenItemsUtil.barcodeDV(barcode);

		String barcodeWithDV = barcode.substring(0, 4)+dv+barcode.substring(4);
		
		setLBR_Barcode(barcodeWithDV);
		this.setLBR_TypeableLine( OpenItemsUtil.genTypeAble(barcodeWithDV) );
	}

	
}
