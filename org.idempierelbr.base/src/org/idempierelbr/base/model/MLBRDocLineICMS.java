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
import org.compiere.model.MLocation;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MProduct;
import org.compiere.model.MRegion;
import org.compiere.model.Query;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Util;
import org.idempierelbr.base.util.TextUtil;

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
	
	/** Nome do Imposto (LBR_TaxName) do ICMS sobre produtos */
	public static final String TAXNAME_ICMSPROD	= "ICMSPROD";
	
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
		
		// O cBenef é reconsultado no documento de destino, pois o valor copiado pode ter sido
		// gravado sob um cadastro de CST que já não vale mais.
		icmsTo.updateCBenef(detailsTo, detailsTo.getProduct(), null);
		
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
		// neste registro. O cálculo/recálculo via createICMS já chama updateCBenef.
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
		updateCBenef(null, null, null);
	}

	/**
	 * 	Reconsulta e atualiza o Código de Benefício Fiscal (cBenef).
	 *	@param product Produto da linha; se null, é resolvido a partir do Doc Line Details
	 *	@see #updateCBenef(MLBRDocLineDetails, MProduct, Timestamp)
	 */
	public void updateCBenef(MProduct product) {
		updateCBenef(null, product, null);
	}

	/**
	 * 	Reconsulta e atualiza o Código de Benefício Fiscal (cBenef) conforme o CST
	 * 	(Situação Tributária) vigente neste registro. O primeiro código encontrado vale:
	 * 	<ol>
	 * 	<li>regra por UF do emitente para o produto e o CST (janela Código de Benefício
	 * 	Fiscal por UF);</li>
	 * 	<li>regra por UF para o NCM e o CST;</li>
	 * 	<li>regra por UF só para o CST;</li>
	 * 	<li>código no Produto;</li>
	 * 	<li>código na Situação Tributária (CST).</li>
	 * 	</ol>
	 * 	Uma regra por UF marcada como Não Informar cBenef encerra a busca sem código. Sem
	 * 	regra para a UF, valem o Produto e o CST, como antes da regra por UF existir.
	 *	@param details Doc Line Details da linha; se null, é lido pelo LBR_DocLine_Details_ID
	 *	@param product Produto da linha; se null, é resolvido a partir do Doc Line Details
	 *	@param dateDoc data do documento, para a vigência da regra; se null, é resolvida a
	 *	partir do Doc Line Details
	 */
	public void updateCBenef(MLBRDocLineDetails details, MProduct product, Timestamp dateDoc) {
		if (details == null && getLBR_DocLine_Details_ID() > 0)
			details = new MLBRDocLineDetails(getCtx(), getLBR_DocLine_Details_ID(), get_TrxName());
		if (product == null && details != null)
			product = details.getProduct();
		if (dateDoc == null && details != null)
			dateDoc = details.getDocumentDate();

		String cst = getCurrentTaxStatus();

		// 1 a 3: regra por UF do emitente
		MLBRCBenefRule rule = null;
		if (cst != null) {
			int LBR_NCM_ID = details != null ? details.getLBR_NCM_ID() : 0;
			if (LBR_NCM_ID <= 0 && product != null)
				LBR_NCM_ID = product.get_ValueAsInt("LBR_NCM_ID");

			rule = MLBRCBenefRule.get(getCtx(), getAD_Client_ID(), getAD_Org_ID(), getEmitterRegion_ID(),
					cst, product != null ? product.getM_Product_ID() : 0, LBR_NCM_ID, dateDoc, get_TrxName());
		}

		String cBenef;
		if (rule != null) {
			cBenef = chooseCBenef(true, rule.isLBR_IsOmitCBenef() ? null : rule.getLBR_CBenef(), null, null);
		} else {
			// 4 e 5: Produto e Situação Tributária (CST)
			String productCBenef = product != null ? product.get_ValueAsString("LBR_CBenef") : null;
			String taxStatusCBenef = Util.isEmpty(productCBenef, true) ? getTaxStatusCBenef(cst) : null;
			cBenef = chooseCBenef(false, null, productCBenef, taxStatusCBenef);
		}

		set_ValueOfColumn("LBR_CBenef", cBenef);
	}

	/**
	 * 	Aplica a ordem de busca do cBenef: a regra por UF, quando existe, decide sozinha
	 * 	(inclusive quando manda não informar); sem regra, o Produto sobrescreve o CST.
	 *	@param ruleFound há regra por UF vigente para o item
	 *	@param ruleCBenef código da regra por UF; null quando a regra manda não informar
	 *	@param productCBenef código no Produto
	 *	@param taxStatusCBenef código na Situação Tributária (CST)
	 *	@return cBenef sem espaços nas pontas, ou null
	 */
	public static String chooseCBenef(boolean ruleFound, String ruleCBenef, String productCBenef,
			String taxStatusCBenef) {
		String cBenef;
		if (ruleFound)
			cBenef = ruleCBenef;
		else if (productCBenef != null && !productCBenef.trim().isEmpty())
			cBenef = productCBenef;
		else
			cBenef = taxStatusCBenef;

		if (cBenef == null || cBenef.trim().isEmpty())
			return null;

		return cBenef.trim();
	}

	/**
	 * 	UF do emitente: a do endereço da organização deste registro.
	 *	@return C_Region_ID ou 0 se a organização não tiver endereço com UF
	 */
	private int getEmitterRegion_ID() {
		if (getAD_Org_ID() <= 0)
			return 0;

		MOrgInfo orgInfo = MOrgInfo.get(getCtx(), getAD_Org_ID(), get_TrxName());
		if (orgInfo == null || orgInfo.getC_Location_ID() <= 0)
			return 0;

		return MLocation.get(getCtx(), orgInfo.getC_Location_ID(), get_TrxName()).getC_Region_ID();
	}

	/**
	 * 	Busca o cBenef cadastrado na Situação Tributária (CST) do ICMS.
	 *	@param cst CST detalhado (ex.: 41_1)
	 *	@return código ou null
	 */
	private String getTaxStatusCBenef(String cst) {
		String cBenef = null;
		if (cst != null) {
			// Filtra pelo Tax Name para desambiguar CSTs que também existem em outros
			// impostos (ex.: o CST 60 existe no ICMS, no PIS e no COFINS).
			String where = "Name=? AND IsActive='Y'";
			Object[] params;
			int LBR_TaxName_ID = getICMSProdTaxName_ID();

			if (LBR_TaxName_ID > 0) {
				where += " AND LBR_TaxName_ID=?";
				params = new Object[] { cst, LBR_TaxName_ID };
			} else {
				params = new Object[] { cst };
			}

			X_LBR_TaxStatus ts = new Query(getCtx(), X_LBR_TaxStatus.Table_Name, where, get_TrxName())
					.setParameters(params)
					.setOrderBy("LBR_TaxName_ID")
					.first();

			if (ts != null)
				cBenef = ts.get_ValueAsString("LBR_CBenef");
		}

		return cBenef;
	}

	/**
	 * 	Obtém o CST (Situação Tributária) vigente neste registro, conforme o regime
	 * 	(TN = Tributação Normal, SN = Simples Nacional).
	 *	@return CST detalhado (ex.: 41_1) ou null se não houver
	 */
	public String getCurrentTaxStatus() {
		String cst = LBR_ICMSREGIME_DefaultTaxation.equals(getLBR_ICMSRegime())
				? getLBR_ICMS_TaxStatusTN() : getLBR_ICMS_TaxStatusSN();

		if (cst == null || cst.trim().isEmpty())
			cst = getLBR_ICMS_TaxStatusTN();
		if (cst == null || cst.trim().isEmpty())
			cst = getLBR_ICMS_TaxStatusSN();

		if (cst == null || cst.trim().isEmpty())
			return null;

		return cst.trim();
	}

	/**
	 * 	Verifica se o CST (Situação Tributária) vigente neste registro admite Código de
	 * 	Benefício Fiscal.
	 *	@return true se o cBenef pode ser enviado na NF-e
	 */
	public boolean isCBenefApplicable() {
		return isCBenefApplicable(getCurrentTaxStatus());
	}

	/**
	 * 	Verifica se um CST (Situação Tributária) admite Código de Benefício Fiscal.
	 * 	Os CSTs de tributação integral (00 e 10) e de ICMS já recolhido por substituição
	 * 	tributária (60 e CSOSN 500) não comportam benefício, e a SEFAZ recusa a NF-e com a
	 * 	Rejeição 928 quando o cBenef é informado nesses casos.
	 *	@param taxStatus CST detalhado (ex.: 41_1)
	 *	@return true se o cBenef pode ser enviado na NF-e
	 */
	public static boolean isCBenefApplicable(String taxStatus) {
		return TextUtil.match(taxStatus,
				CST_ICMS_20, CST_ICMS_30, CST_ICMS_40, CST_ICMS_41, CST_ICMS_41_RET,
				CST_ICMS_50, CST_ICMS_51, CST_ICMS_70, CST_ICMS_90_PART, CST_ICMS_90,
				CSOSN_101, CSOSN_102, CSOSN_103, CSOSN_201, CSOSN_202, CSOSN_203,
				CSOSN_300, CSOSN_400, CSOSN_900);
	}

	/**
	 * 	Obtém o Nome do Imposto (LBR_TaxName) do ICMS sobre produtos
	 *	@return LBR_TaxName_ID ou -1 se não estiver cadastrado
	 */
	private int getICMSProdTaxName_ID() {
		return new Query(getCtx(), I_LBR_TaxName.Table_Name, "Name=?", get_TrxName())
				.setParameters(TAXNAME_ICMSPROD)
				.setOnlyActiveRecords(true)
				.setOrderBy("LBR_TaxName_ID")
				.firstId();
	}

	public static String getCSTPrefix(String taxStatusDetailed) {
		if (taxStatusDetailed == null || !taxStatusDetailed.contains("_"))
			return taxStatusDetailed;

		int slashIndex = taxStatusDetailed.indexOf("_");
		return taxStatusDetailed.substring(0, slashIndex);
	}
}
