package org.idempierelbr.tax.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.Query;
import org.compiere.util.Env;

public class MLBRDocLineIPI extends X_LBR_DocLine_IPI {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8383356153009002225L;
	
	/** CST	- IPI */
	public static final String CST_IPI_00 = "00";
	public static final String CST_IPI_01 = "01";
	public static final String CST_IPI_02 = "02";
	public static final String CST_IPI_03 = "03";
	public static final String CST_IPI_04 = "04";
	public static final String CST_IPI_05 = "05";
	public static final String CST_IPI_49 = "49";
	public static final String CST_IPI_50 = "50";
	public static final String CST_IPI_51 = "51";
	public static final String CST_IPI_52 = "52";
	public static final String CST_IPI_53 = "53";
	public static final String CST_IPI_54 = "54";
	public static final String CST_IPI_55 = "55";
	public static final String CST_IPI_99 = "99";

	/**
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRDocLineIPI(Properties ctx, int LBR_DocLine_IPI_ID,
			String trxName) {
		super(ctx, LBR_DocLine_IPI_ID, trxName);
	}
	
	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRDocLineIPI(Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
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
	
	public BigDecimal getPriceActual () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_PriceActual);
		return bd;
	}
	
	public BigDecimal getTotalQty () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_TotalQty);
		return bd;
	}
	
	/**
	 * 	Get IPI array of a given Doc Line Details.
	 *	@return IPI array
	 */
	public static MLBRDocLineIPI[] getOfDetails (Properties ctx, int LBR_DocLine_Details_ID, String trxName) {	
		MLBRDocLineDetails details = new MLBRDocLineDetails(ctx, LBR_DocLine_Details_ID, trxName);
		return getOfDetails(details);
	}	
	
	/**
	 * 	Get IPI array of a given Doc Line Details.
	 *	@return IPI array
	 */
	public static MLBRDocLineIPI[] getOfDetails (MLBRDocLineDetails details) {	
		if (details == null)
			return null;
		
		List<MLBRDocLineIPI> list = new Query (details.getCtx(), MLBRDocLineIPI.Table_Name,
				"LBR_DocLine_Details_ID=?", details.get_TrxName())
			.setParameters(new Object[]{details.get_ID()})
			.list();
		
		return list.toArray(new MLBRDocLineIPI[list.size()]);	
	}
	
	/**
	 * 	Copy IPI from a details to another details
	 *	@return true if copied ok
	 */
	public static boolean copy(MLBRDocLineDetails detailsFrom, MLBRDocLineDetails detailsTo) {
		MLBRDocLineIPI[] ipiLinesFrom = getOfDetails(detailsFrom);
		MLBRDocLineIPI[] ipiLinesTo = getOfDetails(detailsTo);
		
		if (ipiLinesFrom.length == 0 || ipiLinesTo.length > 0)
			return false;
		
		MLBRDocLineIPI ipiFrom = ipiLinesFrom[0];
		MLBRDocLineIPI ipiTo = new MLBRDocLineIPI(detailsTo.getCtx(), 0, detailsTo.get_TrxName());
		MLBRDocLineIPI.copyValues(ipiFrom, ipiTo, detailsTo.getAD_Client_ID(), detailsTo.getAD_Org_ID());
		ipiTo.setLBR_DocLine_Details_ID(detailsTo.get_ID());
		
		try {
			ipiTo.saveEx();
			return true;
		} catch (AdempiereException e) {
			return false;
		}
	}

}
