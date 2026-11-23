package org.idempierelbr.base.model;

import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;

import org.compiere.model.Query;
import org.compiere.util.TimeUtil;

/**
 * Redução da alíquota de IBS/CBS por cClassTrib, tributo e vigência.
 *
 * <p>É norma, não configuração: a busca lê só os registros de System
 * (AD_Client_ID=0), carregados das tabelas oficiais da Receita.
 */
public class MLBRClassTribRed extends X_LBR_ClassTribRed {

	private static final long serialVersionUID = 6131866306185790561L;

	public MLBRClassTribRed(Properties ctx, int LBR_ClassTribRed_ID, String trxName) {
		super(ctx, LBR_ClassTribRed_ID, trxName);
	}

	public MLBRClassTribRed(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}

	/**
	 * Redução vigente.
	 *
	 * @param ctx contexto
	 * @param LBR_ClassTrib_IBSCBS_ID cClassTrib
	 * @param LBR_TaxGroup_ID grupo do tributo (CBS, IBSUF ou IBSMun)
	 * @param date data do fato gerador
	 * @param trxName transação
	 * @return redução ou null se não houver registro vigente
	 */
	public static MLBRClassTribRed get(Properties ctx, int LBR_ClassTrib_IBSCBS_ID, int LBR_TaxGroup_ID,
			Timestamp date, String trxName) {
		if (LBR_ClassTrib_IBSCBS_ID <= 0 || LBR_TaxGroup_ID <= 0 || date == null)
			return null;

		Timestamp day = TimeUtil.getDay(date);
		String where = COLUMNNAME_AD_Client_ID + "=0"
				+ " AND " + COLUMNNAME_LBR_ClassTrib_IBSCBS_ID + "=?"
				+ " AND " + COLUMNNAME_LBR_TaxGroup_ID + "=?"
				+ " AND " + COLUMNNAME_ValidFrom + "<=?"
				+ " AND (" + COLUMNNAME_ValidTo + " IS NULL OR " + COLUMNNAME_ValidTo + ">=?)";

		return new Query(ctx, Table_Name, where, trxName)
				.setParameters(LBR_ClassTrib_IBSCBS_ID, LBR_TaxGroup_ID, day, day)
				.setOnlyActiveRecords(true)
				.setOrderBy(COLUMNNAME_ValidFrom + " DESC")
				.first();
	}
}
