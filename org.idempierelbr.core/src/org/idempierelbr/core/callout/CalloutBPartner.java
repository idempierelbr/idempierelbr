package org.idempierelbr.core.callout;

import java.util.Properties;

import org.adempiere.base.IColumnCallout;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.idempierelbr.core.wrapper.I_W_C_BPartner;
import org.idempierelbr.core.wrapper.I_W_C_BPartner_Location;

public class CalloutBPartner implements IColumnCallout {

	@Override
	public String start(Properties ctx, int WindowNo, GridTab mTab,
			GridField mField, Object value, Object oldValue) {
		
		if (mTab.getTableName().equals(MBPartner.Table_Name))
			if (mField.getColumnName().equals(I_W_C_BPartner.COLUMNNAME_LBR_BPTypeBR))
				return clearBPTypeBRUnnecessaryFields(mTab, value);
			else if (mField.getColumnName().equals(I_W_C_BPartner.COLUMNNAME_LBR_TypeIE))
				return clearIEField(mTab, value);
			else 
				return null;
		else if (mTab.getTableName().equals(MBPartnerLocation.Table_Name))
			if (mField.getColumnName().equals(I_W_C_BPartner_Location.COLUMNNAME_LBR_TypeIE))
				return clearIEField(mTab, value);
			else 
				return null;
		else
			return null;
	}

	/**
	 * Limpa o campo LBR_IE
	 */
	private String clearIEField(GridTab mTab, Object value) {

		// get column name
		String columnName = I_W_C_BPartner.COLUMNNAME_LBR_IE;

		// clear field always when bpartner type ie is diff "1"
		if (value == null || !value.equals("1"))
			mTab.setValue(columnName, null);

		return null;
	}

	/**
	* Limpa campos não relacionados à opção (PF ou PJ) selecionada, para manter o DB consistente
	*/
	private String clearBPTypeBRUnnecessaryFields(GridTab mTab, Object value) {
		if (value == null || value.equals("")) {
			mTab.setValue(I_W_C_BPartner.COLUMNNAME_LBR_CNPJ, null);
			mTab.setValue(I_W_C_BPartner.COLUMNNAME_LBR_CCM, null);
			mTab.setValue(I_W_C_BPartner.COLUMNNAME_LBR_Suframa, null);
			mTab.setValue(I_W_C_BPartner.COLUMNNAME_LBR_CPF, null);
			mTab.setValue(I_W_C_BPartner.COLUMNNAME_LBR_RG, null);
			mTab.setValue(I_W_C_BPartner.COLUMNNAME_LBR_TypeIE, null);
		} else if (value.equals("PF")) {
			mTab.setValue(I_W_C_BPartner.COLUMNNAME_LBR_CNPJ, null);
			mTab.setValue(I_W_C_BPartner.COLUMNNAME_LBR_CCM, null);
			mTab.setValue(I_W_C_BPartner.COLUMNNAME_LBR_Suframa, null);
			mTab.setValue(I_W_C_BPartner.COLUMNNAME_LBR_TypeIE, null);
		} else if (value.equals("PJ")) {
			mTab.setValue(I_W_C_BPartner.COLUMNNAME_LBR_CPF, null);
			mTab.setValue(I_W_C_BPartner.COLUMNNAME_LBR_RG, null);
			mTab.setValue(I_W_C_BPartner.COLUMNNAME_LBR_TypeIE, null);
		}
		
		clearIEField(mTab, value);	
		return null;
	}
	
}
