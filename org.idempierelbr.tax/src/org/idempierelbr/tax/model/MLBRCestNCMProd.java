package org.idempierelbr.tax.model;

import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.PO;
import org.compiere.model.Query;
import org.compiere.util.Env;

public class MLBRCestNCMProd extends X_LBR_CEST_NCMProd {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8750305914728405862L;

	public MLBRCestNCMProd(Properties ctx, int LBR_CEST_NCMProd_ID,
			String trxName) {
		super(ctx, LBR_CEST_NCMProd_ID, trxName);
		// TODO Auto-generated constructor stub
	}

	public MLBRCestNCMProd(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
		// TODO Auto-generated constructor stub
	}

	/**
	 * Get CEST model by NCM and Product, priority to M_Product_ID
	 * 
	 * @param ctx
	 * @param m_product
	 * @param trxName
	 * @return {@link MLBRCestNCMProd}
	 */
	public static MLBRCestNCMProd get(Properties ctx, int M_Product_ID,
			int LBR_NCM_ID, String trxName) {

		//
		String where = "IsActive = ? AND AD_Client_ID IN (0, ?) AND (LBR_NCM_ID = ? OR M_Product_ID = ?) ";

		// query
		Query q = new Query(Env.getCtx(), MLBRCestNCMProd.Table_Name, where,
				null);
		q.setParameters(new Object[] { true, Env.getAD_Client_ID(ctx), LBR_NCM_ID, M_Product_ID });
		q.setOrderBy(" AD_Client_ID DESC, M_Product_ID DESC ");

		// list of results
		List<MLBRCestNCMProd> l = q.list();

		if (l.size() <= 0)
			return null;
		
		return l.get(0);
	}
	
	/**
	 * Get CEST value by NCM and Product, priority to M_Product_ID
	 * 
	 * @param ctx
	 * @param M_Product_ID
	 * @param LBR_NCM_ID
	 * @param trxName
	 * @return
	 * @throws Exception
	 */
	public static String getValue(Properties ctx, int M_Product_ID,
			int LBR_NCM_ID, String trxName) {

		// get cest
		MLBRCestNCMProd cest = get(ctx, M_Product_ID, LBR_NCM_ID, trxName);
		if (cest != null && cest.get_ID() > 0)
			return cest.getLBR_CEST().getValue();

		return "";
	}

}
