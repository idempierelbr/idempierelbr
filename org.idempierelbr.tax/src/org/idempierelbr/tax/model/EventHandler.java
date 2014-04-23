package org.idempierelbr.tax.model;

import org.adempiere.base.event.AbstractEventHandler;
import org.adempiere.base.event.IEventTopics;
import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MRMA;
import org.compiere.model.MRMALine;
import org.compiere.model.MTax;
import org.compiere.model.MTaxProvider;
import org.compiere.model.PO;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.idempierelbr.tax.provider.TaxProviderFactory;
import org.osgi.service.event.Event;

public class EventHandler extends AbstractEventHandler {
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(EventHandler.class);

	@Override
	protected void initialize() {
		registerTableEvent(IEventTopics.PO_AFTER_CHANGE, MOrder.Table_Name);
		
		registerTableEvent(IEventTopics.PO_AFTER_NEW, MOrderLine.Table_Name);
		registerTableEvent(IEventTopics.PO_AFTER_CHANGE, MOrderLine.Table_Name);
		registerTableEvent(IEventTopics.PO_BEFORE_DELETE, MOrderLine.Table_Name);
		
		registerTableEvent(IEventTopics.PO_BEFORE_NEW, MInvoice.Table_Name);
		registerTableEvent(IEventTopics.PO_AFTER_CHANGE, MInvoice.Table_Name);
		
		registerTableEvent(IEventTopics.PO_AFTER_NEW, MInvoiceLine.Table_Name);
		registerTableEvent(IEventTopics.PO_AFTER_CHANGE, MInvoiceLine.Table_Name);
		registerTableEvent(IEventTopics.PO_BEFORE_DELETE, MInvoiceLine.Table_Name);
		
		registerTableEvent(IEventTopics.PO_AFTER_CHANGE, MRMA.Table_Name);
		
		registerTableEvent(IEventTopics.PO_AFTER_NEW, MRMALine.Table_Name);
		registerTableEvent(IEventTopics.PO_AFTER_CHANGE, MRMALine.Table_Name);
		registerTableEvent(IEventTopics.PO_BEFORE_DELETE, MRMALine.Table_Name);
	}

	@Override
	protected void doHandleEvent(Event event) {
		PO po = getPO(event);
		log.info(po + " Type: " + event.getTopic());
		
		// Copy LBR fields from Order to Invoice
		if (po instanceof MInvoice && event.getTopic().equals(IEventTopics.PO_BEFORE_NEW)) {
			MInvoice invoice = (MInvoice) po;
			
			if (invoice.getC_Order_ID() > 0) {
				MOrder order = new MOrder(po.getCtx(), invoice.getC_Order_ID(), po.get_TrxName());
				
				invoice.set_ValueOfColumn("LBR_TransactionType", order.get_ValueAsString("LBR_TransactionType"));
			}
		}
		
		// Create/update/delete Doc Line Details
		if (po instanceof MOrderLine ||	po instanceof MInvoiceLine || po instanceof MRMALine ||
				po instanceof MOrder || po instanceof MInvoice || po instanceof MRMA) {
			
			if (event.getTopic().equals(IEventTopics.PO_AFTER_CHANGE)) {  // Update
				boolean requery = false;
				String msg = null;
			
				if (po.get_ColumnIndex("C_Tax_ID") == -1)
					checkNeedForUpdateLBRDocLineDetails(po);
				else {
					if (po.is_ValueChanged("C_Tax_ID"))
						requery = true;

					if (isLBRDefaultTaxProvider(po, requery)) {	
						MLBRDocLineDetails details = MLBRDocLineDetails.getOfPO(po);
			
						if (details == null) {
							msg = createLBRDocLineDetails(po);
							
							if (msg != null)
								addErrorMessage(event, msg);
						}
						
						if (msg == null)
							checkNeedForUpdateLBRDocLineDetails(po);
					} else {
						deleteLBRDocLineDetails(po);
					}
				}
			}
			
			if (po instanceof MOrderLine ||	po instanceof MInvoiceLine || po instanceof MRMALine) {
				if (event.getTopic().equals(IEventTopics.PO_AFTER_NEW)) { // Create
					if (isLBRDefaultTaxProvider(po, true)) {
						String msg = createLBRDocLineDetails(po);
						
						if (msg != null)
							addErrorMessage(event, msg);
					}
				} else if (event.getTopic().equals(IEventTopics.PO_BEFORE_DELETE)) // Delete
					deleteLBRDocLineDetails(po);
			}
		}
	}
	
	/**
	 * 	Delete Doc Line Details record
	 * 	@param po persistent object
	 */
	private void deleteLBRDocLineDetails(PO po) {
		MLBRDocLineDetails details = MLBRDocLineDetails.getOfPO(po);
		
		if (details != null) {
			try {
				details.deleteEx(true);
			} catch (AdempiereException e) {
				e.printStackTrace();
				log.warning(MLBRDocLineDetails.Table_Name + " for " + po + " was not deleted.");
				
				details.setC_OrderLine_ID(0);
				details.setC_InvoiceLine_ID(0);
				details.setM_RMALine_ID(0);
				details.saveEx();
			}
		}
	}

	/**
	 * 	Create new Brazilian Doc Line Details record
	 * 	@param po persistent object
	 *	@return error message or null
	 */
	private String createLBRDocLineDetails(PO po) {
		MLBRDocLineDetails details = MLBRDocLineDetails.createFromPO(po);
		
		if (details != null) {
			MInvoiceLine iLine = null;
			MOrderLine oLine = null;
			boolean copy = false;
			
			if (po instanceof MInvoiceLine) {
				iLine = (MInvoiceLine) po;
				
				if (iLine.getC_OrderLine_ID() > 0) {
					oLine = new MOrderLine(details.getCtx(), iLine.getC_OrderLine_ID(), details.get_TrxName());
					
					if (oLine.getQtyOrdered().compareTo(iLine.getQtyInvoiced()) == 0)
						copy = true;
				}
			}
			
			if (copy)
				details.copyFrom(MLBRDocLineDetails.getOfPO(oLine));
			else {
				details.populateFromPO(po);
				details.createTaxTransaction();
			}
			
			details.saveEx();
		} else {
			log.severe(MLBRDocLineDetails.Table_Name + " for " + po + " was not created.");
			return "Could not create Doc Line Details record";
		}
		
		return null;
	}
	
	/**
	 * 	Requery to define if tax line is calculated by LBR Default Tax Provider
	 * 	@param po persistent object
	 */
	private void requeryLBRDefaultTaxProvider(PO po) {
		boolean isLBRDefaultTaxProvider = false;
		
		if (po.get_ValueAsInt("C_Tax_ID") != 0) {
			MTax tax = new MTax(po.getCtx(), po.get_ValueAsInt("C_Tax_ID"), po.get_TrxName());
			int C_Tax_Provider_ID = tax.getC_TaxProvider_ID();
			
			if (C_Tax_Provider_ID > 0) {
				MTaxProvider provider = new MTaxProvider(Env.getCtx(), C_Tax_Provider_ID, po.get_TrxName());
				
				if (provider.getTaxProviderClass().equals(TaxProviderFactory.DEFAULT_TAX_PROVIDER))
					isLBRDefaultTaxProvider = true;
			}
		}
		
		if (isLBRDefaultTaxProvider)
			po.set_Attribute("IsLBRDefaultTaxProvider", "Y");
		else
			po.set_Attribute("IsLBRDefaultTaxProvider", "N");
		
		return;
	}
	
	/**
	 * 	Is tax line calculated by LBR Default Tax Provider?
	 * 	@param po persistent object
	 * 	@param requery true if C_Tax_ID should be revaluated
	 * 	@return true if is LBR Default Provider
	 */
	private boolean isLBRDefaultTaxProvider(PO po, boolean requery) {
		if (po.get_ColumnIndex("C_Tax_ID") == -1)
			return false;
		
		if (po.get_Attribute("IsLBRDefaultTaxProvider") == null)
			requery = true;
		
		if (!requery) {
			String isLBRDefaultTaxProvider = (String) po.get_Attribute("IsLBRDefaultTaxProvider");
			
			if (isLBRDefaultTaxProvider != null && isLBRDefaultTaxProvider.equals("Y"))
				return true;
		}
		
		requeryLBRDefaultTaxProvider(po);
		
		if (po.get_Attribute("IsLBRDefaultTaxProvider").equals("Y"))
			return true;
		
		return false;
	}
	
	/**
	 * 	Check the need for update Brazilian Doc Line Details record when PO change
	 * 	@param po persistent object
	 */
	private void checkNeedForUpdateLBRDocLineDetails(PO po) {
		if (!(isChangeAffectDocLineDetails(po) || isChangeAffectTaxTransaction(po)))
			return;
		
		if (po instanceof MOrderLine ||	po instanceof MInvoiceLine || po instanceof MRMALine) {			
			updateLBRDocLineDetails(po, null);
		} else if (po instanceof MOrder) {
			MOrderLine[] lines = ((MOrder)po).getLines();
			
			for (MOrderLine line : lines) {
				updateLBRDocLineDetails(po, line);
			}
		} else if (po instanceof MInvoice) {
			MInvoiceLine[] lines = ((MInvoice)po).getLines();
			
			for (MInvoiceLine line : lines) {
				updateLBRDocLineDetails(po, line);
			}
		} else if (po instanceof MRMA) {
			MRMALine[] lines = ((MRMA)po).getLines(true);
			
			for (MRMALine line : lines) {
				updateLBRDocLineDetails(po, line);
			}
		}
		
		return;
	}
	
	/**
	 * 	Update Brazilian Doc Line Details
	 * 	@param poChanged doc changed
	 * 	@param poLine doc line
	 */
	private void updateLBRDocLineDetails(PO poChanged, PO poLine) {
		if (poLine == null)
			poLine = poChanged;
		
		MLBRDocLineDetails details = MLBRDocLineDetails.getOfPO(poLine);
		
		if (details != null) {
			if (isChangeAffectDocLineDetails(poChanged))
				details.populateFromPO(poLine);
			
			if (isChangeAffectTaxTransaction(poChanged))
				details.createTaxTransaction();
			
			details.saveEx();
		}
	}

	/**
	 * 	Verify if Doc Line Details must be updated
	 * 	@param po persistent object
	 * 	@return true if must updated
	 */
	private boolean isChangeAffectDocLineDetails(PO po)
	{
		if (po instanceof MOrder || po instanceof MInvoice || po instanceof MRMA) {
			// Commom changes in C_Order and C_Invoice
			if (po instanceof MOrder || po instanceof MInvoice) {
				if (po.is_ValueChanged("POReference") ||
						po.is_ValueChanged("IsDiscountPrinted"))
					return true;
			}
		} else if  (po instanceof MOrderLine || po instanceof MInvoiceLine || po instanceof MRMALine) {
			// Commom changes in C_OrderLine, C_InvoiceLine and M_RMALine
			if (po.is_ValueChanged("AD_Org_ID") ||
					po.is_ValueChanged("M_Product_ID") ||
					po.is_ValueChanged ("C_Tax_ID"))
				return true;
			
			// Commom changes in C_OrderLine and C_InvoiceLine
			if  (po instanceof MOrderLine || po instanceof MInvoiceLine) {
				if (po.is_ValueChanged("QtyEntered") ||
						po.is_ValueChanged("C_UOM_ID") ||
						po.is_ValueChanged("PriceEntered") ||
						po.is_ValueChanged("PriceList") ||
						po.is_ValueChanged ("LineNetAmt"))
					return true;
			}
			
			// Changes in C_OrderLine
			if  (po instanceof MOrderLine) {
				if (po.is_ValueChanged("QtyOrdered"))
					return true;
			}
			
			// Changes in C_InvoiceLine
			if  (po instanceof MInvoiceLine) {
				if (po.is_ValueChanged("QtyInvoiced"))
					return true;
			}
			
			// Changes in M_RMALine
			if  (po instanceof MRMALine) {
				if (po.is_ValueChanged("Qty") ||
						po.is_ValueChanged("C_UOM_ID") ||
						po.is_ValueChanged ("Amt"))
					return true;
			}
		}

		return false;
	}
	
	/**
	 * 	Verify if Tax Transaction must be updated
	 * 	@param po persistent object
	 * 	@return true if must updated
	 */
	private boolean isChangeAffectTaxTransaction(PO po)
	{
		if (po instanceof MOrder || po instanceof MInvoice || po instanceof MRMA) {
			// Commom changes in C_Order, C_Invoice and M_RMA
			if (po.is_ValueChanged("AD_Org_ID") ||
					po.is_ValueChanged("C_BPartner_ID") ||
					po.is_ValueChanged("LBR_TransactionType"))
				return true;
					
			// Commom changes in C_Order and C_Invoice
			if (po instanceof MOrder || po instanceof MInvoice) {
				if (po.is_ValueChanged("C_BPartner_Location_ID") ||
						po.is_ValueChanged("C_DocTypeTarget_ID"))
					return true;
			}
			
			// Changes in C_Order
			if (po instanceof MOrder) {
				if (po.is_ValueChanged("Bill_BPartner_ID") ||
						po.is_ValueChanged("Bill_Location_ID") ||
						po.is_ValueChanged("DateOrdered"))
					return true;
			}
			
			// Changes in C_Invoice
			if (po instanceof MInvoice) {
				if (po.is_ValueChanged("DateInvoiced"))
					return true;
			}
			
			// Changes in M_RMA
			if (po instanceof MRMA) {
				if (po.is_ValueChanged("Bill_BPartner_ID") ||
						po.is_ValueChanged("Bill_Location_ID") ||
						po.is_ValueChanged("C_DocType_ID"))
					return true;
			}
		} else if (po instanceof MOrderLine || po instanceof MInvoiceLine || po instanceof MRMALine) {
			// Commom changes in C_OrderLine, C_InvoiceLine and M_RMALine
			if (po.is_ValueChanged("M_Product_ID") ||
					po.is_ValueChanged ("C_Tax_ID"))
				return true;
		}
		
		return false;
	}
}