package org.idempierelbr.openitems.callout;

import java.util.Properties;
import org.adempiere.base.IColumnCallout;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MBankAccount;

public class CalloutBank implements IColumnCallout {
	@Override
	public String start(Properties ctx, int WindowNo, GridTab mTab,
			GridField mField, Object value, Object oldValue) {
		
		if (mTab.getTableName().equals(MBankAccount.Table_Name))
			if (mField.getColumnName().equals(MBankAccount.COLUMNNAME_AccountNo) ||
					mField.getColumnName().equals("LBR_BankAgencyNo"))
				return checkDigit(ctx, mTab, value);
			else 
				return null;
		else
			return null;
	}
	
	/**
	 * Alert the user about including the digit
	 */
	private String checkDigit(Properties ctx, GridTab mTab, Object value) {
		String valor = (String)value;
		
		if (valor != null && !valor.trim().equals("") && !valor.contains("-"))
			mTab.fireDataStatusEEvent("Atenção!", "Se houver, inclua o dígito verificador " +
					"(separado por '-') nos campos 'Núm. da Agência' e 'Núm. da Conta'. Ex: 1234-56", false);
		
		return "";
	}
}