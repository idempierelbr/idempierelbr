package org.idempierelbr.openitems.callout;

import java.util.ArrayList;
import java.util.List;

import org.adempiere.base.IColumnCallout;
import org.adempiere.base.IColumnCalloutFactory;
import org.compiere.model.MBank;
import org.compiere.model.MBankAccount;
import org.compiere.model.MInvoice;
import org.compiere.model.MOrder;
import org.compiere.model.MPayment;
import org.compiere.model.MPaymentAllocate;
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
					columnName.equals(MLBRBoleto.COLUMNNAME_C_BankAccount_ID) ||
					columnName.equals(MLBRBoleto.COLUMNNAME_LBR_BankAccount_Carteira_ID))
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
		
		// Tabela C_BankAccount
		if (tableName.equals(MBankAccount.Table_Name)) {
			if (columnName.equals(MBankAccount.COLUMNNAME_AccountNo) ||
					columnName.equals("LBR_BankAgencyNo"))
				 callouts.add(new CalloutBank());
		}
		
		// Tabela C_Bank
		if (tableName.equals(MBank.Table_Name)) {
			if (columnName.equals(MBank.COLUMNNAME_RoutingNo))
				 callouts.add(new CalloutBank());
		}
		
		// Tabela C_Payment
		if (tableName.equals(MPayment.Table_Name)) {
			if (columnName.equals("C_Invoice_ID"))
				 callouts.add(new CalloutPayment());
		}
		
		// Tabela C_PaymentAllocate
		if (tableName.equals(MPaymentAllocate.Table_Name)) {
			if (columnName.equals("C_Invoice_ID"))
				 callouts.add(new CalloutPaymentAllocate());
		}
		
		return callouts != null ? callouts.toArray(new IColumnCallout[0]) : new IColumnCallout[0];
	}
}
