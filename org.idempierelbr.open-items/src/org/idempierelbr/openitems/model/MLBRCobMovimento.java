package org.idempierelbr.openitems.model;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Properties;

import org.compiere.model.MBank;
import org.compiere.model.MTable;
import org.compiere.model.Query;

public class MLBRCobMovimento extends X_LBR_Cob_Movimento {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5688829944055707503L;

	public MLBRCobMovimento(Properties ctx, int LBR_Cob_Movimento_ID,
			String trxName) {
		super(ctx, LBR_Cob_Movimento_ID, trxName);
	}

	public MLBRCobMovimento(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}

	public static MLBRCobMovimento getMovimento(Properties ctx, String parentCodMovimento,
			String tipoMovimento, MBank bank, String trxName) {
		
		if (parentCodMovimento == null || parentCodMovimento.trim().length() == 0 ||
				tipoMovimento == null || tipoMovimento.trim().length() == 0)
			return null;
		
		ArrayList<Object> params = new ArrayList<Object>();
		
		StringBuilder where = new StringBuilder("Value=? AND LBR_CNAB240MovementType=?");
		params.add(parentCodMovimento);
		params.add(tipoMovimento);
		
		// TODO: Implement based on bank (parent/child)
		/*if (bank != null) {
			where.append(" AND C_Bank_ID=?");
			params.add(bank.get_ID());
		}*/		
		
		MTable table = MTable.get (ctx, MLBRCobMovimento.Table_Name);
		Query query =  new Query(ctx, table, where.toString(), trxName);
		query.setParameters(params);
		return query.first();
	}

}
