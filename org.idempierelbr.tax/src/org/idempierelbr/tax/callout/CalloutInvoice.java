package org.idempierelbr.tax.callout;

import java.util.Properties;

import org.adempiere.base.IColumnCallout;
import org.adempiere.model.POWrapper;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MBPartner;
import org.compiere.model.MInvoice;
import org.compiere.util.Env;
import org.idempierelbr.base.wrapper.I_W_C_BPartner;

public class CalloutInvoice implements IColumnCallout {

	@Override
	public String start(Properties ctx, int WindowNo, GridTab mTab,
			GridField mField, Object value, Object oldValue) {
		
		if (mTab.getTableName().equals(MInvoice.Table_Name))
			if (mField.getColumnName().equals(MInvoice.COLUMNNAME_C_BPartner_ID))
				return setTransactionType(ctx, mTab, value);
			else 
				return null;
		else
			return null;
	}
	
	/**
	 * Define Transaction Type based on Business Partner
	 */
	private String setTransactionType(Properties ctx, GridTab mTab, Object value) {
		Integer C_BPartner_ID = (Integer) value;
		
		if (C_BPartner_ID == null || C_BPartner_ID == 0) {
			mTab.setValue("LBR_TransactionType", null);
			return "";
		}
		
		MBPartner bp = new MBPartner(ctx, C_BPartner_ID, null);
		I_W_C_BPartner bpW = POWrapper.create(bp, I_W_C_BPartner.class);
		
		if (Env.isSOTrx(ctx, mTab.getWindowNo()))
			mTab.setValue("LBR_TransactionType", bpW.getLBR_TransactionType_Customer());
		else
			mTab.setValue("LBR_TransactionType", bpW.getLBR_TransactionType_Vendor());
		
		return "";
	}
}