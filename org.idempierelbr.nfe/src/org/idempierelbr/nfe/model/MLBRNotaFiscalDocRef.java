package org.idempierelbr.nfe.model;

import java.sql.ResultSet;
import java.util.Properties;

public class MLBRNotaFiscalDocRef extends X_LBR_NotaFiscalDocRef {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7436485482667023695L;

	public MLBRNotaFiscalDocRef(Properties ctx, int LBR_NotaFiscalDocRef_ID,
			String trxName) {
		super(ctx, LBR_NotaFiscalDocRef_ID, trxName);
		// TODO Auto-generated constructor stub
	}

	public MLBRNotaFiscalDocRef(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
		// TODO Auto-generated constructor stub
	}

}
