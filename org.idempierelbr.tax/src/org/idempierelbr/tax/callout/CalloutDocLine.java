package org.idempierelbr.tax.callout;

import java.util.Properties;

import org.adempiere.base.IColumnCallout;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.idempierelbr.tax.model.MLBRDocLineICMS;

public class CalloutDocLine implements IColumnCallout {

	@Override
	public String start(Properties ctx, int WindowNo, GridTab mTab,
			GridField mField, Object value, Object oldValue) {
		
		if (mTab.getTableName().equals(MLBRDocLineICMS.Table_Name))
			if (mField.getColumnName().equals(MLBRDocLineICMS.COLUMNNAME_LBR_ICMSRegime)) {
				return resetTaxStatusFields(ctx, mTab, value);
			} else if (mField.getColumnName().equals(MLBRDocLineICMS.COLUMNNAME_LBR_ICMS_TaxStatusSN)) {
				return resetTaxStatusTNField(ctx, mTab, value);
			} else if (mField.getColumnName().equals(MLBRDocLineICMS.COLUMNNAME_LBR_ICMS_TaxStatusTN)) {
				return resetTaxStatusSNField(ctx, mTab, value);
			} else 
				return null;
		else
			return null;
	}
	
	/**
	 * Reset both Tax Status SN and TN fields. This is necessary to display fields correctly.
	 */
	private String resetTaxStatusFields(Properties ctx, GridTab mTab, Object value) {
		resetTaxStatusSNField(ctx, mTab, value);
		resetTaxStatusTNField(ctx, mTab, value);
		return null;
	}
	
	/**
	 * Reset Tax Status SN field. This is necessary to display fields correctly.
	 */
	private String resetTaxStatusSNField(Properties ctx, GridTab mTab, Object value) {
		mTab.setValue("LBR_ICMS_TaxStatusSN", null);
		return null;
	}
	
	/**
	 * Reset Tax Status TN field. This is necessary to display fields correctly.
	 */
	private String resetTaxStatusTNField(Properties ctx, GridTab mTab, Object value) {
		mTab.setValue("LBR_ICMS_TaxStatusTN", null);
		return null;
	}
}