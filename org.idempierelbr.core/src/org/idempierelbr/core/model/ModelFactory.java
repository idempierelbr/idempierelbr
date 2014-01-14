package org.idempierelbr.core.model;

import java.sql.ResultSet;

import org.adempiere.base.IModelFactory;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
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
		if (tableName.equals(MBPartner.Table_Name)) // Model MBPartner
			return MBPartnerLBRCore.class;
		else if (tableName.equals(MBPartnerLocation.Table_Name)) // Model MBPartnerLocation
			return MBPartnerLocationLBRCore.class;
		else if (tableName.equals(MLBRNCM.Table_Name)) // Model MLBRNCM
			return MLBRNCM.class;
		
		return null;
	}

	@Override
	public PO getPO(String tableName, int Record_ID, String trxName) {
		if (tableName.equals(MBPartner.Table_Name)) // Model MBPartner
			return new MBPartnerLBRCore(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MBPartnerLocation.Table_Name)) // Model MBPartnerLocation
			return new MBPartnerLocationLBRCore(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(MLBRNCM.Table_Name)) // Model MLBRNCM
			return new MLBRNCM(Env.getCtx(), Record_ID, trxName);
			
		return null;
	}

	@Override
	public PO getPO(String tableName, ResultSet rs, String trxName) {
		if (tableName.equals(MBPartner.Table_Name)) // Model MBPartner
			return new MBPartnerLBRCore(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MBPartnerLocation.Table_Name)) // Model MBPartnerLocation
				return new MBPartnerLocationLBRCore(Env.getCtx(), rs, trxName);
		else if (tableName.equals(MLBRNCM.Table_Name)) // Model MLBRNCM
			return new MLBRNCM(Env.getCtx(), rs, trxName);
		
		return null;
	}

}
