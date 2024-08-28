package org.idempierelbr.base.model;

import java.io.File;
import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.Hashtable;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.model.MBPartner;
import org.compiere.model.MCurrency;
import org.compiere.model.MDocType;
import org.compiere.model.MFactAcct;
import org.compiere.model.MOrg;
import org.compiere.model.MPeriod;
import org.compiere.model.MProductPricing;
import org.compiere.model.MTax;
import org.compiere.model.MTaxProvider;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.Query;
import org.compiere.process.DocAction;
import org.compiere.process.DocOptions;
import org.compiere.process.DocumentEngine;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;

public class MLBRNFS extends X_LBR_NFS implements DocAction, DocOptions {

	/**
	 */
	private static final long serialVersionUID = -5345209048535271718L;

	/** Logger */
	private static CLogger log = CLogger.getCLogger(MLBRNFS.class);

	/** Process Message */
	public String m_processMsg = null;

	/** Tax Lines */
	public MLBRNFSTax[] m_taxes = null;

	// Product Pricing
	protected MProductPricing m_productPrice = null;

	/** CONSTANT */
	public final static int BRAZIL = 139;
	public static final int CURRENCY_BRL = 297; // BRL C_Currency_ID

	public MLBRNFS(Properties ctx, int LBR_NFS_ID, String trxName) {
		super(ctx, LBR_NFS_ID, trxName);
		// TODO Auto-generated constructor stub
	}

	public MLBRNFS(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
		// TODO Auto-generated constructor stub
	}

	@Override
	public int customizeValidActions(String docStatus, Object processing,
			String orderType, String isSOTrx, int AD_Table_ID,
			String[] docAction, String[] options, int index) {

		// Draft .. DR/IP/IN
		if (docStatus.equals(DocumentEngine.STATUS_Drafted)
				|| docStatus.equals(DocumentEngine.STATUS_InProgress)
				|| docStatus.equals(DocumentEngine.STATUS_Invalid)) {
			options[index++] = DocumentEngine.ACTION_Prepare;
			// options[index++] = DocumentEngine.ACTION_Close;
		}

		// Complete .. CO
		else if (docStatus.equals(DocumentEngine.STATUS_Completed)) {
			options[index++] = DocumentEngine.ACTION_Void;
			options[index++] = DocumentEngine.ACTION_ReActivate;
		}

		return index;
	}

	@Override
	public boolean processIt(String action) throws Exception {
		m_processMsg = null;
		DocumentEngine engine = new DocumentEngine(this, getDocStatus());
		return engine.processIt(action, getDocAction());
	}

	@Override
	public boolean unlockIt() {
		if (log.isLoggable(Level.INFO))
			log.info("unlockIt - " + toString());
		setProcessing(false);
		return true;
	}

	@Override
	public boolean invalidateIt() {
		if (log.isLoggable(Level.INFO))
			log.info(toString());
		setDocAction(DOCACTION_Prepare);
		return true;
	}

	@Override
	public String prepareIt() {
		if (log.isLoggable(Level.INFO))
			log.info(toString());

		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,
				ModelValidator.TIMING_BEFORE_PREPARE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;

		// set doc type
		setC_DocType_ID(getC_DocTypeTarget_ID());

		//
		MDocType dt = MDocType.get(getCtx(), getC_DocType_ID());

		// Std Period open?
		if (!MPeriod.isOpen(getCtx(), getDateDoc(), dt.getDocBaseType(),
				getAD_Org_ID())) {
			m_processMsg = "@PeriodClosed@";
			return DocAction.STATUS_Invalid;
		}

		// set rps data from
		setLBR_RPSStatus(MLBRNFS.LBR_RPSSTATUS_Normal);
		setLBR_RPSNumero(getDocumentNo());
		setLBR_RPSSerie(dt.get_ValueAsString("LBR_NFeSerie"));
		setLBR_RPSTipo(dt.get_ValueAsString("LBR_RPSTipo"));

		// Lines
		if (getTotalLines().signum() == 0) {
			m_processMsg = "Valor inválido";
			return DocAction.STATUS_Invalid;
		}

		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,
				ModelValidator.TIMING_AFTER_PREPARE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;

		// Save everything
		this.saveEx();

		return DocAction.STATUS_InProgress;
	}

	public void setProcessed(boolean processed) {
		super.setProcessed(processed);
		if (get_ID() == 0)
			return;
		String set = "SET Processed='" + (processed ? "Y" : "N")
				+ "' WHERE LBR_NFS_ID=" + get_ID();
		int noLine = DB.executeUpdateEx("UPDATE LBR_NFSTax " + set,
				get_TrxName());
		if (log.isLoggable(Level.FINE))
			log.fine("setProcessed - " + processed + " - Lines=" + noLine);
	} // setProcessed

	@Override
	public boolean approveIt() {
		if (log.isLoggable(Level.INFO))
			log.info("approveIt - " + toString());
		// setIsApproved(true);
		return true;
	}

	@Override
	public boolean rejectIt() {
		if (log.isLoggable(Level.INFO))
			log.info("rejectIt - " + toString());
		// setIsApproved(false);
		return true;
	}

	@Override
	public String completeIt() {

		// Just prepare
		if (DOCACTION_Prepare.equals(getDocAction())) {
			setProcessed(false);
			return DocAction.STATUS_InProgress;
		}

		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,
				ModelValidator.TIMING_BEFORE_COMPLETE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;

		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,
				ModelValidator.TIMING_AFTER_COMPLETE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;

		setProcessed(true);
		m_processMsg = null;

		setDocAction(DOCACTION_Close);
		return DocAction.STATUS_Completed;
	}

	@Override
	public boolean voidIt() {

		if (log.isLoggable(Level.INFO))
			log.info(toString());

		// Before Void
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,
				ModelValidator.TIMING_BEFORE_VOID);
		if (m_processMsg != null)
			return false;

		// Check if NF-e can be voided
		if (hasImmutableStatus()) {
			m_processMsg = "Não é possível anular a NFS pois ela já foi processada na Prefeitura";
			if (m_processMsg != null)
				return false;
		}

		// clean amts
		setQty(Env.ZERO);
		setPrice(Env.ZERO);
		setDescription(Msg.getMsg(getCtx(), "Voided"));

		/* Reactivating/Voiding must reset posted */
		MFactAcct.deleteEx(MLBRNFS.Table_ID, get_ID(), get_TrxName());
		setPosted(false);

		// After Void
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,
				ModelValidator.TIMING_AFTER_VOID);
		if (m_processMsg != null)
			return false;

		//
		setProcessed(true);
		setDocAction(DOCACTION_None);

		return true;
	}

	@Override
	public boolean closeIt() {
		if (log.isLoggable(Level.INFO))
			log.info(toString());

		// Before Close
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,
				ModelValidator.TIMING_BEFORE_CLOSE);
		if (m_processMsg != null)
			return false;

		setProcessed(true);
		setDocAction(DOCACTION_None);

		// After Close
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,
				ModelValidator.TIMING_AFTER_CLOSE);
		if (m_processMsg != null)
			return false;

		return true;
	}

	@Override
	public boolean reverseCorrectIt() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean reverseAccrualIt() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean reActivateIt() {

		if (log.isLoggable(Level.INFO))
			log.info(toString());

		// Before reActivate
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,
				ModelValidator.TIMING_BEFORE_REACTIVATE);
		if (m_processMsg != null)
			return false;

		/* globalqss - 2317928 - Reactivating/Voiding order must reset posted */
		MFactAcct.deleteEx(MLBRNFS.Table_ID, get_ID(), get_TrxName());
		setPosted(false);

		// Check if NF-e can be reactivated
		if (hasImmutableStatus()) {
			m_processMsg = "Não foi possível reativar pois o documento já está registrado na Prefeitura";
			return false;
		}

		// After reActivate
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,
				ModelValidator.TIMING_AFTER_REACTIVATE);
		if (m_processMsg != null)
			return false;

		setDocAction(DOCACTION_Complete);
		setProcessed(false);

		return true;
	}

	@Override
	public String getSummary() {
		StringBuilder sb = new StringBuilder();
		sb.append("NFS " + getDocumentNo());

		// : Grand Total = 123.00 (#1)
		sb.append(": ").append(Msg.translate(getCtx(), "GrandTotal"))
				.append("=").append(getGrandTotal());

		// - Description
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
		return CURRENCY_BRL;
	}

	@Override
	public BigDecimal getApprovalAmt() {
		return getGrandTotal();
	}

	/**
	 * Get Currency Precision
	 *
	 * @return precision
	 */
	public int getPrecision() {
		return MCurrency.getStdPrecision(getCtx(), CURRENCY_BRL);
	} // getPrecision

	/**
	 * Get Taxes of NFS
	 *
	 * @param requery
	 *            requery
	 * @return array of taxes
	 */
	public MLBRNFSTax[] getTaxes(boolean requery) {
		if (m_taxes != null && !requery)
			return m_taxes;
		//
		List<MLBRNFSTax> list = new Query(getCtx(), I_LBR_NFSTax.Table_Name,
				"LBR_NFS_ID=?", get_TrxName()).setParameters(get_ID()).list();
		m_taxes = list.toArray(new MLBRNFSTax[list.size()]);
		return m_taxes;
	} // getTaxes

	/**
	 * Recalculate NFS tax
	 * 
	 * @param oldTax
	 *            true if the old C_Tax_ID should be used
	 * @return true if success, false otherwise
	 * 
	 * @author teo_sarca [ 1583825 ]
	 */
	public boolean updateNFTax(boolean oldTax) {
		MLBRNFSTax tax = MLBRNFSTax.get(this, getPrecision(), oldTax,
				get_TrxName());
		if (tax != null) {
			if (!tax.calculateTaxFromLines())
				return false;
			if (tax.getTaxAmt().signum() != 0) {
				if (!tax.save(get_TrxName()))
					return false;
			} else {
				if (!tax.is_new() && !tax.delete(false, get_TrxName()))
					return false;
			}
		}
		return true;
	}

	/**
	 * Before Save
	 */
	protected boolean beforeSave(boolean newRecord) {

		// check product
		if (getM_Product_ID() <= 0) {
			log.saveError("Error", "Serviço inválido!");
			return false;
		}

		// check qty
		if (getQty() != null && getQty().signum() != 1) {
			log.saveError("Error", "Quantidade inválida!");
			return false;
		}

		// check price
		if (getPrice() != null && getPrice().signum() != 1) {
			log.saveError("Error", "Preço inválido!");
			return false;
		}

		// check description
		if (getDescription() != null && getDescription().trim().isEmpty()) {
			log.saveError("Error", "Descrição inválida!");
			return false;
		}

		if (getLBR_TransactionType() == null)
			setLBR_TransactionType(LBR_TRANSACTIONTYPE_EndUser);

		// calculate total lines
		setTotalLines();

		//
		return true;
	}

	/**
	 * ImmutableStatus
	 * 
	 * @return
	 */
	public boolean hasImmutableStatus() {

		//
		if (isLBR_IsDocIssuedByOrg() && getLBR_NFSeID() != null
				&& !getLBR_NFSeID().isEmpty())
			return true;

		//
		return false;
	}

	/**
	 * Calculate Extended Amt
	 */
	public void setTotalLines() {

		//
		BigDecimal bd = getPrice().multiply(getQty());

		int precision = getPrecision();
		if (bd.scale() > precision)
			bd = bd.setScale(precision, BigDecimal.ROUND_HALF_UP);

		super.setTotalLines(bd);

	} // setTotalLines

	/**
	 * Get tax providers
	 * 
	 * @return array of tax provider
	 */
	public MTaxProvider[] getTaxProviders() {
		Hashtable<Integer, MTaxProvider> providers = new Hashtable<Integer, MTaxProvider>();
		MTax tax = new MTax(getCtx(), getC_Tax_ID(), get_TrxName());
		MTaxProvider provider = providers.get(tax.getC_TaxProvider_ID());
		if (provider == null)
			providers.put(tax.getC_TaxProvider_ID(),
					new MTaxProvider(tax.getCtx(), tax.getC_TaxProvider_ID(),
							tax.get_TrxName()));

		MTaxProvider[] retValue = new MTaxProvider[providers.size()];
		providers.values().toArray(retValue);
		return retValue;
	}

	/**
	 * Get config type to generate NFS-e
	 * 
	 * @return
	 */
	public MLBRNFSConfig getNFSConfig() {
		//
		MDocType dt = MDocType.get(getCtx(), getC_DocTypeTarget_ID());
		if (dt.get_ValueAsInt("LBR_NFSConfig_ID") > 0)
			return new MLBRNFSConfig(getCtx(),
					dt.get_ValueAsInt("LBR_NFSConfig_ID"), get_TrxName());

		return null;
	}

	/**
	 * Ger org bpartner
	 * 
	 * @return
	 */
	public MBPartner getPrestador() {

		// org info
		MOrg m_org = new MOrg(getCtx(), getAD_Org_ID(), get_TrxName());
		int linked2OrgC_BPartner_ID = m_org
				.getLinkedC_BPartner_ID(get_TrxName());
		if (linked2OrgC_BPartner_ID < 1)
			return null;

		return new MBPartner(getCtx(), linked2OrgC_BPartner_ID, get_TrxName());
	}

	/**
	 * Get DocType
	 * 
	 * @return
	 */
	public MDocType getDocType() {
		//
		return MDocType.get(getCtx(), getC_DocTypeTarget_ID());
	}

}
