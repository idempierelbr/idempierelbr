package org.idempierelbr.base.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.compiere.model.MTable;
import org.compiere.model.Query;

public class MLBRCobGrupoOcorrencia extends X_LBR_Cob_GO {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2528093532567454009L;

	public MLBRCobGrupoOcorrencia(Properties ctx, int LBR_Cob_GO_ID,
			String trxName) {
		super(ctx, LBR_Cob_GO_ID, trxName);
	}

	public MLBRCobGrupoOcorrencia(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	public MLBRCobOcorrencia getOcorrenciaByValue(Properties ctx, String value, String trxName) {
		MTable table = MTable.get (ctx, MLBRCobOcorrencia.Table_Name);
		Query query =  new Query(ctx, table, "LBR_Cob_GO_ID=? AND Value=?", trxName);
		query.setParameters(new Object[]{getLBR_Cob_GO_ID(), value});
		return query.first();
	}

}
