package org.idempierelbr.openitems.callout;

import java.util.Properties;

import org.adempiere.base.IColumnCallout;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MBPartner;
import org.compiere.model.MInvoice;

public class CalloutInvoice implements IColumnCallout {

	@Override
	public String start(Properties ctx, int WindowNo, GridTab mTab,
			GridField mField, Object value, Object oldValue) {
		
		if (mTab.getTableName().equals(MInvoice.Table_Name))
			if (mField.getColumnName().equals(MInvoice.COLUMNNAME_C_BPartner_ID))
				return setBankCollectionRelated(ctx, mTab, value);
			else 
				return null;
		else
			return null;
	}
	
	/**
	 * Set the fields related to Boleto
	 */
	private String setBankCollectionRelated(Properties ctx, GridTab mTab, Object value) {
		Integer C_BPartner_ID = (Integer) value;
		
		if (C_BPartner_ID == null || C_BPartner_ID == 0) {
			mTab.setValue("LBR_PayInstrument", null);
			mTab.setValue("LBR_CollectionIssueDistrib", null);
			mTab.setValue("LBR_BankAccount_ID", null);
			return "";
		}
		
		MBPartner bp = new MBPartner(ctx, C_BPartner_ID, null);

		mTab.setValue("LBR_PayInstrument", bp.get_ValueAsString("LBR_PayInstrument"));
		mTab.setValue("LBR_CollectionIssueDistrib", bp.get_ValueAsString("LBR_CollectionIssueDistrib"));
		mTab.setValue("LBR_BankAccount_ID", bp.get_ValueAsInt("LBR_BankAccount_ID"));
		
		return "";
	}
}