package org.idempierelbr.core.model;

import java.sql.ResultSet;

import org.adempiere.base.IModelFactory;
import org.compiere.model.MBPartner;
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
		// Model MBPartner
		if (tableName.equals(MBPartner.Table_Name))
			return MBPartnerLBRCore.class;
		
		return null;
	}

	@Override
	public PO getPO(String tableName, int Record_ID, String trxName) {
		// Model MBPartner
		if (tableName.equals(MBPartner.Table_Name))
			return new MBPartnerLBRCore(Env.getCtx(), Record_ID, trxName);
			
		return null;
	}

	@Override
	public PO getPO(String tableName, ResultSet rs, String trxName) {
		// Model MBPartner
		if (tableName.equals(MBPartner.Table_Name))
			return new MBPartnerLBRCore(Env.getCtx(), rs, trxName);
		
		return null;
	}

}
