package org.idempierelbr.openitems.model;

import java.sql.ResultSet;
import java.util.Properties;

public class MLBRCobMovimento extends X_LBR_Cob_Movimento {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5688829944055707503L;

	public MLBRCobMovimento(Properties ctx, int LBR_Cob_Movimento_ID,
			String trxName) {
		super(ctx, LBR_Cob_Movimento_ID, trxName);
	}

	public MLBRCobMovimento(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}

}
