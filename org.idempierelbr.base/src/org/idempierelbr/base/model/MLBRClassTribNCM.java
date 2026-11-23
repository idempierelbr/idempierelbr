package org.idempierelbr.base.model;

import java.sql.ResultSet;
import java.sql.Timestamp;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import org.compiere.model.Query;
import org.idempierelbr.base.ibscbs.NcmAplicavel;

/**
 * NCM aplicável a uma cClassTrib (anexo), com as exceções.
 *
 * <p>É norma, não configuração: a crítica lê só os registros de System
 * (AD_Client_ID=0). A regra fica em {@link NcmAplicavel}.
 */
public class MLBRClassTribNCM extends X_LBR_ClassTribNCM {

	private static final long serialVersionUID = -1757021305587342093L;

	public MLBRClassTribNCM(Properties ctx, int LBR_ClassTribNCM_ID, String trxName) {
		super(ctx, LBR_ClassTribNCM_ID, trxName);
	}

	public MLBRClassTribNCM(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}

	/**
	 * Critica o NCM contra o anexo da cClassTrib.
	 *
	 * @param ctx contexto
	 * @param LBR_ClassTrib_IBSCBS_ID cClassTrib
	 * @param ncm NCM do item, com ou sem pontos
	 * @param date data do fato gerador
	 * @param trxName transação
	 * @return resultado da crítica
	 */
	public static NcmAplicavel.Resultado check(Properties ctx, int LBR_ClassTrib_IBSCBS_ID, String ncm,
			Timestamp date, String trxName) {
		String digits = ncm == null ? null : ncm.replaceAll("\\D", "");
		return NcmAplicavel.criticar(digits, getVinculos(ctx, LBR_ClassTrib_IBSCBS_ID, trxName),
				date.toLocalDateTime().toLocalDate());
	}

	/**
	 * Anexo da cClassTrib (todos os vínculos, vigentes ou não, com as exceções).
	 */
	private static List<NcmAplicavel.Vinculo> getVinculos(Properties ctx, int LBR_ClassTrib_IBSCBS_ID,
			String trxName) {
		List<MLBRClassTribNCM> ncms = new Query(ctx, Table_Name,
				COLUMNNAME_AD_Client_ID + "=0 AND " + COLUMNNAME_LBR_ClassTrib_IBSCBS_ID + "=?", trxName)
				.setParameters(LBR_ClassTrib_IBSCBS_ID)
				.setOnlyActiveRecords(true)
				.list();

		List<NcmAplicavel.Vinculo> vinculos = new ArrayList<>();
		if (ncms.isEmpty())
			return vinculos;

		Map<Integer, NcmAplicavel.Vinculo> byId = new HashMap<>();
		for (MLBRClassTribNCM n : ncms) {
			NcmAplicavel.Vinculo v = new NcmAplicavel.Vinculo(n.getLBR_NCMCode(), toDate(n.getValidFrom()),
					toDate(n.getValidTo()));
			vinculos.add(v);
			byId.put(n.getLBR_ClassTribNCM_ID(), v);
		}

		String where = X_LBR_ClassTribNCMExcl.COLUMNNAME_AD_Client_ID + "=0 AND "
				+ X_LBR_ClassTribNCMExcl.COLUMNNAME_LBR_ClassTribNCM_ID + " IN (SELECT "
				+ COLUMNNAME_LBR_ClassTribNCM_ID + " FROM " + Table_Name + " WHERE "
				+ COLUMNNAME_LBR_ClassTrib_IBSCBS_ID + "=?)";
		List<X_LBR_ClassTribNCMExcl> excls = new Query(ctx, X_LBR_ClassTribNCMExcl.Table_Name, where, trxName)
				.setParameters(LBR_ClassTrib_IBSCBS_ID)
				.setOnlyActiveRecords(true)
				.list();

		for (X_LBR_ClassTribNCMExcl e : excls) {
			NcmAplicavel.Vinculo v = byId.get(e.getLBR_ClassTribNCM_ID());
			if (v != null)
				v.addExcecao(new NcmAplicavel.Excecao(e.getLBR_NCMCode(), toDate(e.getValidFrom()),
						toDate(e.getValidTo())));
		}

		return vinculos;
	}

	private static LocalDate toDate(Timestamp ts) {
		return ts == null ? null : ts.toLocalDateTime().toLocalDate();
	}
}
