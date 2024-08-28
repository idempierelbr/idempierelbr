package org.idempierelbr.nfe.util;

import java.util.ArrayList;
import java.util.List;
import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MCity;
import org.compiere.model.MCountry;
import org.compiere.model.MRegion;
import org.compiere.model.MTax;
import org.compiere.model.MTaxProvider;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.idempierelbr.base.model.I_LBR_DI;
import org.idempierelbr.base.model.MLBRDocLineCOFINS;
import org.idempierelbr.base.model.MLBRDocLineDetailsNfe;
import org.idempierelbr.base.model.MLBRDocLineICMS;
import org.idempierelbr.base.model.MLBRDocLineIPI;
import org.idempierelbr.base.model.MLBRDocLineISSQN;
import org.idempierelbr.base.model.MLBRDocLineImportTax;
import org.idempierelbr.base.model.MLBRDocLinePIS;
import org.idempierelbr.base.model.MLBRNotaFiscal;
import org.idempierelbr.base.model.MLBRNotaFiscalDI;
import org.idempierelbr.base.model.MLBRNotaFiscalLine;
import org.idempierelbr.base.util.TextUtil;
import org.idempierelbr.nfe.beans.COFINSBean;
import org.idempierelbr.nfe.beans.COFINSGrupoBean;
import org.idempierelbr.nfe.beans.COFINSSTBean;
import org.idempierelbr.nfe.beans.DeclaracaoDI;
import org.idempierelbr.nfe.beans.ICMSBean;
import org.idempierelbr.nfe.beans.ICMSGrupoBean;
import org.idempierelbr.nfe.beans.ICMSUFDestBean;
import org.idempierelbr.nfe.beans.IIBean;
import org.idempierelbr.nfe.beans.IPIBean;
import org.idempierelbr.nfe.beans.IPIGrupoBean;
import org.idempierelbr.nfe.beans.ISSQNBean;
import org.idempierelbr.nfe.beans.PISBean;
import org.idempierelbr.nfe.beans.PISGrupoBean;
import org.idempierelbr.nfe.beans.PISSTBean;
import org.idempierelbr.nfe.model.NFTaxProvider;

public class NFeLineUtil {
	protected transient CLogger	log = CLogger.getCLogger (getClass());
	private MLBRNotaFiscalLine line;
	
	public NFeLineUtil(MLBRNotaFiscalLine line) {
		if (line == null)
			throw new AdempiereException("MLBRNotaFiscalLine não pode ser null");
		
		this.line = line;
	}
	
	/**
	 *	Update Tax & Header
	 *	@return true if header updated
	 */
	public boolean updateHeaderTax()
	{

		// Update header only if the document is not processed
		if (line.isProcessed() && !line.is_ValueChanged(MLBRNotaFiscalLine.COLUMNNAME_Processed))
			return true;

		MTax tax = new MTax(line.getCtx(), line.getC_Tax_ID(), line.get_TrxName());
        MTaxProvider provider = new MTaxProvider(tax.getCtx(), tax.getC_TaxProvider_ID(), tax.get_TrxName());
        NFTaxProvider calculator = new NFTaxProvider();
        if (!calculator.updateNFTax(provider, line))
			return false;

    	return calculator.updateHeaderTax(provider, line);
	}	//	updateHeaderTax
	
	/**
	 *	Get ICMS bean (used for NF-e xml)
	 *	@return bean
	 */
	public ICMSBean getICMSBean() {
		MLBRDocLineICMS[] icmsLines = MLBRDocLineICMS.getOfDetails(MLBRDocLineDetailsNfe.getOfPO(line));
		
		
		
		if (icmsLines.length > 0) {
			String prefixException = "@Tab@ @ICMS@, @Field@ @IsMandatory@: ";
			
			ICMSBean icms = new ICMSBean();
			ICMSGrupoBean icmsGrupo = new ICMSGrupoBean();
			
			MLBRDocLineICMS firstMlbrDocLineICMS = icmsLines[0];
						
			if (firstMlbrDocLineICMS.getLBR_ICMSRegime() == null || firstMlbrDocLineICMS.getLBR_ICMSRegime().trim().equals(""))
				throw new AdempiereException(prefixException + "'@LBR_ICMSRegime@'");
			
			if (firstMlbrDocLineICMS.getLBR_ProductSource() == null || firstMlbrDocLineICMS.getLBR_ProductSource().trim().equals(""))
				throw new AdempiereException(prefixException + "'@LBR_ProductSource@'");
			icmsGrupo.setOrig(firstMlbrDocLineICMS.getLBR_ProductSource());
			
			String taxStatusDetailed = null;
			String taxStatusSimple = null;
			
			if (firstMlbrDocLineICMS.getLBR_ICMSRegime().equals("TN")) {
				if (firstMlbrDocLineICMS.getLBR_ICMS_TaxStatusTN() == null || firstMlbrDocLineICMS.getLBR_ICMS_TaxStatusTN().trim().equals(""))
					throw new AdempiereException(prefixException + "'@LBR_ICMS_TaxStatusTN@'");
				taxStatusDetailed = firstMlbrDocLineICMS.getLBR_ICMS_TaxStatusTN();
				taxStatusSimple = MLBRDocLineICMS.getCSTPrefix(taxStatusDetailed);
				icmsGrupo.setCST(taxStatusSimple);
			} else if (firstMlbrDocLineICMS.getLBR_ICMSRegime().equals("SN")) {
				if (firstMlbrDocLineICMS.getLBR_ICMS_TaxStatusSN() == null || firstMlbrDocLineICMS.getLBR_ICMS_TaxStatusSN().trim().equals(""))
					throw new AdempiereException(prefixException + "'@LBR_ICMS_TaxStatusSN@'");
				taxStatusDetailed = firstMlbrDocLineICMS.getLBR_ICMS_TaxStatusSN();	
				taxStatusSimple = MLBRDocLineICMS.getCSTPrefix(taxStatusDetailed);	
				icmsGrupo.setCSOSN(taxStatusSimple);
			}
			
			// ICMS00
			if (TextUtil.match(taxStatusDetailed, MLBRDocLineICMS.CST_ICMS_00)) {
				if (firstMlbrDocLineICMS.getLBR_ICMS_TaxBaseType() == null || firstMlbrDocLineICMS.getLBR_ICMS_TaxBaseType().trim().equals(""))
					throw new AdempiereException(prefixException + "'@LBR_ICMS_TaxBaseType@'");
				icmsGrupo.setModBC(firstMlbrDocLineICMS.getLBR_ICMS_TaxBaseType());
				if (firstMlbrDocLineICMS.getLBR_TaxBaseAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxBaseAmt@'");
				icmsGrupo.setvBC(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxBaseAmt()));
				if (firstMlbrDocLineICMS.getLBR_TaxRate() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxRate@'");
				icmsGrupo.setpICMS(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxRate()));
				if (firstMlbrDocLineICMS.getLBR_TaxAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxAmt@'");
				icmsGrupo.setvICMS(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxAmt()));
			}
			// ICMS10
			else if (TextUtil.match(taxStatusDetailed, MLBRDocLineICMS.CST_ICMS_10_ST)) {
				if (firstMlbrDocLineICMS.getLBR_ICMS_TaxBaseType() == null || firstMlbrDocLineICMS.getLBR_ICMS_TaxBaseType().trim().equals(""))
					throw new AdempiereException(prefixException + "'@LBR_ICMS_TaxBaseType@'");
				icmsGrupo.setModBC(firstMlbrDocLineICMS.getLBR_ICMS_TaxBaseType());
				if (firstMlbrDocLineICMS.getLBR_TaxBaseAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxBaseAmt@'");
				icmsGrupo.setvBC(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxBaseAmt()));
				if (firstMlbrDocLineICMS.getLBR_TaxRate() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxRate@'");
				icmsGrupo.setpICMS(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxRate()));
				if (firstMlbrDocLineICMS.getLBR_TaxAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxAmt@'");
				icmsGrupo.setvICMS(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxAmt()));
				if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseType() == null || firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseType().trim().equals(""))
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxBaseType@'");
				icmsGrupo.setModBCST(firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseType());
				icmsGrupo.setpMVAST(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxAdded()));
				icmsGrupo.setpRedBCST(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxBase()));
				if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxBaseAmt@'");
				icmsGrupo.setvBCST(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseAmt()));
				if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxRate() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxRate@'");
				icmsGrupo.setpICMSST(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxRate()));
				if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxAmt@'");
				icmsGrupo.setvICMSST(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxAmt()));
			}
			// ICMS20
			if (TextUtil.match(taxStatusDetailed, MLBRDocLineICMS.CST_ICMS_20)) {
				if (firstMlbrDocLineICMS.getLBR_ICMS_TaxBaseType() == null || firstMlbrDocLineICMS.getLBR_ICMS_TaxBaseType().trim().equals(""))
					throw new AdempiereException(prefixException + "'@LBR_ICMS_TaxBaseType@'");
				icmsGrupo.setModBC(firstMlbrDocLineICMS.getLBR_ICMS_TaxBaseType());
				if (firstMlbrDocLineICMS.getLBR_TaxBase() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxBase@'");
				icmsGrupo.setpRedBC(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxBase()));
				if (firstMlbrDocLineICMS.getLBR_TaxBaseAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxBaseAmt@'");
				icmsGrupo.setvBC(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxBaseAmt()));
				if (firstMlbrDocLineICMS.getLBR_TaxRate() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxRate@'");
				icmsGrupo.setpICMS(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxRate()));
				if (firstMlbrDocLineICMS.getLBR_TaxAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxAmt@'");
				icmsGrupo.setvICMS(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxAmt()));
				
				if (firstMlbrDocLineICMS.getLBR_TaxReliefAmt() != null || 
						(firstMlbrDocLineICMS.getLBR_ICMS_TaxReliefType() != null &&
						!firstMlbrDocLineICMS.getLBR_ICMS_TaxReliefType().trim().equals(""))) {

					if (firstMlbrDocLineICMS.getLBR_TaxReliefAmt() == null)
						throw new AdempiereException(prefixException + "'@LBR_TaxReliefAmt@'");
					icmsGrupo.setvICMSDeson(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxReliefAmt()));
					if (firstMlbrDocLineICMS.getLBR_ICMS_TaxReliefType() == null || firstMlbrDocLineICMS.getLBR_ICMS_TaxReliefType().trim().equals("")) 
						throw new AdempiereException(prefixException + "'@LBR_ICMS_TaxReliefType@'");
					icmsGrupo.setMotDesICMS(firstMlbrDocLineICMS.getLBR_ICMS_TaxReliefType());
				}					
			}
			// ICMS30
			else if (TextUtil.match(taxStatusDetailed, MLBRDocLineICMS.CST_ICMS_30)) {
				if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseType() == null || firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseType().trim().equals(""))
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxBaseType@'");
				icmsGrupo.setModBCST(firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseType());
				icmsGrupo.setpMVAST(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxAdded()));
				icmsGrupo.setpRedBCST(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxBase()));
				if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxBaseAmt@'");
				icmsGrupo.setvBCST(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseAmt()));
				if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxRate() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxRate@'");
				icmsGrupo.setpICMSST(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxRate()));
				if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxAmt@'");
				icmsGrupo.setvICMSST(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxAmt()));
				
				if (firstMlbrDocLineICMS.getLBR_TaxReliefAmt() != null || 
						(firstMlbrDocLineICMS.getLBR_ICMS_TaxReliefType() != null &&
						!firstMlbrDocLineICMS.getLBR_ICMS_TaxReliefType().trim().equals(""))) {

					if (firstMlbrDocLineICMS.getLBR_TaxReliefAmt() == null)
						throw new AdempiereException(prefixException + "'@LBR_TaxReliefAmt@'");
					icmsGrupo.setvICMSDeson(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxReliefAmt()));
					if (firstMlbrDocLineICMS.getLBR_ICMS_TaxReliefType() == null || firstMlbrDocLineICMS.getLBR_ICMS_TaxReliefType().trim().equals("")) 
						throw new AdempiereException(prefixException + "'@LBR_ICMS_TaxReliefType@'");
					icmsGrupo.setMotDesICMS(firstMlbrDocLineICMS.getLBR_ICMS_TaxReliefType());
				}
			}
			// ICMS40
			else if (TextUtil.match(taxStatusDetailed,
					MLBRDocLineICMS.CST_ICMS_40,
					MLBRDocLineICMS.CST_ICMS_41,
					MLBRDocLineICMS.CST_ICMS_50)) {
				
				if (firstMlbrDocLineICMS.getLBR_TaxReliefAmt() != null || 
						(firstMlbrDocLineICMS.getLBR_ICMS_TaxReliefType() != null &&
						!firstMlbrDocLineICMS.getLBR_ICMS_TaxReliefType().trim().equals(""))) {

					if (firstMlbrDocLineICMS.getLBR_TaxReliefAmt() == null)
						throw new AdempiereException(prefixException + "'@LBR_TaxReliefAmt@'");
					icmsGrupo.setvICMSDeson(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxReliefAmt()));
					if (firstMlbrDocLineICMS.getLBR_ICMS_TaxReliefType() == null || firstMlbrDocLineICMS.getLBR_ICMS_TaxReliefType().trim().equals("")) 
						throw new AdempiereException(prefixException + "'@LBR_ICMS_TaxReliefType@'");
					icmsGrupo.setMotDesICMS(firstMlbrDocLineICMS.getLBR_ICMS_TaxReliefType());
				}
			}
			// ICMS51
			else if (TextUtil.match(taxStatusDetailed, MLBRDocLineICMS.CST_ICMS_51)) {
				icmsGrupo.setModBC(firstMlbrDocLineICMS.getLBR_ICMS_TaxBaseType());
				icmsGrupo.setpRedBC(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxBase()));
				icmsGrupo.setvBC(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxBaseAmt()));
				icmsGrupo.setpICMS(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxRate()));
				if ( firstMlbrDocLineICMS.getLBR_TaxRate().compareTo(Env.ZERO) != 0 ) {
					icmsGrupo.setvICMSOp(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMS_TaxAmtOp()));
					icmsGrupo.setpDif(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxDeferralRate()));
					icmsGrupo.setvICMSDif(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxDeferralAmt()));
				}
				icmsGrupo.setvICMS(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxAmt()));
			}
			// ICMS60
			else if (TextUtil.match(taxStatusDetailed, MLBRDocLineICMS.CST_ICMS_60)) {
				if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxBAmtWhd() != null &&
						firstMlbrDocLineICMS.getLBR_ICMSST_TaxBAmtWhd().signum() != 0 && 
						firstMlbrDocLineICMS.getLBR_ICMSST_TaxAmtWhd() != null &&
						firstMlbrDocLineICMS.getLBR_ICMSST_TaxAmtWhd().signum() != 0 &&
						firstMlbrDocLineICMS.getLBR_ICMSST_TaxRate() != null &&
						firstMlbrDocLineICMS.getLBR_ICMSST_TaxRate().signum() != 0
						) {
					if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxBAmtWhd() == null)
						throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxBAmtWhd@'");
					icmsGrupo.setvBCSTRet(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxBAmtWhd()));
					
					if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxRate() == null)
						throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxRate@'");
					icmsGrupo.setpST(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxRate()));

					if (firstMlbrDocLineICMS.getLBR_vICMSSubstituto() == null) 
						throw new AdempiereException(prefixException + "'@LBR_vICMSSubstituto@'");
					icmsGrupo.setvICMSSubstituto(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_vICMSSubstituto()));
					
					if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxAmtWhd() == null) 
						throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxAmtWhd@'");
					icmsGrupo.setvICMSSTRet(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxAmtWhd()));
					
				}
			}
			// ICMS70
			else if (TextUtil.match(taxStatusDetailed, MLBRDocLineICMS.CST_ICMS_70)) {
				if (firstMlbrDocLineICMS.getLBR_ICMS_TaxBaseType() == null || firstMlbrDocLineICMS.getLBR_ICMS_TaxBaseType().trim().equals(""))
					throw new AdempiereException(prefixException + "'@LBR_ICMS_TaxBaseType@'");
				icmsGrupo.setModBC(firstMlbrDocLineICMS.getLBR_ICMS_TaxBaseType());
				if (firstMlbrDocLineICMS.getLBR_TaxBase() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxBase@'");
				icmsGrupo.setpRedBC(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxBase()));
				if (firstMlbrDocLineICMS.getLBR_TaxBaseAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxBaseAmt@'");
				icmsGrupo.setvBC(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxBaseAmt()));
				if (firstMlbrDocLineICMS.getLBR_TaxRate() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxRate@'");
				icmsGrupo.setpICMS(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxRate()));
				if (firstMlbrDocLineICMS.getLBR_TaxAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxAmt@'");
				icmsGrupo.setvICMS(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxAmt()));
				if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseType() == null || firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseType().trim().equals(""))
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxBaseType@'");
				icmsGrupo.setModBCST(firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseType());
				icmsGrupo.setpMVAST(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxAdded()));
				icmsGrupo.setpRedBCST(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxBase()));
				if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxBaseAmt@'");
				icmsGrupo.setvBCST(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseAmt()));
				if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxRate() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxRate@'");
				icmsGrupo.setpICMSST(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxRate()));
				if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxAmt@'");
				icmsGrupo.setvICMSST(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxAmt()));
				
				if (firstMlbrDocLineICMS.getLBR_TaxReliefAmt() != null || 
						(firstMlbrDocLineICMS.getLBR_ICMS_TaxReliefType() != null &&
						!firstMlbrDocLineICMS.getLBR_ICMS_TaxReliefType().trim().equals(""))) {

					if (firstMlbrDocLineICMS.getLBR_TaxReliefAmt() == null)
						throw new AdempiereException(prefixException + "'@LBR_TaxReliefAmt@'");
					icmsGrupo.setvICMSDeson(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxReliefAmt()));
					if (firstMlbrDocLineICMS.getLBR_ICMS_TaxReliefType() == null || firstMlbrDocLineICMS.getLBR_ICMS_TaxReliefType().trim().equals("")) 
						throw new AdempiereException(prefixException + "'@LBR_ICMS_TaxReliefType@'");
					icmsGrupo.setMotDesICMS(firstMlbrDocLineICMS.getLBR_ICMS_TaxReliefType());
				}
			}
			// ICMS90
			else if (TextUtil.match(taxStatusDetailed, MLBRDocLineICMS.CST_ICMS_90)) {
				if ((firstMlbrDocLineICMS.getLBR_ICMS_TaxBaseType() != null && !firstMlbrDocLineICMS.getLBR_ICMS_TaxBaseType().trim().equals("")) ||
						firstMlbrDocLineICMS.getLBR_TaxBaseAmt() != null ||
						firstMlbrDocLineICMS.getLBR_TaxRate() != null ||
						firstMlbrDocLineICMS.getLBR_TaxAmt() != null) {
					
					if (firstMlbrDocLineICMS.getLBR_ICMS_TaxBaseType() == null || firstMlbrDocLineICMS.getLBR_ICMS_TaxBaseType().trim().equals(""))
						throw new AdempiereException(prefixException + "'@LBR_ICMS_TaxBaseType@'");
					icmsGrupo.setModBC(firstMlbrDocLineICMS.getLBR_ICMS_TaxBaseType());
					if (firstMlbrDocLineICMS.getLBR_TaxBaseAmt() == null)
						throw new AdempiereException(prefixException + "'@LBR_TaxBaseAmt@'");
					icmsGrupo.setvBC(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxBaseAmt()));
					icmsGrupo.setpRedBC(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxBase()));
					if (firstMlbrDocLineICMS.getLBR_TaxRate() == null)
						throw new AdempiereException(prefixException + "'@LBR_TaxRate@'");
					icmsGrupo.setpICMS(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxRate()));
					if (firstMlbrDocLineICMS.getLBR_TaxAmt() == null)
						throw new AdempiereException(prefixException + "'@LBR_TaxAmt@'");
					icmsGrupo.setvICMS(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxAmt()));
				}
				
				if ((firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseType() != null && !firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseType().trim().equals("")) ||
						firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseAmt() != null ||
						firstMlbrDocLineICMS.getLBR_ICMSST_TaxRate() != null ||
						firstMlbrDocLineICMS.getLBR_ICMSST_TaxAmt() != null) {
					
					if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseType() == null || firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseType().trim().equals(""))
						throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxBaseType@'");
					icmsGrupo.setModBCST(firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseType());
					icmsGrupo.setpMVAST(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxAdded()));
					icmsGrupo.setpRedBCST(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxBase()));
					if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseAmt() == null)
						throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxBaseAmt@'");
					icmsGrupo.setvBCST(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseAmt()));
					if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxRate() == null)
						throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxRate@'");
					icmsGrupo.setpICMSST(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxRate()));
					if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxAmt() == null)
						throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxAmt@'");
					icmsGrupo.setvICMSST(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxAmt()));
				}
				
				if (firstMlbrDocLineICMS.getLBR_TaxReliefAmt() != null || 
						(firstMlbrDocLineICMS.getLBR_ICMS_TaxReliefType() != null &&
						!firstMlbrDocLineICMS.getLBR_ICMS_TaxReliefType().trim().equals(""))) {

					if (firstMlbrDocLineICMS.getLBR_TaxReliefAmt() == null)
						throw new AdempiereException(prefixException + "'@LBR_TaxReliefAmt@'");
					icmsGrupo.setvICMSDeson(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxReliefAmt()));
					if (firstMlbrDocLineICMS.getLBR_ICMS_TaxReliefType() == null || firstMlbrDocLineICMS.getLBR_ICMS_TaxReliefType().trim().equals("")) 
						throw new AdempiereException(prefixException + "'@LBR_ICMS_TaxReliefType@'");
					icmsGrupo.setMotDesICMS(firstMlbrDocLineICMS.getLBR_ICMS_TaxReliefType());
				}
			}
			// ICMSPart
			else if (TextUtil.match(taxStatusDetailed,
					MLBRDocLineICMS.CST_ICMS_10_PART,
					MLBRDocLineICMS.CST_ICMS_90_PART)) {
				
				if (firstMlbrDocLineICMS.getLBR_ICMS_TaxBaseType() == null || firstMlbrDocLineICMS.getLBR_ICMS_TaxBaseType().trim().equals(""))
					throw new AdempiereException(prefixException + "'@LBR_ICMS_TaxBaseType@'");
				icmsGrupo.setModBC(firstMlbrDocLineICMS.getLBR_ICMS_TaxBaseType());
				if (firstMlbrDocLineICMS.getLBR_TaxBaseAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxBaseAmt@'");
				icmsGrupo.setvBC(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxBaseAmt()));
				icmsGrupo.setpRedBC(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxBase()));
				if (firstMlbrDocLineICMS.getLBR_TaxRate() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxRate@'");
				icmsGrupo.setpICMS(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxRate()));
				if (firstMlbrDocLineICMS.getLBR_TaxAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxAmt@'");
				icmsGrupo.setvICMS(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxAmt()));
				if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseType() == null || firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseType().trim().equals(""))
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxBaseType@'");
				icmsGrupo.setModBCST(firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseType());
				icmsGrupo.setpMVAST(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxAdded()));
				icmsGrupo.setpRedBCST(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxBase()));
				if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxBaseAmt@'");
				icmsGrupo.setvBCST(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseAmt()));
				if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxRate() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxRate@'");
				icmsGrupo.setpICMSST(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxRate()));
				if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxAmt@'");
				icmsGrupo.setvICMSST(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxAmt()));
				if (firstMlbrDocLineICMS.getLBR_TaxBaseOwnOperation() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxBaseOwnOperation@'");
				icmsGrupo.setpBCOp(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxBaseOwnOperation()));
				if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxUFDue_ID() < 1)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxUFDue_ID@'");
				MRegion region = new MRegion(line.getCtx(), firstMlbrDocLineICMS.getLBR_ICMSST_TaxUFDue_ID(), line.get_TrxName());
				icmsGrupo.setUFST(region.getName());
			}
			// ICMSST
			else if (TextUtil.match(taxStatusDetailed, MLBRDocLineICMS.CST_ICMS_41_RET)) {
				if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxBAmtUFSen() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxBAmtUFSen@'");
				icmsGrupo.setvBCSTRet(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxBAmtUFSen()));
				if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxAmtUFSen() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxAmtUFSen@'");
				icmsGrupo.setvICMSSTRet(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxAmtUFSen()));
				if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxBAmtUFDes() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxBAmtUFDes@'");
				icmsGrupo.setvBCSTDest(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxBAmtUFDes()));
				if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxAmtUFDes() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxAmtUFDes@'");
				icmsGrupo.setvICMSSTDest(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxAmtUFDes()));
			}
			// ICMSSN101
			else if (TextUtil.match(taxStatusDetailed, MLBRDocLineICMS.CSOSN_101)) {
				if (firstMlbrDocLineICMS.getLBR_TaxRateCredit() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxRateCredit@'");
				icmsGrupo.setpCredSN(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxRateCredit()));
				if (firstMlbrDocLineICMS.getLBR_TaxAmtCredit() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxAmtCredit@'");
				icmsGrupo.setvCredICMSSN(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxAmtCredit()));
			}
			// ICMSSN102
			else if (TextUtil.match(taxStatusDetailed,
					MLBRDocLineICMS.CSOSN_102,
					MLBRDocLineICMS.CSOSN_103,
					MLBRDocLineICMS.CSOSN_300,
					MLBRDocLineICMS.CSOSN_400)) {

				// Nothing to do here
			}
			// ICMSSN201
			else if (TextUtil.match(taxStatusDetailed, MLBRDocLineICMS.CSOSN_201)) {				
				if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseType() == null || firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseType().trim().equals(""))
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxBaseType@'");
				icmsGrupo.setModBCST(firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseType());
				icmsGrupo.setpMVAST(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxAdded()));
				icmsGrupo.setpRedBCST(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxBase()));
				if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxBaseAmt@'");
				icmsGrupo.setvBCST(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseAmt()));
				if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxRate() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxRate@'");
				icmsGrupo.setpICMSST(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxRate()));
				if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxAmt@'");
				icmsGrupo.setvICMSST(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxAmt()));
				if (firstMlbrDocLineICMS.getLBR_TaxRateCredit() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxRateCredit@'");
				icmsGrupo.setpCredSN(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxRateCredit()));
				if (firstMlbrDocLineICMS.getLBR_TaxAmtCredit() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxAmtCredit@'");
				icmsGrupo.setvCredICMSSN(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxAmtCredit()));
			}
			// ICMSSN202
			else if (TextUtil.match(taxStatusDetailed,
					MLBRDocLineICMS.CSOSN_202,
					MLBRDocLineICMS.CSOSN_203)) {
				
				if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseType() == null || firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseType().trim().equals(""))
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxBaseType@'");
				icmsGrupo.setModBCST(firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseType());
				icmsGrupo.setpMVAST(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxAdded()));
				icmsGrupo.setpRedBCST(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxBase()));
				if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxBaseAmt@'");
				icmsGrupo.setvBCST(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseAmt()));
				if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxRate() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxRate@'");
				icmsGrupo.setpICMSST(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxRate()));
				if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxAmt@'");
				icmsGrupo.setvICMSST(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxAmt()));
			}
			// ICMSSN500
			else if (TextUtil.match(taxStatusDetailed, MLBRDocLineICMS.CSOSN_500)) {
				if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxBAmtWhd() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxBAmtWhd@'");
				icmsGrupo.setvBCSTRet(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxBAmtWhd()));
				if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxAmtWhd() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxAmtWhd@'");
				icmsGrupo.setvICMSSTRet(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxAmtWhd()));
			}
			// ICMSSN900
			else if (TextUtil.match(taxStatusDetailed, MLBRDocLineICMS.CSOSN_900)) {
				if ((firstMlbrDocLineICMS.getLBR_ICMS_TaxBaseType() != null && !firstMlbrDocLineICMS.getLBR_ICMS_TaxBaseType().trim().equals("")) ||
						firstMlbrDocLineICMS.getLBR_TaxBaseAmt() != null ||
						firstMlbrDocLineICMS.getLBR_TaxRate() != null ||
						firstMlbrDocLineICMS.getLBR_TaxAmt() != null) {
					
					if (firstMlbrDocLineICMS.getLBR_ICMS_TaxBaseType() == null || firstMlbrDocLineICMS.getLBR_ICMS_TaxBaseType().trim().equals(""))
						throw new AdempiereException(prefixException + "'@LBR_ICMS_TaxBaseType@'");
					icmsGrupo.setModBC(firstMlbrDocLineICMS.getLBR_ICMS_TaxBaseType());
					if (firstMlbrDocLineICMS.getLBR_TaxBaseAmt() == null)
						throw new AdempiereException(prefixException + "'@LBR_TaxBaseAmt@'");
					icmsGrupo.setvBC(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxBaseAmt()));
					icmsGrupo.setpRedBC(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxBase()));
					if (firstMlbrDocLineICMS.getLBR_TaxRate() == null)
						throw new AdempiereException(prefixException + "'@LBR_TaxRate@'");
					icmsGrupo.setpICMS(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxRate()));
					if (firstMlbrDocLineICMS.getLBR_TaxAmt() == null)
						throw new AdempiereException(prefixException + "'@LBR_TaxAmt@'");
					icmsGrupo.setvICMS(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxAmt()));
				}
				
				if ((firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseType() != null && !firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseType().trim().equals("")) ||
						firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseAmt() != null ||
						firstMlbrDocLineICMS.getLBR_ICMSST_TaxRate() != null ||
						firstMlbrDocLineICMS.getLBR_ICMSST_TaxAmt() != null) {
					
					if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseType() == null || firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseType().trim().equals(""))
						throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxBaseType@'");
					icmsGrupo.setModBCST(firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseType());
					icmsGrupo.setpMVAST(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxAdded()));
					icmsGrupo.setpRedBCST(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxBase()));
					if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseAmt() == null)
						throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxBaseAmt@'");
					icmsGrupo.setvBCST(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxBaseAmt()));
					if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxRate() == null)
						throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxRate@'");
					icmsGrupo.setpICMSST(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxRate()));
					if (firstMlbrDocLineICMS.getLBR_ICMSST_TaxAmt() == null)
						throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxAmt@'");
					icmsGrupo.setvICMSST(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_ICMSST_TaxAmt()));
				}
				
				if (firstMlbrDocLineICMS.getLBR_TaxRateCredit() != null || firstMlbrDocLineICMS.getLBR_TaxAmtCredit() != null) {
					if (firstMlbrDocLineICMS.getLBR_TaxRateCredit() == null)
						throw new AdempiereException(prefixException + "'@LBR_TaxRateCredit@'");
					icmsGrupo.setpCredSN(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxRateCredit()));
					if (firstMlbrDocLineICMS.getLBR_TaxAmtCredit() == null)
						throw new AdempiereException(prefixException + "'@LBR_TaxAmtCredit@'");
					icmsGrupo.setvCredICMSSN(TextUtil.bigdecimalToString(firstMlbrDocLineICMS.getLBR_TaxAmtCredit()));
				}
			} 
			
			icms.setDetails(icmsGrupo, taxStatusDetailed);
			return icms;			
		}
		
		return null;
	}
	
	/**
	 *	Get IPI bean (used for NF-e xml)
	 *	@return bean
	 */
	public IPIBean getIPIBean() {
		MLBRDocLineIPI[] ipiLines = MLBRDocLineIPI.getOfDetails(MLBRDocLineDetailsNfe.getOfPO(line));
		
		if (ipiLines.length > 0) {
			String prefixException = "@Tab@ @IPI@, @Field@ @IsMandatory@: ";
			
			IPIBean ipi = new IPIBean();
			IPIGrupoBean ipiGrupo = new IPIGrupoBean();
			
			ipi.setClEnq(ipiLines[0].getLBR_IPI_RegardingClass());
			ipi.setCNPJProd(ipiLines[0].getLBR_CNPJ());
			ipi.setcSelo(ipiLines[0].getLBR_IPI_SealCode());
			ipi.setqSelo(String.valueOf(ipiLines[0].getLBR_IPI_SealQty()));
			
			if (ipiLines[0].getLBR_IPI_RegardingCode() < 1)
				throw new AdempiereException(prefixException + "'@LBR_IPI_RegardingCode@'");
			ipi.setcEnq(String.valueOf(ipiLines[0].getLBR_IPI_RegardingCode()));
			
			if (ipiLines[0].getLBR_IPI_TaxStatus() == null || ipiLines[0].getLBR_IPI_TaxStatus().trim().equals(""))
				throw new AdempiereException(prefixException + "'@LBR_IPI_TaxStatus@'");
			ipiGrupo.setCST(ipiLines[0].getLBR_IPI_TaxStatus());			

			if (TextUtil.match (ipiLines[0].getLBR_IPI_TaxStatus(),
					MLBRDocLineIPI.CST_IPI_00,
					MLBRDocLineIPI.CST_IPI_49,
					MLBRDocLineIPI.CST_IPI_50,
					MLBRDocLineIPI.CST_IPI_99)) {
				
				if (ipiLines[0].getCalculationType() == null)
					throw new AdempiereException("Campo X é obrigatório");
				
				if (ipiLines[0].getCalculationType().equals("PER")) {
					if (ipiLines[0].getLBR_TaxBaseAmt() == null)
						throw new AdempiereException(prefixException + "'@LBR_TaxBaseAmt@'");
					ipiGrupo.setvBC(TextUtil.bigdecimalToString(ipiLines[0].getLBR_TaxBaseAmt()));
					if (ipiLines[0].getLBR_TaxRate() == null)
						throw new AdempiereException(prefixException + "'@LBR_TaxRate@'");
					ipiGrupo.setpIPI(TextUtil.bigdecimalToString (ipiLines[0].getLBR_TaxRate()));
				} else if (ipiLines[0].getCalculationType().equals("AMT")) {
					if (ipiLines[0].getTotalQty() == null)
						throw new AdempiereException(prefixException + "'@TotalQty@'");
					ipiGrupo.setqUnid(TextUtil.bigdecimalToString(ipiLines[0].getTotalQty()));
					if (ipiLines[0].getPriceActual() == null)
						throw new AdempiereException(prefixException + "'@PriceActual@'");
					ipiGrupo.setvUnid(TextUtil.bigdecimalToString(ipiLines[0].getPriceActual()));
				}

				if (ipiLines[0].getLBR_TaxAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxAmt@'");
				ipiGrupo.setvIPI(TextUtil.bigdecimalToString(ipiLines[0].getLBR_TaxAmt()));
				ipi.setIPI(ipiGrupo);
			} else
				ipi.setIPINT(ipiGrupo);
			
			return ipi;			
		}
		
		return null;
	}
	
	/**
	 *	Get Import Tax bean (used for NF-e xml)
	 *	@return bean
	 */
	public IIBean getImportTaxBean() {
		MLBRDocLineImportTax[] iiLines = MLBRDocLineImportTax.getOfDetails(MLBRDocLineDetailsNfe.getOfPO(line));
		
		if (iiLines.length > 0) {
			String prefixException = "@Tab@ @LBR_ImportTax@, @Field@ @IsMandatory@: ";
			
			IIBean ii = new IIBean();
			
			if (iiLines[0].getLBR_TaxBaseAmt() == null)
				throw new AdempiereException(prefixException + "'@LBR_TaxBaseAmt@'");
			ii.setvBC(TextUtil.bigdecimalToString(iiLines[0].getLBR_TaxBaseAmt()));
			if (iiLines[0].getCustomsValue() == null)
				throw new AdempiereException(prefixException + "'@CustomsValue@'");
			ii.setvDespAdu(TextUtil.bigdecimalToString(iiLines[0].getCustomsValue()));
			if (iiLines[0].getLBR_TaxAmt() == null)
				throw new AdempiereException(prefixException + "'@LBR_TaxAmt@'");
			ii.setvII(TextUtil.bigdecimalToString(iiLines[0].getLBR_TaxAmt()));
			if (iiLines[0].getLBR_IOFAmt() == null)
				throw new AdempiereException(prefixException + "'@LBR_IOFAmt@'");
			ii.setvIOF(TextUtil.bigdecimalToString(iiLines[0].getLBR_IOFAmt()));
			
			return ii;			
		}
		
		return null;
	}
	
	/**
	 *	Get PIS bean (used for NF-e xml)
	 *	@return bean
	 */
	public PISBean getPISBean() {
		MLBRDocLinePIS[] pisLines = MLBRDocLinePIS.getOfDetails(MLBRDocLineDetailsNfe.getOfPO(line));
		
		if (pisLines.length > 0) {
			String prefixException = "@Tab@ @PIS@, @Field@ @IsMandatory@: ";
			
			PISBean pis = new PISBean();
			PISGrupoBean pisGrupo = new PISGrupoBean();
			
			if (pisLines[0].getLBR_PIS_TaxStatus() == null)
				throw new AdempiereException(prefixException + "'@LBR_PIS_TaxStatus@'");
			pisGrupo.setCST(pisLines[0].getLBR_PIS_TaxStatus());
			
			// PISAliq
			if (TextUtil.match(pisLines[0].getLBR_PIS_TaxStatus(),
					MLBRDocLinePIS.CST_PIS_01,
					MLBRDocLinePIS.CST_PIS_02)) {
				
				if (pisLines[0].getLBR_TaxBaseAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxBaseAmt@'");
				pisGrupo.setvBC(TextUtil.bigdecimalToString(pisLines[0].getLBR_TaxBaseAmt()));
				if (pisLines[0].getLBR_TaxRate() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxRate@'");
				pisGrupo.setpPIS(TextUtil.bigdecimalToString(pisLines[0].getLBR_TaxRate()));
				if (pisLines[0].getLBR_TaxAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxAmt@'");
				pisGrupo.setvPIS(TextUtil.bigdecimalToString(pisLines[0].getLBR_TaxAmt()));
			} 
			// PISQtde
			else if (TextUtil.match(pisLines[0].getLBR_PIS_TaxStatus(),
					MLBRDocLinePIS.CST_PIS_03)) {
				
				if (pisLines[0].getTotalQty() == null)
					throw new AdempiereException(prefixException + "'@TotalQty@'");
				pisGrupo.setqBCProd(TextUtil.bigdecimalToString(pisLines[0].getTotalQty()));
				if (pisLines[0].getLBR_TaxRateInAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxRateInAmt@'");
				pisGrupo.setvAliqProd(TextUtil.bigdecimalToString(pisLines[0].getLBR_TaxRateInAmt()));
				if (pisLines[0].getLBR_TaxAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxAmt@'");
				pisGrupo.setvPIS(TextUtil.bigdecimalToString(pisLines[0].getLBR_TaxAmt()));
			}
			// PISNT
			else if (TextUtil.match(pisLines[0].getLBR_PIS_TaxStatus(),
					MLBRDocLinePIS.CST_PIS_04,
					MLBRDocLinePIS.CST_PIS_05,
					MLBRDocLinePIS.CST_PIS_06,
					MLBRDocLinePIS.CST_PIS_07,
					MLBRDocLinePIS.CST_PIS_08,
					MLBRDocLinePIS.CST_PIS_09)) {
				
			}
			// PISOutr
			else if (TextUtil.match(pisLines[0].getLBR_PIS_TaxStatus(),
					MLBRDocLinePIS.CST_PIS_49,
					MLBRDocLinePIS.CST_PIS_50,
					MLBRDocLinePIS.CST_PIS_51,
					MLBRDocLinePIS.CST_PIS_52,
					MLBRDocLinePIS.CST_PIS_53,
					MLBRDocLinePIS.CST_PIS_54,
					MLBRDocLinePIS.CST_PIS_55,
					MLBRDocLinePIS.CST_PIS_56,
					MLBRDocLinePIS.CST_PIS_60,
					MLBRDocLinePIS.CST_PIS_61,
					MLBRDocLinePIS.CST_PIS_62,
					MLBRDocLinePIS.CST_PIS_63,
					MLBRDocLinePIS.CST_PIS_64,
					MLBRDocLinePIS.CST_PIS_65,
					MLBRDocLinePIS.CST_PIS_66,
					MLBRDocLinePIS.CST_PIS_67,
					MLBRDocLinePIS.CST_PIS_70,
					MLBRDocLinePIS.CST_PIS_71,
					MLBRDocLinePIS.CST_PIS_72,
					MLBRDocLinePIS.CST_PIS_73,
					MLBRDocLinePIS.CST_PIS_74,
					MLBRDocLinePIS.CST_PIS_75,
					MLBRDocLinePIS.CST_PIS_98,
					MLBRDocLinePIS.CST_PIS_99)) {
				
				if (pisLines[0].getCalculationType() == null || pisLines[0].getCalculationType().trim().equals(""))
					throw new AdempiereException(prefixException + "'@CalculationType@'");
				
				if (pisLines[0].getCalculationType().equals("PER")) {
					if (pisLines[0].getLBR_TaxBaseAmt() == null)
						throw new AdempiereException(prefixException + "'@LBR_TaxBaseAmt@'");
					pisGrupo.setvBC(TextUtil.bigdecimalToString(pisLines[0].getLBR_TaxBaseAmt()));
					if (pisLines[0].getLBR_TaxRate() == null)
						throw new AdempiereException(prefixException + "'@LBR_TaxRate@'");
					pisGrupo.setpPIS(TextUtil.bigdecimalToString(pisLines[0].getLBR_TaxRate()));
				} else if (pisLines[0].getCalculationType().equals("AMT")) {
					if (pisLines[0].getTotalQty() == null)
						throw new AdempiereException(prefixException + "'@TotalQty@'");
					pisGrupo.setqBCProd(TextUtil.bigdecimalToString(pisLines[0].getTotalQty()));
					if (pisLines[0].getLBR_TaxRateInAmt() == null)
						throw new AdempiereException(prefixException + "'@LBR_TaxRateInAmt@'");
					pisGrupo.setvAliqProd(TextUtil.bigdecimalToString(pisLines[0].getLBR_TaxRateInAmt()));
				}
				
				if (pisLines[0].getLBR_TaxAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxAmt@'");
				pisGrupo.setvPIS(TextUtil.bigdecimalToString(pisLines[0].getLBR_TaxAmt()));
			}

			pis.setDetails(pisGrupo, pisLines[0].getLBR_PIS_TaxStatus());
			return pis;			
		}
		
		return null;
	}
	
	/**
	 *	Get PIS-ST bean (used for NF-e xml)
	 *	@return bean
	 */
	public PISSTBean getPISSTBean() {
		MLBRDocLinePIS[] pisLines = MLBRDocLinePIS.getOfDetails(MLBRDocLineDetailsNfe.getOfPO(line));
		
		if (pisLines.length > 0	&&
				pisLines[0].getLBR_PISST_CalcType() != null && !pisLines[0].getLBR_PISST_CalcType().trim().equals("")) {
			
			String prefixException = "@Tab@ @PIS@, @Field@ @IsMandatory@: ";
			
			PISSTBean pisST = new PISSTBean();
	
			if (pisLines[0].getLBR_PISST_CalcType().equals("PER")) {
				if (pisLines[0].getLBR_PISST_TaxBaseAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_PISST_TaxBaseAmt@'");
				pisST.setvBC(TextUtil.bigdecimalToString(pisLines[0].getLBR_PISST_TaxBaseAmt()));
				if (pisLines[0].getLBR_PISST_TaxRate() == null)
					throw new AdempiereException(prefixException + "'@LBR_PISST_TaxRate@'");
				pisST.setpPIS(TextUtil.bigdecimalToString(pisLines[0].getLBR_PISST_TaxRate()));
			} else if (pisLines[0].getLBR_PISST_CalcType().equals("AMT")) {
				if (pisLines[0].getLBR_PISST_TotalQty() == null)
					throw new AdempiereException(prefixException + "'@LBR_PISST_TotalQty@'");
				pisST.setqBCProd(TextUtil.bigdecimalToString(pisLines[0].getLBR_PISST_TotalQty()));
				if (pisLines[0].getLBR_PISST_TaxRateInAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_PISST_TaxRateInAmt@'");
				pisST.setvAliqProd(TextUtil.bigdecimalToString(pisLines[0].getLBR_PISST_TaxRateInAmt()));
			}
			
			if (pisLines[0].getLBR_PISST_TaxAmt() == null)
				throw new AdempiereException(prefixException + "'@LBR_PISST_TaxAmt@'");
			pisST.setvPIS(TextUtil.bigdecimalToString(pisLines[0].getLBR_PISST_TaxAmt()));

			return pisST;			
		}
		
		return null;
	}
	
	/**
	 *	Get COFINS bean (used for NF-e xml)
	 *	@return bean
	 */
	public COFINSBean getCOFINSBean() {
		MLBRDocLineCOFINS[] cofinsLines = MLBRDocLineCOFINS.getOfDetails(MLBRDocLineDetailsNfe.getOfPO(line));
		
		if (cofinsLines.length > 0) {
			String prefixException = "@Tab@ @COFINS@, @Field@ @IsMandatory@: ";
			
			COFINSBean cofins = new COFINSBean();
			COFINSGrupoBean cofinsGrupo = new COFINSGrupoBean();
			
			cofinsGrupo.setCST(cofinsLines[0].getLBR_COF_TaxStatus());
			
			// COFINSAliq
			if (TextUtil.match(cofinsLines[0].getLBR_COF_TaxStatus(),
					MLBRDocLineCOFINS.CST_COFINS_01,
					MLBRDocLineCOFINS.CST_COFINS_02)) {
				
				if (cofinsLines[0].getLBR_TaxBaseAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxBaseAmt@'");
				cofinsGrupo.setvBC(TextUtil.bigdecimalToString(cofinsLines[0].getLBR_TaxBaseAmt()));
				if (cofinsLines[0].getLBR_TaxRate() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxRate@'");
				cofinsGrupo.setpCOFINS(TextUtil.bigdecimalToString(cofinsLines[0].getLBR_TaxRate()));
				if (cofinsLines[0].getLBR_TaxAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxAmt@'");
				cofinsGrupo.setvCOFINS(TextUtil.bigdecimalToString(cofinsLines[0].getLBR_TaxAmt()));
			} 
			// COFINSQtde
			else if (TextUtil.match(cofinsLines[0].getLBR_COF_TaxStatus(),
					MLBRDocLineCOFINS.CST_COFINS_03)) {
				
				if (cofinsLines[0].getTotalQty() == null)
					throw new AdempiereException(prefixException + "'@TotalQty@'");
				cofinsGrupo.setqBCProd(TextUtil.bigdecimalToString(cofinsLines[0].getTotalQty()));
				if (cofinsLines[0].getLBR_TaxRateInAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxRateInAmt@'");
				cofinsGrupo.setvAliqProd(TextUtil.bigdecimalToString(cofinsLines[0].getLBR_TaxRateInAmt()));
				if (cofinsLines[0].getLBR_TaxAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxAmt@'");
				cofinsGrupo.setvCOFINS(TextUtil.bigdecimalToString(cofinsLines[0].getLBR_TaxAmt()));
			}
			// COFINSNT
			else if (TextUtil.match(cofinsLines[0].getLBR_COF_TaxStatus(),
					MLBRDocLineCOFINS.CST_COFINS_04,
					MLBRDocLineCOFINS.CST_COFINS_05,
					MLBRDocLineCOFINS.CST_COFINS_06,
					MLBRDocLineCOFINS.CST_COFINS_07,
					MLBRDocLineCOFINS.CST_COFINS_08,
					MLBRDocLineCOFINS.CST_COFINS_09)) {
				
			}
			// COFINSOutr
			else if (TextUtil.match(cofinsLines[0].getLBR_COF_TaxStatus(),
					MLBRDocLineCOFINS.CST_COFINS_49,
					MLBRDocLineCOFINS.CST_COFINS_50,
					MLBRDocLineCOFINS.CST_COFINS_51,
					MLBRDocLineCOFINS.CST_COFINS_52,
					MLBRDocLineCOFINS.CST_COFINS_53,
					MLBRDocLineCOFINS.CST_COFINS_54,
					MLBRDocLineCOFINS.CST_COFINS_55,
					MLBRDocLineCOFINS.CST_COFINS_56,
					MLBRDocLineCOFINS.CST_COFINS_60,
					MLBRDocLineCOFINS.CST_COFINS_61,
					MLBRDocLineCOFINS.CST_COFINS_62,
					MLBRDocLineCOFINS.CST_COFINS_63,
					MLBRDocLineCOFINS.CST_COFINS_64,
					MLBRDocLineCOFINS.CST_COFINS_65,
					MLBRDocLineCOFINS.CST_COFINS_66,
					MLBRDocLineCOFINS.CST_COFINS_67,
					MLBRDocLineCOFINS.CST_COFINS_70,
					MLBRDocLineCOFINS.CST_COFINS_71,
					MLBRDocLineCOFINS.CST_COFINS_72,
					MLBRDocLineCOFINS.CST_COFINS_73,
					MLBRDocLineCOFINS.CST_COFINS_74,
					MLBRDocLineCOFINS.CST_COFINS_75,
					MLBRDocLineCOFINS.CST_COFINS_98,
					MLBRDocLineCOFINS.CST_COFINS_99)) {
				
				if (cofinsLines[0].getCalculationType().equals("PER")) {
					if (cofinsLines[0].getLBR_TaxBaseAmt() == null)
						throw new AdempiereException(prefixException + "'@LBR_TaxBaseAmt@'");
					cofinsGrupo.setvBC(TextUtil.bigdecimalToString(cofinsLines[0].getLBR_TaxBaseAmt()));
					if (cofinsLines[0].getLBR_TaxRate() == null)
						throw new AdempiereException(prefixException + "'@LBR_TaxRate@'");
					cofinsGrupo.setpCOFINS(TextUtil.bigdecimalToString(cofinsLines[0].getLBR_TaxRate()));
				} else if (cofinsLines[0].getCalculationType().equals("AMT")) {
					if (cofinsLines[0].getTotalQty() == null)
						throw new AdempiereException(prefixException + "'@TotalQty@'");
					cofinsGrupo.setqBCProd(TextUtil.bigdecimalToString(cofinsLines[0].getTotalQty()));
					if (cofinsLines[0].getLBR_TaxRateInAmt() == null)
						throw new AdempiereException(prefixException + "'@LBR_TaxRateInAmt@'");
					cofinsGrupo.setvAliqProd(TextUtil.bigdecimalToString(cofinsLines[0].getLBR_TaxRateInAmt()));
				}
				
				if (cofinsLines[0].getLBR_TaxAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxAmt@'");
				cofinsGrupo.setvCOFINS(TextUtil.bigdecimalToString(cofinsLines[0].getLBR_TaxAmt()));
			}

			cofins.setDetails(cofinsGrupo, cofinsLines[0].getLBR_COF_TaxStatus());
			return cofins;			
		}
		
		return null;
	}
	
	/**
	 *	Get COFINS-ST bean (used for NF-e xml)
	 *	@return bean
	 */
	public COFINSSTBean getCOFINSSTBean() {
		MLBRDocLineCOFINS[] cofinsLines = MLBRDocLineCOFINS.getOfDetails(MLBRDocLineDetailsNfe.getOfPO(line));
		
		if (cofinsLines.length > 0	&&
				cofinsLines[0].getLBR_COFST_CalcType() != null && !cofinsLines[0].getLBR_COFST_CalcType().trim().equals("")) {
			
			String prefixException = "@Tab@ @COFINS@, @Field@ @IsMandatory@: ";
			
			COFINSSTBean cofinsST = new COFINSSTBean();
	
			if (cofinsLines[0].getLBR_COFST_CalcType().equals("PER")) {
				if (cofinsLines[0].getLBR_COFST_TaxBaseAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_COFST_TaxBaseAmt@'");
				cofinsST.setvBC(TextUtil.bigdecimalToString(cofinsLines[0].getLBR_COFST_TaxBaseAmt()));
				if (cofinsLines[0].getLBR_COFST_TaxRate() == null)
					throw new AdempiereException(prefixException + "'@LBR_COFST_TaxRate@'");
				cofinsST.setpCOFINS(TextUtil.bigdecimalToString(cofinsLines[0].getLBR_COFST_TaxRate()));
			} else if (cofinsLines[0].getLBR_COFST_CalcType().equals("AMT")) {
				if (cofinsLines[0].getLBR_COFST_TotalQty() == null)
					throw new AdempiereException(prefixException + "'@LBR_COFST_TotalQty@'");
				cofinsST.setqBCProd(TextUtil.bigdecimalToString(cofinsLines[0].getLBR_COFST_TotalQty()));
				if (cofinsLines[0].getLBR_COFST_TaxRateInAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_COFST_TaxRateInAmt@'");
				cofinsST.setvAliqProd(TextUtil.bigdecimalToString(cofinsLines[0].getLBR_COFST_TaxRateInAmt()));
			}
			
			if (cofinsLines[0].getLBR_COFST_TaxAmt() == null)
				throw new AdempiereException(prefixException + "'@LBR_COFST_TaxAmt@'");
			cofinsST.setvCOFINS(TextUtil.bigdecimalToString(cofinsLines[0].getLBR_COFST_TaxAmt()));

			return cofinsST;			
		}
		
		return null;
	}
	
	/**
	 *	Get ISSQN bean (used for NF-e xml)
	 *	@return bean
	 */
	public ISSQNBean getISSQNBean() {
		MLBRDocLineISSQN[] issqnLines = MLBRDocLineISSQN.getOfDetails(MLBRDocLineDetailsNfe.getOfPO(line));
		
		if (issqnLines.length > 0) {
			String prefixException = "@Tab@ @ISSQN@, @Field@ @IsMandatory@: ";
			
			ISSQNBean issqn = new ISSQNBean();
			
			if (issqnLines[0].getLBR_TaxBaseAmt() == null)
				throw new AdempiereException(prefixException + "'@LBR_TaxBaseAmt@'");
			issqn.setvBC(TextUtil.bigdecimalToString(issqnLines[0].getLBR_TaxBaseAmt()));
			if (issqnLines[0].getLBR_TaxRate() == null)
				throw new AdempiereException(prefixException + "'@LBR_TaxRate@'");
			issqn.setvAliq(TextUtil.bigdecimalToString(issqnLines[0].getLBR_TaxRate()));
			if (issqnLines[0].getLBR_TaxAmt() == null)
				throw new AdempiereException(prefixException + "'@LBR_TaxAmt@'");
			issqn.setvISSQN(TextUtil.bigdecimalToString(issqnLines[0].getLBR_TaxAmt()));
			if (issqnLines[0].getC_City_ID() < 1)
				throw new AdempiereException(prefixException + "'@C_City_ID@'");
			issqn.setcMunFG(String.valueOf(issqnLines[0].getC_City_ID()));
			if (issqnLines[0].getLBR_ServiceType() == null || issqnLines[0].getLBR_ServiceType().trim().equals(""))
				throw new AdempiereException(prefixException + "'@LBR_ServiceType@'");
			issqn.setcListServ(issqnLines[0].getLBR_ServiceType());
			issqn.setvDeducao(TextUtil.bigdecimalToString(issqnLines[0].getLBR_TaxBaseDeductionAmt()));
			issqn.setvOutro(TextUtil.bigdecimalToString(issqnLines[0].getLBR_OtherWithholdingsAmt()));
			issqn.setvDescIncond(TextUtil.bigdecimalToString(issqnLines[0].getLBR_UncondDiscountAmt()));
			issqn.setvDescCond(TextUtil.bigdecimalToString(issqnLines[0].getLBR_CondDiscountAmt()));
			issqn.setvISSRet(TextUtil.bigdecimalToString(issqnLines[0].getLBR_ISS_WithholdingAmt()));
			if (issqnLines[0].getLBR_ISS_Chargeability() == null || issqnLines[0].getLBR_ISS_Chargeability().trim().equals(""))
				throw new AdempiereException(prefixException + "'@LBR_ISS_Chargeability@'");
			issqn.setIndISS(issqnLines[0].getLBR_ISS_Chargeability());
			issqn.setcServico(issqnLines[0].getLBR_ServiceCode());
			
			if (issqnLines[0].getC_Country_ID() > 0) {
				MCountry country = new MCountry(line.getCtx(), issqnLines[0].getC_Country_ID(), line.get_TrxName());
				issqn.setcPais(country.get_ValueAsString("LBR_CountryCode"));
				
				if (issqnLines[0].getC_Country_ID() != MLBRNotaFiscal.BRAZIL)
					issqn.setcMun("9999999");
				else if (issqnLines[0].getC_Country_ID() == MLBRNotaFiscal.BRAZIL && issqnLines[0].getLBR_IncidenceCity_ID() > 0) {
					MCity city = new MCity(line.getCtx(), issqnLines[0].getLBR_IncidenceCity_ID(), line.get_TrxName());
					issqn.setcMun(city.get_ValueAsString("LBR_CityCode"));
				}
			}
			
			issqn.setnProcesso(issqnLines[0].getProcessName());
			if (issqnLines[0].getLBR_TaxIncentive() == null || issqnLines[0].getLBR_TaxIncentive().trim().equals(""))
				throw new AdempiereException(prefixException + "'@LBR_TaxIncentive@'");
			issqn.setIndIncentivo(issqnLines[0].getLBR_TaxIncentive());			
			
			return issqn;			
		}
		
		return null;
	}
	
	public List<DeclaracaoDI> getDeclaracaoDI() {
		
		MLBRNotaFiscalDI[] additionItems = line.getNotaFiscalDI();
		
		I_LBR_DI currentDI = null;
		DeclaracaoDI diBean = null;
		List<DeclaracaoDI> diList = new ArrayList<DeclaracaoDI>();

		for ( MLBRNotaFiscalDI item: additionItems ) {
			NFeDIUtil diUtil = new NFeDIUtil(item);
			if ( !item.getLBR_DI_Addition().getLBR_DI().equals(currentDI)) {
				currentDI = item.getLBR_DI_Addition().getLBR_DI();
				diBean = diUtil.getDIBean( );
				diList.add(diBean);
			}
			diBean.addAdi(  diUtil.getAdditionBean( ) );
		}

		return diList;
	}
	
	/**
	 *	Get ICMS with DIFAL (used for NF-e xml)
	 *	@return bean
	 */
	public ICMSUFDestBean getICMSDIFAL() {
		
		// nfe, emitido pela org, saida, consumidor final e interstadual
		if (!line.getParent().getLBR_NFeModel().equals(MLBRNotaFiscal.LBR_NFEMODEL_55_NF_E)
				|| !line.getParent().isLBR_IsDocIssuedByOrg()
				|| !line.getParent().getLBR_NFE_OperationType().equals(MLBRNotaFiscal.LBR_NFE_OPERATIONTYPE_Out)
				|| !line.getParent().getLBR_NFeIndFinal().equals(MLBRNotaFiscal.LBR_NFEINDFINAL_EndConsumer)
				|| !line.getParent().getLBR_NFE_DestinationType().equals(MLBRNotaFiscal.LBR_NFE_DESTINATIONTYPE_OperacaoInterestadual))
			return null;

		// get icms line
		MLBRDocLineICMS[] icmsLines = MLBRDocLineICMS.getOfDetails(MLBRDocLineDetailsNfe.getOfPO(line));
		if (icmsLines.length > 0) {
			
			// 
			String prefixException = "@Tab@ @ICMS@, @Field@ @IsMandatory@: ";
			
			// icms group
			ICMSUFDestBean icmsGrupo = new ICMSUFDestBean();
			
			// check icms regime
			if (icmsLines[0].getLBR_ICMSRegime() == null || icmsLines[0].getLBR_ICMSRegime().trim().equals(""))
				throw new AdempiereException(prefixException + "'@LBR_ICMSRegime@'");
			
			// check product source
			if (icmsLines[0].getLBR_ProductSource() == null || icmsLines[0].getLBR_ProductSource().trim().equals(""))
				throw new AdempiereException(prefixException + "'@LBR_ProductSource@'");

			// tax status
			String taxStatusDetailed = null;
			if (icmsLines[0].getLBR_ICMSRegime().equals("TN")) {
				if (icmsLines[0].getLBR_ICMS_TaxStatusTN() == null || icmsLines[0].getLBR_ICMS_TaxStatusTN().trim().equals(""))
					throw new AdempiereException(prefixException + "'@LBR_ICMS_TaxStatusTN@'");
				taxStatusDetailed = icmsLines[0].getLBR_ICMS_TaxStatusTN();
			
			} else if (icmsLines[0].getLBR_ICMSRegime().equals("SN")) {
				if (icmsLines[0].getLBR_ICMS_TaxStatusSN() == null || icmsLines[0].getLBR_ICMS_TaxStatusSN().trim().equals(""))
					throw new AdempiereException(prefixException + "'@LBR_ICMS_TaxStatusSN@'");
				taxStatusDetailed = icmsLines[0].getLBR_ICMS_TaxStatusSN();	
			}
			
			
			// CST_ICMS_00 ou CSOSN_101 + DIFAL
			if (TextUtil.match(taxStatusDetailed, MLBRDocLineICMS.CST_ICMS_00,
					MLBRDocLineICMS.CSOSN_101)
					&& icmsLines[0].getLBR_DIFAL_TaxAmtICMSUFDest() != null
					&& icmsLines[0].getLBR_DIFAL_TaxAmtICMSUFDest().signum() == 1) {

				// LBR_TaxBaseAmt
				if (icmsLines[0].getLBR_TaxBaseAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxBaseAmt@'");
				icmsGrupo.setvBCUFDest(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxBaseAmt()));
				
				// LBR_DIFAL_TaxBaseFCPUFDest				
				if (icmsLines[0].getLBR_DIFAL_TaxBaseFCPUFDest() != null)
					icmsGrupo.setvBCFCPUFDest(TextUtil.bigdecimalToString(icmsLines[0].getLBR_DIFAL_TaxBaseFCPUFDest(), 2));
				
				// LBR_DIFAL_TaxRateFCPUFDest				
				if (icmsLines[0].getLBR_DIFAL_TaxRateFCPUFDest() != null)
					icmsGrupo.setpFCPUFDest(TextUtil.bigdecimalToString(icmsLines[0].getLBR_DIFAL_TaxRateFCPUFDest(), 4));
			
				// LBR_DIFAL_TaxRateICMSUFDest				
				if (icmsLines[0].getLBR_DIFAL_TaxRateICMSUFDest() == null)
					throw new AdempiereException(prefixException + "'@LBR_DIFAL_TaxRateICMSUFDest@'");
				icmsGrupo.setpICMSUFDest(TextUtil.bigdecimalToString(icmsLines[0].getLBR_DIFAL_TaxRateICMSUFDest(), 4));
				
				// LBR_TaxRate				
				if (icmsLines[0].getLBR_TaxRate() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxRate@'");
				icmsGrupo.setpICMSInter(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxRate()));
				
				// LBR_DIFAL_RateICMSInterPart
				if (icmsLines[0].getLBR_DIFAL_RateICMSInterPart() == null)
					throw new AdempiereException(prefixException + "'@LBR_DIFAL_RateICMSInterPart@'");
				icmsGrupo.setpICMSInterPart(TextUtil.bigdecimalToString(icmsLines[0].getLBR_DIFAL_RateICMSInterPart(), 4));
				
				// LBR_DIFAL_TaxAmtFCPUFDest
				if (icmsLines[0].getLBR_DIFAL_TaxAmtFCPUFDest() != null)
					icmsGrupo.setvFCPUFDest(TextUtil.bigdecimalToString(icmsLines[0].getLBR_DIFAL_TaxAmtFCPUFDest()));
				
				// LBR_DIFAL_TaxAmtICMSUFDest
				if (icmsLines[0].getLBR_DIFAL_TaxAmtICMSUFDest() == null)
					throw new AdempiereException(prefixException + "'@LBR_DIFAL_TaxAmtICMSUFDest@'");
				icmsGrupo.setvICMSUFDest(TextUtil.bigdecimalToString(icmsLines[0].getLBR_DIFAL_TaxAmtICMSUFDest()));
				
				// LBR_DIFAL_TaxAmtICMSUFRemet
				if (icmsLines[0].getLBR_DIFAL_TaxAmtICMSUFRemet() == null)
					throw new AdempiereException(prefixException + "'@LBR_DIFAL_TaxAmtICMSUFRemet@'");
				icmsGrupo.setvICMSUFRemet(TextUtil.bigdecimalToString(icmsLines[0].getLBR_DIFAL_TaxAmtICMSUFRemet()));
				
				return icmsGrupo;
			}						
		}
		
		return null;
	}
}
