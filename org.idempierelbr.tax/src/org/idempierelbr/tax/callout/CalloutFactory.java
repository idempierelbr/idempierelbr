package org.idempierelbr.tax.callout;

import java.util.ArrayList;
import java.util.List;

import org.adempiere.base.IColumnCallout;
import org.adempiere.base.IColumnCalloutFactory;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;

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
		
		// Tabela C_Order
		if (tableName.equals(MOrder.Table_Name)) {
			if (columnName.equals(MOrder.COLUMNNAME_C_BPartner_ID))
				 callouts.add(new CalloutOrder());
		}
		
		// Tabela C_OrderLine
		if (tableName.equals(MOrderLine.Table_Name)) {
			if (columnName.equals(MOrderLine.COLUMNNAME_M_Product_ID))
				 callouts.add(new CalloutOrder());
		}
		
		// Tabela C_Invoice
		if (tableName.equals(MInvoice.Table_Name)) {
			if (columnName.equals(MInvoice.COLUMNNAME_C_BPartner_ID))
				 callouts.add(new CalloutInvoice());
		}
		
		// Tabela C_InvoiceLine
		if (tableName.equals(MInvoiceLine.Table_Name)) {
			if (columnName.equals(MOrderLine.COLUMNNAME_M_Product_ID))
				 callouts.add(new CalloutInvoice());
		}
		
		return callouts != null ? callouts.toArray(new IColumnCallout[0]) : new IColumnCallout[0];
	}
}
