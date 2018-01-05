package org.idempierelbr.nfs.callout;

import java.util.ArrayList;
import java.util.List;

import org.adempiere.base.IColumnCallout;
import org.adempiere.base.IColumnCalloutFactory;
import org.idempierelbr.nfs.model.MLBRNFS;

/**
 * Esta classe é uma implementação da callout factory. Ela fornece uma forma
 * centralizada para o mecanismo de callout.
 *
 *
 * @author Pablo <pablo@roundit.com.br>
 */
public class CalloutFactory implements IColumnCalloutFactory {

	@Override
	public IColumnCallout[] getColumnCallouts(String tableName,
			String columnName) {
		List<IColumnCallout> callouts = new ArrayList<IColumnCallout>();

		//
		if (tableName.equals(MLBRNFS.Table_Name)) {
			if (columnName.equals(MLBRNFS.COLUMNNAME_M_Product_ID)
					|| columnName.equals(MLBRNFS.COLUMNNAME_C_DocTypeTarget_ID)) {
				callouts.add(new CalloutNFS());
			}
		}

		return callouts != null ? callouts.toArray(new IColumnCallout[0]) : new IColumnCallout[0];
	}
}
