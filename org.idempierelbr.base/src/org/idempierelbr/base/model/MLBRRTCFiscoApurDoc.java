package org.idempierelbr.base.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.compiere.model.Query;

/**
 * Documento fiscal apurado pelo fisco — débito ou crédito — dentro de um
 * período de {@link MLBRRTCFiscoApuracao}.
 *
 * <p>A chave natural é período + tipo + chave do DF-e + origem + documento. É
 * por ela que a importação decide entre gravar um documento novo e atualizar
 * um existente, o que torna reimportar o mesmo arquivo inofensivo.
 *
 * @author Alan Lescano
 */
public class MLBRRTCFiscoApurDoc extends X_LBR_RTCFiscoApurDoc {
	private static final long serialVersionUID = 1L;

	/**
	 * Valor usado nas colunas da chave quando o arquivo não as traz. Elas são
	 * obrigatórias porque um índice único não barra duplicata com nulo.
	 */
	public static final String NO_DFE_KEY = "-";

	public MLBRRTCFiscoApurDoc(Properties ctx, int LBR_RTCFiscoApurDoc_ID, String trxName) {
		super(ctx, LBR_RTCFiscoApurDoc_ID, trxName);
	}

	public MLBRRTCFiscoApurDoc(Properties ctx, int LBR_RTCFiscoApurDoc_ID, String trxName, String... virtualColumns) {
		super(ctx, LBR_RTCFiscoApurDoc_ID, trxName, virtualColumns);
	}

	public MLBRRTCFiscoApurDoc(Properties ctx, String LBR_RTCFiscoApurDoc_UU, String trxName) {
		super(ctx, LBR_RTCFiscoApurDoc_UU, trxName);
	}

	public MLBRRTCFiscoApurDoc(Properties ctx, String LBR_RTCFiscoApurDoc_UU, String trxName,
			String... virtualColumns) {
		super(ctx, LBR_RTCFiscoApurDoc_UU, trxName, virtualColumns);
	}

	public MLBRRTCFiscoApurDoc(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}

	/**
	 * Documento pela chave natural, ou nulo se ainda não foi gravado.
	 */
	public static MLBRRTCFiscoApurDoc get(Properties ctx, int LBR_RTCFiscoApuracao_ID, String docType,
			String dfeKey, int origem, int documento, String trxName) {
		return new Query(ctx, Table_Name, "LBR_RTCFiscoApuracao_ID=? AND LBR_RTCFiscoDocType=?"
				+ " AND LBR_DFeChave=? AND LBR_Origem=? AND LBR_Documento=?", trxName)
			.setParameters(LBR_RTCFiscoApuracao_ID, docType, dfeKey, origem, documento)
			.setClient_ID()
			.firstOnly();
	}

	@Override
	protected boolean beforeSave(boolean newRecord) {
		// o dado é da raiz de CNPJ, não de uma organização
		setAD_Org_ID(0);

		return true;
	}
}
