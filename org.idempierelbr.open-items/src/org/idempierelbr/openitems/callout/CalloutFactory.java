package org.idempierelbr.openitems.callout;

import java.util.ArrayList;
import java.util.List;

import org.adempiere.base.IColumnCallout;
import org.adempiere.base.IColumnCalloutFactory;
import org.compiere.model.MInvoice;
import org.compiere.model.MOrder;
import org.idempierelbr.openitems.model.MLBRBoleto;

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
		
		// Tabela LBR_Boleto
		if (tableName.equals(MLBRBoleto.Table_Name)) {
			if (columnName.equals(MLBRBoleto.COLUMNNAME_C_DocType_ID) ||
					columnName.equals(MLBRBoleto.COLUMNNAME_C_Invoice_ID) ||
					columnName.equals(MLBRBoleto.COLUMNNAME_C_InvoicePaySchedule_ID) ||
					columnName.equals(MLBRBoleto.COLUMNNAME_C_BankAccount_ID))
				 callouts.add(new CalloutBoleto());
		}
		
		// Tabela C_Order
		if (tableName.equals(MOrder.Table_Name)) {
			if (columnName.equals(MOrder.COLUMNNAME_C_BPartner_ID))
				 callouts.add(new CalloutOrder());
		}
		
		// Tabela C_Invoice
		if (tableName.equals(MInvoice.Table_Name)) {
			if (columnName.equals(MInvoice.COLUMNNAME_C_BPartner_ID))
				 callouts.add(new CalloutInvoice());
		}
	
		return callouts != null ? callouts.toArray(new IColumnCallout[0]) : new IColumnCallout[0];
	}
}
