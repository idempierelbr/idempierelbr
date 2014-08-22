package org.idempierelbr.openitems.model;

import java.sql.ResultSet;
import java.util.Properties;

public class MLBRCobOcorrencia extends X_LBR_Cob_Ocorrencia {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8955255930331123229L;

	public MLBRCobOcorrencia(Properties ctx, int LBR_Cob_Ocorrencia_ID,
			String trxName) {
		super(ctx, LBR_Cob_Ocorrencia_ID, trxName);
	}

	public MLBRCobOcorrencia(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}

}
