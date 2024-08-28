package org.idempierelbr.base.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.Properties;

public class MLBRNotaFiscalPaySched extends X_LBR_NotaFiscalPaySched {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7986101536921436677L;

	public MLBRNotaFiscalPaySched(Properties ctx,
			int LBR_NotaFiscalPaySched_ID, String trxName) {
		super(ctx, LBR_NotaFiscalPaySched_ID, trxName);
		// TODO Auto-generated constructor stub
	}

	public MLBRNotaFiscalPaySched(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
		// TODO Auto-generated constructor stub
	}
	
	public BigDecimal getDueAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_DueAmt);
		return bd;
	}

}
