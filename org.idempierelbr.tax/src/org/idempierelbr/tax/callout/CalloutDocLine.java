package org.idempierelbr.tax.callout;

import java.util.Properties;

import org.adempiere.base.IColumnCallout;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.idempierelbr.tax.model.MLBRDocLineCOFINS;
import org.idempierelbr.tax.model.MLBRDocLineICMS;
import org.idempierelbr.tax.model.MLBRDocLineIPI;
import org.idempierelbr.tax.model.MLBRDocLinePIS;

public class CalloutDocLine implements IColumnCallout {

	@Override
	public String start(Properties ctx, int WindowNo, GridTab mTab,
			GridField mField, Object value, Object oldValue) {
		
		if (mTab.getTableName().equals(MLBRDocLineICMS.Table_Name))
			if (mField.getColumnName().equals(MLBRDocLineICMS.COLUMNNAME_LBR_ICMSRegime)) {
				return resetICMSTaxStatusFields(ctx, mTab, value);
			} else if (mField.getColumnName().equals(MLBRDocLineICMS.COLUMNNAME_LBR_ICMS_TaxStatusSN)) {
				return resetICMSTaxStatusTNField(ctx, mTab, value);
			} else if (mField.getColumnName().equals(MLBRDocLineICMS.COLUMNNAME_LBR_ICMS_TaxStatusTN)) {
				return resetICMSTaxStatusSNField(ctx, mTab, value);
			} else 
				return null;
		else if (mTab.getTableName().equals(MLBRDocLineIPI.Table_Name))
			if (mField.getColumnName().equals(MLBRDocLineIPI.COLUMNNAME_LBR_IPI_TaxStatus)) {
				return resetIPICalcTypeFields(ctx, mTab, value);
			} else 
				return null;
		else if (mTab.getTableName().equals(MLBRDocLinePIS.Table_Name))
			if (mField.getColumnName().equals(MLBRDocLinePIS.COLUMNNAME_LBR_PIS_TaxStatus)) {
				return resetPISCalcTypeFields(ctx, mTab, value);
			} else 
				return null;
		else if (mTab.getTableName().equals(MLBRDocLineCOFINS.Table_Name))
			if (mField.getColumnName().equals(MLBRDocLineCOFINS.COLUMNNAME_LBR_COF_TaxStatus)) {
				return resetCOFINSCalcTypeFields(ctx, mTab, value);
			} else 
				return null;
		else
			return null;
	}
	
	/**
	 * Reset both Tax Status SN and TN fields for tab ICMS.
	 * This is necessary to display fields correctly.
	 */
	private String resetICMSTaxStatusFields(Properties ctx, GridTab mTab, Object value) {
		resetICMSTaxStatusSNField(ctx, mTab, value);
		resetICMSTaxStatusTNField(ctx, mTab, value);
		return null;
	}
	
	/**
	 * Reset Tax Status SN field for tab ICMS.
	 * This is necessary to display fields correctly.
	 */
	private String resetICMSTaxStatusSNField(Properties ctx, GridTab mTab, Object value) {
		mTab.setValue("LBR_ICMS_TaxStatusSN", null);
		return null;
	}
	
	/**
	 * Reset Tax Status TN field for tab ICMS.
	 * This is necessary to display fields correctly.
	 */
	private String resetICMSTaxStatusTNField(Properties ctx, GridTab mTab, Object value) {
		mTab.setValue("LBR_ICMS_TaxStatusTN", null);
		return null;
	}
	
	/**
	 * Reset Calculation Type field for tab IPI. This is necessary to display fields correctly.
	 */
	private String resetIPICalcTypeFields(Properties ctx, GridTab mTab, Object value) {
		mTab.setValue("CalculationType", null);
		return null;
	}
	
	/**
	 * Reset both Calculation Type fields for tab PIS. This is necessary to display fields correctly.
	 */
	private String resetPISCalcTypeFields(Properties ctx, GridTab mTab, Object value) {
		mTab.setValue("CalculationType", null);
		mTab.setValue("LBR_PISST_CalcType", null);
		return null;
	}
	
	/**
	 * Reset both Calculation Type fields for tab COFINS. This is necessary to display fields correctly.
	 */
	private String resetCOFINSCalcTypeFields(Properties ctx, GridTab mTab, Object value) {
		mTab.setValue("CalculationType", null);
		mTab.setValue("LBR_COFST_CalcType", null);
		return null;
	}
}