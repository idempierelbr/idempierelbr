package org.idempierelbr.tax.model;

import java.math.BigDecimal;
import java.math.MathContext;
import java.math.RoundingMode;
import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.Query;
import org.compiere.util.Env;

public class MLBRDocLineICMS extends X_LBR_DocLine_ICMS {

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
	public MLBRDocLineICMS(Properties ctx, int LBR_DocLine_ICMS_ID,
			String trxName) {
		super(ctx, LBR_DocLine_ICMS_ID, trxName);
	}
	
	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRDocLineICMS(Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}
	
	/**
	 * 	Get ICMS array of a given Doc Line Details.
	 *	@return ICMS array
	 */
	public static MLBRDocLineICMS[] getOfDetails (Properties ctx, int LBR_DocLine_Details_ID, String trxName) {	
		MLBRDocLineDetails details = new MLBRDocLineDetails(ctx, LBR_DocLine_Details_ID, trxName);
		return getOfDetails(details);
	}	
	
	/**
	 * 	Get ICMS array of a given Doc Line Details.
	 *	@return ICMS array
	 */
	public static MLBRDocLineICMS[] getOfDetails (MLBRDocLineDetails details) {
		if (details == null)
			return null;
		
		List<MLBRDocLineICMS> list = new Query (details.getCtx(), MLBRDocLineICMS.Table_Name,
				"LBR_DocLine_Details_ID=?", details.get_TrxName())
			.setParameters(new Object[]{details.get_ID()})
			.list();
		
		return list.toArray(new MLBRDocLineICMS[list.size()]);	
	}
	
	/**
	 * 	Get adjusted IVA-ST based on UF's rate
	 * 
	 * 	@return adjusted or original iva-st
	 */
	public static BigDecimal getAdjustedIva(BigDecimal ivaOriginal, BigDecimal aliqInterestadual,
			BigDecimal aliqInternaDestino){
            		
		if (ivaOriginal == null || aliqInterestadual == null || aliqInternaDestino == null) {
			return ivaOriginal;
		}
		
		BigDecimal part1 = ivaOriginal.divide(Env.ONEHUNDRED).add(Env.ONE);
		BigDecimal part2 = aliqInterestadual.divide(Env.ONEHUNDRED).subtract(Env.ONE);
		BigDecimal part3 = aliqInternaDestino.divide(Env.ONEHUNDRED).subtract(Env.ONE);
		BigDecimal sub = part2.divide(part3, new MathContext(12, RoundingMode.HALF_UP)).multiply(part1);
		
		return sub.subtract(Env.ONE).multiply(Env.ONEHUNDRED).setScale(2, RoundingMode.HALF_UP);
	}
	
	/**
	 * 	Copy ICMS from a details to another details
	 *	@return true if copied ok
	 */
	public static boolean copy(MLBRDocLineDetails detailsFrom, MLBRDocLineDetails detailsTo) {
		MLBRDocLineICMS[] icmsLinesFrom = getOfDetails(detailsFrom);
		MLBRDocLineICMS[] icmsLinesTo = getOfDetails(detailsTo);
		
		if (icmsLinesFrom.length == 0 || icmsLinesTo.length > 0)
			return false;
		
		MLBRDocLineICMS icmsFrom = icmsLinesFrom[0];
		MLBRDocLineICMS icmsTo = new MLBRDocLineICMS(detailsTo.getCtx(), 0, detailsTo.get_TrxName());
		MLBRDocLineICMS.copyValues(icmsFrom, icmsTo, detailsTo.getAD_Client_ID(), detailsTo.getAD_Org_ID());
		icmsTo.setLBR_DocLine_Details_ID(detailsTo.get_ID());
		
		try {
			icmsTo.saveEx();
			return true;
		} catch (AdempiereException e) {
			return false;
		}
	}
}
