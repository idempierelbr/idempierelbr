package org.idempierelbr.core.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.compiere.model.Query;
import org.compiere.util.Env;
import org.compiere.util.Msg;

public class MLBRNCM extends X_LBR_NCM {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1930353726645380739L;

	public MLBRNCM(Properties ctx, int LBR_NCM_ID, String trxName) {
		super(ctx, LBR_NCM_ID, trxName);
	}
	
	public MLBRNCM(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	protected boolean beforeSave(boolean newRecord) {
		if (newRecord || is_ValueChanged("Value"))
		{
			StringBuilder whereClause = new StringBuilder();
				whereClause.append("AD_Client_ID=?");       // #1
				whereClause.append(" AND AD_Org_ID=?");     // #2
				whereClause.append(" AND value=?");  		// #3
			
			MLBRNCM existingNCM = new Query(getCtx(), MLBRNCM.Table_Name, whereClause.toString(), null)
		 		.setParameters(new Object[]{getAD_Client_ID(), getAD_Org_ID(), getValue()})
		 		.firstOnly();
			
			if (existingNCM != null) {
				log.saveError("Error", Msg.getMsg(Env.getCtx(), "LBR_NCMAlreadyExist"));
				return false;
			}
		}
		
		return true;
	}

}
