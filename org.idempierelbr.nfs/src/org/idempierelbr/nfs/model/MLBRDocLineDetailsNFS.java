package org.idempierelbr.nfs.model;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import org.compiere.model.MProduct;
import org.compiere.model.PO;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.idempierelbr.tax.model.IDocLineDetails;
import org.idempierelbr.tax.model.MLBRDocLineDetailsTax;
import org.idempierelbr.tax.model.MLBRTax;

public class MLBRDocLineDetailsNFS extends MLBRDocLineDetailsTax implements IDocLineDetails{
	/**
	 * 
	 */
	private static final long serialVersionUID = 5436412104911684345L;
	private static final CLogger log = CLogger.getCLogger(MLBRDocLineDetailsNFS.class);

	/**
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRDocLineDetailsNFS (Properties ctx, int LBR_DocLine_Details_ID, String trxName)
	{
		super (ctx, LBR_DocLine_Details_ID, trxName);
	}

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRDocLineDetailsNFS (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}
	
	/**
	 * 	Create new Doc Line Details record from a given PO.
	 * 	@param po line
	 *	@return true if it could be created successfully
	 */
	public static MLBRDocLineDetailsNFS createFromPO (PO po)
	{	
		MLBRDocLineDetailsNFS details;
		details = getOfPO(po);
		
		if (details != null)
			return details;		
		
		String columnName = po.get_TableName() + "_ID";
		
		details = new MLBRDocLineDetailsNFS(po.getCtx(), 0, po.get_TrxName());		
		details.setAD_Org_ID(po.getAD_Org_ID());
		details.set_ValueOfColumn(columnName, po.get_ID());
		
		return details;
	}
	
	/**
	 * 	Get Brazilian Doc Line Details of a given PO.
	 * 	@param po persistent object
	 *	@return details
	 */
	public static MLBRDocLineDetailsNFS getOfPO (PO po)
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
				MLBRDocLineDetailsNFS details = new MLBRDocLineDetailsNFS(po.getCtx(), rs.getInt("LBR_DocLine_Details_ID"), po.get_TrxName());
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
		
		if (po instanceof MLBRNFS) {
			
			setAD_Org_ID(po.getAD_Org_ID());
			MProduct product = new MProduct(po.getCtx(), po.get_ValueAsInt("M_Product_ID"), po.get_TrxName());
			
			if (product.get_ID() > 0) {
				setProductValue(product.getValue());
				setProductName(product.getName());
				setLBR_UOMTax_ID(product.get_ValueAsInt("C_UOM_ID"));
				
				if (product.getProductType().equals(MProduct.PRODUCTTYPE_Service))
					setLBR_TaxationType(MLBRDocLineDetailsNFS.LBR_TAXATIONTYPE_ISSQN);
				else
					setLBR_TaxationType(MLBRDocLineDetailsNFS.LBR_TAXATIONTYPE_ICMS);
			}  else {
				setProductValue(null);
				setProductName(null);
				setLBR_NCM_ID(0);
				setLBR_UPCTax(null);
				setLBR_TaxationType(null);
			}
			
			setLBR_QtyTax((BigDecimal)po.get_Value("Qty"));
			setLBR_PriceTax((BigDecimal)po.get_Value("Price"));
				
			// Calculate gross amount
			setLBR_GrossAmt(((BigDecimal)po.get_Value("TotalLines")).add(getDiscountAmt() == null ? Env.ZERO : getDiscountAmt()));
		}
	}
	
	public boolean isDiscountPrinted(PO po) {
		return false;
	}
	
	/**
	 * Calculate brazilian taxes
	 * 
	 * @param po LBR_NFS
	 * @param
	 * 
	 */
	public String calculateTaxes (PO po, PO poLine) {
		
		//
		super.calculateTaxes(po,  poLine);
		
		// 
		if (MLBRNFS.Table_Name.equals(po.get_TableName())) {
			MLBRNFS nfs = (MLBRNFS) po;
		
			//
			if (getLBR_Tax_ID() > 0) {
				Map<String, BigDecimal> params = new HashMap<String, BigDecimal>();
				params.put(MLBRTax.SISCOMEX, getLBR_SiscomexAmt());
				params.put(MLBRTax.INSURANCE, getInsuredAmount());
				params.put(MLBRTax.FREIGHT, getFreightAmt());
				params.put(MLBRTax.OTHERCHARGES, getSurcharges());
				params.put(MLBRTax.QTY, getLBR_QtyTax());
				params.put(MLBRTax.AMT, getLBR_GrossAmt().subtract(getDiscountAmt() == null ? Env.ZERO : getDiscountAmt()));
			
				MLBRTax tax = new MLBRTax (getCtx(), getLBR_Tax_ID(), get_TrxName());
				tax.calculate (nfs.isTaxIncluded(), nfs.getDateDoc(), params, nfs.getLBR_TransactionType());
			}
		}
		
		
		return null;
	}

	
	protected boolean afterSave(boolean newRecord, boolean success) {
		success = super.afterSave(newRecord, success);
		
		if (!success)
			return success;
		
		if (get_ValueAsInt("LBR_NFS_ID") > 0) {		
			
			if (m_DetailsFrom != null) {
				copyChildren(m_DetailsFrom);			
				m_DetailsFrom = null;
				return true;
			}
			
			// Calculate (or recalculate) taxes
			if (getLBR_Tax_ID() > 0
					&& ((!newRecord && (is_ValueChanged("LBR_Tax_ID")
							|| is_ValueChanged("LBR_GrossAmt") || is_ValueChanged("DiscountAmt"))) || (newRecord))) {
	
				deleteChildren();
				
				// Array para somar os impostos de todas as linhas
				Map<Integer, Object[]> taxes = new HashMap<Integer, Object[]>();
				MLBRTax tax = new MLBRTax (getCtx(), getLBR_Tax_ID(), get_TrxName());
				
				if (get_ValueAsInt("LBR_NFS_ID") > 0) {
					MLBRNFS m_nfs = new MLBRNFS(getCtx(), get_ValueAsInt("LBR_NFS_ID"), get_TrxName());
					calculateTaxes(m_nfs, m_nfs);
					processTax(taxes, tax, m_nfs.getC_Tax_ID());
					createChildren(taxes, tax, m_nfs.getC_Tax_ID(),
							(MProduct) m_nfs.getM_Product(),
							m_nfs.getC_BPartner_ID(),
							m_nfs.getC_BPartner_Location_ID(),
							m_nfs.getLBR_TransactionType(), m_nfs.getDateDoc());
					m_nfs.updateHeaderTax();
				}
			}
		}

		return true;
	}
}
