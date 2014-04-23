package org.idempierelbr.tax.callout;

import java.util.ArrayList;
import java.util.List;

import org.adempiere.base.IColumnCallout;
import org.adempiere.base.IColumnCalloutFactory;
import org.compiere.model.MInvoice;
import org.compiere.model.MOrder;
import org.idempierelbr.tax.model.MLBRDocLineCOFINS;
import org.idempierelbr.tax.model.MLBRDocLineICMS;
import org.idempierelbr.tax.model.MLBRDocLineIPI;
import org.idempierelbr.tax.model.MLBRDocLinePIS;

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
		
		// Tabela C_Invoice
		if (tableName.equals(MInvoice.Table_Name)) {
			if (columnName.equals(MInvoice.COLUMNNAME_C_BPartner_ID))
				 callouts.add(new CalloutInvoice());
		}
		
		// Tabela LBR_DocLine_ICMS
		if (tableName.equals(MLBRDocLineICMS.Table_Name)) {
			if (columnName.equals(MLBRDocLineICMS.COLUMNNAME_LBR_ICMSRegime) ||
					columnName.equals(MLBRDocLineICMS.COLUMNNAME_LBR_ICMS_TaxStatusSN) ||
					columnName.equals(MLBRDocLineICMS.COLUMNNAME_LBR_ICMS_TaxStatusTN))
				 callouts.add(new CalloutDocLine());
		}
		
		// Tabela LBR_DocLine_IPI
		if (tableName.equals(MLBRDocLineIPI.Table_Name)) {
			if (columnName.equals(MLBRDocLineIPI.COLUMNNAME_LBR_IPI_TaxStatus))
				 callouts.add(new CalloutDocLine());
		}
		
		// Tabela LBR_DocLine_PIS
		if (tableName.equals(MLBRDocLinePIS.Table_Name)) {
			if (columnName.equals(MLBRDocLinePIS.COLUMNNAME_LBR_PIS_TaxStatus))
				 callouts.add(new CalloutDocLine());
		}
		
		// Tabela LBR_DocLine_COFINS
		if (tableName.equals(MLBRDocLineCOFINS.Table_Name)) {
			if (columnName.equals(MLBRDocLineCOFINS.COLUMNNAME_LBR_COF_TaxStatus))
				 callouts.add(new CalloutDocLine());
		}
		
		return callouts != null ? callouts.toArray(new IColumnCallout[0]) : new IColumnCallout[0];
	}
}
