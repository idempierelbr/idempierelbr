package org.idempierelbr.nfe.callout;

import java.util.ArrayList;
import java.util.List;

import org.adempiere.base.IColumnCallout;
import org.adempiere.base.IColumnCalloutFactory;
import org.idempierelbr.nfe.model.MLBRNotaFiscal;
import org.idempierelbr.nfe.model.MLBRNotaFiscalLine;

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
		
		// Tabela LBR_NotaFiscal
		if (tableName.equals(MLBRNotaFiscal.Table_Name)) {
			if (columnName.equals(MLBRNotaFiscal.COLUMNNAME_C_BPartner_ID))
				 callouts.add(new CalloutNotaFiscal());
		}
		
		// Tabela LBR_NotaFiscalLine
		if (tableName.equals(MLBRNotaFiscalLine.Table_Name)) {
			if (columnName.equals(MLBRNotaFiscalLine.COLUMNNAME_Qty) ||
					columnName.equals(MLBRNotaFiscalLine.COLUMNNAME_PriceActual))
				 callouts.add(new CalloutNotaFiscal());
		}
	
		return callouts != null ? callouts.toArray(new IColumnCallout[0]) : new IColumnCallout[0];
	}
}
