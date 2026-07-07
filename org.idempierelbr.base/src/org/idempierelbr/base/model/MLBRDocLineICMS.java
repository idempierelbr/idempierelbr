package org.idempierelbr.base.model;

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
	
	/** CST - ICMS Trib. Normal	*/
	public static final String CST_ICMS_00		= "00";
	public static final String CST_ICMS_10_ST	= "10_1";
	public static final String CST_ICMS_10_PART	= "10_2";
	public static final String CST_ICMS_20		= "20";
	public static final String CST_ICMS_30		= "30";
	public static final String CST_ICMS_40		= "40";
	public static final String CST_ICMS_41		= "41_1";
	public static final String CST_ICMS_41_RET	= "41_2";
	public static final String CST_ICMS_50		= "50";
	public static final String CST_ICMS_51		= "51";
	public static final String CST_ICMS_60		= "60";
	public static final String CST_ICMS_70		= "70";
	public static final String CST_ICMS_90_PART	= "90_1";
	public static final String CST_ICMS_90		= "90_2";
	public static final String CST_ICMS_DIFAL	= "ICMSUFDest";
	//public static final String CST_ICMS_Part	= "Part";
	//public static final String CST_ICMS_ST		= "ST";
	
	/**	CST - ICMS Simples Nacional */
	public static final String CSOSN_101	= "101";
	public static final String CSOSN_102	= "102";
	public static final String CSOSN_103	= "103";
	public static final String CSOSN_201	= "201";
	public static final String CSOSN_202	= "202";
	public static final String CSOSN_203	= "203";
	public static final String CSOSN_300	= "300";
	public static final String CSOSN_400	= "400";
	public static final String CSOSN_500	= "500";
	public static final String CSOSN_900	= "900";

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
	
	public BigDecimal getLBR_ICMSST_TaxAdded () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_ICMSST_TaxAdded);
		return bd;
	}
	
	public BigDecimal getLBR_ICMSST_TaxAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_ICMSST_TaxAmt);
		return bd;
	}
	
	public BigDecimal getLBR_ICMSST_TaxAmtUFDes () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_ICMSST_TaxAmtUFDes);
		return bd;
	}
	
	public BigDecimal getLBR_ICMSST_TaxAmtUFSen () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_ICMSST_TaxAmtUFSen);
		return bd;
	}
	
	public BigDecimal getLBR_ICMSST_TaxAmtWhd () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_ICMSST_TaxAmtWhd);
		return bd;
	}
	
	public BigDecimal getLBR_ICMSST_TaxBAmtUFDes () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_ICMSST_TaxBAmtUFDes);
		return bd;
	}
	
	public BigDecimal getLBR_ICMSST_TaxBAmtUFSen () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_ICMSST_TaxBAmtUFSen);
		return bd;
	}
	
	public BigDecimal getLBR_ICMSST_TaxBAmtWhd () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_ICMSST_TaxBAmtWhd);
		return bd;
	}
	
	public BigDecimal getLBR_ICMSST_TaxBase () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_ICMSST_TaxBase);
		return bd;
	}
	
	public BigDecimal getLBR_ICMSST_TaxBaseAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_ICMSST_TaxBaseAmt);
		return bd;
	}
	
	public BigDecimal getLBR_ICMSST_TaxRate () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_ICMSST_TaxRate);
		return bd;
	}
	
	public BigDecimal getLBR_ICMS_TaxAmtOp () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_ICMS_TaxAmtOp);
		return bd;
	}
	
	public BigDecimal getLBR_TaxAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxAmt);
		return bd;
	}
	
	public BigDecimal getLBR_TaxAmtCredit () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxAmtCredit);
		return bd;
	}
	
	public BigDecimal getLBR_TaxBase () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxBase);
		return bd;
	}
	
	public BigDecimal getLBR_TaxBaseAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxBaseAmt);
		return bd;
	}
	
	public BigDecimal getLBR_TaxBaseOwnOperation () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxBaseOwnOperation);
		return bd;
	}
	
	public BigDecimal getLBR_TaxDeferralAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxDeferralAmt);
		return bd;
	}
	
	public BigDecimal getLBR_TaxDeferralRate () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxDeferralRate);
		return bd;
	}
	
	public BigDecimal getLBR_TaxRate () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxRate);
		return bd;
	}
	
	public BigDecimal getLBR_TaxRateCredit () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxRateCredit);
		return bd;
	}
	
	public BigDecimal getLBR_TaxReliefAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxReliefAmt);
		return bd;
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
	/*public static BigDecimal getInterstateAdjustedIva(BigDecimal originalIVA, int AD_Org_ID, boolean isSOTrx,
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
	}*/
	
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

	@Override
	protected boolean beforeSave(boolean newRecord) {
		// Reconsulta o cBenef quando o CST (Situação Tributária) é alterado manualmente
		// neste registro. O cálculo/recálculo via createICMS já chama updateCBenef(product).
		if (!newRecord && (is_ValueChanged(COLUMNNAME_LBR_ICMS_TaxStatusTN)
				|| is_ValueChanged(COLUMNNAME_LBR_ICMS_TaxStatusSN)
				|| is_ValueChanged(COLUMNNAME_LBR_ICMSRegime))) {
			updateCBenef();
		}

		return true;
	}

	/**
	 * 	Reconsulta e atualiza o Código de Benefício Fiscal (cBenef), resolvendo o Produto
	 * 	a partir da linha do documento.
	 */
	public void updateCBenef() {
		updateCBenef(null);
	}

	/**
	 * 	Reconsulta e atualiza o Código de Benefício Fiscal (cBenef) conforme o CST
	 * 	(Situação Tributária) vigente neste registro, permitindo que o Produto sobrescreva.
	 *	@param product Produto da linha; se null, é resolvido a partir do Doc Line Details
	 */
	public void updateCBenef(MProduct product) {
		MLBRDocLineDetails details = null;
		if (getLBR_DocLine_Details_ID() > 0)
			details = new MLBRDocLineDetails(getCtx(), getLBR_DocLine_Details_ID(), get_TrxName());

		if (product == null && details != null)
			product = details.getProduct();

		// CST vigente conforme o regime (TN = Tributação Normal, SN = Simples Nacional)
		String cst = LBR_ICMSREGIME_DefaultTaxation.equals(getLBR_ICMSRegime())
				? getLBR_ICMS_TaxStatusTN() : getLBR_ICMS_TaxStatusSN();

		if (cst == null || cst.trim().isEmpty())
			cst = getLBR_ICMS_TaxStatusTN();
		if (cst == null || cst.trim().isEmpty())
			cst = getLBR_ICMS_TaxStatusSN();

		// Descobre o Tax Name do ICMS a partir da transação de imposto para desambiguar
		// CSTs que também existem em outros impostos (ex.: IPI).
		int LBR_TaxName_ID = 0;
		if (details != null && details.getLBR_Tax_ID() > 0) {
			MLBRTax tax = new MLBRTax(getCtx(), details.getLBR_Tax_ID(), get_TrxName());
			for (MLBRTaxLine tl : tax.getLines()) {
				if (tl.getLBR_TaxName() != null && "ICMSPROD".equals(tl.getLBR_TaxName().getName())
						&& tl.getLBR_TaxStatus_ID() > 0) {
					LBR_TaxName_ID = new X_LBR_TaxStatus(getCtx(), tl.getLBR_TaxStatus_ID(),
							get_TrxName()).getLBR_TaxName_ID();
					break;
				}
			}
		}

		// Busca o cBenef na Situação Tributária (CST) correspondente
		String cBenef = null;
		if (cst != null && !cst.trim().isEmpty()) {
			String where = "Name=? AND IsActive='Y'";
			Object[] params;
			if (LBR_TaxName_ID > 0) {
				where += " AND LBR_TaxName_ID=?";
				params = new Object[] { cst.trim(), LBR_TaxName_ID };
			} else {
				params = new Object[] { cst.trim() };
			}

			X_LBR_TaxStatus ts = new Query(getCtx(), X_LBR_TaxStatus.Table_Name, where, get_TrxName())
					.setParameters(params)
					.setOrderBy("LBR_TaxName_ID")
					.first();

			if (ts != null)
				cBenef = ts.get_ValueAsString("LBR_CBenef");
		}

		// O Produto pode sobrescrever o cBenef da CST
		if (product != null) {
			String prodCBenef = product.get_ValueAsString("LBR_CBenef");
			if (prodCBenef != null && !prodCBenef.trim().isEmpty())
				cBenef = prodCBenef;
		}

		if (cBenef != null && cBenef.trim().isEmpty())
			cBenef = null;

		set_ValueOfColumn("LBR_CBenef", cBenef == null ? null : cBenef.trim());
	}

	public static String getCSTPrefix(String taxStatusDetailed) {
		if (taxStatusDetailed == null || !taxStatusDetailed.contains("_"))
			return taxStatusDetailed;

		int slashIndex = taxStatusDetailed.indexOf("_");
		return taxStatusDetailed.substring(0, slashIndex);
	}
}
