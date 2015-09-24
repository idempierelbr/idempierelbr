package org.idempierelbr.tax.model;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.ResultSet;
import java.util.Map;
import java.util.Properties;
import org.adempiere.model.POWrapper;
import org.compiere.model.MBPartner;
import org.compiere.model.MProduct;
import org.compiere.model.MSysConfig;
import org.compiere.model.MTax;
import org.compiere.model.PO;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.idempierelbr.core.util.TextUtil;
import org.idempierelbr.core.wrapper.I_W_C_BPartner;
import org.idempierelbr.tax.wrapper.I_W_C_Tax;

public class MLBRDocLineDetails extends X_LBR_DocLine_Details
{
	/**
	 * 
	 */
	private static final long serialVersionUID = -697605258747714507L;

	private static final CLogger log = CLogger.getCLogger(MLBRDocLineDetails.class);
	protected MLBRDocLineDetails m_DetailsFrom = null;

	/**
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRDocLineDetails (Properties ctx, int LBR_DocLine_Details_ID, String trxName)
	{
		super (ctx, LBR_DocLine_Details_ID, trxName);
	}

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRDocLineDetails (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}
	
	public BigDecimal getDiscountAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_DiscountAmt);
		return bd;
	}
	
	public BigDecimal getFreightAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_FreightAmt);
		return bd;
	}
	
	public BigDecimal getInsuredAmount () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_InsuredAmount);
		return bd;
	}
	
	public BigDecimal getLBR_GrossAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_GrossAmt);
		return bd;
	}
	
	public BigDecimal getLBR_PriceTax () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_PriceTax);
		return bd;
	}
	
	public BigDecimal getLBR_QtyTax () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_QtyTax);
		return bd;
	}
	
	public BigDecimal getSurcharges () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Surcharges);
		return bd;
	}
	
	public BigDecimal getTaxLineTotal () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_TaxLineTotal);
		return bd;
	}
	
	/**
	 * 	Calculate the discount amount
	 * 	@param qty quantity of a product (base UOM)
	 * 	@param priceList
	 * 	@param lineNetAmt
	 * 	@return Calculated amount
	 */
	public BigDecimal calculateDiscountAmt(BigDecimal qty, BigDecimal priceList, BigDecimal lineNetAmt) {
		BigDecimal priceListTotal = priceList.multiply(qty).setScale(2, RoundingMode.HALF_UP);
		BigDecimal discount = priceListTotal.subtract(lineNetAmt);
		
		if (discount.signum() == 1)
			return discount.setScale(2, RoundingMode.HALF_UP);
		else
			return Env.ZERO;
	}
	
	/**
	 * 	Delete all children (taxes) of Doc Line Details
	 */
	protected void deleteChildren() {
		PO[] poArray = MLBRDocLineICMS.getOfDetails(this);

		for (PO po : poArray) {
			po.deleteEx(true);
		}
		
		poArray = MLBRDocLineIPI.getOfDetails(this);

		for (PO po : poArray) {
			po.deleteEx(true);
		}
		
		poArray = MLBRDocLinePIS.getOfDetails(this);

		for (PO po : poArray) {
			po.deleteEx(true);
		}
		
		poArray = MLBRDocLineCOFINS.getOfDetails(this);
		
		for (PO po : poArray) {
			po.deleteEx(true);
		}
		
		poArray = MLBRDocLineImportTax.getOfDetails(this);
		
		for (PO po : poArray) {
			po.deleteEx(true);
		}
		
		poArray = MLBRDocLineISSQN.getOfDetails(this);
		
		for (PO po : poArray) {
			po.deleteEx(true);
		}
	}
	
	protected boolean beforeDelete() {
		deleteChildren();
		return true;		
	}
	
	
	
	/**
	 * 	Create all children (taxes) of Doc Line Details
	 */
	protected void createChildren(Map<Integer, Object[]> taxes,
			MLBRTax tax, int C_Tax_ID, MProduct product, int C_BPartner_ID) {
		
		for (MLBRTaxLine tl : tax.getLines()) {
			//if (tl.getLBR_TaxAmt() == null || tl.getLBR_TaxAmt().compareTo(Env.ZERO) == 0 || !tl.isLBR_PostTax())
			if (!tl.isLBR_PostTax())
				continue;
			
			Integer key = tl.getChild_Tax_ID(C_Tax_ID);
			
			if (key <= 0)
				continue;
			else if (taxes.containsKey(key)) {
				MTax taxChild = new MTax(getCtx(), key, get_TrxName());
				I_W_C_Tax taxChildW = POWrapper.create(taxChild, I_W_C_Tax.class);
				
				// Try to get Tax Status through Name field
				X_LBR_TaxStatus taxStatus = new X_LBR_TaxStatus(getCtx(), tl.getLBR_TaxStatus_ID(), get_TrxName());

				// Some taxes requires Tax Status
				if ((taxChildW.getLBR_TaxGroup_ID() == MLBRTax.TAX_GROUP_ICMS ||
						taxChildW.getLBR_TaxGroup_ID() == MLBRTax.TAX_GROUP_IPI ||
						taxChildW.getLBR_TaxGroup_ID() == MLBRTax.TAX_GROUP_PIS ||
						taxChildW.getLBR_TaxGroup_ID() == MLBRTax.TAX_GROUP_COFINS) &&					
						(taxStatus.getName() == null || taxStatus.getName().isEmpty())) {
					log.warning("Couldn't find a valid Tax Status for " + tl + ". An entry won't be created.");
					continue;
				}
				
				// Try to get Tax Base Type through Name field
				X_LBR_TaxBaseType taxBaseType = new X_LBR_TaxBaseType(getCtx(), tl.getLBR_TaxBaseType_ID(), get_TrxName());
				Integer taxBaseTypeCode = null;
				
				try {
					taxBaseTypeCode = new Integer(taxBaseType.getValue());
				} catch (Exception e) {
					log.fine("Couldn't get Tax Base Type for " + tl);
				}
				
				if (taxBaseTypeCode == null ||
						(taxBaseTypeCode != null && !(taxBaseTypeCode == MLBRTax.TYPE_RATE_OR_IVA ||
							taxBaseTypeCode == MLBRTax.TYPE_TARIFF ||
							taxBaseTypeCode == MLBRTax.TYPE_LIST_MAX ||
							taxBaseTypeCode == MLBRTax.TYPE_AMOUNT ||
							taxBaseTypeCode == MLBRTax.TYPE_LIST_POSITIVE ||
							taxBaseTypeCode == MLBRTax.TYPE_LIST_NEUTRAL ||
							taxBaseTypeCode == MLBRTax.TYPE_LIST_NEGATIVE))) {
					taxBaseTypeCode = MLBRTax.TYPE_RATE_OR_IVA;
					log.info("A default Tax Base Type will be used for " + tl);
				}
				
				// ICMS or ICMS-ST
				if (taxChildW.getLBR_TaxGroup_ID() == MLBRTax.TAX_GROUP_ICMS ||
						taxChildW.getLBR_TaxGroup_ID() == MLBRTax.TAX_GROUP_ICMSST) {
					
					createICMS(taxStatus.getName(), taxBaseTypeCode, tl, product, taxChildW, C_BPartner_ID);
				} 
				// IPI
				else if (taxChildW.getLBR_TaxGroup_ID() == MLBRTax.TAX_GROUP_IPI) {
					createIPI(taxStatus.getName(), tl);
				}
				// PIS
				else if (taxChildW.getLBR_TaxGroup_ID() == MLBRTax.TAX_GROUP_PIS) {
					createPIS(taxStatus.getName(), tl);
				}
				// COFINS
				else if (taxChildW.getLBR_TaxGroup_ID() == MLBRTax.TAX_GROUP_COFINS) {
					createCOFINS(taxStatus.getName(), tl);
				}
				// Import Tax
				else if (taxChildW.getLBR_TaxGroup_ID() == MLBRTax.TAX_GROUP_II) {
					createImportTax(tl);
				}
			}
		}
	}
	
	/**
	 * 	Create ICMS (child of Doc Line Details)
	 */
	private void createICMS(String taxStatus, Integer taxBaseTypeCode, MLBRTaxLine tl, MProduct product, I_W_C_Tax taxChildW, int C_BPartner_ID) {
		String productSource = product.get_ValueAsString("LBR_ProductSource");
		
		if (productSource != null && productSource.isEmpty())
			productSource = null;	
		
		MLBRDocLineICMS[] icmsArray = MLBRDocLineICMS.getOfDetails(this);
		MLBRDocLineICMS icms = new MLBRDocLineICMS(getCtx(), 0, get_TrxName());
		
		if (icmsArray.length > 0) {
			icms = icmsArray[0];
		} else {
			icms.setAD_Org_ID(getAD_Org_ID());
			icms.setLBR_DocLine_Details_ID(get_ID());
			icms.setLBR_ProductSource(productSource);
		}
		
		I_LBR_TaxName LBR_TaxName = tl.getLBR_TaxName();
		
		if (LBR_TaxName != null && LBR_TaxName.getName().equals("ICMSPROD")) {
			icms.setIsTaxIncluded(tl.isTaxIncluded());
		
			String icmsRegime = MSysConfig.getValue("LBR_ICMS_REGIME", "TN", getAD_Client_ID(), getAD_Org_ID());
			icms.setLBR_ICMSRegime(icmsRegime);
		
			if (icmsRegime.equals("TN"))
				icms.setLBR_ICMS_TaxStatusTN(taxStatus);
			else
				icms.setLBR_ICMS_TaxStatusSN(taxStatus);
		}
		
		// ICMS-ST don't need a Tax Status. We get it from ICMS
		if (taxStatus == null || (taxStatus != null && taxStatus.isEmpty()))
			taxStatus = icms.getLBR_ICMS_TaxStatusTN();
		
		if (taxChildW.getLBR_TaxGroup_ID() == MLBRTax.TAX_GROUP_ICMS && TextUtil.match (taxStatus,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_00_TributadaIntegralmente,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_10_TributadaEComCobrancaDoICMSPorSubTributaria,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_20_ComReducaoDeBaseDeCalculo,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_51_Diferimento,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_70_ComRedDeBaseDeCalcECobrDoICMSPorSubTrib,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_90_Outras)) {

			icms.setLBR_ICMS_TaxBaseType(new Integer(taxBaseTypeCode - 100).toString());
			icms.setLBR_TaxBaseAmt(tl.getLBR_TaxBaseAmt());
			icms.setLBR_TaxRate(tl.getLBR_TaxRate());
			icms.setLBR_TaxAmt(tl.getLBR_TaxAmt());
		}
		
		if (TextUtil.match (taxStatus,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_40_Isenta,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_41_Nao_Tributada,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_50_Suspensao) && tl.getLBR_TaxAmt().signum() > 0) {

			icms.setLBR_TaxAmt(tl.getLBR_TaxAmt());
			
			MBPartner bp = new MBPartner(getCtx(), C_BPartner_ID, get_TrxName());
			I_W_C_BPartner bpW = POWrapper.create(bp, I_W_C_BPartner.class);
			
			// TODO: Criar condições para preencher outros valores
			if (bpW.getLBR_Suframa() != null && !bpW.getLBR_Suframa().isEmpty())
				icms.setLBR_ICMS_TaxReliefType(MLBRDocLineICMS.LBR_ICMS_TAXRELIEFTYPE_SUFRAMA);
			else
				icms.setLBR_ICMS_TaxReliefType(MLBRDocLineICMS.LBR_ICMS_TAXRELIEFTYPE_Other);
		}
		
		// Tax Base
		if (TextUtil.match (taxStatus,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_20_ComReducaoDeBaseDeCalculo,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_51_Diferimento,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_70_ComRedDeBaseDeCalcECobrDoICMSPorSubTrib,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_90_Outras,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSSN_900_Outros)) {
				
			if (tl.getLBR_TaxBase() != null && tl.getLBR_TaxBase().signum() == 1) {
				if (taxChildW.getLBR_TaxGroup_ID() == MLBRTax.TAX_GROUP_ICMS)
					icms.setLBR_TaxBase(tl.getLBR_TaxBase());
				else if (taxChildW.getLBR_TaxGroup_ID() == MLBRTax.TAX_GROUP_ICMSST)
					icms.setLBR_ICMSST_TaxBase(tl.getLBR_TaxBase());
			}
		}
		
		//	ICMS-ST
		if (taxChildW.getLBR_TaxGroup_ID() == MLBRTax.TAX_GROUP_ICMSST && TextUtil.match (taxStatus,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_10_TributadaEComCobrancaDoICMSPorSubTributaria,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_30_IsentaOuNao_TribEComCobrDoICMSPorSubTribut,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_70_ComRedDeBaseDeCalcECobrDoICMSPorSubTrib,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_90_Outras,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSSN_201_TributadaComPermissaoDeCredito,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSSN_202_TributadaSemPermissaoDeCredito,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSSN_203_IsencaoDoICMSParaFaixaDeReceitaBruta,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSSN_900_Outros)) {

			icms.setLBR_ICMSST_TaxBaseType(new Integer(taxBaseTypeCode - 100).toString());
			
			if (tl.getLBR_TaxBase().compareTo(Env.ZERO) != 0)
				icms.setLBR_ICMSST_TaxBase(tl.getLBR_TaxBase());
			
			BigDecimal iva = getIVAST(new MLBRTax(getCtx(), tl.getLBR_Tax_ID(), get_TrxName()));
			if (iva.compareTo(Env.ZERO) != 0)
				icms.setLBR_ICMSST_TaxAdded(iva);
			
			icms.setLBR_ICMSST_TaxBaseAmt(tl.getLBR_TaxBaseAmt());
			icms.setLBR_ICMSST_TaxRate(tl.getLBR_TaxRate());
			icms.setLBR_ICMSST_TaxAmt(tl.getLBR_TaxAmt());
		}
		
		// IVA
		//if (tl.getLBR_TaxName_ID() == 1000012) {
			// Adjust IVA-ST
		//	if (getIVARateFromTaxTransaction() != null && getIVARateFromTaxTransaction().signum() == 1)
		//		icms.setLBR_ICMSST_TaxAdded(tl.getLBR_TaxRate());
		//}

		if (TextUtil.match (taxStatus,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_60_ICMSCobradoAnteriormentePorSubstituicaoTributaria,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSSN_500_ICMSCobradoAnteriormente)) {
			
			icms.setLBR_ICMSST_TaxBAmtWhd(tl.getLBR_TaxBaseAmt());
			icms.setLBR_ICMSST_TaxAmtWhd(tl.getLBR_TaxAmt());
		}
		
		if (TextUtil.match (taxStatus,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSSN_101_TributadaComPermissaoDeCredito,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSSN_201_TributadaComPermissaoDeCredito,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSSN_900_Outros)) {
			
			icms.setLBR_TaxRateCredit(tl.getLBR_TaxRate());
			icms.setLBR_TaxAmtCredit(tl.getLBR_TaxAmt());
		}
		
		icms.saveEx();
	}
	
	/**
	 * 	Create IPI (child of Doc Line Details)
	 */
	private void createIPI(String taxStatus, MLBRTaxLine tl) {
		MLBRDocLineIPI[] ipiArray = MLBRDocLineIPI.getOfDetails(this);
		MLBRDocLineIPI ipi = new MLBRDocLineIPI(getCtx(), 0, get_TrxName());
		
		if (ipiArray.length > 0)
			ipi = ipiArray[0];

		ipi.setAD_Org_ID(getAD_Org_ID());
		ipi.setLBR_DocLine_Details_ID(get_ID());
		ipi.setIsTaxIncluded(tl.isTaxIncluded());
		ipi.setLBR_IPI_TaxStatus(taxStatus);
		
		if (TextUtil.match (taxStatus,
				MLBRDocLineIPI.LBR_IPI_TAXSTATUS_00_EntradaComRecuperacaoDeCredito,
				MLBRDocLineIPI.LBR_IPI_TAXSTATUS_49_OutrasEntradas,
				MLBRDocLineIPI.LBR_IPI_TAXSTATUS_50_SaidaTributada,
				MLBRDocLineIPI.LBR_IPI_TAXSTATUS_99_OutrasSaidas)) {

			ipi.setCalculationType("PER");
			ipi.setLBR_TaxBaseAmt(tl.getLBR_TaxBaseAmt());
			ipi.setLBR_TaxRate(tl.getLBR_TaxRate());
			ipi.setLBR_TaxAmt(tl.getLBR_TaxAmt());
		}
		
		ipi.saveEx();
	}
	
	/**
	 * 	Create PIS (child of Doc Line Details)
	 */
	private void createPIS(String taxStatus, MLBRTaxLine tl) {
		MLBRDocLinePIS[] pisArray = MLBRDocLinePIS.getOfDetails(this);
		MLBRDocLinePIS pis = new MLBRDocLinePIS(getCtx(), 0, get_TrxName());
		
		if (pisArray.length > 0)
			pis = pisArray[0];

		pis.setAD_Org_ID(getAD_Org_ID());
		pis.setLBR_DocLine_Details_ID(get_ID());
		pis.setIsTaxIncluded(tl.isTaxIncluded());
		pis.setLBR_PIS_TaxStatus(taxStatus);
		
		if (TextUtil.match (taxStatus,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_01_OperacaoTributavelCumulativoNaoCumulativo,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_02_OperacaoTributavelAliquotaDiferenciada,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_49_OutrasOperacoesDeSaida,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_50_OperacaoComDireitoACredito,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_51_OperacaoComDireitoACredito,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_52_OperacaoComDireitoACredito,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_53_OperacaoComDireitoACredito,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_54_OperacaoComDireitoACredito,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_55_OperacaoComDireitoACredito,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_56_OperacaoComDireitoACredito,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_60_CreditoPresumido,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_61_CreditoPresumido,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_62_CreditoPresumido,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_63_CreditoPresumido,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_64_CreditoPresumido,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_65_CreditoPresumido,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_66_CreditoPresumido,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_67_CreditoPresumido,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_70_OperacaoDeAquisicaoSemDireitoACredito,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_71_OperacaoDeAquisicaoComIsencao,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_72_OperacaoDeAquisicaoComSuspensao,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_73_OperacaoDeAquisicaoAAliquotaZero,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_74_OperacaoDeAquisicaoSemIncidenciaDaContribuicao,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_75_OperacaoDeAquisicaoPorSubstituicaoTributaria,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_98_OutrasOperacoesDeEntrada,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_99_OutrasOperacoes)) {
			
			pis.setCalculationType("PER");
			pis.setLBR_TaxBaseAmt(tl.getLBR_TaxBaseAmt());
			pis.setLBR_TaxRate(tl.getLBR_TaxRate());
			pis.setLBR_TaxAmt(tl.getLBR_TaxAmt());
		}
		
		pis.saveEx();
	}
	
	/**
	 * 	Create COFINS (child of Doc Line Details)
	 */
	private void createCOFINS(String taxStatus, MLBRTaxLine tl) {
		MLBRDocLineCOFINS[] cofinsArray = MLBRDocLineCOFINS.getOfDetails(this);
		MLBRDocLineCOFINS cofins = new MLBRDocLineCOFINS(getCtx(), 0, get_TrxName());
		
		if (cofinsArray.length > 0)
			cofins = cofinsArray[0];

		cofins.setAD_Org_ID(getAD_Org_ID());
		cofins.setLBR_DocLine_Details_ID(get_ID());
		cofins.setIsTaxIncluded(tl.isTaxIncluded());
		cofins.setLBR_COF_TaxStatus(taxStatus);
		
		if (TextUtil.match (taxStatus,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_01_OperacaoTributavelCumulativoNaoCumulativo,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_02_OperacaoTributavelAliquotaDiferenciada,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_49_OutrasOperacoesDeSaida,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_50_OperacaoComDireitoACredito,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_51_OperacaoComDireitoACredito,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_52_OperacaoComDireitoACredito,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_53_OperacaoComDireitoACredito,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_54_OperacaoComDireitoACredito,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_55_OperacaoComDireitoACredito,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_56_OperacaoComDireitoACredito,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_60_CreditoPresumido,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_61_CreditoPresumido,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_62_CreditoPresumido,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_63_CreditoPresumido,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_64_CreditoPresumido,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_65_CreditoPresumido,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_66_CreditoPresumido,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_67_CreditoPresumido,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_70_OperacaoDeAquisicaoSemDireitoACredito,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_71_OperacaoDeAquisicaoComIsencao,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_72_OperacaoDeAquisicaoComSuspensao,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_73_OperacaoDeAquisicaoAAliquotaZero,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_74_OperacaoDeAquisicaoSemIncidenciaDaContribuicao,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_75_OperacaoDeAquisicaoPorSubstituicaoTributaria,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_98_OutrasOperacoesDeEntrada,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_99_OutrasOperacoes)) {
			
			cofins.setCalculationType("PER");
			cofins.setLBR_TaxBaseAmt(tl.getLBR_TaxBaseAmt());
			cofins.setLBR_TaxRate(tl.getLBR_TaxRate());
			cofins.setLBR_TaxAmt(tl.getLBR_TaxAmt());
		}
		
		cofins.saveEx();
	}
	
	/**
	 * 	Create Import Tax (child of Doc Line Details)
	 */
	private void createImportTax(MLBRTaxLine tl) {
		MLBRDocLineImportTax[] iiArray = MLBRDocLineImportTax.getOfDetails(this);
		MLBRDocLineImportTax ii = new MLBRDocLineImportTax(getCtx(), 0, get_TrxName());
		
		if (iiArray.length > 0)
			ii = iiArray[0];

		ii.setAD_Org_ID(getAD_Org_ID());
		ii.setLBR_DocLine_Details_ID(get_ID());
		ii.setIsTaxIncluded(tl.isTaxIncluded());
		ii.setLBR_TaxBaseAmt(tl.getLBR_TaxBaseAmt());
		ii.setLBR_TaxAmt(tl.getLBR_TaxAmt());
		ii.saveEx();
	}	

	/**
	 * 	Verifica todas as linhas do imposto
	 * 
	 * 	@param taxes
	 * 	@param C_Tax_ID
	 * 	@param tax
	 */
	protected void processTax (Map<Integer, Object[]> taxes,
			MLBRTax tax, int C_Tax_ID) {
		
		for (MLBRTaxLine tl : tax.getLines()) {
			BigDecimal taxAmt 		= tl.getLBR_TaxAmt();
			BigDecimal taxBaseAmt	= tl.getLBR_TaxBaseAmt();
			BigDecimal taxTotal 	= Env.ZERO;
			BigDecimal taxBaseTotal = Env.ZERO;
			
			//if (taxAmt == null 
			//		|| taxAmt.compareTo(Env.ZERO) == 0
			//		|| !tl.isLBR_PostTax())
			//	continue;
			
			if (!tl.isLBR_PostTax())
				continue;
			
			Integer key = tl.getChild_Tax_ID(C_Tax_ID);
			
			if (key <= 0)
				continue;
			
			else if (taxes.containsKey(key))
			{
				taxTotal 		= (BigDecimal) taxes.get(key)[0];	//	Amt
				taxBaseTotal 	= (BigDecimal) taxes.get(key)[1];	//	Base
				taxes.remove(key);
			}
			
			taxes.put (key, new Object[]{taxTotal.add(taxAmt), 		//	0-Amt
					taxBaseTotal.add(taxBaseAmt),					//	1-Base
					tl.isTaxIncluded()});							//	2-Tax Included
		}
	}
	
	/**
	 * 	Copy to this details the fields of another details
	 */
	public void copyFrom(MLBRDocLineDetails detailsFrom) {
		if (detailsFrom == null)
			return;
		
		int C_OrderLine_ID = getC_OrderLine_ID();
		int C_InvoiceLine_ID = getC_InvoiceLine_ID();
		int M_RMALine_ID = getM_RMALine_ID();
		int LBR_NotaFiscalLine_ID = getLBR_NotaFiscalLine_ID();
		
		// Copy
		MLBRDocLineDetails.copyValues(detailsFrom, this, getAD_Client_ID(), getAD_Org_ID());
		
		// Restore some important fields
		setC_OrderLine_ID(C_OrderLine_ID);
		setC_InvoiceLine_ID(C_InvoiceLine_ID);
		setM_RMALine_ID(M_RMALine_ID);
		setLBR_NotaFiscalLine_ID(LBR_NotaFiscalLine_ID);
		
		copyTaxTransactionFrom(detailsFrom);
		m_DetailsFrom = detailsFrom;
	}
	
	/**
	 * 	Copy to this details the Tax Transaction of another details
	 */
	public void copyTaxTransactionFrom(MLBRDocLineDetails detailsFrom) {
		if (detailsFrom == null)
			return;
		
		// Use a copy instead of original
		MLBRTax tax = new MLBRTax(getCtx(), detailsFrom.getLBR_Tax_ID(), get_TrxName());
		setLBR_Tax_ID(tax.copyTo().get_ID());
	}
	
	/**
	 * 	Copy to this details the children of another details
	 */
	public void copyChildren(MLBRDocLineDetails detailsFrom) {
		MLBRDocLineICMS.copy(detailsFrom, this);
		MLBRDocLineIPI.copy(detailsFrom, this);
		MLBRDocLinePIS.copy(detailsFrom, this);
		MLBRDocLineCOFINS.copy(detailsFrom, this);
		MLBRDocLineImportTax.copy(detailsFrom, this);
		MLBRDocLineISSQN.copy(detailsFrom, this);
	}
	
	/**
	 * 	Get total tax amount not included on product price
	 */
	public BigDecimal getNotIncludedTaxAmt() {
		BigDecimal lineTaxAmt = Env.ZERO;
		
		// ICMS and ICMS-ST
		MLBRDocLineICMS[] icmsLines = MLBRDocLineICMS.getOfDetails(this);
		if (icmsLines.length > 0) {
			MLBRDocLineICMS icms = icmsLines[0];
			
			// ICMS
			if (icms.getLBR_TaxAmt() != null) {
				if (!icms.isTaxIncluded())
					lineTaxAmt = lineTaxAmt.add(icms.getLBR_TaxAmt());
			}
			
			// ICMS-ST
			if (icms.getLBR_ICMSST_TaxAmt() != null) {
				if (!icms.isLBR_ICMSST_IsTaxIncluded())
					lineTaxAmt = lineTaxAmt.add(icms.getLBR_ICMSST_TaxAmt());
			}
		}
		
		// IPI
		MLBRDocLineIPI[] ipiLines = MLBRDocLineIPI.getOfDetails(this);
		if (ipiLines.length > 0) {
			MLBRDocLineIPI ipi = ipiLines[0];
			
			if (ipi.getLBR_TaxAmt() != null) {
				if (!ipi.isTaxIncluded())
					lineTaxAmt = lineTaxAmt.add(ipi.getLBR_TaxAmt());
			}
		}
		
		// PIS
		MLBRDocLinePIS[] pisLines = MLBRDocLinePIS.getOfDetails(this);
		if (pisLines.length > 0) {
			MLBRDocLinePIS pis = pisLines[0];
			
			if (pis.getLBR_TaxAmt() != null) {
				if (!pis.isTaxIncluded())
					lineTaxAmt = lineTaxAmt.add(pis.getLBR_TaxAmt());
			}
		}
		
		// COFINS
		MLBRDocLineCOFINS[] cofinsLines = MLBRDocLineCOFINS.getOfDetails(this);
		if (cofinsLines.length > 0) {
			MLBRDocLineCOFINS cofins = cofinsLines[0];
			
			if (cofins.getLBR_TaxAmt() != null) {
				if (!cofins.isTaxIncluded())
					lineTaxAmt = lineTaxAmt.add(cofins.getLBR_TaxAmt());
			}
		}
		
		// Import Tax
		MLBRDocLineImportTax[] importTaxLines = MLBRDocLineImportTax.getOfDetails(this);
		if (importTaxLines.length > 0) {
			MLBRDocLineImportTax importTax = importTaxLines[0];
			
			if (importTax.getLBR_TaxAmt() != null) {
				if (!importTax.isTaxIncluded())
					lineTaxAmt = lineTaxAmt.add(importTax.getLBR_TaxAmt());
			}
		}
		
		return lineTaxAmt;
	}
	
	protected boolean afterSave(boolean newRecord, boolean success) {
		if (newRecord == false && getLBR_Tax_ID() == 0) {
			deleteChildren();
		}
		
		return true;
	}

	/**
	 * 	Get adjusted IVA-ST based on transaction UF's 
	 * 
	 * 	@return adjusted or original iva-st
	 */
	protected BigDecimal getAdjustedIva(BigDecimal originalIVA){
		return originalIVA;
	}
	
	/**
	 * 	Create tax transaction (LBR_Tax_ID). If one exists, it is overwritten by a new one.
	 */
	public void createTaxTransaction(Object[] taxation) {
		//PO linePO = getParent();
		
		//if (linePO != null) {			
			//if (linePO.get_ValueAsInt("M_Product_ID") <= 0) {
			//	set_Value("LBR_Tax_ID", null);
			//	return;
			//}
			
			if (taxation == null) {
				set_Value("LBR_Tax_ID", null);
				return;
			}
			
			/**
			 * Content for taxation array slots:
			 * 	0 = Taxes
			 * 	1 = Legal Message
			 * 	2 = CFOP
			 * 	3 = CST
			 */
			@SuppressWarnings("unchecked")
			Map<Integer, MLBRTaxLine> taxes = (Map<Integer, MLBRTaxLine>) taxation[0];
			
			if (taxes.size() > 0)
			{
				MLBRTax tax = new MLBRTax (getCtx(), 0, get_TrxName());
				tax.setAD_Org_ID(getAD_Org_ID());
				tax.saveEx();

				for (Integer key : taxes.keySet()) {
					MLBRTaxLine tl = taxes.get(key);
					tl.setLBR_Tax_ID(tax.getLBR_Tax_ID());
					
					// Adjust IVA-ST
					//if (tl.getLBR_TaxName_ID() == 1000012)
					//	tl.setLBR_TaxRate(getAdjustedIva(tl.getLBR_TaxRate()));
					tl.saveEx();
				}
				
				// Check if it is necessary to adjust the IVA-ST 
				checkIVAST(tax);

				tax.setDescription();
				tax.saveEx();
				setLBR_Tax_ID(tax.get_ID());
			} else {
				set_Value("LBR_Tax_ID", null);
			}
			
			//if (((Integer) taxation[1]) > 0)
			//	mTab.setValue("LBR_LegalMessage_ID", ((Integer) taxation[1]));
			
			if (((Integer) taxation[2]) > 0) {
				setLBR_CFOP_ID((Integer) taxation[2]);
			} else {
				set_Value("LBR_CFOP_ID", null);
			}
			
			//if (((String) taxation[3]) != null && ((String) taxation[3]).length() > 0)
			//	mTab.setValue("lbr_TaxStatus", p.getlbr_ProductSource() + ((String) taxation[3]));
		//}

		return;
	}
	
	/**
	 * 	Check and adjust (if necessary) the IVA-ST percentage in the transaction
	 * 	@param tax MLBRTax
	 */
	private void checkIVAST(MLBRTax tax) {
		MLBRTaxLine[] lines = tax.getLines();
		
		BigDecimal aliqInterestadual = Env.ZERO;
		BigDecimal aliqInternaDestino = Env.ZERO;
		BigDecimal ivaOriginal = Env.ZERO;
		
		MLBRTaxLine ivaLine = null;
		
		// Get ICMS tax rate
		for (MLBRTaxLine line : lines) {
			if (line.getLBR_TaxName().getName().equals("ICMSPROD") ||
					line.getLBR_TaxName().getName().equals("ICMSSERV"))
				aliqInterestadual = line.getLBR_TaxRate();
			else if (line.getLBR_TaxName().getName().equals("ICMSST"))
				aliqInternaDestino = line.getLBR_TaxRate();
			else if (line.getLBR_TaxName().getName().equals("IVA")) {
				ivaOriginal = line.getLBR_TaxRate();
				ivaLine = line;
			}
		}
		
		if (ivaOriginal.compareTo(Env.ZERO) != 0) {
			ivaLine.setLBR_TaxRate(MLBRDocLineICMS.getAdjustedIva(ivaOriginal, aliqInterestadual, aliqInternaDestino));
			ivaLine.saveEx();
		}
		
		return;		
	}
	
	/**
	 * 	Get the IVA-ST percentage in a MLBRTax.	
	 * 	@param tax MLBRTax
	 *	@return IVA-ST percentage
	 */
	private BigDecimal getIVAST(MLBRTax tax) {
		BigDecimal iva = Env.ZERO;
		MLBRTaxLine[] lines = tax.getLines();
		
		// Get ICMS tax rate
		for (MLBRTaxLine line : lines) {
			if (line.getLBR_TaxName().getName().equals("IVA"))
				iva = line.getLBR_TaxRate();
		}
		
		return iva;
	}	
}