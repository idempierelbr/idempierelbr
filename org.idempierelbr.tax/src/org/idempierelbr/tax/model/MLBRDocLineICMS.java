package org.idempierelbr.tax.model;

import java.math.BigDecimal;
import java.math.MathContext;
import java.math.RoundingMode;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.List;
import java.util.Properties;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.I_C_BPartner_Location;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MProduct;
import org.compiere.model.MRegion;
import org.compiere.model.Query;
import org.compiere.util.DB;
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
	 * 	Get adjusted IVA-ST based on transaction UF's 
	 * 
	 * 	@return adjusted or original iva-st
	 */
	public static BigDecimal getInterstateAdjustedIva(BigDecimal originalIVA, int AD_Org_ID, boolean isSOTrx,
			Timestamp docDate, MProduct product, I_C_BPartner_Location bpLocation){
		if (bpLocation == null)
			return originalIVA;
		
		MOrgInfo orgInfo = MOrgInfo.get(Env.getCtx(), AD_Org_ID, null);
		
		// Same UF, adjust is not necessary
		if (orgInfo.getC_Location().getC_Region_ID() == bpLocation.getC_Location().getC_Region_ID())
			return originalIVA;
		
		MRegion regionOrg = new MRegion(Env.getCtx(), orgInfo.getC_Location().getC_Region_ID(), null);
		MRegion regionBPartner = new MRegion(Env.getCtx(), bpLocation.getC_Location().getC_Region_ID(), null);
		
		int regionFrom_ID = 0;
		int regionTo_ID = 0;
		
		if (isSOTrx) {
			regionFrom_ID = regionOrg.get_ID();
			regionTo_ID = regionBPartner.get_ID();
		} else {
			regionFrom_ID = regionBPartner.get_ID();
			regionTo_ID = regionOrg.get_ID();
		}
		
		BigDecimal aliqInterestadual = Env.ZERO;
		BigDecimal aliqInternaDestino = Env.ZERO;
		
		MLBRICMSMatrix icmsMatrix = MLBRICMSMatrix.get(Env.getCtx(), AD_Org_ID, regionTo_ID, regionTo_ID, docDate, null);
		String sql = "SELECT MAX(tl.lbr_TaxRate) FROM LBR_TaxLine tl WHERE tl.LBR_Tax_ID = ?";
		aliqInternaDestino = DB.getSQLValueBD(null, sql, icmsMatrix.getLBR_Tax_ID());
		
		// NF-e - Nota Técnica 2012/005 (4% de icms nas operações interestaduais para produtos importados)
		if (product != null &&
				(product.get_ValueAsString("LBR_ProductSource").equals("1") ||
						product.get_ValueAsString("LBR_ProductSource").equals("2") ||
						product.get_ValueAsString("LBR_ProductSource").equals("3"))) {
			
			aliqInterestadual = new BigDecimal("4");
		} else {
			icmsMatrix = MLBRICMSMatrix.get(Env.getCtx(), AD_Org_ID, regionFrom_ID, regionTo_ID, docDate, null);
    		sql = "SELECT MAX(tl.lbr_TaxRate) FROM LBR_TaxLine tl WHERE tl.LBR_Tax_ID = ?";
    		aliqInterestadual = DB.getSQLValueBD(null, sql, icmsMatrix.getLBR_Tax_ID());
		}
		
		return MLBRDocLineICMS.getAdjustedIva(originalIVA, aliqInterestadual, aliqInternaDestino);
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
