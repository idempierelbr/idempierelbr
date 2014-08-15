package org.idempierelbr.openitems.model;

import java.sql.ResultSet;
import java.util.Properties;

public class MLBRCollectionDefault extends X_LBR_Collection_Default {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4886418991789314927L;

	public MLBRCollectionDefault(Properties ctx, int LBR_Collection_Default_ID,
			String trxName) {
		super(ctx, LBR_Collection_Default_ID, trxName);
	}

	public MLBRCollectionDefault(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}

}
