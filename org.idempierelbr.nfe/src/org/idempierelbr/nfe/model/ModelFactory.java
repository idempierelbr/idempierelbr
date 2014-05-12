package org.idempierelbr.nfe.model;

import java.sql.ResultSet;

import org.adempiere.base.IModelFactory;
import org.compiere.model.PO;
import org.compiere.util.Env;
import org.idempierelbr.tax.model.MLBRDocLineDetailsTax;

/**
 * Esta classe é uma implementação da model factory.
 * Ela fornece uma forma centralizada para o mecanismo de models.
 *
 * @author Alan <alan.lesc1@gmail.com>
 */
public class ModelFactory implements IModelFactory {

	@Override
	public Class<?> getClass(String tableName) {
		if (tableName.equals(MLBRNotaFiscal.Table_Name)) // Model MLBRNotaFiscal
			return MLBRNotaFiscal.class;
		else if (tableName.equals(MLBRNotaFiscalLine.Table_Name)) // Model MLBRNotaFiscalLine
			return MLBRNotaFiscalLine.class;
		else if (tableName.equals(MLBRNotaFiscalTax.Table_Name)) // Model MLBRNotaFiscalTax
			return MLBRNotaFiscalTax.class;
		else if (tableName.equals(MLBRDocLineDetailsNfe.Table_Name)) // Model MLBRDocLineDetails
			return MLBRDocLineDetailsNfe.class;
		
		return null;
	}

	@Override
	public PO getPO(String tableName, int Record_ID, String trxName) {
		if (tableName.equals(MLBRNotaFiscal.Table_Name)) // Model MLBRNotaFiscal
			return new MLBRNotaFiscal(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRNotaFiscalLine.Table_Name)) // Model MLBRNotaFiscalLine
			return new MLBRNotaFiscalLine(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRNotaFiscalTax.Table_Name)) // Model MLBRNotaFiscalTax
			return new MLBRNotaFiscalTax(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRDocLineDetailsNfe.Table_Name)) // Model MLBRDocLineDetails
			return new MLBRDocLineDetailsNfe(Env.getCtx(), Record_ID, trxName);
		
		return null;
	}

	@Override
	public PO getPO(String tableName, ResultSet rs, String trxName) {
		if (tableName.equals(MLBRNotaFiscal.Table_Name)) // Model MLBRNotaFiscal
			return new MLBRNotaFiscal(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRNotaFiscalLine.Table_Name)) // Model MLBRNotaFiscalLine
			return new MLBRNotaFiscalLine(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRNotaFiscalTax.Table_Name)) // Model MLBRNotaFiscalTax
			return new MLBRNotaFiscalTax(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRDocLineDetailsNfe.Table_Name)) // MLBRDocLineDetails
			return new MLBRDocLineDetailsNfe(Env.getCtx(), rs, trxName);
		
		return null;
	}

}
