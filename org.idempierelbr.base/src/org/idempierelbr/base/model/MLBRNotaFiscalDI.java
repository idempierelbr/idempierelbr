package org.idempierelbr.base.model;

import java.sql.ResultSet;
import java.util.Properties;

public class MLBRNotaFiscalDI extends X_LBR_NotaFiscalDI {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8323974075134975618L;

	public MLBRNotaFiscalDI(Properties ctx, int LBR_NotaFiscalDI_ID,
			String trxName) {
		super(ctx, LBR_NotaFiscalDI_ID, trxName);
		// TODO Auto-generated constructor stub
	}

	public MLBRNotaFiscalDI(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
		// TODO Auto-generated constructor stub
	}
}
