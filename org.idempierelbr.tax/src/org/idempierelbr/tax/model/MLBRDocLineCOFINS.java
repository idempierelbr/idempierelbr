package org.idempierelbr.tax.model;

import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;

import org.adempiere.exceptions.DBException;
import org.compiere.model.Query;

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
	
	/**
	 * 	Get COFINS array of a given Doc Line Details.
	 *	@return COFINS array
	 */
	public static MLBRDocLineCOFINS[] getOfDetails (Properties ctx, int LBR_DocLine_Details_ID, String trxName) {	
		MLBRDocLineDetails details = new MLBRDocLineDetails(ctx, LBR_DocLine_Details_ID, trxName);
		return getOfDetails(details);
	}	
	
	/**
	 * 	Get COFINS array of a given Doc Line Details.
	 *	@return COFINS array
	 */
	public static MLBRDocLineCOFINS[] getOfDetails (MLBRDocLineDetails details) {	
		if (details == null)
			return null;
		
		List<MLBRDocLineCOFINS> list = new Query (details.getCtx(), MLBRDocLineCOFINS.Table_Name,
				"LBR_DocLine_Details_ID=?", details.get_TrxName())
			.setParameters(new Object[]{details.get_ID()})
			.list();
		
		return list.toArray(new MLBRDocLineCOFINS[list.size()]);	
	}

}
