package org.idempierelbr.tax.model;

import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;

import org.compiere.model.MTax;
import org.compiere.model.Query;
import org.compiere.util.Env;
import org.idempierelbr.core.model.I_LBR_NCM;

public class MLBRNCMMono extends X_LBR_NCMMono {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3153604482936820689L;

	public MLBRNCMMono(Properties ctx, int LBR_NCMMono_ID, String trxName) {
		super(ctx, LBR_NCMMono_ID, trxName);
	}
	
	public MLBRNCMMono(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}

	public static boolean isMonophase(int C_Tax_ID, String ncm) {
		MLBRNCMMono[] monos = MLBRNCMMono.getMatches(C_Tax_ID, ncm);
		
		if (monos != null && monos.length > 0)
			return true;
		
		return false;
	}
	
	public static MLBRNCMMono[] getMatches(int C_Tax_ID, String ncm) {
		if (C_Tax_ID <= 0 || ncm == null || ncm.trim().length() != 10)
			return null;
		
		MTax tax = new MTax(Env.getCtx(), C_Tax_ID, null);
		
		StringBuilder sql = new StringBuilder()
				.append("'")
				.append(ncm.trim())
				.append("%' LIKE (value || '%')")
				.append(" AND C_Tax_ID = ")
				.append(tax.get_ID())
				.append(" AND IsActive = 'Y'")
				.append(" AND AD_Org_ID IN (0, ")
				.append(tax.getAD_Org_ID())
				.append(")");
		
		List<MLBRNCMMono> list = new Query (tax.getCtx(), MLBRNCMMono.Table_Name,
				sql.toString(), tax.get_TrxName())
				.list();
		
		return list.toArray(new MLBRNCMMono[list.size()]);
	}
}
