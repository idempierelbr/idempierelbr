/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil                      *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.idempierelbr.nfe.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.GenericPO;
import org.compiere.model.MCity;
import org.compiere.model.MCountry;
import org.compiere.model.MProduct;
import org.compiere.model.MRegion;
import org.compiere.model.MTax;
import org.compiere.model.MTaxProvider;
import org.compiere.model.Query;
import org.compiere.util.Env;
import org.idempierelbr.core.util.TextUtil;
import org.idempierelbr.nfe.beans.COFINSBean;
import org.idempierelbr.nfe.beans.COFINSGrupoBean;
import org.idempierelbr.nfe.beans.COFINSSTBean;
import org.idempierelbr.nfe.beans.DeclaracaoDI;
import org.idempierelbr.nfe.beans.ICMSBean;
import org.idempierelbr.nfe.beans.ICMSGrupoBean;
import org.idempierelbr.nfe.beans.IIBean;
import org.idempierelbr.nfe.beans.IPIBean;
import org.idempierelbr.nfe.beans.IPIGrupoBean;
import org.idempierelbr.nfe.beans.PISBean;
import org.idempierelbr.nfe.beans.PISGrupoBean;
import org.idempierelbr.nfe.beans.PISSTBean;
import org.idempierelbr.nfe.beans.ISSQNBean;
import org.idempierelbr.tax.model.I_LBR_DI;
import org.idempierelbr.tax.model.MLBRDocLineCOFINS;
import org.idempierelbr.tax.model.MLBRDocLineICMS;
import org.idempierelbr.tax.model.MLBRDocLineIPI;
import org.idempierelbr.tax.model.MLBRDocLineISSQN;
import org.idempierelbr.tax.model.MLBRDocLineImportTax;
import org.idempierelbr.tax.model.MLBRDocLinePIS;

/**
 *	MNotaFiscalLine
 *
 *	Model for X_LBR_NotaFiscalLine
 */
public class MLBRNotaFiscalLine extends X_LBR_NotaFiscalLine {

	/**
	 *	Serial
	 */
	private static final long serialVersionUID = 1L;

	/** Parent					*/
	private MLBRNotaFiscal			m_parent = null;
	
	/**	Process Message */
	private String		m_processMsg = null;
	
	/** Cached Currency Precision	*/
	private Integer			m_precision = null;
	
	/**	Product					*/
	private MProduct 		m_product = null;

	public String getProcessMsg() {

		if (m_processMsg == null)
			m_processMsg = "";

		return m_processMsg;
	}

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRNotaFiscalLine (Properties ctx, int ID, String trx)
	{
		super(ctx, ID, trx);
	}	//	MLBRNotaFiscalLine

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRNotaFiscalLine (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}	//	MLBRNotaFiscalLine
	
	/**
	 *  Constructor
	 *  @param nf Nota Fiscal
	 */
	public MLBRNotaFiscalLine (MLBRNotaFiscal nf)
	{
		super(nf.getCtx(), 0, nf.get_TrxName());
		setLBR_NotaFiscal_ID(nf.getLBR_NotaFiscal_ID());
		//
		m_parent = nf;
	}	//	MLBRNotaFiscalLine
	
	/**
	 * 	Set Header Info
	 *	@param nf nf
	 */
	public void setHeaderInfo (MLBRNotaFiscal nf)
	{
		m_parent = nf;
		m_precision = new Integer(nf.getPrecision());
	}	//	setHeaderInfo
	
	/**
	 * 	Necessário para ajustar a precisão
	 * 		de casas decimais
	 */
	public void setPriceActual (BigDecimal Price)
	{
		if (Price == null)
			Price = Env.ZERO;
		//
		super.setPriceActual(Price.setScale(10, BigDecimal.ROUND_HALF_UP));
	}	//	setPrice
	
	/**
	 * 	Necessário para ajustar a precisão
	 * 		de casas decimais
	 */
	public void setQty (BigDecimal Qty)
	{
		if (Qty == null)
			Qty = Env.ZERO;
		//
		super.setQty(Qty.setScale(4, BigDecimal.ROUND_HALF_UP));
	}	//	setQty
	
	/**
	 * 	Get Parent
	 *	@return parent
	 */
	public MLBRNotaFiscal getParent()
	{
		if (m_parent == null)
			m_parent = new MLBRNotaFiscal (getCtx(), getLBR_NotaFiscal_ID(), get_TrxName());
		return m_parent;
	}	//	getParent
	
	/**
	 * 	After Save
	 *	@param newRecord new
	 *	@param success success
	 *	@return saved
	 */
	protected boolean afterSave (boolean newRecord, boolean success)
	{
		if (!success)
			return success;
		MTax tax = new MTax(getCtx(), getC_Tax_ID(), get_TrxName());
        MTaxProvider provider = new MTaxProvider(tax.getCtx(), tax.getC_TaxProvider_ID(), tax.get_TrxName());
		NFTaxProvider calculator = new NFTaxProvider();
    	return calculator.recalculateTax(provider, this, newRecord);
	}	//	afterSave
	
	/**
	 * Recalculate NF tax
	 * @param oldTax true if the old C_Tax_ID should be used
	 * @return true if success, false otherwise
	 * 
	 * @author teo_sarca [ 1583825 ]
	 */
	public boolean updateNFTax(boolean oldTax) {
		MLBRNotaFiscalTax tax = MLBRNotaFiscalTax.get (this, getParent().getPrecision(), oldTax, get_TrxName());
		if (tax != null) {
			if (!tax.calculateTaxFromLines())
				return false;
			if (tax.getTaxAmt().signum() != 0) {
				if (!tax.save(get_TrxName()))
					return false;
			}
			else {
				if (!tax.is_new() && !tax.delete(false, get_TrxName()))
					return false;
			}
		}
		return true;
	}
	
	/**
	 *	Update Tax & Header
	 *	@return true if header updated
	 */
	public boolean updateHeaderTax()
	{

		// Update header only if the document is not processed
		if (isProcessed() && !is_ValueChanged(COLUMNNAME_Processed))
			return true;

		MTax tax = new MTax(getCtx(), getC_Tax_ID(), get_TrxName());
        MTaxProvider provider = new MTaxProvider(tax.getCtx(), tax.getC_TaxProvider_ID(), tax.get_TrxName());
        NFTaxProvider calculator = new NFTaxProvider();
        if (!calculator.updateNFTax(provider, this))
			return false;

    	return calculator.updateHeaderTax(provider, this);
	}	//	updateHeaderTax
	
	public void clearParent()
	{
		this.m_parent = null;
	}
	
	/**
	 *	Is Tax Included in Amount
	 *	@return true if tax calculated
	 */
	public boolean isTaxIncluded()
	{
		return true;
	}	//	isTaxIncluded
	
	/**
	 * 	Get Product
	 *	@return product or null
	 */
	public MProduct getProduct()
	{
		if (m_product == null && getM_Product_ID() != 0)
			m_product =  MProduct.get (getCtx(), getM_Product_ID());
		return m_product;
	}	//	getProduct
	
	/**
	 *	Get ICMS bean (used for NF-e xml)
	 *	@return bean
	 */
	public ICMSBean getICMSBean() {
		MLBRDocLineICMS[] icmsLines = MLBRDocLineICMS.getOfDetails(MLBRDocLineDetailsNfe.getOfPO(this));
		
		if (icmsLines.length > 0) {
			String prefixException = "@Tab@ @ICMS@, @Field@ @IsMandatory@: ";
			
			ICMSBean icms = new ICMSBean();
			ICMSGrupoBean icmsGrupo = new ICMSGrupoBean();
			
			if (icmsLines[0].getLBR_ICMSRegime() == null || icmsLines[0].getLBR_ICMSRegime().trim().equals(""))
				throw new AdempiereException(prefixException + "'@LBR_ICMSRegime@'");
			
			if (icmsLines[0].getLBR_ProductSource() == null || icmsLines[0].getLBR_ProductSource().trim().equals(""))
				throw new AdempiereException(prefixException + "'@LBR_ProductSource@'");
			icmsGrupo.setOrig(icmsLines[0].getLBR_ProductSource());
			
			String taxStatusDetailed = null;
			String taxStatusSimple = null;
			
			if (icmsLines[0].getLBR_ICMSRegime().equals("TN")) {
				if (icmsLines[0].getLBR_ICMS_TaxStatusTN() == null || icmsLines[0].getLBR_ICMS_TaxStatusTN().trim().equals(""))
					throw new AdempiereException(prefixException + "'@LBR_ICMS_TaxStatusTN@'");
				taxStatusDetailed = icmsLines[0].getLBR_ICMS_TaxStatusTN();
				taxStatusSimple = MLBRDocLineICMS.getCSTPrefix(taxStatusDetailed);
				icmsGrupo.setCST(taxStatusSimple);
			} else if (icmsLines[0].getLBR_ICMSRegime().equals("SN")) {
				if (icmsLines[0].getLBR_ICMS_TaxStatusSN() == null || icmsLines[0].getLBR_ICMS_TaxStatusSN().trim().equals(""))
					throw new AdempiereException(prefixException + "'@LBR_ICMS_TaxStatusSN@'");
				taxStatusDetailed = icmsLines[0].getLBR_ICMS_TaxStatusSN();	
				taxStatusSimple = MLBRDocLineICMS.getCSTPrefix(taxStatusDetailed);	
				icmsGrupo.setCSOSN(taxStatusSimple);
			}
			
			// ICMS00
			if (TextUtil.match(taxStatusDetailed, MLBRDocLineICMS.CST_ICMS_00)) {
				if (icmsLines[0].getLBR_ICMS_TaxBaseType() == null || icmsLines[0].getLBR_ICMS_TaxBaseType().trim().equals(""))
					throw new AdempiereException(prefixException + "'@LBR_ICMS_TaxBaseType@'");
				icmsGrupo.setModBC(icmsLines[0].getLBR_ICMS_TaxBaseType());
				if (icmsLines[0].getLBR_TaxBaseAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxBaseAmt@'");
				icmsGrupo.setvBC(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxBaseAmt()));
				if (icmsLines[0].getLBR_TaxRate() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxRate@'");
				icmsGrupo.setpICMS(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxRate()));
				if (icmsLines[0].getLBR_TaxAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxAmt@'");
				icmsGrupo.setvICMS(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxAmt()));
			}
			// ICMS10
			else if (TextUtil.match(taxStatusDetailed, MLBRDocLineICMS.CST_ICMS_10_ST)) {
				if (icmsLines[0].getLBR_ICMS_TaxBaseType() == null || icmsLines[0].getLBR_ICMS_TaxBaseType().trim().equals(""))
					throw new AdempiereException(prefixException + "'@LBR_ICMS_TaxBaseType@'");
				icmsGrupo.setModBC(icmsLines[0].getLBR_ICMS_TaxBaseType());
				if (icmsLines[0].getLBR_TaxBaseAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxBaseAmt@'");
				icmsGrupo.setvBC(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxBaseAmt()));
				if (icmsLines[0].getLBR_TaxRate() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxRate@'");
				icmsGrupo.setpICMS(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxRate()));
				if (icmsLines[0].getLBR_TaxAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxAmt@'");
				icmsGrupo.setvICMS(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxAmt()));
				if (icmsLines[0].getLBR_ICMSST_TaxBaseType() == null || icmsLines[0].getLBR_ICMSST_TaxBaseType().trim().equals(""))
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxBaseType@'");
				icmsGrupo.setModBCST(icmsLines[0].getLBR_ICMSST_TaxBaseType());
				icmsGrupo.setpMVAST(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxAdded()));
				icmsGrupo.setpRedBCST(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxBase()));
				if (icmsLines[0].getLBR_ICMSST_TaxBaseAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxBaseAmt@'");
				icmsGrupo.setvBCST(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxBaseAmt()));
				if (icmsLines[0].getLBR_ICMSST_TaxRate() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxRate@'");
				icmsGrupo.setpICMSST(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxRate()));
				if (icmsLines[0].getLBR_ICMSST_TaxAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxAmt@'");
				icmsGrupo.setvICMSST(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxAmt()));
			}
			// ICMS20
			if (TextUtil.match(taxStatusDetailed, MLBRDocLineICMS.CST_ICMS_20)) {
				if (icmsLines[0].getLBR_ICMS_TaxBaseType() == null || icmsLines[0].getLBR_ICMS_TaxBaseType().trim().equals(""))
					throw new AdempiereException(prefixException + "'@LBR_ICMS_TaxBaseType@'");
				icmsGrupo.setModBC(icmsLines[0].getLBR_ICMS_TaxBaseType());
				if (icmsLines[0].getLBR_TaxBase() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxBase@'");
				icmsGrupo.setpRedBC(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxBase()));
				if (icmsLines[0].getLBR_TaxBaseAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxBaseAmt@'");
				icmsGrupo.setvBC(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxBaseAmt()));
				if (icmsLines[0].getLBR_TaxRate() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxRate@'");
				icmsGrupo.setpICMS(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxRate()));
				if (icmsLines[0].getLBR_TaxAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxAmt@'");
				icmsGrupo.setvICMS(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxAmt()));
				
				if (icmsLines[0].getLBR_TaxReliefAmt() != null || 
						(icmsLines[0].getLBR_ICMS_TaxReliefType() != null &&
						!icmsLines[0].getLBR_ICMS_TaxReliefType().trim().equals(""))) {

					if (icmsLines[0].getLBR_TaxReliefAmt() == null)
						throw new AdempiereException(prefixException + "'@LBR_TaxReliefAmt@'");
					icmsGrupo.setvICMSDeson(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxReliefAmt()));
					if (icmsLines[0].getLBR_ICMS_TaxReliefType() == null || icmsLines[0].getLBR_ICMS_TaxReliefType().trim().equals("")) 
						throw new AdempiereException(prefixException + "'@LBR_ICMS_TaxReliefType@'");
					icmsGrupo.setMotDesICMS(icmsLines[0].getLBR_ICMS_TaxReliefType());
				}					
			}
			// ICMS30
			else if (TextUtil.match(taxStatusDetailed, MLBRDocLineICMS.CST_ICMS_30)) {
				if (icmsLines[0].getLBR_ICMSST_TaxBaseType() == null || icmsLines[0].getLBR_ICMSST_TaxBaseType().trim().equals(""))
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxBaseType@'");
				icmsGrupo.setModBCST(icmsLines[0].getLBR_ICMSST_TaxBaseType());
				icmsGrupo.setpMVAST(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxAdded()));
				icmsGrupo.setpRedBCST(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxBase()));
				if (icmsLines[0].getLBR_ICMSST_TaxBaseAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxBaseAmt@'");
				icmsGrupo.setvBCST(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxBaseAmt()));
				if (icmsLines[0].getLBR_ICMSST_TaxRate() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxRate@'");
				icmsGrupo.setpICMSST(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxRate()));
				if (icmsLines[0].getLBR_ICMSST_TaxAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxAmt@'");
				icmsGrupo.setvICMSST(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxAmt()));
				
				if (icmsLines[0].getLBR_TaxReliefAmt() != null || 
						(icmsLines[0].getLBR_ICMS_TaxReliefType() != null &&
						!icmsLines[0].getLBR_ICMS_TaxReliefType().trim().equals(""))) {

					if (icmsLines[0].getLBR_TaxReliefAmt() == null)
						throw new AdempiereException(prefixException + "'@LBR_TaxReliefAmt@'");
					icmsGrupo.setvICMSDeson(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxReliefAmt()));
					if (icmsLines[0].getLBR_ICMS_TaxReliefType() == null || icmsLines[0].getLBR_ICMS_TaxReliefType().trim().equals("")) 
						throw new AdempiereException(prefixException + "'@LBR_ICMS_TaxReliefType@'");
					icmsGrupo.setMotDesICMS(icmsLines[0].getLBR_ICMS_TaxReliefType());
				}
			}
			// ICMS40
			else if (TextUtil.match(taxStatusDetailed,
					MLBRDocLineICMS.CST_ICMS_40,
					MLBRDocLineICMS.CST_ICMS_41,
					MLBRDocLineICMS.CST_ICMS_50)) {
				
				if (icmsLines[0].getLBR_TaxReliefAmt() != null || 
						(icmsLines[0].getLBR_ICMS_TaxReliefType() != null &&
						!icmsLines[0].getLBR_ICMS_TaxReliefType().trim().equals(""))) {

					if (icmsLines[0].getLBR_TaxReliefAmt() == null)
						throw new AdempiereException(prefixException + "'@LBR_TaxReliefAmt@'");
					icmsGrupo.setvICMSDeson(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxReliefAmt()));
					if (icmsLines[0].getLBR_ICMS_TaxReliefType() == null || icmsLines[0].getLBR_ICMS_TaxReliefType().trim().equals("")) 
						throw new AdempiereException(prefixException + "'@LBR_ICMS_TaxReliefType@'");
					icmsGrupo.setMotDesICMS(icmsLines[0].getLBR_ICMS_TaxReliefType());
				}
			}
			// ICMS51
			else if (TextUtil.match(taxStatusDetailed, MLBRDocLineICMS.CST_ICMS_51)) {
				icmsGrupo.setModBC(icmsLines[0].getLBR_ICMS_TaxBaseType());
				icmsGrupo.setpRedBC(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxBase()));
				icmsGrupo.setvBC(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxBaseAmt()));
				icmsGrupo.setpICMS(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxRate()));
				if ( icmsLines[0].getLBR_TaxRate().compareTo(Env.ZERO) != 0 ) {
					icmsGrupo.setvICMSOp(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMS_TaxAmtOp()));
					icmsGrupo.setpDif(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxDeferralRate()));
					icmsGrupo.setvICMSDif(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxDeferralAmt()));
				}
				icmsGrupo.setvICMS(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxAmt()));
			}
			// ICMS60
			else if (TextUtil.match(taxStatusDetailed, MLBRDocLineICMS.CST_ICMS_60)) {
				if (icmsLines[0].getLBR_ICMSST_TaxBAmtWhd() != null || 
						icmsLines[0].getLBR_ICMSST_TaxAmtWhd() != null) {

					if (icmsLines[0].getLBR_ICMSST_TaxBAmtWhd() == null)
						throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxBAmtWhd@'");
					icmsGrupo.setvBCSTRet(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxBAmtWhd()));
					if (icmsLines[0].getLBR_ICMSST_TaxAmtWhd() == null) 
						throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxAmtWhd@'");
					icmsGrupo.setvICMSSTRet(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxAmtWhd()));
				}
			}
			// ICMS70
			else if (TextUtil.match(taxStatusDetailed, MLBRDocLineICMS.CST_ICMS_70)) {
				if (icmsLines[0].getLBR_ICMS_TaxBaseType() == null || icmsLines[0].getLBR_ICMS_TaxBaseType().trim().equals(""))
					throw new AdempiereException(prefixException + "'@LBR_ICMS_TaxBaseType@'");
				icmsGrupo.setModBC(icmsLines[0].getLBR_ICMS_TaxBaseType());
				if (icmsLines[0].getLBR_TaxBase() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxBase@'");
				icmsGrupo.setpRedBC(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxBase()));
				if (icmsLines[0].getLBR_TaxBaseAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxBaseAmt@'");
				icmsGrupo.setvBC(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxBaseAmt()));
				if (icmsLines[0].getLBR_TaxRate() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxRate@'");
				icmsGrupo.setpICMS(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxRate()));
				if (icmsLines[0].getLBR_TaxAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxAmt@'");
				icmsGrupo.setvICMS(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxAmt()));
				if (icmsLines[0].getLBR_ICMSST_TaxBaseType() == null || icmsLines[0].getLBR_ICMSST_TaxBaseType().trim().equals(""))
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxBaseType@'");
				icmsGrupo.setModBCST(icmsLines[0].getLBR_ICMSST_TaxBaseType());
				icmsGrupo.setpMVAST(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxAdded()));
				icmsGrupo.setpRedBCST(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxBase()));
				if (icmsLines[0].getLBR_ICMSST_TaxBaseAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxBaseAmt@'");
				icmsGrupo.setvBCST(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxBaseAmt()));
				if (icmsLines[0].getLBR_ICMSST_TaxRate() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxRate@'");
				icmsGrupo.setpICMSST(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxRate()));
				if (icmsLines[0].getLBR_ICMSST_TaxAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxAmt@'");
				icmsGrupo.setvICMSST(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxAmt()));
				
				if (icmsLines[0].getLBR_TaxReliefAmt() != null || 
						(icmsLines[0].getLBR_ICMS_TaxReliefType() != null &&
						!icmsLines[0].getLBR_ICMS_TaxReliefType().trim().equals(""))) {

					if (icmsLines[0].getLBR_TaxReliefAmt() == null)
						throw new AdempiereException(prefixException + "'@LBR_TaxReliefAmt@'");
					icmsGrupo.setvICMSDeson(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxReliefAmt()));
					if (icmsLines[0].getLBR_ICMS_TaxReliefType() == null || icmsLines[0].getLBR_ICMS_TaxReliefType().trim().equals("")) 
						throw new AdempiereException(prefixException + "'@LBR_ICMS_TaxReliefType@'");
					icmsGrupo.setMotDesICMS(icmsLines[0].getLBR_ICMS_TaxReliefType());
				}
			}
			// ICMS90
			else if (TextUtil.match(taxStatusDetailed, MLBRDocLineICMS.CST_ICMS_90)) {
				if ((icmsLines[0].getLBR_ICMS_TaxBaseType() != null && !icmsLines[0].getLBR_ICMS_TaxBaseType().trim().equals("")) ||
						icmsLines[0].getLBR_TaxBaseAmt() != null ||
						icmsLines[0].getLBR_TaxRate() != null ||
						icmsLines[0].getLBR_TaxAmt() != null) {
					
					if (icmsLines[0].getLBR_ICMS_TaxBaseType() == null || icmsLines[0].getLBR_ICMS_TaxBaseType().trim().equals(""))
						throw new AdempiereException(prefixException + "'@LBR_ICMS_TaxBaseType@'");
					icmsGrupo.setModBC(icmsLines[0].getLBR_ICMS_TaxBaseType());
					if (icmsLines[0].getLBR_TaxBaseAmt() == null)
						throw new AdempiereException(prefixException + "'@LBR_TaxBaseAmt@'");
					icmsGrupo.setvBC(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxBaseAmt()));
					icmsGrupo.setpRedBC(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxBase()));
					if (icmsLines[0].getLBR_TaxRate() == null)
						throw new AdempiereException(prefixException + "'@LBR_TaxRate@'");
					icmsGrupo.setpICMS(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxRate()));
					if (icmsLines[0].getLBR_TaxAmt() == null)
						throw new AdempiereException(prefixException + "'@LBR_TaxAmt@'");
					icmsGrupo.setvICMS(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxAmt()));
				}
				
				if ((icmsLines[0].getLBR_ICMSST_TaxBaseType() != null && !icmsLines[0].getLBR_ICMSST_TaxBaseType().trim().equals("")) ||
						icmsLines[0].getLBR_ICMSST_TaxBaseAmt() != null ||
						icmsLines[0].getLBR_ICMSST_TaxRate() != null ||
						icmsLines[0].getLBR_ICMSST_TaxAmt() != null) {
					
					if (icmsLines[0].getLBR_ICMSST_TaxBaseType() == null || icmsLines[0].getLBR_ICMSST_TaxBaseType().trim().equals(""))
						throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxBaseType@'");
					icmsGrupo.setModBCST(icmsLines[0].getLBR_ICMSST_TaxBaseType());
					icmsGrupo.setpMVAST(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxAdded()));
					icmsGrupo.setpRedBCST(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxBase()));
					if (icmsLines[0].getLBR_ICMSST_TaxBaseAmt() == null)
						throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxBaseAmt@'");
					icmsGrupo.setvBCST(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxBaseAmt()));
					if (icmsLines[0].getLBR_ICMSST_TaxRate() == null)
						throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxRate@'");
					icmsGrupo.setpICMSST(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxRate()));
					if (icmsLines[0].getLBR_ICMSST_TaxAmt() == null)
						throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxAmt@'");
					icmsGrupo.setvICMSST(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxAmt()));
				}
				
				if (icmsLines[0].getLBR_TaxReliefAmt() != null || 
						(icmsLines[0].getLBR_ICMS_TaxReliefType() != null &&
						!icmsLines[0].getLBR_ICMS_TaxReliefType().trim().equals(""))) {

					if (icmsLines[0].getLBR_TaxReliefAmt() == null)
						throw new AdempiereException(prefixException + "'@LBR_TaxReliefAmt@'");
					icmsGrupo.setvICMSDeson(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxReliefAmt()));
					if (icmsLines[0].getLBR_ICMS_TaxReliefType() == null || icmsLines[0].getLBR_ICMS_TaxReliefType().trim().equals("")) 
						throw new AdempiereException(prefixException + "'@LBR_ICMS_TaxReliefType@'");
					icmsGrupo.setMotDesICMS(icmsLines[0].getLBR_ICMS_TaxReliefType());
				}
			}
			// ICMSPart
			else if (TextUtil.match(taxStatusDetailed,
					MLBRDocLineICMS.CST_ICMS_10_PART,
					MLBRDocLineICMS.CST_ICMS_90_PART)) {
				
				if (icmsLines[0].getLBR_ICMS_TaxBaseType() == null || icmsLines[0].getLBR_ICMS_TaxBaseType().trim().equals(""))
					throw new AdempiereException(prefixException + "'@LBR_ICMS_TaxBaseType@'");
				icmsGrupo.setModBC(icmsLines[0].getLBR_ICMS_TaxBaseType());
				if (icmsLines[0].getLBR_TaxBaseAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxBaseAmt@'");
				icmsGrupo.setvBC(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxBaseAmt()));
				icmsGrupo.setpRedBC(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxBase()));
				if (icmsLines[0].getLBR_TaxRate() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxRate@'");
				icmsGrupo.setpICMS(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxRate()));
				if (icmsLines[0].getLBR_TaxAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxAmt@'");
				icmsGrupo.setvICMS(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxAmt()));
				if (icmsLines[0].getLBR_ICMSST_TaxBaseType() == null || icmsLines[0].getLBR_ICMSST_TaxBaseType().trim().equals(""))
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxBaseType@'");
				icmsGrupo.setModBCST(icmsLines[0].getLBR_ICMSST_TaxBaseType());
				icmsGrupo.setpMVAST(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxAdded()));
				icmsGrupo.setpRedBCST(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxBase()));
				if (icmsLines[0].getLBR_ICMSST_TaxBaseAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxBaseAmt@'");
				icmsGrupo.setvBCST(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxBaseAmt()));
				if (icmsLines[0].getLBR_ICMSST_TaxRate() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxRate@'");
				icmsGrupo.setpICMSST(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxRate()));
				if (icmsLines[0].getLBR_ICMSST_TaxAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxAmt@'");
				icmsGrupo.setvICMSST(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxAmt()));
				if (icmsLines[0].getLBR_TaxBaseOwnOperation() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxBaseOwnOperation@'");
				icmsGrupo.setpBCOp(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxBaseOwnOperation()));
				if (icmsLines[0].getLBR_ICMSST_TaxUFDue_ID() < 1)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxUFDue_ID@'");
				MRegion region = new MRegion(getCtx(), icmsLines[0].getLBR_ICMSST_TaxUFDue_ID(), get_TrxName());
				icmsGrupo.setUFST(region.getName());
			}
			// ICMSST
			else if (TextUtil.match(taxStatusDetailed, MLBRDocLineICMS.CST_ICMS_41_RET)) {
				if (icmsLines[0].getLBR_ICMSST_TaxBAmtUFSen() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxBAmtUFSen@'");
				icmsGrupo.setvBCSTRet(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxBAmtUFSen()));
				if (icmsLines[0].getLBR_ICMSST_TaxAmtUFSen() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxAmtUFSen@'");
				icmsGrupo.setvICMSSTRet(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxAmtUFSen()));
				if (icmsLines[0].getLBR_ICMSST_TaxBAmtUFDes() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxBAmtUFDes@'");
				icmsGrupo.setvBCSTDest(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxBAmtUFDes()));
				if (icmsLines[0].getLBR_ICMSST_TaxAmtUFDes() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxAmtUFDes@'");
				icmsGrupo.setvICMSSTDest(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxAmtUFDes()));
			}
			// ICMSSN101
			else if (TextUtil.match(taxStatusDetailed, MLBRDocLineICMS.CSOSN_101)) {
				if (icmsLines[0].getLBR_TaxRateCredit() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxRateCredit@'");
				icmsGrupo.setpCredSN(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxRateCredit()));
				if (icmsLines[0].getLBR_TaxAmtCredit() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxAmtCredit@'");
				icmsGrupo.setvCredICMSSN(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxAmtCredit()));
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
				if (icmsLines[0].getLBR_ICMSST_TaxBaseType() == null || icmsLines[0].getLBR_ICMSST_TaxBaseType().trim().equals(""))
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxBaseType@'");
				icmsGrupo.setModBCST(icmsLines[0].getLBR_ICMSST_TaxBaseType());
				icmsGrupo.setpMVAST(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxAdded()));
				icmsGrupo.setpRedBCST(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxBase()));
				if (icmsLines[0].getLBR_ICMSST_TaxBaseAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxBaseAmt@'");
				icmsGrupo.setvBCST(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxBaseAmt()));
				if (icmsLines[0].getLBR_ICMSST_TaxRate() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxRate@'");
				icmsGrupo.setpICMSST(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxRate()));
				if (icmsLines[0].getLBR_ICMSST_TaxAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxAmt@'");
				icmsGrupo.setvICMSST(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxAmt()));
				if (icmsLines[0].getLBR_TaxRateCredit() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxRateCredit@'");
				icmsGrupo.setpCredSN(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxRateCredit()));
				if (icmsLines[0].getLBR_TaxAmtCredit() == null)
					throw new AdempiereException(prefixException + "'@LBR_TaxAmtCredit@'");
				icmsGrupo.setvCredICMSSN(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxAmtCredit()));
			}
			// ICMSSN202
			else if (TextUtil.match(taxStatusDetailed,
					MLBRDocLineICMS.CSOSN_202,
					MLBRDocLineICMS.CSOSN_203)) {
				
				if (icmsLines[0].getLBR_ICMSST_TaxBaseType() == null || icmsLines[0].getLBR_ICMSST_TaxBaseType().trim().equals(""))
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxBaseType@'");
				icmsGrupo.setModBCST(icmsLines[0].getLBR_ICMSST_TaxBaseType());
				icmsGrupo.setpMVAST(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxAdded()));
				icmsGrupo.setpRedBCST(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxBase()));
				if (icmsLines[0].getLBR_ICMSST_TaxBaseAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxBaseAmt@'");
				icmsGrupo.setvBCST(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxBaseAmt()));
				if (icmsLines[0].getLBR_ICMSST_TaxRate() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxRate@'");
				icmsGrupo.setpICMSST(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxRate()));
				if (icmsLines[0].getLBR_ICMSST_TaxAmt() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxAmt@'");
				icmsGrupo.setvICMSST(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxAmt()));
			}
			// ICMSSN500
			else if (TextUtil.match(taxStatusDetailed, MLBRDocLineICMS.CSOSN_500)) {
				if (icmsLines[0].getLBR_ICMSST_TaxBAmtWhd() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxBAmtWhd@'");
				icmsGrupo.setvBCSTRet(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxBAmtWhd()));
				if (icmsLines[0].getLBR_ICMSST_TaxAmtWhd() == null)
					throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxAmtWhd@'");
				icmsGrupo.setvICMSSTRet(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxAmtWhd()));
			}
			// ICMSSN900
			else if (TextUtil.match(taxStatusDetailed, MLBRDocLineICMS.CSOSN_900)) {
				if ((icmsLines[0].getLBR_ICMS_TaxBaseType() != null && !icmsLines[0].getLBR_ICMS_TaxBaseType().trim().equals("")) ||
						icmsLines[0].getLBR_TaxBaseAmt() != null ||
						icmsLines[0].getLBR_TaxRate() != null ||
						icmsLines[0].getLBR_TaxAmt() != null) {
					
					if (icmsLines[0].getLBR_ICMS_TaxBaseType() == null || icmsLines[0].getLBR_ICMS_TaxBaseType().trim().equals(""))
						throw new AdempiereException(prefixException + "'@LBR_ICMS_TaxBaseType@'");
					icmsGrupo.setModBC(icmsLines[0].getLBR_ICMS_TaxBaseType());
					if (icmsLines[0].getLBR_TaxBaseAmt() == null)
						throw new AdempiereException(prefixException + "'@LBR_TaxBaseAmt@'");
					icmsGrupo.setvBC(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxBaseAmt()));
					icmsGrupo.setpRedBC(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxBase()));
					if (icmsLines[0].getLBR_TaxRate() == null)
						throw new AdempiereException(prefixException + "'@LBR_TaxRate@'");
					icmsGrupo.setpICMS(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxRate()));
					if (icmsLines[0].getLBR_TaxAmt() == null)
						throw new AdempiereException(prefixException + "'@LBR_TaxAmt@'");
					icmsGrupo.setvICMS(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxAmt()));
				}
				
				if ((icmsLines[0].getLBR_ICMSST_TaxBaseType() != null && !icmsLines[0].getLBR_ICMSST_TaxBaseType().trim().equals("")) ||
						icmsLines[0].getLBR_ICMSST_TaxBaseAmt() != null ||
						icmsLines[0].getLBR_ICMSST_TaxRate() != null ||
						icmsLines[0].getLBR_ICMSST_TaxAmt() != null) {
					
					if (icmsLines[0].getLBR_ICMSST_TaxBaseType() == null || icmsLines[0].getLBR_ICMSST_TaxBaseType().trim().equals(""))
						throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxBaseType@'");
					icmsGrupo.setModBCST(icmsLines[0].getLBR_ICMSST_TaxBaseType());
					icmsGrupo.setpMVAST(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxAdded()));
					icmsGrupo.setpRedBCST(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxBase()));
					if (icmsLines[0].getLBR_ICMSST_TaxBaseAmt() == null)
						throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxBaseAmt@'");
					icmsGrupo.setvBCST(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxBaseAmt()));
					if (icmsLines[0].getLBR_ICMSST_TaxRate() == null)
						throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxRate@'");
					icmsGrupo.setpICMSST(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxRate()));
					if (icmsLines[0].getLBR_ICMSST_TaxAmt() == null)
						throw new AdempiereException(prefixException + "'@LBR_ICMSST_TaxAmt@'");
					icmsGrupo.setvICMSST(TextUtil.bigdecimalToString(icmsLines[0].getLBR_ICMSST_TaxAmt()));
				}
				
				if (icmsLines[0].getLBR_TaxRateCredit() != null || icmsLines[0].getLBR_TaxAmtCredit() != null) {
					if (icmsLines[0].getLBR_TaxRateCredit() == null)
						throw new AdempiereException(prefixException + "'@LBR_TaxRateCredit@'");
					icmsGrupo.setpCredSN(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxRateCredit()));
					if (icmsLines[0].getLBR_TaxAmtCredit() == null)
						throw new AdempiereException(prefixException + "'@LBR_TaxAmtCredit@'");
					icmsGrupo.setvCredICMSSN(TextUtil.bigdecimalToString(icmsLines[0].getLBR_TaxAmtCredit()));
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
		MLBRDocLineIPI[] ipiLines = MLBRDocLineIPI.getOfDetails(MLBRDocLineDetailsNfe.getOfPO(this));
		
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
		MLBRDocLineImportTax[] iiLines = MLBRDocLineImportTax.getOfDetails(MLBRDocLineDetailsNfe.getOfPO(this));
		
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
		MLBRDocLinePIS[] pisLines = MLBRDocLinePIS.getOfDetails(MLBRDocLineDetailsNfe.getOfPO(this));
		
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
		MLBRDocLinePIS[] pisLines = MLBRDocLinePIS.getOfDetails(MLBRDocLineDetailsNfe.getOfPO(this));
		
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
		MLBRDocLineCOFINS[] cofinsLines = MLBRDocLineCOFINS.getOfDetails(MLBRDocLineDetailsNfe.getOfPO(this));
		
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
		MLBRDocLineCOFINS[] cofinsLines = MLBRDocLineCOFINS.getOfDetails(MLBRDocLineDetailsNfe.getOfPO(this));
		
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
			
			if (cofinsLines[0].getLBR_TaxAmt() == null)
				throw new AdempiereException(prefixException + "'@LBR_TaxAmt@'");
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
		MLBRDocLineISSQN[] issqnLines = MLBRDocLineISSQN.getOfDetails(MLBRDocLineDetailsNfe.getOfPO(this));
		
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
				MCountry country = new MCountry(this.getCtx(), issqnLines[0].getC_Country_ID(), this.get_TrxName());
				issqn.setcPais(country.get_ValueAsString("LBR_CountryCode"));
				
				if (issqnLines[0].getC_Country_ID() != MLBRNotaFiscal.BRAZIL)
					issqn.setcMun("9999999");
				else if (issqnLines[0].getC_Country_ID() == MLBRNotaFiscal.BRAZIL && issqnLines[0].getLBR_IncidenceCity_ID() > 0) {
					MCity city = new MCity(getCtx(), issqnLines[0].getLBR_IncidenceCity_ID(), get_TrxName());
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
		
		MLBRNotaFiscalDI[] additionItems = getNotaFiscalDI();
		
		I_LBR_DI currentDI = null;
		DeclaracaoDI diBean = null;
		List<DeclaracaoDI> diList = new ArrayList<DeclaracaoDI>();

		for ( MLBRNotaFiscalDI item: additionItems ) {
			if ( !item.getLBR_DI_Addition().getLBR_DI().equals(currentDI)) {
				currentDI = item.getLBR_DI_Addition().getLBR_DI();
				diBean = item.getDIBean( );
				diList.add(diBean);
			}
			diBean.addAdi(  item.getAdditionBean( ) );
		}

		return diList;
	}

	/**
	 * 
	 * Return DI Additions to a Line
	 * 
	 * @param parent
	 * @return MLBRNotaFiscalDI Array
	 */
	public MLBRNotaFiscalDI[] getNotaFiscalDI () {	
		
		List<MLBRNotaFiscalDI> list = new Query ( getCtx(), MLBRNotaFiscalDI.Table_Name,
				"LBR_NotaFiscalLine_ID=?", get_TrxName())
		.setParameters(new Object[]{get_ID()})
		.addJoinClause("LEFT JOIN LBR_DI_Addition on LBR_DI_Addition.LBR_DI_Addition_ID=LBR_NotaFiscalDI.LBR_DI_Addition_ID")
		.setOrderBy("LBR_DI_Addition.LBR_DI_ID")
		.list();
		
		return list.toArray(new MLBRNotaFiscalDI[list.size()]);	
	}
	
}
