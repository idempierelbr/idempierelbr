package org.idempierelbr.nfe.model;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import org.adempiere.model.POWrapper;
import org.compiere.model.I_C_BPartner_Location;
import org.compiere.model.MProduct;
import org.compiere.model.PO;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.idempierelbr.tax.model.IDocLineDetails;
import org.idempierelbr.tax.model.MLBRDocLineDetailsTax;
import org.idempierelbr.tax.model.MLBRDocLineICMS;
import org.idempierelbr.tax.model.MLBRTax;
import org.idempierelbr.tax.wrapper.I_W_M_Product;

public class MLBRDocLineDetailsNfe extends MLBRDocLineDetailsTax implements IDocLineDetails{
	/**
	 * 
	 */
	private static final long serialVersionUID = 5436412104911684345L;
	private static final CLogger log = CLogger.getCLogger(MLBRDocLineDetailsNfe.class);

	/**
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRDocLineDetailsNfe (Properties ctx, int LBR_DocLine_Details_ID, String trxName)
	{
		super (ctx, LBR_DocLine_Details_ID, trxName);
	}

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRDocLineDetailsNfe (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}
	
	/**
	 * 	Create new Doc Line Details record from a given PO.
	 * 	@param po line
	 *	@return true if it could be created successfully
	 */
	public static MLBRDocLineDetailsNfe createFromPO (PO po)
	{	
		MLBRDocLineDetailsNfe details;
		details = getOfPO(po);
		
		if (details != null)
			return details;		
		
		String columnName = po.get_TableName() + "_ID";
		
		details = new MLBRDocLineDetailsNfe(po.getCtx(), 0, po.get_TrxName());		
		details.setAD_Org_ID(po.getAD_Org_ID());
		details.set_ValueOfColumn(columnName, po.get_ID());
		
		return details;
	}
	
	/**
	 * 	Get Brazilian Doc Line Details of a given PO.
	 * 	@param po persistent object
	 *	@return details
	 */
	public static MLBRDocLineDetailsNfe getOfPO (PO po)
	{	
		String sql =  " SELECT LBR_DocLine_Details_ID"
			+ " FROM LBR_DocLine_Details"
			+ " WHERE " + po.get_TableName() + "_ID=?";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try	{
			pstmt = DB.prepareStatement(sql, po.get_TrxName());
			pstmt.setInt(1, po.get_ID());
			rs = pstmt.executeQuery();
			while (rs.next()) {	
				MLBRDocLineDetailsNfe details = new MLBRDocLineDetailsNfe(po.getCtx(), rs.getInt("LBR_DocLine_Details_ID"), po.get_TrxName());
				return details;
			}
		}
		catch (SQLException e)
		{
			log.severe("Couldn't get LBR_DocLine_Details of PO " + po);
			e.printStackTrace();
		}
		finally
		{
			DB.close(rs, pstmt);
			rs = null; pstmt = null;
		}
		
		return null;
	}
	
	public void populateFromPO(PO po) {
		super.populateFromPO(po);
		
		if (po instanceof MLBRNotaFiscalLine) {
			setAD_Org_ID(po.getAD_Org_ID());
			MProduct product = new MProduct(po.getCtx(), po.get_ValueAsInt("M_Product_ID"), po.get_TrxName());
			
			if (product.get_ID() > 0) {
				I_W_M_Product pW = POWrapper.create(product, I_W_M_Product.class);
				setProductValue(product.getValue());
				setProductName(product.getName());
				setLBR_NCM_ID(pW.getLBR_NCM_ID());
				setLBR_UPCTax(product.getUPC());
				setLBR_UOMTax_ID(product.get_ValueAsInt("C_UOM_ID"));
				
				if (product.getProductType().equals(MProduct.PRODUCTTYPE_Service))
					setLBR_TaxationType(MLBRDocLineDetailsNfe.LBR_TAXATIONTYPE_ISSQN);
				else
					setLBR_TaxationType(MLBRDocLineDetailsNfe.LBR_TAXATIONTYPE_ICMS);
			}  else {
				setProductValue(null);
				setProductName(null);
				setLBR_NCM_ID(0);
				setLBR_UPCTax(null);
				setLBR_TaxationType(null);
			}
			
			setLBR_QtyTax((BigDecimal)po.get_Value("Qty"));
			setLBR_PriceTax((BigDecimal)po.get_Value("PriceActual"));
				
			// Calculate gross amount
			setLBR_GrossAmt(((BigDecimal)po.get_Value("LineNetAmt")).add(getDiscountAmt() == null ? Env.ZERO : getDiscountAmt()));
		}
	}
	
	public boolean isDiscountPrinted(PO po) {
		return false;
	}
	
	/**
	 * 	Calculate brazilian taxes
	 * 	@param original order/invoice
	 * 	@param line to be processed
	 * 	@param updateTaxes
	 * 	@return error message or null
	 */
	public String calculateTaxes (PO po, PO poLine) {
		super.calculateTaxes(po,  poLine);
		
		if (MLBRNotaFiscalLine.Table_Name.equals(poLine.get_TableName())) {
			MLBRNotaFiscal nf = null;
			MLBRNotaFiscalLine nfLine = (MLBRNotaFiscalLine) poLine;
			
			if (po != null) 
				nf = (MLBRNotaFiscal) po;
			else 
				nf = nfLine.getParent();
			
			if (getLBR_Tax_ID() > 0) {
				Map<String, BigDecimal> params = new HashMap<String, BigDecimal>();
				params.put(MLBRTax.SISCOMEX, getLBR_SiscomexAmt());
				params.put(MLBRTax.INSURANCE, getInsuredAmount());
				params.put(MLBRTax.FREIGHT, getFreightAmt());
				params.put(MLBRTax.OTHERCHARGES, getSurcharges());
				params.put(MLBRTax.QTY, getLBR_QtyTax());
				params.put(MLBRTax.AMT, getLBR_GrossAmt().subtract(getDiscountAmt() == null ? Env.ZERO : getDiscountAmt()));
				
				//if (getIVARateFromTaxTransaction() != null && getIVARateFromTaxTransaction().signum() == 1)
				//	params.put("IVA", getAdjustedIva().divide(Env.ONEHUNDRED, 4, BigDecimal.ROUND_HALF_UP));
			
				MLBRTax tax = new MLBRTax (getCtx(), getLBR_Tax_ID(), get_TrxName());
				tax.calculate (nf.isTaxIncluded(), nf.getDateDoc(), params, nf.get_ValueAsString("LBR_TransactionType"));
			}
		}
		
		return null;
	}

	/**
	 * 	Get adjusted IVA-ST based on transaction UF's 
	 * 
	 * 	@return adjusted or original iva-st
	 */
	/*protected BigDecimal getAdjustedIva(BigDecimal originalIVA){
		super.getAdjustedIva(originalIVA);
		
		boolean isSOTrx = true;
		Timestamp docDate = null;
		MProduct product = null;
		I_C_BPartner_Location bpLocation = null;
		int AD_Org_ID = 0;
		
		if (getLBR_NotaFiscalLine_ID() > 0) {
			MLBRNotaFiscalLine line = new MLBRNotaFiscalLine(getCtx(), getLBR_NotaFiscalLine_ID(), get_TrxName());
			MLBRNotaFiscal nf = line.getParent();
			docDate = nf.getDateDoc();
			isSOTrx = nf.isSOTrx();
			bpLocation = nf.getC_BPartner_Location();
			product = line.getProduct();
			AD_Org_ID = line.getAD_Org_ID();
		}
		
		return MLBRDocLineICMS.getInterstateAdjustedIva(originalIVA, AD_Org_ID, isSOTrx, docDate, product, bpLocation);
	}*/
	
	protected boolean afterSave(boolean newRecord, boolean success) {
		success = super.afterSave(newRecord, success);
		
		if (!success)
			return success;
		
		if (getLBR_NotaFiscalLine_ID() > 0) {		
			if (m_DetailsFrom != null) {
				copyChildren(m_DetailsFrom);			
				m_DetailsFrom = null;
				return true;
			}
			
			// Calculate (or recalculate) taxes
			if (getLBR_Tax_ID() > 0 &&
					((!newRecord && (is_ValueChanged("LBR_Tax_ID") || is_ValueChanged("LBR_GrossAmt") || is_ValueChanged("DiscountAmt"))) ||
					(newRecord))
				) {
	
				deleteChildren();
				
				// Array para somar os impostos de todas as linhas
				Map<Integer, Object[]> taxes = new HashMap<Integer, Object[]>();
				MLBRTax tax = new MLBRTax (getCtx(), getLBR_Tax_ID(), get_TrxName());
				
				if (getLBR_NotaFiscalLine_ID() > 0) {
					MLBRNotaFiscalLine nfLine = new MLBRNotaFiscalLine(getCtx(), getLBR_NotaFiscalLine_ID(), get_TrxName());
					MLBRNotaFiscal nf = nfLine.getParent();
					calculateTaxes(nf, nfLine);
					processTax(taxes, tax, nfLine.getC_Tax_ID());
					createChildren(taxes, tax, nfLine.getC_Tax_ID(), (MProduct)nfLine.getM_Product(), nf.getC_BPartner_ID());
					nfLine.updateHeaderTax();
				}
			}
		}

		return true;
	}
}
