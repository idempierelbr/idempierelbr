package org.idempierelbr.openitems.model;

import java.sql.ResultSet;
import java.util.Properties;

public class MLBRBoletoStaticData extends X_LBR_BoletoSD {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7303539816230479300L;

	public MLBRBoletoStaticData(Properties ctx, int LBR_BoletoSD_ID,
			String trxName) {
		super(ctx, LBR_BoletoSD_ID, trxName);
	}

	public MLBRBoletoStaticData(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}

}
