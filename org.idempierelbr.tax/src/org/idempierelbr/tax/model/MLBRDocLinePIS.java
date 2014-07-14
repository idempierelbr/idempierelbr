package org.idempierelbr.tax.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.Query;

public class MLBRDocLinePIS extends X_LBR_DocLine_PIS {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8383356153009002225L;
	
	/** CST	- PIS */
	public static final String CST_PIS_01 = "01";
	public static final String CST_PIS_02 = "02";
	public static final String CST_PIS_03 = "03";
	public static final String CST_PIS_04 = "04";
	public static final String CST_PIS_05 = "05";
	public static final String CST_PIS_06 = "06";
	public static final String CST_PIS_07 = "07";
	public static final String CST_PIS_08 = "08";
	public static final String CST_PIS_09 = "09";
	public static final String CST_PIS_49 = "49";
	public static final String CST_PIS_50 = "50";
	public static final String CST_PIS_51 = "51";
	public static final String CST_PIS_52 = "52";
	public static final String CST_PIS_53 = "53";
	public static final String CST_PIS_54 = "54";
	public static final String CST_PIS_55 = "55";
	public static final String CST_PIS_56 = "56";
	public static final String CST_PIS_60 = "60";
	public static final String CST_PIS_61 = "61";
	public static final String CST_PIS_62 = "62";
	public static final String CST_PIS_63 = "63";
	public static final String CST_PIS_64 = "64";
	public static final String CST_PIS_65 = "65";
	public static final String CST_PIS_66 = "66";
	public static final String CST_PIS_67 = "67";
	public static final String CST_PIS_70 = "70";
	public static final String CST_PIS_71 = "71";
	public static final String CST_PIS_72 = "72";
	public static final String CST_PIS_73 = "73";
	public static final String CST_PIS_74 = "74";
	public static final String CST_PIS_75 = "75";
	public static final String CST_PIS_98 = "98";
	public static final String CST_PIS_99 = "99";

	/**
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRDocLinePIS(Properties ctx, int LBR_DocLine_PIS_ID,
			String trxName) {
		super(ctx, LBR_DocLine_PIS_ID, trxName);
	}
	
	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRDocLinePIS(Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}
	
	public BigDecimal getLBR_PISST_TaxAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_PISST_TaxAmt);
		return bd;
	}
	
	public BigDecimal getLBR_PISST_TaxBaseAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_PISST_TaxBaseAmt);
		return bd;
	}
	
	public BigDecimal getLBR_PISST_TaxRate () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_PISST_TaxRate);
		return bd;
	}
	
	public BigDecimal getLBR_PISST_TaxRateInAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_PISST_TaxRateInAmt);
		return bd;
	}
	
	public BigDecimal getLBR_PISST_TotalQty () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_PISST_TotalQty);
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
	
	public BigDecimal getLBR_TaxRate () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxRate);
		return bd;
	}
	
	public BigDecimal getLBR_TaxRateInAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxRateInAmt);
		return bd;
	}
	
	public BigDecimal getTotalQty () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_TotalQty);
		return bd;
	}
	
	/**
	 * 	Get PIS array of a given Doc Line Details.
	 *	@return PIS array
	 */
	public static MLBRDocLinePIS[] getOfDetails (Properties ctx, int LBR_DocLine_Details_ID, String trxName) {	
		MLBRDocLineDetails details = new MLBRDocLineDetails(ctx, LBR_DocLine_Details_ID, trxName);
		return getOfDetails(details);
	}	
	
	/**
	 * 	Get PIS array of a given Doc Line Details.
	 *	@return PIS array
	 */
	public static MLBRDocLinePIS[] getOfDetails (MLBRDocLineDetails details) {	
		if (details == null)
			return null;
		
		List<MLBRDocLinePIS> list = new Query (details.getCtx(), MLBRDocLinePIS.Table_Name,
				"LBR_DocLine_Details_ID=?", details.get_TrxName())
			.setParameters(new Object[]{details.get_ID()})
			.list();
		
		return list.toArray(new MLBRDocLinePIS[list.size()]);	
	}
	
	/**
	 * 	Copy PIS from a details to another details
	 *	@return true if copied ok
	 */
	public static boolean copy(MLBRDocLineDetails detailsFrom, MLBRDocLineDetails detailsTo) {
		MLBRDocLinePIS[] pisLinesFrom = getOfDetails(detailsFrom);
		MLBRDocLinePIS[] pisLinesTo = getOfDetails(detailsTo);
		
		if (pisLinesFrom.length == 0 || pisLinesTo.length > 0)
			return false;
		
		MLBRDocLinePIS pisFrom = pisLinesFrom[0];
		MLBRDocLinePIS pisTo = new MLBRDocLinePIS(detailsTo.getCtx(), 0, detailsTo.get_TrxName());
		MLBRDocLinePIS.copyValues(pisFrom, pisTo, detailsTo.getAD_Client_ID(), detailsTo.getAD_Org_ID());
		pisTo.setLBR_DocLine_Details_ID(detailsTo.get_ID());
		
		try {
			pisTo.saveEx();
			return true;
		} catch (AdempiereException e) {
			return false;
		}
	}

}
