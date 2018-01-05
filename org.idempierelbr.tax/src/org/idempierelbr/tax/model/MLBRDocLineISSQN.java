package org.idempierelbr.tax.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.Query;

public class MLBRDocLineISSQN extends X_LBR_DocLine_ISSQN {

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
	public MLBRDocLineISSQN(Properties ctx, int LBR_DocLine_ISSQN_ID,
			String trxName) {
		super(ctx, LBR_DocLine_ISSQN_ID, trxName);
	}
	
	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRDocLineISSQN(Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}
	
	public BigDecimal getLBR_CondDiscountAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_CondDiscountAmt);
		return bd;
	}
	
	public BigDecimal getLBR_ISS_WithholdingAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_ISS_WithholdingAmt);
		return bd;
	}
	
	public BigDecimal getLBR_OtherWithholdingsAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_OtherWithholdingsAmt);
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
	
	public BigDecimal getLBR_TaxBaseDeductionAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxBaseDeductionAmt);
		return bd;
	}
	
	public BigDecimal getLBR_TaxRate () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxRate);
		return bd;
	}
	
	public BigDecimal getLBR_UncondDiscountAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_UncondDiscountAmt);
		return bd;
	}
	
	/**
	 * 	Get ISSQN array of a given Doc Line Details.
	 *	@return ISSQN array
	 */
	public static MLBRDocLineISSQN[] getOfDetails (Properties ctx, int LBR_DocLine_Details_ID, String trxName) {	
		MLBRDocLineDetails details = new MLBRDocLineDetails(ctx, LBR_DocLine_Details_ID, trxName);
		return getOfDetails(details);
	}	
	
	/**
	 * 	Get ISSQN array of a given Doc Line Details.
	 *	@return ISSQN array
	 */
	public static MLBRDocLineISSQN[] getOfDetails (MLBRDocLineDetails details) {	
		if (details == null)
			return null;
		
		List<MLBRDocLineISSQN> list = new Query (details.getCtx(), MLBRDocLineISSQN.Table_Name,
				"LBR_DocLine_Details_ID=?", details.get_TrxName())
			.setParameters(new Object[]{details.getLBR_DocLine_Details_ID()})
			.list();
		
		return list.toArray(new MLBRDocLineISSQN[list.size()]);
	}
	
	/**
	 * 	Copy ISSQN from a details to another details
	 *	@return true if copied ok
	 */
	public static boolean copy(MLBRDocLineDetails detailsFrom, MLBRDocLineDetails detailsTo) {
		MLBRDocLineISSQN[] issqnLinesFrom = getOfDetails(detailsFrom);
		MLBRDocLineISSQN[] issqnLinesTo = getOfDetails(detailsTo);
		
		if (issqnLinesFrom.length == 0 || issqnLinesTo.length > 0)
			return false;
		
		MLBRDocLineISSQN issqnFrom = issqnLinesFrom[0];
		MLBRDocLineISSQN issqnTo = new MLBRDocLineISSQN(detailsTo.getCtx(), 0, detailsTo.get_TrxName());
		MLBRDocLineISSQN.copyValues(issqnFrom, issqnTo, detailsTo.getAD_Client_ID(), detailsTo.getAD_Org_ID());
		issqnTo.setLBR_DocLine_Details_ID(detailsTo.get_ID());
		
		try {
			issqnTo.saveEx();
			return true;
		} catch (AdempiereException e) {
			return false;
		}
	}
}
