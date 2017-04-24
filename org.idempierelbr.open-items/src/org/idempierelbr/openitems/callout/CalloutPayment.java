package org.idempierelbr.openitems.callout;

import java.util.Properties;
import org.adempiere.base.IColumnCallout;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MPayment;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.idempierelbr.openitems.model.EventHandler;

public class CalloutPayment implements IColumnCallout {
	protected CLogger		log = CLogger.getCLogger(getClass());

	@Override
	public String start(Properties ctx, int WindowNo, GridTab mTab,
			GridField mField, Object value, Object oldValue) {
		
		if (mTab.getTableName().equals(MPayment.Table_Name))
			if (mField.getColumnName().equals("C_Invoice_ID"))
				return invoice(ctx, WindowNo, mTab, mField, value, oldValue);
			else 
				return null;
		else
			return null;
	}
	
	public String invoice(Properties ctx, int WindowNo, GridTab mTab,
			GridField mField, Object value, Object oldValue) {
		Integer C_Invoice_ID = (Integer) value;
		Integer C_InvoicePaySchedule_ID = null;
		
		if (C_Invoice_ID != null && C_Invoice_ID > 0)
			C_InvoicePaySchedule_ID = Env.getContextAsInt (ctx, WindowNo, Env.TAB_INFO, "C_InvoicePaySchedule_ID");

		// Check if there is any allocation created only to invoice (without C_InvoicePaySchedule_ID)
		if (EventHandler.getNoOfAllocationsToInvoiceOnly(ctx, C_Invoice_ID, null) > 0)
			C_InvoicePaySchedule_ID = null;
		
		mTab.setValue ("C_InvoicePaySchedule_ID", C_InvoicePaySchedule_ID);
		return "";
	}
}