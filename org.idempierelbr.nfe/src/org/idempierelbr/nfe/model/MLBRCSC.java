package org.idempierelbr.nfe.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.compiere.model.Query;
import org.compiere.util.Env;

public class MLBRCSC extends X_LBR_CSC {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5756020518483727188L;

	public MLBRCSC(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
		// TODO Auto-generated constructor stub
	}

	public MLBRCSC(Properties ctx, int LBR_CSC_ID, String trxName) {
		super(ctx, LBR_CSC_ID, trxName);
		// TODO Auto-generated constructor stub
	}

	
	/**
	 * Get CSC by Org
	 * 
	 * @param AD_Org_ID
	 * @return MRDTConfig
	 */
	public static MLBRCSC get(int AD_Org_ID, String tpEnv) {
		
		// where
		String where = "AD_Org_ID = ? AND IsActive='Y' AND LBR_NFeEnv = ? ";
		
		// query
		Query q = new Query(Env.getCtx(), MLBRCSC.Table_Name, where, null);
		q.setParameters(new Object[] { AD_Org_ID, tpEnv});
		q.setOrderBy("IsDefault, Value DESC");
		
		//
		return q.first();
	}
}
