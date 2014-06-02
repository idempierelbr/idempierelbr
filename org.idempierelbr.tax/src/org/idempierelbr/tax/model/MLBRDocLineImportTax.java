package org.idempierelbr.tax.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.Query;
import org.compiere.util.Env;

public class MLBRDocLineImportTax extends X_LBR_DocLine_ImportTax {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8383356153009002225L;

	/**
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRDocLineImportTax(Properties ctx, int LBR_DocLine_ImportTax_ID,
			String trxName) {
		super(ctx, LBR_DocLine_ImportTax_ID, trxName);
	}
	
	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRDocLineImportTax(Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}
	
	public BigDecimal getCustomsValue () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_CustomsValue);
		return bd;
	}
	
	public BigDecimal getLBR_IOFAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_IOFAmt);
		return bd;
	}
	
	public BigDecimal getLBR_TaxAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxAmt);
		return bd;
	}
	
	public BigDecimal getLBR_TaxBaseAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxBaseAmt);
		return bd;
	}
	
	/**
	 * 	Get ImportTax array of a given Doc Line Details.
	 *	@return ImportTax array
	 */
	public static MLBRDocLineImportTax[] getOfDetails (Properties ctx, int LBR_DocLine_Details_ID, String trxName) {	
		MLBRDocLineDetails details = new MLBRDocLineDetails(ctx, LBR_DocLine_Details_ID, trxName);
		return getOfDetails(details);
	}	
	
	/**
	 * 	Get ImportTax array of a given Doc Line Details.
	 *	@return ImportTax array
	 */
	public static MLBRDocLineImportTax[] getOfDetails (MLBRDocLineDetails details) {	
		if (details == null)
			return null;
		
		List<MLBRDocLineImportTax> list = new Query (details.getCtx(), MLBRDocLineImportTax.Table_Name,
				"LBR_DocLine_Details_ID=?", details.get_TrxName())
			.setParameters(new Object[]{details.get_ID()})
			.list();
		
		return list.toArray(new MLBRDocLineImportTax[list.size()]);
	}
	
	/**
	 * 	Copy ImportTax from a details to another details
	 *	@return true if copied ok
	 */
	public static boolean copy(MLBRDocLineDetails detailsFrom, MLBRDocLineDetails detailsTo) {
		MLBRDocLineImportTax[] importTaxLinesFrom = getOfDetails(detailsFrom);
		MLBRDocLineImportTax[] importTaxLinesTo = getOfDetails(detailsTo);
		
		if (importTaxLinesFrom.length == 0 || importTaxLinesTo.length > 0)
			return false;
		
		MLBRDocLineImportTax importTaxFrom = importTaxLinesFrom[0];
		MLBRDocLineImportTax importTaxTo = new MLBRDocLineImportTax(detailsTo.getCtx(), 0, detailsTo.get_TrxName());
		MLBRDocLineImportTax.copyValues(importTaxFrom, importTaxTo, detailsTo.getAD_Client_ID(), detailsTo.getAD_Org_ID());
		importTaxTo.setLBR_DocLine_Details_ID(detailsTo.get_ID());
		
		try {
			importTaxTo.saveEx();
			return true;
		} catch (AdempiereException e) {
			return false;
		}
	}

}
