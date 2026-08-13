package org.idempierelbr.base.model;

import java.sql.ResultSet;
import java.util.Properties;

public class MLBRNotaFiscalDocRef extends X_LBR_NotaFiscalDocRef {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7436485482667023695L;

	/**
	 * LBR_NFeDocRefType = 5 - NF-e de Pagamento Antecipado.
	 *
	 * <p>Não é um documento referenciado comum: a chave vai para o grupo
	 * BB/gPagAntecipado (NT 2025.002), e não para ide/NFref, porque serve para
	 * abater o IBS/CBS já recolhido na antecipação — não para vincular a operação.
	 */
	public static final String LBR_NFEDOCREFTYPE_NFeDePagamentoAntecipado = "5";

	public MLBRNotaFiscalDocRef(Properties ctx, int LBR_NotaFiscalDocRef_ID,
			String trxName) {
		super(ctx, LBR_NotaFiscalDocRef_ID, trxName);
		// TODO Auto-generated constructor stub
	}

	public MLBRNotaFiscalDocRef(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
		// TODO Auto-generated constructor stub
	}

}
