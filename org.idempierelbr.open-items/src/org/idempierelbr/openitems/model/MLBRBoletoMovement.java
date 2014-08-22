package org.idempierelbr.openitems.model;

import java.sql.ResultSet;
import java.util.Properties;

public class MLBRBoletoMovement extends X_LBR_BoletoMovement {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2081329273070797159L;

	public MLBRBoletoMovement(Properties ctx, int LBR_BoletoMovement_ID,
			String trxName) {
		super(ctx, LBR_BoletoMovement_ID, trxName);
	}

	public MLBRBoletoMovement(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}

}
