package org.idempierelbr.base.model;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import org.adempiere.model.POWrapper;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MProduct;
import org.compiere.model.MRMA;
import org.compiere.model.MRMALine;
import org.compiere.model.MSysConfig;
import org.compiere.model.PO;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.idempierelbr.base.wrapper.I_W_M_Product;

public class MLBRDocLineDetailsTax extends MLBRDocLineDetails implements IDocLineDetails{
	/**
	 * 
	 */
	private static final long serialVersionUID = 5436412104911684345L;
	private static final CLogger log = CLogger.getCLogger(MLBRDocLineDetailsTax.class);

	/**
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRDocLineDetailsTax (Properties ctx, int LBR_DocLine_Details_ID, String trxName)
	{
		super (ctx, LBR_DocLine_Details_ID, trxName);
	}

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRDocLineDetailsTax (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}
	
	/**
	 * 	Create new Doc Line Details record from a given PO.
	 * 	@param po line
	 *	@return true if it could be created successfully
	 */
	public static MLBRDocLineDetailsTax createFromPO (PO po)
	{	
		MLBRDocLineDetailsTax details;
		details = getOfPO(po);
		
		if (details != null)
			return details;		
		
		String columnName = po.get_TableName() + "_ID";
		
		details = new MLBRDocLineDetailsTax(po.getCtx(), 0, po.get_TrxName());		
		details.setAD_Org_ID(po.getAD_Org_ID());
		details.set_ValueOfColumn(columnName, po.get_ID());
		
		return details;
	}
	
	/**
	 * 	Get Brazilian Doc Line Details of a given PO.
	 * 	@param po persistent object
	 *	@return details
	 */
	public static MLBRDocLineDetailsTax getOfPO (PO po)
	{	
		String sql =  " SELECT LBR_DocLine_Details_ID"
				+ " FROM LBR_DocLine_Details"
				+ " WHERE " + po.get_TableName() + "_ID=?";
			
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try	{
			pstmt = DB.prepareStatement(sql, po.get_TrxName());
			pstmt.setInt(1, po.get_ID());
			rs = pstmt.executeQuery();
			while (rs.next()) {	
				MLBRDocLineDetailsTax details = new MLBRDocLineDetailsTax(po.getCtx(), rs.getInt("LBR_DocLine_Details_ID"), po.get_TrxName());
				return details;
			}
		}
		catch (SQLException e)
		{
			log.severe("Couldn't get LBR_DocLine_Details of PO " + po);
			e.printStackTrace();
		}
		finally
		{
			DB.close(rs, pstmt);
			rs = null; pstmt = null;
		}
		
		return null;
	}
	
	public void populateFromPO(PO po) {
		if (po instanceof MOrderLine ||	po instanceof MInvoiceLine || po instanceof MRMALine) {
			// Determine if discount is printed
			boolean isDiscountPrinted = isDiscountPrinted(po);
						
			// Common data from C_OrderLine, C_InvoiceLine and M_RMALine
			setAD_Org_ID(po.getAD_Org_ID());
			MProduct product = new MProduct(po.getCtx(), po.get_ValueAsInt("M_Product_ID"), po.get_TrxName());
			
			if (product.get_ID() > 0) {
				I_W_M_Product pW = POWrapper.create(product, I_W_M_Product.class);
				setProductValue(product.getValue());
				
				// use category name as product description
				if (MSysConfig.getBooleanValue("LBR_PRODUCT_FISCAL_NAME_SIMPLIFIED", false, po.getAD_Client_ID(), po.getAD_Org_ID()))
					setProductName(product.getM_Product_Category().getName());
				else
					setProductName(product.getName());
				
				setLBR_NCM_ID(pW.getLBR_NCM_ID());
				setLBR_UPCTax(product.getUPC());
				
				if (product.getProductType().equals(MProduct.PRODUCTTYPE_Service))
					setLBR_TaxationType(MLBRDocLineDetails.LBR_TAXATIONTYPE_ISSQN);
				else
					setLBR_TaxationType(MLBRDocLineDetails.LBR_TAXATIONTYPE_ICMS);
			}  else {
				setProductValue(null);
				setProductName(null);
				setLBR_NCM_ID(0);
				setLBR_UPCTax(null);
				setLBR_TaxationType(null);
			}
			
			// Common data from C_OrderLine and C_InvoiceLine
			if (po instanceof MOrderLine ||	po instanceof MInvoiceLine) {
				setLBR_QtyTax((BigDecimal)po.get_Value("QtyEntered"));
				setLBR_UOMTax_ID(po.get_ValueAsInt("C_UOM_ID"));
				setLBR_PriceTax((BigDecimal)po.get_Value("PriceEntered"));
				
				// Discount
				BigDecimal qty = Env.ZERO;
				
				if (po instanceof MOrderLine)
					qty = (BigDecimal)po.get_Value("QtyOrdered");
				else if (po instanceof MInvoiceLine)
					qty = (BigDecimal)po.get_Value("QtyInvoiced");
				
				if (isDiscountPrinted) {
					setDiscountAmt(
							calculateDiscountAmt(
									qty,
									(BigDecimal)po.get_Value("PriceList"),
									(BigDecimal)po.get_Value("LineNetAmt")
							)
					);
				} else {
					setDiscountAmt(Env.ZERO);
				}
			}
			
			// Data from C_OrderLine
			if (po instanceof MOrderLine) {
				MOrderLine line = (MOrderLine) po;
				setPOReference(line.getParent().getPOReference());
			}
			
			// Data from C_InvoiceLine
			if (po instanceof MInvoiceLine) {
				MInvoiceLine line = (MInvoiceLine) po;
				setPOReference(line.getParent().getPOReference());
			}
			
			// Data from M_RMALine
			if (po instanceof MRMALine) {
				setLBR_QtyTax((BigDecimal)po.get_Value("Qty"));
				setLBR_UOMTax_ID(product.get_ValueAsInt("C_UOM_ID"));
				setLBR_PriceTax((BigDecimal)po.get_Value("Amt"));
			}
			
			// Calculate gross amount
			setLBR_GrossAmt(((BigDecimal)po.get_Value("LineNetAmt")).add(getDiscountAmt()));
		}  else if (po instanceof MOrder || po instanceof MInvoice || po instanceof MRMA) { // Data from C_Order, C_Invoice and M_RMA
			// Common data from C_Order and C_Invoice
			if (po instanceof MOrder ||	po instanceof MInvoice) {
				setPOReference(po.get_ValueAsString("POReference"));
				set_Value("LBR_POReferenceLine", null);
			}
		}
	}
	
	public boolean isDiscountPrinted(PO po) {
		if (po instanceof MOrderLine) {
			MOrder order = ((MOrderLine)po).getParent();
			return order.isDiscountPrinted();
		} else if (po instanceof MInvoiceLine) {
			MInvoice invoice = ((MInvoiceLine)po).getParent();
			return invoice.isDiscountPrinted();
		}
		
		return false;
	}
	
	/**
	 * 	Calculate brazilian taxes
	 * 	@param original order/invoice
	 * 	@param line to be processed
	 * 	@param updateTaxes
	 * 	@return error message or null
	 */
	public String calculateTaxes (PO po, PO poLine) {
		if (MOrderLine.Table_Name.equals(poLine.get_TableName())) {
			MOrder order = null;
			MOrderLine orderLine = (MOrderLine) poLine;
			
			if (po != null) 
				order = (MOrder) po;
			else 
				order = orderLine.getParent();
			
			if (getLBR_Tax_ID() > 0) {
				Map<String, BigDecimal> params = new HashMap<String, BigDecimal>();
				params.put(MLBRTax.SISCOMEX, getLBR_SiscomexAmt());
				params.put(MLBRTax.INSURANCE, getInsuredAmount());
				params.put(MLBRTax.FREIGHT, getFreightAmt());
				params.put(MLBRTax.OTHERCHARGES, getSurcharges());
				params.put(MLBRTax.QTY, getLBR_QtyTax());
				params.put(MLBRTax.AMT, getLBR_GrossAmt().subtract(getDiscountAmt()));
				
				//if (getIVARateFromTaxTransaction() != null && getIVARateFromTaxTransaction().signum() == 1)
				//	params.put("IVA", getAdjustedIva().divide(Env.ONEHUNDRED, 4, BigDecimal.ROUND_HALF_UP));
			
				MLBRTax tax = new MLBRTax (getCtx(), getLBR_Tax_ID(), get_TrxName());
				tax.calculate (order.isTaxIncluded(), order.getDateOrdered(), params, order.get_ValueAsString("LBR_TransactionType"));
			}
		} else if (MInvoiceLine.Table_Name.equals(poLine.get_TableName())) {
			MInvoice invoice = null;
			MInvoiceLine invoiceLine = (MInvoiceLine) poLine;
			
			if (po != null) 
				invoice = (MInvoice) po;
			else 
				invoice = invoiceLine.getParent();
			
			if (getLBR_Tax_ID() > 0) {
				BigDecimal reversal = (getLBR_QtyTax().signum() < 0) ? Env.ONE.negate() : Env.ONE;
				
				Map<String, BigDecimal> params = new HashMap<String, BigDecimal>();
				params.put(MLBRTax.SISCOMEX, getLBR_SiscomexAmt().multiply(reversal));
				params.put(MLBRTax.INSURANCE, getInsuredAmount() == null ? Env.ZERO : getInsuredAmount().multiply(reversal));
				params.put(MLBRTax.FREIGHT, getFreightAmt() == null ? Env.ZERO : getFreightAmt().multiply(reversal));
				params.put(MLBRTax.OTHERCHARGES, getSurcharges() == null ? Env.ZERO : getSurcharges().multiply(reversal));
				params.put(MLBRTax.QTY, getLBR_QtyTax());
				params.put(MLBRTax.AMT, getLBR_GrossAmt().subtract(getDiscountAmt()));
				
				//if (getIVARateFromTaxTransaction() != null && getIVARateFromTaxTransaction().signum() == 1)
				//	params.put("IVA", getAdjustedIva().divide(Env.ONEHUNDRED, 4, BigDecimal.ROUND_HALF_UP));
				
				MLBRTax tax = new MLBRTax (getCtx(), getLBR_Tax_ID(), get_TrxName());
				tax.calculate (invoice.isTaxIncluded(), invoice.getDateInvoiced(), params, invoice.get_ValueAsString("LBR_TransactionType"));
			}
		} else if (MRMALine.Table_Name.equals(poLine.get_TableName())) {
			MRMA rma = null;
			MRMALine rmaline = (MRMALine) poLine;
			
			if (po != null) 
				rma = (MRMA) po;
			else 
				rma = rmaline.getParent();
			
			if (getLBR_Tax_ID() > 0) {
				
				BigDecimal reversal = (getLBR_QtyTax().signum() < 0) ? Env.ONE.negate() : Env.ONE;
				
				Map<String, BigDecimal> params = new HashMap<String, BigDecimal>();
				params.put(MLBRTax.SISCOMEX, getLBR_SiscomexAmt().multiply(reversal));
				params.put(MLBRTax.INSURANCE, getInsuredAmount() == null ? Env.ZERO : getInsuredAmount().multiply(reversal));
				params.put(MLBRTax.FREIGHT, getFreightAmt() == null ? Env.ZERO : getFreightAmt().multiply(reversal));
				params.put(MLBRTax.OTHERCHARGES, getSurcharges() == null ? Env.ZERO : getSurcharges().multiply(reversal));
				params.put(MLBRTax.QTY, getLBR_QtyTax());
				params.put(MLBRTax.AMT, getLBR_GrossAmt().subtract(getDiscountAmt()));
				
				//if (getIVARateFromTaxTransaction() != null && getIVARateFromTaxTransaction().signum() == 1)
				//	params.put("IVA", getAdjustedIva().divide(Env.ONEHUNDRED, 4, BigDecimal.ROUND_HALF_UP));
				
				// default re-sale
				String transactionType = "RES";
				
				// get from order
				MOrder m_order = null; 
				if (rma.getInOut() != null && rma.getInOut().getC_Order_ID() > 0) {
					m_order = new MOrder(getCtx(), rma.getInOut().getC_Order_ID(), get_TrxName());
					if (!m_order.get_ValueAsString("LBR_TransactionType").isEmpty())
						transactionType = m_order.get_ValueAsString("LBR_TransactionType");
				}
				
				MLBRTax tax = new MLBRTax (getCtx(), getLBR_Tax_ID(), get_TrxName());
				tax.calculate (rma.isTaxIncluded(), rma.getInOut().getMovementDate(), params, transactionType);
			}
		}
		
		return null;
	}

	/**
	 * 	Get adjusted IVA-ST based on transaction UF's 
	 * 
	 * 	@return adjusted or original iva-st
	 */
	/*protected BigDecimal getAdjustedIva(BigDecimal originalIVA){
		boolean isSOTrx = true;
		Timestamp docDate = null;
		MProduct product = null;
		I_C_BPartner_Location bpLocation = null;
		int AD_Org_ID = 0;
		
		if (getC_OrderLine_ID() > 0) {
			MOrderLine line = new MOrderLine(getCtx(), getC_OrderLine_ID(), get_TrxName());
			MOrder order = line.getParent();
			docDate = order.getDateOrdered();
			isSOTrx = order.isSOTrx();
			bpLocation = order.getBill_Location();
			product = line.getProduct();
			AD_Org_ID = line.getAD_Org_ID();
		} else if (getC_InvoiceLine_ID() > 0) {
			MInvoiceLine line = new MInvoiceLine(getCtx(), getC_InvoiceLine_ID(), get_TrxName());
			MInvoice invoice = line.getParent();
			docDate = invoice.getDateInvoiced();
			isSOTrx = invoice.isSOTrx();
			bpLocation = invoice.getC_BPartner_Location();
			product = line.getProduct();
			AD_Org_ID = line.getAD_Org_ID();
		}
		
		return MLBRDocLineICMS.getInterstateAdjustedIva(originalIVA, AD_Org_ID, isSOTrx, docDate, product, bpLocation);
	}*/
	
	protected boolean afterSave(boolean newRecord, boolean success) {
		success = super.afterSave(newRecord, success);
		
		if (!success)
			return success;
		
		if (getC_OrderLine_ID() > 0 || getC_InvoiceLine_ID() > 0 || getM_RMALine_ID() > 0) {		
			if (m_DetailsFrom != null) {
				copyChildren(m_DetailsFrom);			
				m_DetailsFrom = null;
				return true;
			}
			
			// Calculate (or recalculate) taxes
			if (getLBR_Tax_ID() > 0 &&
					((!newRecord && (is_ValueChanged("LBR_Tax_ID") || is_ValueChanged("LBR_GrossAmt") || is_ValueChanged("DiscountAmt"))) ||
					(newRecord))
				) {
	
				deleteChildren();
				
				// Array para somar os impostos de todas as linhas
				Map<Integer, Object[]> taxes = new HashMap<Integer, Object[]>();
				MLBRTax tax = new MLBRTax (getCtx(), getLBR_Tax_ID(), get_TrxName());
				
				if (getC_OrderLine_ID() > 0) {
					MOrderLine orderLine = new MOrderLine(getCtx(), getC_OrderLine_ID(), get_TrxName());
					MOrder order = orderLine.getParent();
					calculateTaxes(order, orderLine);
					processTax(taxes, tax, orderLine.getC_Tax_ID());
					createChildren(taxes, tax, orderLine.getC_Tax_ID(),
							(MProduct) orderLine.getM_Product(),
							order.getC_BPartner_ID(),
							order.getC_BPartner_Location_ID(),
							order.get_ValueAsString("LBR_TransactionType"),
							order.getDateOrdered());
					orderLine.updateHeaderTax();
					
				} else if (getC_InvoiceLine_ID() > 0) {
					MInvoiceLine invoiceLine = new MInvoiceLine(getCtx(), getC_InvoiceLine_ID(), get_TrxName());
					MInvoice invoice = invoiceLine.getParent();
					calculateTaxes(invoice, invoiceLine);
					processTax(taxes, tax, invoiceLine.getC_Tax_ID());
					createChildren(taxes, tax, invoiceLine.getC_Tax_ID(),
							(MProduct) invoiceLine.getM_Product(),
							invoice.getC_BPartner_ID(),
							invoice.getC_BPartner_Location_ID(),
							invoice.get_ValueAsString("LBR_TransactionType"),
							invoice.getDateInvoiced());
					invoiceLine.updateHeaderTax();
					
				} else if (getM_RMALine_ID() > 0) {
					MRMALine rmaLine = new MRMALine(getCtx(), getM_RMALine_ID(), get_TrxName());
					MRMA rma = rmaLine.getParent();
					
					// get trxTypeBR from original order
					MOrder originalOrder = rma.getOriginalOrder();

					// 
					calculateTaxes(rma, rmaLine);
					processTax(taxes, tax, rmaLine.getC_Tax_ID());
					createChildren(taxes, tax, rmaLine.getC_Tax_ID(),
							(MProduct) rmaLine.getM_Product(),
							rma.getC_BPartner_ID(),
							originalOrder.getC_BPartner_Location_ID(),
							originalOrder
									.get_ValueAsString("LBR_TransactionType"),
							rma.getInOut().getMovementDate());
					rmaLine.updateHeaderAmt();
				}
			}
		}

		return true;
	}
}
