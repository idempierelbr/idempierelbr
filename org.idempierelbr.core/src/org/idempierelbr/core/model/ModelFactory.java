package org.idempierelbr.core.model;

import java.sql.ResultSet;

import org.adempiere.base.IModelFactory;
import org.compiere.model.PO;
import org.compiere.util.Env;

/**
 * Esta classe é uma implementação da model factory.
 * Ela fornece uma forma centralizada para o mecanismo de models.
 *
 * @author Alan <alan.lesc1@gmail.com>
 */
public class ModelFactory implements IModelFactory {

	@Override
	public Class<?> getClass(String tableName) {
		if (tableName.equals(MLBRNCM.Table_Name)) // Model MLBRNCM
			return MLBRNCM.class;
		
		return null;
	}

	@Override
	public PO getPO(String tableName, int Record_ID, String trxName) {
		if (tableName.equals(MLBRNCM.Table_Name)) // Model MLBRNCM
			return new MLBRNCM(Env.getCtx(), Record_ID, trxName);
			
		return null;
	}

	@Override
	public PO getPO(String tableName, ResultSet rs, String trxName) {
		if (tableName.equals(MLBRNCM.Table_Name)) // Model MLBRNCM
			return new MLBRNCM(Env.getCtx(), rs, trxName);
		
		return null;
	}

}
