package org.idempierelbr.base.model;

import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.Query;

public class MLBRDocLineOTHER extends X_LBR_DocLine_OTHER {

	public MLBRDocLineOTHER(Properties ctx, int LBR_DocLine_OTHER_ID,
			String trxName) {
		super(ctx, LBR_DocLine_OTHER_ID, trxName);
		// TODO Auto-generated constructor stub
	}

	public MLBRDocLineOTHER(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
		// TODO Auto-generated constructor stub
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = 4051644997999936954L;

	/**
	 * Get ISSQN array of a given Doc Line Details.
	 *
	 * @return ISSQN array
	 */
	public static MLBRDocLineOTHER[] getOfDetails(Properties ctx,
			int LBR_DocLine_Details_ID, String trxName) {
		MLBRDocLineDetails details = new MLBRDocLineDetails(ctx,
				LBR_DocLine_Details_ID, trxName);
		return getOfDetails(details);
	}

	/**
	 * Get OTHER array of a given Doc Line Details.
	 *
	 * @return OTHER array
	 */
	public static MLBRDocLineOTHER[] getOfDetails(MLBRDocLineDetails details) {
		if (details == null)
			return null;

		List<MLBRDocLineOTHER> list = new Query(details.getCtx(),
				MLBRDocLineOTHER.Table_Name, "LBR_DocLine_Details_ID=?",
				details.get_TrxName()).setParameters(
				new Object[] { details.getLBR_DocLine_Details_ID() }).list();

		return list.toArray(new MLBRDocLineOTHER[list.size()]);
	}

	/**
	 * Copy OTHER from a details to another details
	 *
	 * @return true if copied ok
	 */
	public static boolean copy(MLBRDocLineDetails detailsFrom,
			MLBRDocLineDetails detailsTo) {
		MLBRDocLineOTHER[] issqnLinesFrom = getOfDetails(detailsFrom);
		MLBRDocLineOTHER[] issqnLinesTo = getOfDetails(detailsTo);

		if (issqnLinesFrom.length == 0 || issqnLinesTo.length > 0)
			return false;

		MLBRDocLineOTHER issqnFrom = issqnLinesFrom[0];
		MLBRDocLineOTHER issqnTo = new MLBRDocLineOTHER(detailsTo.getCtx(), 0,
				detailsTo.get_TrxName());
		MLBRDocLineOTHER.copyValues(issqnFrom, issqnTo,
				detailsTo.getAD_Client_ID(), detailsTo.getAD_Org_ID());
		issqnTo.setLBR_DocLine_Details_ID(detailsTo.get_ID());

		try {
			issqnTo.saveEx();
			return true;
		} catch (AdempiereException e) {
			return false;
		}
	}

}