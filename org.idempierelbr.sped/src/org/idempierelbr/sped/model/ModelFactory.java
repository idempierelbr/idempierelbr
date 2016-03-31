package org.idempierelbr.sped.model;

import java.sql.ResultSet;

import org.adempiere.base.IModelFactory;
import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.PO;
import org.compiere.util.Env;

public class ModelFactory implements IModelFactory {

	@Override
	public Class<?> getClass(String tableName) {
		
		if( tableName.equals(MLBRFactFiscal.Table_Name))
			return MLBRFactFiscal.class;
		
		if( tableName.equals(MLBRSPEDOptions.Table_Name))
			return MLBRSPEDOptions.class;
		
		if( tableName.equals(MLBRFiscalDoc.Table_Name))
			return MLBRFiscalDoc.class;
		
		return null;
	}

	@Override
	public PO getPO(String tableName, int Record_ID, String trxName) {
		if( tableName.equals(MLBRFactFiscal.Table_Name))
			throw new AdempiereException("LBR_FactFiscal não é referenciável pelo ID");
			
		if( tableName.equals(MLBRSPEDOptions.Table_Name))
			return new MLBRSPEDOptions(Env.getCtx(), Record_ID , trxName );

		if( tableName.equals(MLBRFiscalDoc.Table_Name))
			return new MLBRFiscalDoc(Env.getCtx(), Record_ID , trxName );

		return null;
	}

	@Override
	public PO getPO(String tableName, ResultSet rs, String trxName) {
		if( tableName.equals(MLBRFactFiscal.Table_Name))
			return new MLBRFactFiscal(Env.getCtx(), rs, trxName);

		if( tableName.equals(MLBRSPEDOptions.Table_Name))
			return new MLBRSPEDOptions(Env.getCtx(), rs, trxName);

		if( tableName.equals(MLBRFiscalDoc.Table_Name))
			return new MLBRFiscalDoc(Env.getCtx(), rs, trxName);

		return null;
	}

}
