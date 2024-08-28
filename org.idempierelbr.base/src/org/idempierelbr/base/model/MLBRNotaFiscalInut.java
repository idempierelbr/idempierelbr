package org.idempierelbr.base.model;

import java.sql.ResultSet;
import java.util.Properties;

public class MLBRNotaFiscalInut extends X_LBR_NotaFiscalInut {

	private static final long serialVersionUID = -5437720661465297525L;
	
	public static final String PEDIDO_FILE_EXT = "-ped-inu.xml";
	public static final String RESPOSTA_FILE_EXT = "-inu.xml";
	public static final String DISTRIBUICAO_FILE_EXT = "-procInutNfe.xml";

	public MLBRNotaFiscalInut(Properties ctx, int LBR_NotaFiscalInut_ID,
			String trxName) {
		super(ctx, LBR_NotaFiscalInut_ID, trxName);
	}

	public MLBRNotaFiscalInut(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
}
