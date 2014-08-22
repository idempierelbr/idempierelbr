package org.idempierelbr.openitems.model;

import java.sql.ResultSet;
import java.util.Properties;

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

}
