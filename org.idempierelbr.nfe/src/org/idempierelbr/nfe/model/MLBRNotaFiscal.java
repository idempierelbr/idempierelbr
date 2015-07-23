/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil                      *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.idempierelbr.nfe.model;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import java.util.logging.Level;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRXmlDataSource;
import net.sf.jasperreports.engine.util.JRLoader;

import org.apache.commons.io.IOUtils;
import org.compiere.model.MAttachment;
import org.compiere.model.MAttachmentEntry;
import org.compiere.model.MCurrency;
import org.compiere.model.MDocType;
import org.compiere.model.MFactAcct;
import org.compiere.model.MImage;
import org.compiere.model.MLocation;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MPeriod;
import org.compiere.model.MProcess;
import org.compiere.model.MSysConfig;
import org.compiere.model.MTable;
import org.compiere.model.MTax;
import org.compiere.model.MTaxProvider;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.Query;
import org.compiere.model.X_C_TaxProviderCfg;
import org.compiere.process.DocAction;
import org.compiere.process.DocOptions;
import org.compiere.process.DocumentEngine;
import org.compiere.process.ProcessInfo;
import org.compiere.process.ServerProcessCtl;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.idempierelbr.core.util.TextUtil;
import org.idempierelbr.nfe.base.NFeXMLGenerator;
import org.idempierelbr.tax.provider.TaxProviderFactory;

/**
 *		Nota Fiscal Model
 */
public class MLBRNotaFiscal extends X_LBR_NotaFiscal implements DocAction, DocOptions
{

	/**
	 *
	 */
	private static final long serialVersionUID = 1L;
	
	/** XML File Extension */
	public static final String INDIVIDUAL_FILE_EXT = "-nfe.xml";
	
	/** XML Distribution File Extension */
	public static final String DISTRIBUICAO_FILE_EXT = "-procNfe.xml";

	/** Old XML file extension **/
	public static final String DISTRIBUICAO_OLD_FILE_EXT = "-dst.xml";
	
	/** Prefix for Imported XML Files */
	private static final String IMPORTED_FILE_PREFIX = "GenNFFromXML_";

	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(MLBRNotaFiscal.class);

	/** CONSTANT */
	public final static int BRAZIL = 139;
	public static final int CURRENCY_BRL = 297; // BRL C_Currency_ID
	
	/**	Tax Lines					*/
	private MLBRNotaFiscalTax[] 	m_taxes = null;
	/**	Process Message 			*/
	private String		m_processMsg = null;
	
	private static Integer GENERATE_DANFE_PROCESS_ID;
	private final static String JASPER_FILENAME = "DanfeMainPortraitA4.jasper";


	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRNotaFiscal (Properties ctx, int ID, String trxName)
	{
		super (ctx, ID, trxName);
	}	//	MLBRNotaFiscal

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRNotaFiscal (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRNotaFiscal

	/**
	 * Retorna as Notas Fiscais por período (compra e venda)
	 * @param dateFrom
	 * @param dateTo
	 * @return MNotaFiscal[]
	 */
	public static MLBRNotaFiscal[] get (Timestamp dateFrom, Timestamp dateTo, String trxName)
	{
		return get (dateFrom, dateTo,null,trxName);
	}	//	get

	/**
	 * Retorna as Notas Fiscais por período (compra, venda ou ambos)
	 * @param dateFrom
	 * @param dateTo
	 * @param isSOTrx: true = venda, false = compra, null = ambos
	 * @return MNotaFiscal[]
	 */
	public static MLBRNotaFiscal[] get (Timestamp dateFrom, Timestamp dateTo, Boolean isSOTrx, String trxName)
	{
		String whereClause = "AD_Client_ID=? AND " +
							 "(CASE WHEN IsSOTrx='Y' THEN TRUNC(DateDoc) " +
							 "ELSE TRUNC(NVL(lbr_DateInOut, DateDoc)) END) BETWEEN ? AND ?";

		String orderBy = "(CASE WHEN IsSOTrx='Y' THEN TRUNC(DateDoc) ELSE TRUNC(NVL(lbr_DateInOut, DateDoc)) END)";
		//
		if (isSOTrx != null)
			whereClause += " AND IsSOTrx='" + (isSOTrx ? "Y" : "N") + "'";

		MTable table = MTable.get(Env.getCtx(), MLBRNotaFiscal.Table_Name);
		Query q =  new Query(Env.getCtx(), table, whereClause.toString(), trxName);
	          q.setOrderBy(orderBy);
		      q.setParameters(new Object[]{Env.getAD_Client_ID(Env.getCtx()),dateFrom,dateTo});

	    List<MLBRNotaFiscal> list = q.list();
	    MLBRNotaFiscal[] nfs = new MLBRNotaFiscal[list.size()];
	    return list.toArray(nfs);
	}	//	get


	public static int getLBR_NotaFiscal_ID(String DocumentNo, boolean IsSOTrx, String trx)
	{

		String sql = "SELECT LBR_NotaFiscal_ID FROM LBR_NotaFiscal " +
				     "WHERE DocumentNo = ? AND AD_Client_ID = ? " +
				     "AND IsSOTrx = ? " +
				     "ORDER BY LBR_NotaFiscal_ID desc";

		Integer LBR_NotaFiscal_ID = DB.getSQLValue (trx, sql, new Object[]{DocumentNo, Env.getAD_Client_ID(Env.getCtx()),IsSOTrx});

		//	RPS
		if (LBR_NotaFiscal_ID < 1)
			LBR_NotaFiscal_ID = DB.getSQLValue (trx, sql, new Object[]{TextUtil.lPad (DocumentNo, 12), Env.getAD_Client_ID(Env.getCtx()),IsSOTrx});
		//
		return LBR_NotaFiscal_ID;
	}	//	getLBR_NotaFiscal_ID

	/**
	 * 	Encontra a NF pelo ID de NF-e
	 *
	 * @param NFeID
	 * @return
	 */
	public static MLBRNotaFiscal getNFe (String NFeID, String trxName)
	{
		String sql =  "SELECT LBR_NotaFiscal_ID FROM LBR_NotaFiscal " +
					   "WHERE lbr_NFeID=? AND AD_Client_ID=?";

		int LBR_NotaFiscal_ID = DB.getSQLValue(trxName, sql,
				new Object[]{NFeID, Env.getAD_Client_ID(Env.getCtx())});

		if (LBR_NotaFiscal_ID > 0)
			return new MLBRNotaFiscal (Env.getCtx(), LBR_NotaFiscal_ID, trxName);
		else
		{
			log.warning("NFe " + NFeID);
			return null;
		}
	}	//	get

	/**
	 * 	Verifica se existe NF registrada com este número para Cliente/Fornecedor
	 *
	 * @param String DocumentNo
	 * @param int C_BPartner_ID
	 * @return true if exists or false if not
	 */
	public static boolean ifExists (String documentno, int C_BPartner_ID, boolean isSOTrx)
	{

		String sql =  "SELECT LBR_NotaFiscal_ID FROM LBR_NotaFiscal " +
					  "WHERE DocumentNo = ? AND C_BPartner_ID = ? " +
					  "AND AD_Client_ID = ? AND IsSOTrx = ?";

		int LBR_NotaFiscal_ID = DB.getSQLValue(null, sql,
				new Object[]{documentno, C_BPartner_ID,
				Env.getAD_Client_ID(Env.getCtx()), isSOTrx});

		return LBR_NotaFiscal_ID == -1 ? false : true;
	}//ifExists

	/**
	 * Extrai a Série da NF
	 *
	 * @param	String	No da NF com a Série
	 * @return	String	Série da NF
	 */
	public static String getSerieNo(String documentNo)
	{
		if (documentNo == null || documentNo.indexOf('-') == -1 ||
			documentNo.endsWith("-"))
			return "";
		//

		return documentNo.substring(1+documentNo.indexOf('-'), documentNo.length());
	}//getserieNo

	public String getSerieNo(){
		return getSerieNo(getDocumentNo());
	}
	
	/**
	 * 	Necessário para ajustar a precisão
	 * 		de casas decimais
	 */
	public void setGrandTotal (BigDecimal GrandTotal)
	{
		if (GrandTotal == null)
			GrandTotal = Env.ZERO;
		
		//	Manual de Integração 4.01 - página 152
		super.setGrandTotal(GrandTotal.setScale(2, BigDecimal.ROUND_HALF_UP));
	}	//	setGrandTotal
	
	/**
	 * 	Necessário para ajustar a precisão
	 * 		de casas decimais
	 */
	public void setTotalLines (BigDecimal TotalLines)
	{
		if (TotalLines == null)
			TotalLines = Env.ZERO;
		
		//	Manual de Integração 4.01 - página 152
		super.setTotalLines(TotalLines.setScale(2, BigDecimal.ROUND_HALF_UP));
	}	//	setTotalLines
	
	/**
	 * 	Executed before Delete operation.
	 *	@return true if record can be deleted
	 */
	protected boolean beforeDelete()
	{
		for (MLBRNotaFiscalLine nfl : getLines())
		{
			nfl.deleteEx(true);
		}
		return true;
	}	//	beforeDelete
	
	/**
	 *  getLines
	 *  @return MNotaFiscalLine[] lines
	 */
	public MLBRNotaFiscalLine[] getLines()
	{
		MTable table = MTable.get (getCtx(), MLBRNotaFiscalLine.Table_Name);
		Query query =  new Query(getCtx(), table, "LBR_NotaFiscal_ID=?", get_TrxName());
	 		  query.setParameters(new Object[]{getLBR_NotaFiscal_ID()}).setOrderBy("Line");
	 	//
	 	List<MLBRNotaFiscalLine> list = query.list();
	 	return list.toArray(new MLBRNotaFiscalLine[list.size()]);
	}	//	getLines
	
	
	/**
	 * 	Get Taxes of NF
	 *	@param requery requery
	 *	@return array of taxes
	 */
	public MLBRNotaFiscalTax[] getTaxes(boolean requery)
	{
		if (m_taxes != null && !requery)
			return m_taxes;
		//
		List<MLBRNotaFiscalTax> list = new Query(getCtx(), I_LBR_NotaFiscalTax.Table_Name, "LBR_NotaFiscal_ID=?", get_TrxName())
									.setParameters(get_ID())
									.list();
		m_taxes = list.toArray(new MLBRNotaFiscalTax[list.size()]);
		return m_taxes;
	}	//	getTaxes
	
	/**
	 * 	Get Currency Precision
	 *	@return precision
	 */
	public int getPrecision()
	{
		return MCurrency.getStdPrecision(getCtx(), CURRENCY_BRL);
	}	//	getPrecision

	/**
	 * 	Get isSOTrx based on NF Operation Type
	 *	@return precision
	 */
	public boolean isSOTrx() {
		if (getLBR_NFE_OperationType().equals("0"))
			return true;
		
		return false;
	}
	
	/**
	 *  getNotes
	 *  @return X_LBR_NotaFiscalNote[] notes
	 */
    public X_LBR_NotaFiscalNote[] getNotes() {
    	MTable table = MTable.get (getCtx(), X_LBR_NotaFiscalNote.Table_Name);
		Query query =  new Query(getCtx(), table, "LBR_NotaFiscal_ID=?", get_TrxName());
			query.setParameters(new Object[]{get_ID()});
			query.setOrderBy("LBR_NfeNoteType DESC");
	 	//
	 	List<X_LBR_NotaFiscalNote> list = query.list();
	 	return list.toArray(new X_LBR_NotaFiscalNote[list.size()]);
    }
    
    /**
	 *  getProcs
	 *  @return X_LBR_NotaFiscalProc[] procs
	 */
    public X_LBR_NotaFiscalProc[] getProcs() {
    	MTable table = MTable.get (getCtx(), X_LBR_NotaFiscalProc.Table_Name);
		Query query =  new Query(getCtx(), table, "LBR_NotaFiscal_ID=?", get_TrxName());
	 		  query.setParameters(new Object[]{get_ID()});
	 	//
	 	List<X_LBR_NotaFiscalProc> list = query.list();
	 	return list.toArray(new X_LBR_NotaFiscalProc[list.size()]);
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
		MLBRNotaFiscalLine[] lines = getLines();
		if (lines.length == 0)
		{
			m_processMsg = "@NoLines@";
			return DocAction.STATUS_Invalid;
		}
		
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_AFTER_PREPARE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;
		
		// Calculate Taxes
		if (!calculateTaxTotal())
		{
			m_processMsg = "Error calculating tax";
			return DocAction.STATUS_Invalid;
		}
		
		// Save everything
		this.saveEx();

		if (isLBR_IsDocIssuedByOrg()) {
			// Delete any xml attachment
			MAttachment attachNFe = createAttachment();
			
			for (int i = attachNFe.getEntryCount() - 1; i >= 0; i--) 
			{
				if (attachNFe.getEntry(i).getName().endsWith(INDIVIDUAL_FILE_EXT))
					attachNFe.deleteEntry(i);
				
				attachNFe.saveEx(get_TrxName());
			}
			
			// Generate xml
			m_processMsg = generateXML();
			if (m_processMsg != null)
				return DocAction.STATUS_Invalid;
		}
		
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

		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_AFTER_COMPLETE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;
		
		if (isLBR_IsDocIssuedByOrg()) {
			// SEFAZ - Generate NF-e Lot
			if (MSysConfig.getBooleanValue("LBR_SEFAZ_LOT_ON_COMPLETE", true, getAD_Client_ID(), getAD_Org_ID())) {
				log.info("Creating NF-e Lot");
				MLBRNotaFiscalLot lot = null;
				MLBRNotaFiscalLotLine lotLine = null;
				
				try {
					lot = new MLBRNotaFiscalLot(getCtx(), 0, get_TrxName());
					lot.setAD_Org_ID(this.getAD_Org_ID());
					boolean isSync = MSysConfig.getBooleanValue("LBR_SEFAZ_LOT_SYNC", true, getAD_Client_ID(), getAD_Org_ID());
					log.info("NF-e Lot is " + (isSync ? "synchronous" : "asynchronous"));
					lot.setLBR_ProcessingType(isSync ? "S" : "A");
					lot.setLBR_LotSent(false);
					lot.setLBR_LotQueried(false);
					lot.saveEx();
					
					lotLine = new MLBRNotaFiscalLotLine(getCtx(), 0, get_TrxName());
					lotLine.setAD_Org_ID(lot.getAD_Org_ID());
					lotLine.setLBR_NotaFiscalLot_ID(lot.get_ID());
					lotLine.setLBR_NotaFiscal_ID(this.get_ID());
					lotLine.saveEx();
				} catch (Exception e) {
					e.printStackTrace();
					m_processMsg = "Couldn't create NF-e Lot";
					
					if (lotLine.get_ID() > 0)
						lotLine.delete(true);
					
					if (lot.get_ID() > 0)
						lot.delete(true);
				}
			}
		}
		
		setProcessed(true);	
		m_processMsg = null;

		setDocAction(DOCACTION_Close);
		return DocAction.STATUS_Completed;	
	}

	@Override
	public boolean voidIt() {
		if (log.isLoggable(Level.INFO)) log.info(toString());
		
		// Before Void
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_BEFORE_VOID);
		if (m_processMsg != null)
			return false;
		
		// Check if NF-e can be voided
		if (hasImmutableStatus()) {
			m_processMsg = "It is not possible to void because it is registered on Sefaz";
			if (m_processMsg != null)
				return false;	
		}
		
		// Check if NF-e is locked by any NF-e Lot
		m_processMsg = isLockedByLot();
		if (m_processMsg != null)
			return false;

		MLBRNotaFiscalLine[] lines = getLines();
		for (int i = 0; i < lines.length; i++)
		{
			MLBRNotaFiscalLine line = lines[i];
			BigDecimal old = line.getQty();
			if (old.signum() != 0)
			{
				line.setQty(Env.ZERO);
				line.setLineNetAmt(Env.ZERO);
				line.saveEx(get_TrxName());
			}
		}
		
		// update taxes
		MLBRNotaFiscalTax[] taxes = getTaxes(true);
		for (MLBRNotaFiscalTax tax : taxes )
		{
			if ( !(tax.calculateTaxFromLines() && tax.save()) )
				return false;
		}
		
		addDescription(Msg.getMsg(getCtx(), "Voided"));
		
		/* Reactivating/Voiding must reset posted */
		MFactAcct.deleteEx(MLBRNotaFiscal.Table_ID, get_ID(), get_TrxName());
		setPosted(false);
		
		// After Void
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_AFTER_VOID);
		if (m_processMsg != null)
			return false;
		
		setProcessed(true);
		setDocAction(DOCACTION_None);
		return true;	
	}

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
		MFactAcct.deleteEx(MLBRNotaFiscal.Table_ID, get_ID(), get_TrxName());
		setPosted(false);
		
		// Check if NF-e can be reactivated
		if (hasImmutableStatus()) {
			m_processMsg = "It is not possible to reactivate because it is registered on Sefaz";
			return false;	
		}
		
		// Check if NF-e is locked by any NF-e Lot
		m_processMsg = isLockedByLot();
		if (m_processMsg != null)
			return false;
		
		setLBR_NFeStatus(null);
		setLBR_NFeID(null);
		
		// After reActivate
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_AFTER_REACTIVATE);
		if (m_processMsg != null)
			return false;
		
		setDocAction(DOCACTION_Complete);
		setProcessed(false);
		return true;	
	}

	@Override
	public String getSummary() {
		StringBuilder sb = new StringBuilder();
		sb.append(getDocumentNo());
		//	: Grand Total = 123.00 (#1)
		sb.append(": ").
			append(Msg.translate(getCtx(),"GrandTotal")).append("=").append(getGrandTotal());
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
		try
		{
			File temp = File.createTempFile(get_TableName()+get_ID()+"_", ".pdf");
			return createPDF(temp);
		}
		catch (Exception e)
		{
			log.severe("Could not create PDF - " + e.getMessage());
		}
		return null;
	}
	
	/**
	 * 	Create PDF file
	 *	@param file output file
	 *	@return file if success
	 */
	public File createPDF (File file)
	{
		if (GENERATE_DANFE_PROCESS_ID == null) {
			GENERATE_DANFE_PROCESS_ID = getGenerateDanfeProcessID();
		}
				
		if (GENERATE_DANFE_PROCESS_ID == null || GENERATE_DANFE_PROCESS_ID <= 0)
			return null;
		
		ProcessInfo pi = new ProcessInfo("DANFE", GENERATE_DANFE_PROCESS_ID);
		pi.setRecord_ID(get_ID());
		pi.setIsBatch(true);		
		ServerProcessCtl.process(pi, null);
		
		return pi.getPDFReport();
	}
	
	/**
	 * 	Get GenerateDanfe AD_Process_ID, based on class name and entity type  
	 *	@return AD_Process_ID
	 */
	private Integer getGenerateDanfeProcessID() {
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT AD_Process_ID FROM AD_Process ");
		sql.append("WHERE Classname = ? AND EntityType=?");

		Integer AD_Process_ID = DB.getSQLValue (get_TrxName(), sql.toString(),
				new Object[]{"org.idempierelbr.nfe.process.GenerateDanfe", "LBR"});
		
		return AD_Process_ID;
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
	
	private String generateXML() {
		String msg = null;
		
		try
		{
			if (getC_DocType_ID() > 0)
			{
				MDocType dt = new MDocType(getCtx(), getC_DocType_ID(), get_TrxName());
				String model = dt.get_ValueAsString("LBR_NFBModel");

				if (model == null)
					log.log(Level.INFO, "NF Model is null");
				else if (model.equals("55"))
					msg = NFeXMLGenerator.geraCorpoNFe(getCtx(), getLBR_NotaFiscal_ID(), get_TrxName());
			}
		} 
		catch(Exception ex) 
		{
			ex.printStackTrace();
			return Msg.getMsg(Env.getCtx(), "LBR_ErrorGeneratingXML") + ". Nota Fiscal " + getDocumentNo();
		}
		
		return msg;
	}
	
	/**
	 *  Get Transportation
	 *  @return MLBRNotaFiscalTransp transp
	 */
	public MLBRNotaFiscalTransp getTransp()
	{
		MTable table = MTable.get (getCtx(), MLBRNotaFiscalTransp.Table_Name);
		Query query =  new Query(getCtx(), table, "LBR_NotaFiscal_ID=?", get_TrxName());
		query.setParameters(new Object[]{getLBR_NotaFiscal_ID()});
	 	//
	 	return query.first();
	}
	
	/**
	 *  Get Payment info
	 *  @return MLBRNotaFiscalPay[] pay
	 */
	public MLBRNotaFiscalPay[] getPay()
	{
		MTable table = MTable.get (getCtx(), MLBRNotaFiscalPay.Table_Name);
		Query query =  new Query(getCtx(), table, "LBR_NotaFiscal_ID=?", get_TrxName());
		query.setParameters(new Object[]{getLBR_NotaFiscal_ID()});
	 	//
	 	List<MLBRNotaFiscalPay> list = query.list();
	 	return list.toArray(new MLBRNotaFiscalPay[list.size()]);
	}
	
	/**
	 *  Get Doc Ref info
	 *  @return MLBRNotaFiscalDocRef[] doc ref
	 */
	public MLBRNotaFiscalDocRef[] getDocRefs()
	{
		MTable table = MTable.get (getCtx(), MLBRNotaFiscalDocRef.Table_Name);
		Query query =  new Query(getCtx(), table, "LBR_NotaFiscal_ID=?", get_TrxName());
		query.setParameters(new Object[]{getLBR_NotaFiscal_ID()});
	 	//
	 	List<MLBRNotaFiscalDocRef> list = query.list();
	 	return list.toArray(new MLBRNotaFiscalDocRef[list.size()]);
	}
	
	/**
	 * 	Retorna o total de desconto da Nota Fiscal
	 * @return
	 */
	public BigDecimal getDiscount()
	{
		BigDecimal totalDiscount = new BigDecimal( 0 );
		
		for ( MLBRNotaFiscalLine line : getLines() ) {
			MLBRDocLineDetailsNfe detail = MLBRDocLineDetailsNfe.getOfPO(line);
			
			if (detail != null) {
				BigDecimal discount = detail.getDiscountAmt();
				totalDiscount = totalDiscount.add( discount != null ? discount : Env.ZERO );
			}
		}
		
		return totalDiscount;
	}
	
	/**
	 * 	Calculate Tax and Total
	 * 	@return true if tax total calculated
	 */
	public boolean calculateTaxTotal()
	{
		log.fine("");
		//	Delete Taxes
		DB.executeUpdateEx("DELETE LBR_NotaFiscalTax WHERE LBR_NotaFiscal_ID=" + get_ID(), get_TrxName());
		m_taxes = null;
		
		MTaxProvider[] providers = getTaxProviders();
		for (MTaxProvider provider : providers)
		{
			if (provider.getC_TaxProviderCfg_ID() > 0) {
				X_C_TaxProviderCfg cfg = new X_C_TaxProviderCfg(getCtx(), provider.getC_TaxProviderCfg_ID(), get_TrxName());
				
				if (cfg.getTaxProviderClass() == null || !cfg.getTaxProviderClass().equals(TaxProviderFactory.DEFAULT_TAX_PROVIDER))
					continue;
			}
			
			NFTaxProvider calculator = new NFTaxProvider();
			if (!calculator.calculateNFTaxTotal(provider, this))
				return false;
		}
		return true;
	}	//	calculateTaxTotal
	
	/**
	 * Get tax providers
	 * @return array of tax provider
	 */
	public MTaxProvider[] getTaxProviders()
	{
		Hashtable<Integer, MTaxProvider> providers = new Hashtable<Integer, MTaxProvider>();
		MLBRNotaFiscalLine[] lines = getLines();
		for (MLBRNotaFiscalLine line : lines)
		{
            MTax tax = new MTax(line.getCtx(), line.getC_Tax_ID(), line.get_TrxName());
            MTaxProvider provider = providers.get(tax.getC_TaxProvider_ID());
            if (provider == null)
            	providers.put(tax.getC_TaxProvider_ID(), new MTaxProvider(tax.getCtx(), tax.getC_TaxProvider_ID(), tax.get_TrxName()));
		}
		
		MTaxProvider[] retValue = new MTaxProvider[providers.size()];
		providers.values().toArray(retValue);
		return retValue;
	}
	
	protected boolean beforeSave(boolean newRecord) {
		// Validate Region (only if the doc. is issued by the client/org.)
		if (isLBR_IsDocIssuedByOrg()) {
			MOrg org = new MOrg(getCtx(), getAD_Org_ID(), get_TrxName());
			MOrgInfo orgInfo = MOrgInfo.get(getCtx(), org.get_ID(), get_TrxName());
			MLocation orgLoc = new MLocation(getCtx(), orgInfo.getC_Location_ID(), get_TrxName());
			
			if (getC_Region_ID() != orgLoc.getC_Region_ID()) {
				log.saveError("Error", Msg.parseTranslation(getCtx(), "NF-e org. region is different than selected on region field"));
				return false;
			}
		}
		
		return true;
	}

	public boolean hasImmutableStatus() {
		if (!isLBR_IsDocIssuedByOrg())
			return false;
		
		if (getLBR_NFeStatus() == null || getLBR_NFeStatus().trim().equals(""))
			return false;
		
		if (isStatusAutorizado() ||
				isStatusCancelado() ||
				isStatusDenegado())
			return true;
		
		return false;
	}
	
	public boolean isStatusAutorizado() {
		if (getLBR_NFeStatus() == null || getLBR_NFeStatus().trim().equals(""))
			return false;
		
		if (getLBR_NFeStatus().equals("100") || 	// 100 - Autorizado o uso da NF-e
				getLBR_NFeStatus().equals("150"))	// 150 - Autorizado o uso da NF-e
			return true;
		
		return false;
	}
	
	public boolean isStatusCancelado() {
		if (getLBR_NFeStatus() == null || getLBR_NFeStatus().trim().equals(""))
			return false;
		
		if (getLBR_NFeStatus().equals("101") || 	// 101 - Cancelamento de NF-e homologado
				getLBR_NFeStatus().equals("151") || // 151 - Cancelamento de NF-e homologado fora de prazo
				getLBR_NFeStatus().equals("155"))  	// 155 - Cancelamento de NF-e homologado fora de prazo
			return true;
		
		return false;
	}
	
	public boolean isStatusDenegado() {
		if (getLBR_NFeStatus() == null || getLBR_NFeStatus().trim().equals(""))
			return false;
		
		if (getLBR_NFeStatus().equals("110") || // 110 - Uso Denegado
				getLBR_NFeStatus().equals("301") || // 301 - Uso Denegado: Irregularidade fiscal do emitente
				getLBR_NFeStatus().equals("302") || // 302 - Uso Denegado: Irregularidade fiscal do destinatario
				getLBR_NFeStatus().equals("303")) 	// 303 - Uso Denegado: Destinatario nao habilitado a operar na UF
			return true;
		
		return false;
	}
	
	private String isLockedByLot() {
		MTable table = MTable.get (getCtx(), MLBRNotaFiscalLotLine.Table_Name);
		Query query =  new Query(getCtx(), table, "LBR_NFeID=?", get_TrxName());
	 		  query.setParameters(new Object[]{getLBR_NFeID()});
	 	List<MLBRNotaFiscalLotLine> list = query.list();
	 	for (MLBRNotaFiscalLotLine lotLine : list) {
	 		String error = "NF-e is in the Lot: " + lotLine.getParent().getDocumentNo();
	 		MLBRNotaFiscalLot lot = lotLine.getParent();
	 		
	 		if (lot.getLBR_ProcessingType().equals("A")) {
	 			if (lot.isLBR_LotSent() && !lot.isLBR_LotQueried())
	 				return error;
	 		}
	 		
	 		if (!lot.isLBR_LotSent()) {
	 			try {
		 			lotLine.deleteEx(false);
		 		} catch(Exception e) {
		 			return error;
		 		}
	 		}
	 	}
	 	
	 	return null;
	}	
	
	public void setProcessed (boolean processed)
	{
		super.setProcessed (processed);
		if (get_ID() == 0)
			return;
		String set = "SET Processed='"
			+ (processed ? "Y" : "N")
			+ "' WHERE LBR_NotaFiscal_ID=" + getLBR_NotaFiscal_ID();
		int noLine = DB.executeUpdateEx("UPDATE LBR_NotaFiscalLine " + set, get_TrxName());
		int noTax = DB.executeUpdateEx("UPDATE LBR_NotaFiscalTax " + set, get_TrxName());
		if (log.isLoggable(Level.FINE)) log.fine("setProcessed - " + processed + " - Lines=" + noLine + ", Tax=" + noTax);
	}	//	setProcessed
	
	/**
	 * Get an object JasperPrint with jasper report and parameters (subreports and logo)
	 * used for generating DANFE PDF
	 * 
	 * @return JasperPrint
	 */
	public JasperPrint getJasperPrint() {
		if (!isStatusAutorizado() && !isStatusCancelado())
			return null;
		
		// Check process
		if (GENERATE_DANFE_PROCESS_ID == null) {
			GENERATE_DANFE_PROCESS_ID = getGenerateDanfeProcessID();
		}
				
		if (GENERATE_DANFE_PROCESS_ID == null || GENERATE_DANFE_PROCESS_ID <= 0)
			return null;
		
		// Get distribution xml for NF and Events
		InputStream xmlInputStream = null;
		MAttachment attachNFe = createAttachment();
		String events="";
		
		for (int i = 0 ; i < attachNFe.getEntryCount() ; i++) 
		{
			MAttachmentEntry entry = attachNFe.getEntry(i);
			if (entry.getName().endsWith(DISTRIBUICAO_FILE_EXT) 
					|| entry.getName().endsWith(DISTRIBUICAO_OLD_FILE_EXT)
					|| entry.getName().startsWith(IMPORTED_FILE_PREFIX)) {
				xmlInputStream = entry.getInputStream();
			}

			if (entry.getName().endsWith(MLBRNotaFiscalEvent.DISTRIBUICAO_FILE_EXT) ||
					entry.getName().endsWith("-procEventoNFe.xml")) // Preserved for backward compatibility
			{
				try {
					events += IOUtils.toString(entry.getInputStream());
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		
		if (xmlInputStream == null)
			return null;
		
		// Get jasper file(s) and parameters
		InputStream mainJasperInputStream = null;
		Map<String, Object> jasperParameters = new HashMap<String, Object>();
		MProcess process = new MProcess(getCtx(), GENERATE_DANFE_PROCESS_ID, get_TrxName());
		
		MAttachment attachProcess = process.createAttachment();
		
		for (int i = attachProcess.getEntryCount() - 1; i >= 0; i--) 
		{
			if (attachProcess.getEntry(i).getName().equals(JASPER_FILENAME))
				mainJasperInputStream = attachProcess.getEntry(i).getInputStream();
			
			jasperParameters.put(attachProcess.getEntry(i).getName(),
					attachProcess.getEntry(i).getInputStream());
		}
		
		// If attachment not found, try to get from resources
		if (mainJasperInputStream == null) {
			mainJasperInputStream = getClass().getClassLoader()
					.getResourceAsStream("org/idempierelbr/nfe/report/" + JASPER_FILENAME);
			
			jasperParameters.put("DanfeMainPortraitA4", mainJasperInputStream);
			jasperParameters.put("REPORT_LOCALE", new Locale("pt", "BR"));
		}
		
		if (mainJasperInputStream == null)
			return null;
		
		// Add org logo to parameters
		int logoID = 0;
		if ( isLBR_IsDocIssuedByOrg() ) {
			MOrgInfo oi = MOrgInfo.get(getCtx(), getAD_Org_ID(), get_TrxName());
			logoID = oi.getLogo_ID();
		} else {
			logoID = this.getC_BPartner().getLogo_ID();
		}
		
		if ( logoID > 0) {
			MImage mImage = MImage.get(getCtx(), logoID);
			if ( mImage != null && mImage.getBinaryData() != null)
			{
				InputStream is = new ByteArrayInputStream(mImage.getBinaryData());
				jasperParameters.put("logotipo", is);
			}
		}
		
		if ( ! events.equals("") ) {
			jasperParameters.put("Eventos_Datasource", 
					IOUtils.toInputStream("<LBREventList>" + events + "</LBREventList>" ));
		}

		// Load report file and datasource
		JasperReport jasperReport = null;
		JRXmlDataSource dataSource = null;
		
		try {
			jasperReport = (JasperReport)JRLoader.loadObject(mainJasperInputStream);
			dataSource = new JRXmlDataSource(xmlInputStream, jasperReport.getQuery().getText());
		} catch (JRException e1) {
			log.severe("Não foi possível carregar arquivo jasper");
			e1.printStackTrace();
		}
		
		// Generate JasperPrint
		JasperPrint jasperPrint = null;
		
		try {
			jasperPrint = JasperFillManager.fillReport(jasperReport, jasperParameters, dataSource);
		} catch(Exception e) {
			log.warning("Could not generate JasperPrint for Nota Fiscal " + getDocumentNo());
			e.printStackTrace();
		}
		
		return jasperPrint;
	}

	public BigDecimal getTotalSurcharges() {
		
		BigDecimal totalSurcharges = new BigDecimal( 0 );
		
		for ( MLBRNotaFiscalLine line : getLines() ) {
			MLBRDocLineDetailsNfe detail = MLBRDocLineDetailsNfe.getOfPO(line);
			
			if (detail != null) {
				BigDecimal surcharges = detail.getSurcharges();
				totalSurcharges = totalSurcharges.add( surcharges != null ? surcharges : Env.ZERO );
			}
		}
		
		return totalSurcharges;
	}
	
	public BigDecimal getTotalFreight() {
		
		BigDecimal totalFreight = new BigDecimal( 0 );
		
		for ( MLBRNotaFiscalLine line : getLines() ) {
			MLBRDocLineDetailsNfe detail = MLBRDocLineDetailsNfe.getOfPO(line);
			
			if (detail != null) {
				BigDecimal freight = detail.getFreightAmt();
				totalFreight = totalFreight.add( freight != null ? freight : Env.ZERO );
			}
		}
		
		return totalFreight;
	}
	
	public BigDecimal getTotalInsurance() {
		
		BigDecimal totalInsurance = new BigDecimal( 0 );
		
		for ( MLBRNotaFiscalLine line : getLines() ) {
			MLBRDocLineDetailsNfe detail = MLBRDocLineDetailsNfe.getOfPO(line);
			
			if (detail != null) {
				BigDecimal insurance = detail.getInsuredAmount();
				totalInsurance = totalInsurance.add( insurance != null ? insurance : Env.ZERO );
			}
		}
		
		return totalInsurance;
	}
}
