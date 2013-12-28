package org.idempierelbr.core.callout;

import java.util.Properties;

import org.adempiere.base.IColumnCallout;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.idempierelbr.core.model.MBPartnerLBRCore;

public class CalloutBPartner implements IColumnCallout {

	@Override
	public String start(Properties ctx, int WindowNo, GridTab mTab,
			GridField mField, Object value, Object oldValue) {
		
		if (mTab.getTableName().equals(MBPartnerLBRCore.Table_Name))
			if (mField.getColumnName().equals(MBPartnerLBRCore.COLUMNNAME_LBR_BPTypeBR))
				return clearBPTypeBRUnnecessaryFields(mTab, value);
			else if (mField.getColumnName().equals(MBPartnerLBRCore.COLUMNNAME_LBR_IsIEExempt))
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
		String ie = (String) mTab.getValue(MBPartnerLBRCore.COLUMNNAME_LBR_IE);
		if (ie != null && !ie.equals(""))
			mTab.setValue(MBPartnerLBRCore.COLUMNNAME_LBR_IE, null);
		return null;
	}

	/**
	* Limpa campos não relacionados à opção (PF ou PJ) selecionada, para manter o DB consistente
	*/
	private String clearBPTypeBRUnnecessaryFields(GridTab mTab, Object value) {
		if (value == null || value.equals("")) {
			mTab.setValue(MBPartnerLBRCore.COLUMNNAME_LBR_CNPJ, null);
			mTab.setValue(MBPartnerLBRCore.COLUMNNAME_LBR_CCM, null);
			mTab.setValue(MBPartnerLBRCore.COLUMNNAME_LBR_Suframa, null);
			mTab.setValue(MBPartnerLBRCore.COLUMNNAME_LBR_CPF, null);
			mTab.setValue(MBPartnerLBRCore.COLUMNNAME_LBR_RG, null);
			mTab.setValue(MBPartnerLBRCore.COLUMNNAME_LBR_IsIEExempt, false);
		} else if (value.equals("PF")) {
			mTab.setValue(MBPartnerLBRCore.COLUMNNAME_LBR_CNPJ, null);
			mTab.setValue(MBPartnerLBRCore.COLUMNNAME_LBR_CCM, null);
			mTab.setValue(MBPartnerLBRCore.COLUMNNAME_LBR_Suframa, null);
			mTab.setValue(MBPartnerLBRCore.COLUMNNAME_LBR_IsIEExempt, true);
		} else if (value.equals("PJ")) {
			mTab.setValue(MBPartnerLBRCore.COLUMNNAME_LBR_CPF, null);
			mTab.setValue(MBPartnerLBRCore.COLUMNNAME_LBR_RG, null);
			mTab.setValue(MBPartnerLBRCore.COLUMNNAME_LBR_IsIEExempt, false);
		}
		
		clearIEField(mTab, value);	
		return null;
	}
	
}
