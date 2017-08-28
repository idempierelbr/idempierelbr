package org.idempierelbr.tax.model;

import java.sql.ResultSet;
import java.util.Properties;

public class MLBRNCMMono extends X_LBR_NCMMono {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3153604482936820689L;

	public MLBRNCMMono(Properties ctx, int LBR_NCMMono_ID, String trxName) {
		super(ctx, LBR_NCMMono_ID, trxName);
	}
	
	public MLBRNCMMono(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
}
