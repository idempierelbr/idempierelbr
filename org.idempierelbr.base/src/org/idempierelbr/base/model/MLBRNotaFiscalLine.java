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
package org.idempierelbr.base.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MCity;
import org.compiere.model.MCountry;
import org.compiere.model.MProduct;
import org.compiere.model.MRegion;
import org.compiere.model.MTax;
import org.compiere.model.MTaxProvider;
import org.compiere.model.Query;
import org.compiere.util.Env;
import org.idempierelbr.base.util.TextUtil;

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
