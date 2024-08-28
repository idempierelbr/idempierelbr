package org.idempierelbr.base.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.compiere.model.Query;

public class MLBRNFSeWS extends X_LBR_NFSeWS {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3389150897062244814L;

	public MLBRNFSeWS(Properties ctx, int LBR_NFSeWS_ID, String trxName) {
		super(ctx, LBR_NFSeWS_ID, trxName);
		// TODO Auto-generated constructor stub
	}

	public MLBRNFSeWS(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
		// TODO Auto-generated constructor stub
	}

	/**
	 * Get WS
	 * 
	 * @param ctx
	 * @param method
	 * @param AD_Org_ID
	 * @param EnvType
	 * @param trxName
	 * @return
	 */
	public static MLBRNFSeWS getWS(Properties ctx, MLBRNFSConfig config,
			String envType, String trxName) {

		// where
		String where = "LBR_NFSConfig_ID = ? AND LBR_NFeEnv = ? ";

		// query
		Query q = new Query(ctx, MLBRNFSeWS.Table_Name, where, trxName);
		q.setParameters(new Object[] { config.get_ID(), envType });

		//
		return q.first();
	}
}
