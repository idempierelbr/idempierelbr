package org.idempierelbr.tax.model;

import java.sql.ResultSet;

import org.adempiere.base.IModelFactory;
import org.compiere.model.PO;

/**
 * Esta classe é uma implementação da model factory.
 * Ela fornece uma forma centralizada para o mecanismo de models.
 *
 * @author Alan <alan.lesc1@gmail.com>
 */
public class ModelFactory implements IModelFactory {

	@Override
	public Class<?> getClass(String tableName) {
		return null;
	}

	@Override
	public PO getPO(String tableName, int Record_ID, String trxName) {
		return null;
	}

	@Override
	public PO getPO(String tableName, ResultSet rs, String trxName) {
		return null;
	}

}
