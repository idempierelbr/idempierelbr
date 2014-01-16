package org.idempierelbr.tax.model;

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
		if (tableName.equals(X_LBR_LegalMessage.Table_Name)) // Model X_LBR_LegalMessage
			return X_LBR_LegalMessage.class;
		else if (tableName.equals(X_LBR_TaxGroup.Table_Name)) // Model X_LBR_TaxGroup
			return X_LBR_TaxGroup.class;
		else if (tableName.equals(X_LBR_FiscalGroup_Product.Table_Name)) // Model X_LBR_FiscalGroup_Product
			return X_LBR_FiscalGroup_Product.class;
		else if (tableName.equals(X_LBR_FiscalGroup_BPartner.Table_Name)) // Model X_LBR_FiscalGroup_BPartner
			return X_LBR_FiscalGroup_BPartner.class;
		
		return null;
	}

	@Override
	public PO getPO(String tableName, int Record_ID, String trxName) {
		if (tableName.equals(X_LBR_LegalMessage.Table_Name)) // Model X_LBR_LegalMessage
			return new X_LBR_LegalMessage(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(X_LBR_TaxGroup.Table_Name)) // Model X_LBR_TaxGroup
			return new X_LBR_TaxGroup(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(X_LBR_FiscalGroup_Product.Table_Name)) // Model X_LBR_FiscalGroup_Product
			return new X_LBR_FiscalGroup_Product(Env.getCtx(), Record_ID, trxName);
		else if (tableName.equals(X_LBR_FiscalGroup_BPartner.Table_Name)) // Model X_LBR_FiscalGroup_BPartner
			return new X_LBR_FiscalGroup_BPartner(Env.getCtx(), Record_ID, trxName);
		
		return null;
	}

	@Override
	public PO getPO(String tableName, ResultSet rs, String trxName) {
		if (tableName.equals(X_LBR_LegalMessage.Table_Name)) // Model X_LBR_LegalMessage
			return new X_LBR_LegalMessage(Env.getCtx(), rs, trxName);
		if (tableName.equals(X_LBR_TaxGroup.Table_Name)) // Model X_LBR_TaxGroup
			return new X_LBR_TaxGroup(Env.getCtx(), rs, trxName);
		if (tableName.equals(X_LBR_FiscalGroup_Product.Table_Name)) // Model X_LBR_FiscalGroup_Product
			return new X_LBR_FiscalGroup_Product(Env.getCtx(), rs, trxName);
		if (tableName.equals(X_LBR_FiscalGroup_BPartner.Table_Name)) // Model X_LBR_FiscalGroup_BPartner
			return new X_LBR_FiscalGroup_BPartner(Env.getCtx(), rs, trxName);
		
		return null;
	}

}
