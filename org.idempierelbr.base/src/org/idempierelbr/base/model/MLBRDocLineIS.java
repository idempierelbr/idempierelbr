package org.idempierelbr.base.model;

import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.Query;

public class MLBRDocLineIS extends X_LBR_DocLine_IS {

	public MLBRDocLineIS(Properties ctx, int LBR_DocLine_IS_ID, String trxName) {
		super(ctx, LBR_DocLine_IS_ID, trxName);
		// TODO Auto-generated constructor stub
	}

	public MLBRDocLineIS(Properties ctx, int LBR_DocLine_IS_ID, String trxName, String... virtualColumns) {
		super(ctx, LBR_DocLine_IS_ID, trxName, virtualColumns);
		// TODO Auto-generated constructor stub
	}

	public MLBRDocLineIS(Properties ctx, String LBR_DocLine_IS_UU, String trxName) {
		super(ctx, LBR_DocLine_IS_UU, trxName);
		// TODO Auto-generated constructor stub
	}

	public MLBRDocLineIS(Properties ctx, String LBR_DocLine_IS_UU, String trxName, String... virtualColumns) {
		super(ctx, LBR_DocLine_IS_UU, trxName, virtualColumns);
		// TODO Auto-generated constructor stub
	}

	public MLBRDocLineIS(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
		// TODO Auto-generated constructor stub
	}

	/**
	 * 	Get IS array of a given Doc Line Details.
	 *	@return IS array
	 */
	public static MLBRDocLineIS[] getOfDetails (MLBRDocLineDetails details) {
		if (details == null)
			return null;
		
		List<MLBRDocLineIS> list = new Query (details.getCtx(), MLBRDocLineIS.Table_Name,
				"LBR_DocLine_Details_ID=?", details.get_TrxName())
			.setParameters(new Object[]{details.get_ID()})
			.list();
		
		return list.toArray(new MLBRDocLineIS[list.size()]);	
	}
	
	/**
	 * 	Copy IS from a details to another details
	 *	@return true if copied ok
	 */
	public static boolean copy(MLBRDocLineDetails detailsFrom, MLBRDocLineDetails detailsTo) {
		MLBRDocLineIS[] isLinesFrom = getOfDetails(detailsFrom);
		MLBRDocLineIS[] isLinesTo = getOfDetails(detailsTo);
		
		if (isLinesFrom.length == 0 || isLinesTo.length > 0)
			return false;
		
		MLBRDocLineIS isFrom = isLinesFrom[0];
		MLBRDocLineIS isTo = new MLBRDocLineIS(detailsTo.getCtx(), 0, detailsTo.get_TrxName());
		MLBRDocLineIS.copyValues(isFrom, isTo, detailsTo.getAD_Client_ID(), detailsTo.getAD_Org_ID());
		isTo.setLBR_DocLine_Details_ID(detailsTo.get_ID());
		
		try {
			isTo.saveEx();
			return true;
		} catch (AdempiereException e) {
			return false;
		}
	}
}
