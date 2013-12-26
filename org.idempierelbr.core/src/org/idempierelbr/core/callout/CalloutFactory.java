package org.idempierelbr.core.callout;

import java.util.ArrayList;
import java.util.List;

import org.adempiere.base.IColumnCallout;
import org.adempiere.base.IColumnCalloutFactory;

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
		
		return callouts != null ? callouts.toArray(new IColumnCallout[0]) : new IColumnCallout[0];
	}
}
