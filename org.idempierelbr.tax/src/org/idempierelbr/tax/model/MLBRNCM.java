package org.idempierelbr.tax.model;

import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;

import org.compiere.model.Query;
import org.compiere.util.DB;
import org.compiere.util.Env;

public class MLBRNCM extends org.idempierelbr.core.model.MLBRNCM {
	/**
	 * 
	 */
	private static final long serialVersionUID = 8239707151249901789L;

	/**
	 * 	Default Constructor
	 * 	@param ctx context
	 * 	@param LBR_NCM_ID ncm or 0
	 * 	@param trxName transaction
	 */
	public MLBRNCM(Properties ctx, int LBR_NCM_ID, String trxName) {
		super(ctx, LBR_NCM_ID, trxName);
	}
	
	/**
	 * 	Default Constructor
	 * 	@param ctx context
	 * 	@param rs ResultSet to load from
	 * 	@param trxName transaction
	 */
	public MLBRNCM(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	/**
	 * 		Retorna o registro mais relevante do imposto do NCM
	 * 
	 * 	@param 	Organização
	 * 	@param 	Valid From
	 * 	@return X_LBR_NCMTax
	 */
	public X_LBR_NCMTax getLBR_NCMTax (int AD_Org_ID, int C_Region_ID, Timestamp validFrom)
	{
		String where = "AD_Org_ID IN (0, ?) AND LBR_NCM_ID=? AND (C_Region_ID IS NULL OR C_Region_ID=?) ";
		//
		if (validFrom != null)
			where += "AND (ValidFrom IS NULL OR ValidFrom<=" + DB.TO_DATE(validFrom) + ") ";
		//
		X_LBR_NCMTax tcpg = new Query (Env.getCtx(), X_LBR_NCMTax.Table_Name, where, get_TrxName())
			.setParameters(new Object[]{AD_Org_ID, getLBR_NCM_ID(), C_Region_ID})
			.setOrderBy("AD_Org_ID DESC, C_Region_ID, ValidFrom DESC")
			.first();
		//
		return tcpg;
	}	//	getLBR_Tax_ID
}
