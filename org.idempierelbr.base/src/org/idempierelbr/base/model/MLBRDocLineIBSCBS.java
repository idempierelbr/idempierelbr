package org.idempierelbr.base.model;

import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.Query;

public class MLBRDocLineIBSCBS extends X_LBR_DocLine_IBSCBS {

	public MLBRDocLineIBSCBS(Properties ctx, int LBR_DocLine_IBSCBS_ID, String trxName) {
		super(ctx, LBR_DocLine_IBSCBS_ID, trxName);
		// TODO Auto-generated constructor stub
	}

	public MLBRDocLineIBSCBS(Properties ctx, int LBR_DocLine_IBSCBS_ID, String trxName, String... virtualColumns) {
		super(ctx, LBR_DocLine_IBSCBS_ID, trxName, virtualColumns);
		// TODO Auto-generated constructor stub
	}

	public MLBRDocLineIBSCBS(Properties ctx, String LBR_DocLine_IBSCBS_UU, String trxName) {
		super(ctx, LBR_DocLine_IBSCBS_UU, trxName);
		// TODO Auto-generated constructor stub
	}

	public MLBRDocLineIBSCBS(Properties ctx, String LBR_DocLine_IBSCBS_UU, String trxName, String... virtualColumns) {
		super(ctx, LBR_DocLine_IBSCBS_UU, trxName, virtualColumns);
		// TODO Auto-generated constructor stub
	}

	public MLBRDocLineIBSCBS(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
		// TODO Auto-generated constructor stub
	}
	
	/**
	 * 	Get IBS/CBS array of a given Doc Line Details.
	 *	@return IBS/CBS array
	 */
	public static MLBRDocLineIBSCBS[] getOfDetails (MLBRDocLineDetails details) {
		if (details == null)
			return null;
		
		List<MLBRDocLineIBSCBS> list = new Query (details.getCtx(), MLBRDocLineIBSCBS.Table_Name,
				"LBR_DocLine_Details_ID=?", details.get_TrxName())
			.setParameters(new Object[]{details.get_ID()})
			.list();
		
		return list.toArray(new MLBRDocLineIBSCBS[list.size()]);	
	}
	
	/**
	 * 	Copy IBS/CBS from a details to another details
	 *	@return true if copied ok
	 */
	public static boolean copy(MLBRDocLineDetails detailsFrom, MLBRDocLineDetails detailsTo) {
		MLBRDocLineIBSCBS[] ibsCbsLinesFrom = getOfDetails(detailsFrom);
		MLBRDocLineIBSCBS[] ibsCbsLinesTo = getOfDetails(detailsTo);
		
		if (ibsCbsLinesFrom.length == 0 || ibsCbsLinesTo.length > 0)
			return false;
		
		MLBRDocLineIBSCBS isFrom = ibsCbsLinesFrom[0];
		MLBRDocLineIBSCBS isTo = new MLBRDocLineIBSCBS(detailsTo.getCtx(), 0, detailsTo.get_TrxName());
		MLBRDocLineIBSCBS.copyValues(isFrom, isTo, detailsTo.getAD_Client_ID(), detailsTo.getAD_Org_ID());
		isTo.setLBR_DocLine_Details_ID(detailsTo.get_ID());
		
		try {
			isTo.saveEx();
			return true;
		} catch (AdempiereException e) {
			return false;
		}
	}

}
