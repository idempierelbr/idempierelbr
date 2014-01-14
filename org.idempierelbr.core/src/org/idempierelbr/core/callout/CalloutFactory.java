package org.idempierelbr.core.callout;

import java.util.ArrayList;
import java.util.List;

import org.adempiere.base.IColumnCallout;
import org.adempiere.base.IColumnCalloutFactory;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.idempierelbr.core.wrapper.I_W_C_BPartner;
import org.idempierelbr.core.wrapper.I_W_C_BPartner_Location;

/**
 * Esta classe é uma implementação da callout factory.
 * Ela fornece uma forma centralizada para o mecanismo de callout.
 *
 * @author Alan <alan.lesc1@gmail.com>
 */
public class CalloutFactory implements IColumnCalloutFactory {

	@Override
	public IColumnCallout[] getColumnCallouts(String tableName,
			String columnName) {
		List<IColumnCallout> callouts = new ArrayList<IColumnCallout>();
		
		// Tabela C_BPartner
		if (tableName.equals(MBPartner.Table_Name)) {
			if (columnName.equals(I_W_C_BPartner.COLUMNNAME_LBR_BPTypeBR) ||
					columnName.equals(I_W_C_BPartner.COLUMNNAME_LBR_IsIEExempt))
				 callouts.add(new CalloutBPartner());
		}
		
		// Tabela C_BPartner_Location
		if (tableName.equals(MBPartnerLocation.Table_Name)) {
			if (columnName.equals(I_W_C_BPartner_Location.COLUMNNAME_LBR_IsIEExempt))
				 callouts.add(new CalloutBPartner());
		}
		
		return callouts != null ? callouts.toArray(new IColumnCallout[0]) : new IColumnCallout[0];
	}
}
