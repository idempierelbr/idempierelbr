package org.idempierelbr.tax.model;

import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;

import org.adempiere.exceptions.DBException;
import org.compiere.model.Query;

public class MLBRDocLineISSQN extends X_LBR_DocLine_ISSQN {

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
	public MLBRDocLineISSQN(Properties ctx, int LBR_DocLine_ISSQN_ID,
			String trxName) {
		super(ctx, LBR_DocLine_ISSQN_ID, trxName);
	}
	
	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRDocLineISSQN(Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}
	
	/**
	 * 	Get ISSQN array of a given Doc Line Details.
	 *	@return ISSQN array
	 */
	public static MLBRDocLineISSQN[] getOfDetails (Properties ctx, int LBR_DocLine_Details_ID, String trxName) {	
		MLBRDocLineDetails details = new MLBRDocLineDetails(ctx, LBR_DocLine_Details_ID, trxName);
		return getOfDetails(details);
	}	
	
	/**
	 * 	Get ISSQN array of a given Doc Line Details.
	 *	@return ISSQN array
	 */
	public static MLBRDocLineISSQN[] getOfDetails (MLBRDocLineDetails details) {	
		if (details == null)
			return null;
		
		List<MLBRDocLineISSQN> list = new Query (details.getCtx(), MLBRDocLineISSQN.Table_Name,
				"LBR_DocLine_Details_ID=?", details.get_TrxName())
			.setParameters(new Object[]{details.get_ID()})
			.list();
		
		return list.toArray(new MLBRDocLineISSQN[list.size()]);
	}

}
