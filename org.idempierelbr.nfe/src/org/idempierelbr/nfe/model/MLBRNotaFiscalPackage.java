package org.idempierelbr.nfe.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.Properties;

import org.compiere.util.Env;

public class MLBRNotaFiscalPackage extends X_LBR_NotaFiscalPackage {

	public MLBRNotaFiscalPackage(Properties ctx, int LBR_NotaFiscalPackage_ID,
			String trxName) {
		super(ctx, LBR_NotaFiscalPackage_ID, trxName);
		// TODO Auto-generated constructor stub
	}

	public MLBRNotaFiscalPackage(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
		// TODO Auto-generated constructor stub
	}
	
	public BigDecimal getLBR_GrossWeight () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_GrossWeight);
		return bd;
	}
	
	public BigDecimal getLBR_NetWeight () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_NetWeight);
		return bd;
	}
	
	public BigDecimal getQty () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Qty);
		return bd;
	}
}
