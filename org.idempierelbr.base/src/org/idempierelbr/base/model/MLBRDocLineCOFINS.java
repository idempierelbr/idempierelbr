package org.idempierelbr.base.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.Query;

public class MLBRDocLineCOFINS extends X_LBR_DocLine_COFINS {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8383356153009002225L;
	
	/** CST	- COFINS */
	public static final String CST_COFINS_01 = "01";
	public static final String CST_COFINS_02 = "02";
	public static final String CST_COFINS_03 = "03";
	public static final String CST_COFINS_04 = "04";
	public static final String CST_COFINS_05 = "05";
	public static final String CST_COFINS_06 = "06";
	public static final String CST_COFINS_07 = "07";
	public static final String CST_COFINS_08 = "08";
	public static final String CST_COFINS_09 = "09";
	public static final String CST_COFINS_49 = "49";
	public static final String CST_COFINS_50 = "50";
	public static final String CST_COFINS_51 = "51";
	public static final String CST_COFINS_52 = "52";
	public static final String CST_COFINS_53 = "53";
	public static final String CST_COFINS_54 = "54";
	public static final String CST_COFINS_55 = "55";
	public static final String CST_COFINS_56 = "56";
	public static final String CST_COFINS_60 = "60";
	public static final String CST_COFINS_61 = "61";
	public static final String CST_COFINS_62 = "62";
	public static final String CST_COFINS_63 = "63";
	public static final String CST_COFINS_64 = "64";
	public static final String CST_COFINS_65 = "65";
	public static final String CST_COFINS_66 = "66";
	public static final String CST_COFINS_67 = "67";
	public static final String CST_COFINS_70 = "70";
	public static final String CST_COFINS_71 = "71";
	public static final String CST_COFINS_72 = "72";
	public static final String CST_COFINS_73 = "73";
	public static final String CST_COFINS_74 = "74";
	public static final String CST_COFINS_75 = "75";
	public static final String CST_COFINS_98 = "98";
	public static final String CST_COFINS_99 = "99";

	/**
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRDocLineCOFINS(Properties ctx, int LBR_DocLine_COFINS_ID,
			String trxName) {
		super(ctx, LBR_DocLine_COFINS_ID, trxName);
	}
	
	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRDocLineCOFINS(Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}
	
	public BigDecimal getLBR_COFST_TaxAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_COFST_TaxAmt);
		return bd;
	}
	
	public BigDecimal getLBR_COFST_TaxBaseAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_COFST_TaxBaseAmt);
		return bd;
	}
	
	public BigDecimal getLBR_COFST_TaxRate () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_COFST_TaxRate);
		return bd;
	}
	
	public BigDecimal getLBR_COFST_TaxRateInAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_COFST_TaxRateInAmt);
		return bd;
	}
	
	public BigDecimal getLBR_COFST_TotalQty () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_COFST_TotalQty);
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
	 * 	Get COFINS array of a given Doc Line Details.
	 *	@return COFINS array
	 */
	public static MLBRDocLineCOFINS[] getOfDetails (Properties ctx, int LBR_DocLine_Details_ID, String trxName) {	
		MLBRDocLineDetails details = new MLBRDocLineDetails(ctx, LBR_DocLine_Details_ID, trxName);
		return getOfDetails(details);
	}	
	
	/**
	 * 	Get COFINS array of a given Doc Line Details.
	 *	@return COFINS array
	 */
	public static MLBRDocLineCOFINS[] getOfDetails (MLBRDocLineDetails details) {	
		if (details == null)
			return null;
		
		List<MLBRDocLineCOFINS> list = new Query (details.getCtx(), MLBRDocLineCOFINS.Table_Name,
				"LBR_DocLine_Details_ID=?", details.get_TrxName())
			.setParameters(new Object[]{details.get_ID()})
			.list();
		
		return list.toArray(new MLBRDocLineCOFINS[list.size()]);	
	}
	
	/**
	 * 	Copy COFINS from a details to another details
	 *	@return true if copied ok
	 */
	public static boolean copy(MLBRDocLineDetails detailsFrom, MLBRDocLineDetails detailsTo) {
		MLBRDocLineCOFINS[] cofinsLinesFrom = getOfDetails(detailsFrom);
		MLBRDocLineCOFINS[] cofinsLinesTo = getOfDetails(detailsTo);
		
		if (cofinsLinesFrom.length == 0 || cofinsLinesTo.length > 0)
			return false;
		
		MLBRDocLineCOFINS cofinsFrom = cofinsLinesFrom[0];
		MLBRDocLineCOFINS cofinsTo = new MLBRDocLineCOFINS(detailsTo.getCtx(), 0, detailsTo.get_TrxName());
		MLBRDocLineCOFINS.copyValues(cofinsFrom, cofinsTo, detailsTo.getAD_Client_ID(), detailsTo.getAD_Org_ID());
		cofinsTo.setLBR_DocLine_Details_ID(detailsTo.get_ID());
		
		try {
			cofinsTo.saveEx();
			return true;
		} catch (AdempiereException e) {
			return false;
		}
	}

}
