package org.idempierelbr.tax.model;

import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;

import org.compiere.model.Query;
import org.compiere.util.Env;

public class MLBRTaxGroup extends X_LBR_TaxGroup {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public MLBRTaxGroup(Properties ctx, int LBR_TaxGroup_ID, String trxName) {
		super(ctx, LBR_TaxGroup_ID, trxName);
	}
	
	public MLBRTaxGroup(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	public static MLBRTaxGroup getByName(String name)
	{
		MLBRTaxGroup group = new Query (Env.getCtx(), MLBRTaxGroup.Table_Name, "AD_Client_ID IN (0,?)", null)
				.setParameters(new Object[]{Env.getAD_Client_ID(Env.getCtx())}).first();
		return group;
	}
	
	public static MLBRTaxGroup[] getAll()
	{
		List<MLBRTaxGroup> list = new Query (Env.getCtx(), MLBRTaxGroup.Table_Name, "AD_Client_ID IN (0,?)", null)
				.setParameters(new Object[]{Env.getAD_Client_ID(Env.getCtx())}).list();
		//
		return list.toArray(new MLBRTaxGroup[list.size()]);	
	}
}