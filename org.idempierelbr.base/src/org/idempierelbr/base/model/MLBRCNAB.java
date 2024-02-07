package org.idempierelbr.base.model;

import java.sql.ResultSet;
import java.util.Properties;

public class MLBRCNAB extends X_LBR_CNAB {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2649976467375687780L;

	public MLBRCNAB(Properties ctx, int LBR_CNAB_ID, String trxName) {
		super(ctx, LBR_CNAB_ID, trxName);
		// TODO Auto-generated constructor stub
	}

	public MLBRCNAB(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
		// TODO Auto-generated constructor stub
	}

}
