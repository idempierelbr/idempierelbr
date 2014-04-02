package org.idempierelbr.tax.model;

import java.sql.ResultSet;
import java.util.Properties;

public class MLBRDocLineCOFINS extends X_LBR_DocLine_COFINS {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8383356153009002225L;

	/**
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRDocLineCOFINS(Properties ctx, int LBR_DocLine_COFINS_ID,
			String trxName) {
		super(ctx, LBR_DocLine_COFINS_ID, trxName);
	}
	
	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRDocLineCOFINS(Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}

}
