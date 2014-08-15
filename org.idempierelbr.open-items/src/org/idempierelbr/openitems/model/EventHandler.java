package org.idempierelbr.openitems.model;

import org.adempiere.base.event.AbstractEventHandler;
import org.adempiere.base.event.IEventTopics;
import org.compiere.model.MInOut;
import org.compiere.model.MInvoice;
import org.compiere.model.MOrder;
import org.compiere.model.MRMA;
import org.compiere.model.PO;
import org.compiere.process.DocAction;
import org.compiere.util.CLogger;
import org.osgi.service.event.Event;

public class EventHandler extends AbstractEventHandler {
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(EventHandler.class);

	@Override
	protected void initialize() {
		registerTableEvent(IEventTopics.PO_AFTER_NEW, MLBRBoleto.Table_Name);
		registerTableEvent(IEventTopics.PO_AFTER_CHANGE, MLBRBoleto.Table_Name);
		registerTableEvent(IEventTopics.PO_BEFORE_NEW, MLBRBoletoDetails.Table_Name);
		registerTableEvent(IEventTopics.PO_BEFORE_NEW, MInvoice.Table_Name);
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
				invoice.set_ValueOfColumn("LBR_PayInstrument", order.get_ValueAsString("LBR_PayInstrument"));
				invoice.set_ValueOfColumn("LBR_CollectionIssueDistrib", order.get_ValueAsString("LBR_CollectionIssueDistrib"));
				invoice.set_ValueOfColumn("LBR_BankAccount_ID", order.get_ValueAsInt("LBR_BankAccount_ID"));
			} else if (invoice.getM_RMA_ID() > 0) {
				MRMA rma = new MRMA(po.getCtx(), invoice.getM_RMA_ID(), po.get_TrxName());
				MInOut inOut = new MInOut(po.getCtx(), rma.getInOut_ID(), po.get_TrxName());
				MOrder order = new MOrder(po.getCtx(), inOut.getC_Order_ID(), po.get_TrxName());
				invoice.set_ValueOfColumn("LBR_PayInstrument", order.get_ValueAsString("LBR_PayInstrument"));
				invoice.set_ValueOfColumn("LBR_CollectionIssueDistrib", order.get_ValueAsString("LBR_CollectionIssueDistrib"));
				invoice.set_ValueOfColumn("LBR_BankAccount_ID", order.get_ValueAsInt("LBR_BankAccount_ID"));
			}
		}
		
		// Create default details entry
		if (po instanceof MLBRBoleto && event.getTopic().equals(IEventTopics.PO_AFTER_NEW)) {
			MLBRBoletoDetails details = new MLBRBoletoDetails(po.getCtx(), 0, po.get_TrxName());
			details.setAD_Org_ID(po.getAD_Org_ID());
			details.setLBR_Boleto_ID(po.get_ID());
			details.populateBasedOnParent();
			details.saveEx();
		}
		
		if (po instanceof MLBRBoleto && event.getTopic().equals(IEventTopics.PO_AFTER_CHANGE)) {
			MLBRBoleto boleto = (MLBRBoleto)po;
			
			// Only drafted/in progress/invalid boletos
			if (boleto.getDocStatus().equals(DocAction.STATUS_Drafted) ||
					boleto.getDocStatus().equals(DocAction.STATUS_InProgress) ||
					boleto.getDocStatus().equals(DocAction.STATUS_Invalid)) {
				
				MLBRBoletoDetails[] detailsEntries = boleto.getDetails();
				
				if (detailsEntries.length > 0) {
					if (po.is_ValueChanged("C_DocType_ID")) {
						detailsEntries[0].populateBasedOnParent();
					} else {
						// populateBasedOnParent() already updates interest/penalty/discounts,
						// so only check them if C_DocType_ID value is not changed
						if (po.is_ValueChanged("DueDate")) {
							detailsEntries[0].updateInterest();
							detailsEntries[0].updateLatePaymentPenalty();
						}
						
						if (po.is_ValueChanged("C_InvoicePaySchedule_ID"))
							detailsEntries[0].updateDiscounts();
					}

					detailsEntries[0].saveEx();
				}				
			}			
		}
		
		// Check if there are maximum of 1 entries in the Details Tab
		if (po instanceof MLBRBoletoDetails && event.getTopic().equals(IEventTopics.PO_BEFORE_NEW)) {
			int LBR_Boleto_ID = ((MLBRBoletoDetails)po).getLBR_Boleto_ID();
			MLBRBoleto boleto = new MLBRBoleto(po.getCtx(), LBR_Boleto_ID, po.get_TrxName());
			
			MLBRBoletoDetails[] details = boleto.getDetails();
			if (details.length >= 1)
				addErrorMessage(event, "Limite de 1 registro por boleto");
		}
	}
}