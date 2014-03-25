package org.idempierelbr.tax.model;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.ResultSet;
import java.util.Map;
import java.util.Properties;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.exceptions.DBException;
import org.adempiere.model.POWrapper;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MProduct;
import org.compiere.model.MRMA;
import org.compiere.model.MRMALine;
import org.compiere.model.PO;
import org.compiere.model.Query;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.idempierelbr.tax.wrapper.I_W_M_Product;

public class MLBRDocLineDetails extends X_LBR_DocLine_Details
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 5436412104911684345L;
	private static final CLogger log = CLogger.getCLogger(MLBRDocLineDetails.class);

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
	
	/**
	 * 	Create new Doc Line Details record from a given PO.
	 * 	@param po line
	 *	@return true if it could be created successfully
	 */
	public static boolean createFromPO (PO po)
	{	
		MLBRDocLineDetails details;
		details = getOfPO(po);
		
		if (details != null)
			return false;		
		
		String columnName = po.get_TableName() + "_ID";
		
		details = new MLBRDocLineDetails(po.getCtx(), 0, po.get_TrxName());		
		details.setAD_Org_ID(po.getAD_Org_ID());
		details.set_ValueOfColumn(columnName, po.get_ID());
		
		try {
			details.saveEx();
		} catch (AdempiereException e) {
			log.severe("Couldn't create LBR_DocLine_Details from PO " + po);
			e.printStackTrace();
			return false;
		}
		
		return true;
	}
	
	/**
	 * 	Get Brazilian Doc Line Details of a given PO.
	 * 	@param po persistent object
	 *	@return details
	 */
	public static MLBRDocLineDetails getOfPO (PO po)
	{	
		String where = po.get_TableName() + "_ID=?";
		MLBRDocLineDetails details = null;
		
		try {
			details = new Query (po.getCtx(), MLBRDocLineDetails.Table_Name, where, po.get_TrxName())
				.setParameters(new Object[]{po.get_ID()})
				.first();
		} catch (DBException e) {
			log.severe("Couldn't get LBR_DocLine_Details of PO " + po);
			e.printStackTrace();
		}
		
		return details != null ? details : null;
	}
	
	/**
	 * 	Populate the Doc Line Details with values from PO.
	 * 	@param po persistent object
	 */
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
				if (isDiscountPrinted) {
					setDiscountAmt(
							calculateDiscountAmt(
									(BigDecimal)po.get_Value("QtyOrdered"),
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
				MOrderLine line = new MOrderLine(po.getCtx(), po.get_ID(), po.get_TrxName());
				setPOReference(line.getParent().getPOReference());
			}
			
			// Data from C_InvoiceLine
			if (po instanceof MInvoiceLine) {
				MInvoiceLine line = new MInvoiceLine(po.getCtx(), po.get_ID(), po.get_TrxName());
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
	
	/**
	 * 	Get Parent
	 *	@return parent
	 */
	public PO getParent() {
		PO po = null;
		
		if (getC_OrderLine_ID() > 0)
			po = new MOrderLine(getCtx(), getC_OrderLine_ID(), get_TrxName());
		else if (getC_InvoiceLine_ID() > 0)
			po = new MInvoiceLine(getCtx(), getC_InvoiceLine_ID(), get_TrxName());
		else if (getM_RMALine_ID() > 0)
			po = new MRMALine(getCtx(), getM_RMALine_ID(), get_TrxName());
		
		return po;
	}
	
	/**
	 * 	Create tax transaction (LBR_Tax_ID). If one exists, it is overwritten by a new one.
	 */
	public void createTaxTransaction() {
		PO linePO = getParent();
		
		if (linePO != null && (linePO instanceof MOrderLine || linePO instanceof MInvoiceLine)) {			
			if (linePO.get_ValueAsInt("M_Product_ID") <= 0) {
				set_Value("LBR_Tax_ID", null);
				return;
			}

			Object[] taxation = null;
			
			if (linePO instanceof MOrderLine) {
				taxation = MLBRTax.getTaxes(getCtx(), (MOrderLine)linePO, get_TrxName());
			} else if (linePO instanceof MInvoiceLine) {
				taxation = MLBRTax.getTaxes(getCtx(), (MInvoiceLine)linePO, get_TrxName());
			}
			
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
					tl.saveEx();
				}

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
		}

		return;
	}
	
	/**
	 * 	Calculate the discount amount
	 * 	@param qtyOrdered quantity of a product (base UOM)
	 * 	@param priceList
	 * 	@param lineNetAmt
	 * 	@return Calculated amount
	 */
	private BigDecimal calculateDiscountAmt(BigDecimal qtyOrdered, BigDecimal priceList, BigDecimal lineNetAmt) {
		BigDecimal priceListTotal = priceList.multiply(qtyOrdered).setScale(2, RoundingMode.HALF_UP);
		BigDecimal discount = priceListTotal.subtract(lineNetAmt);
		
		if (discount.signum() == 1)
			return discount.setScale(2, RoundingMode.HALF_UP);
		else
			return Env.ZERO;
	}
	
	/**
	 * 	Determine if PO prints discount
	 * 	@param po persistent object (doc line)
	 * 	@return true if is printed
	 */
	private boolean isDiscountPrinted(PO po) {
		if (po instanceof MOrderLine) {
			MOrder order = ((MOrderLine)po).getParent();
			return order.isDiscountPrinted();
		} else if (po instanceof MInvoiceLine) {
			MInvoice invoice = ((MInvoiceLine)po).getParent();
			return invoice.isDiscountPrinted();
		}
		
		return false;
	}
}