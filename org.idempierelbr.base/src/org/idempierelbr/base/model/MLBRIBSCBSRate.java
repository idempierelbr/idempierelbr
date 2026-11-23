package org.idempierelbr.base.model;

import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;

import org.compiere.model.Query;
import org.compiere.model.X_C_City;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.compiere.util.TimeUtil;

/**
 * Alíquota de IBS/CBS por tributo, local e vigência.
 *
 * <p>Os registros de System (AD_Client_ID=0) trazem as alíquotas oficiais e são
 * mantidos por migração. O tenant sobrescreve com um registro próprio na mesma
 * chave (tributo, UF, município e cClassTrib).
 *
 * <p>Busca: o local mais específico primeiro (município, depois UF, depois
 * nacional) e, no mesmo nível, o tenant antes do System. A cClassTrib só é
 * preenchida nas alíquotas fixas ou uniformes setoriais.
 */
public class MLBRIBSCBSRate extends X_LBR_IBSCBSRate {

	private static final long serialVersionUID = -2875290617384012255L;

	public MLBRIBSCBSRate(Properties ctx, int LBR_IBSCBSRate_ID, String trxName) {
		super(ctx, LBR_IBSCBSRate_ID, trxName);
	}

	public MLBRIBSCBSRate(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}

	/**
	 * Alíquota padrão do ente (ou a de referência, na falta dela).
	 *
	 * @param ctx contexto
	 * @param LBR_TaxGroup_ID grupo do tributo (CBS, IBSUF ou IBSMun)
	 * @param C_Region_ID UF do local da operação; 0 se desconhecida
	 * @param C_City_ID município do local da operação; 0 se desconhecido
	 * @param date data do fato gerador
	 * @param trxName transação
	 * @return alíquota ou null se não houver alíquota vigente
	 */
	public static MLBRIBSCBSRate getStandard(Properties ctx, int LBR_TaxGroup_ID, int C_Region_ID,
			int C_City_ID, Timestamp date, String trxName) {
		String where = COLUMNNAME_LBR_ClassTrib_IBSCBS_ID + " IS NULL"
				+ " AND (" + COLUMNNAME_C_Region_ID + " IS NULL OR " + COLUMNNAME_C_Region_ID + "=?)"
				+ " AND (" + COLUMNNAME_C_City_ID + " IS NULL OR " + COLUMNNAME_C_City_ID + "=?)";
		return get(ctx, LBR_TaxGroup_ID, where, new Object[] {C_Region_ID, C_City_ID}, date, trxName);
	}

	/**
	 * Alíquota de referência (uniforme nacional), sem UF nem município.
	 */
	public static MLBRIBSCBSRate getReference(Properties ctx, int LBR_TaxGroup_ID, Timestamp date, String trxName) {
		String where = COLUMNNAME_LBR_ClassTrib_IBSCBS_ID + " IS NULL"
				+ " AND " + COLUMNNAME_C_Region_ID + " IS NULL"
				+ " AND " + COLUMNNAME_C_City_ID + " IS NULL";
		return get(ctx, LBR_TaxGroup_ID, where, new Object[0], date, trxName);
	}

	/**
	 * Alíquota fixa ou uniforme setorial de uma cClassTrib.
	 */
	public static MLBRIBSCBSRate getOfClassTrib(Properties ctx, int LBR_TaxGroup_ID, int LBR_ClassTrib_IBSCBS_ID,
			Timestamp date, String trxName) {
		String where = COLUMNNAME_LBR_ClassTrib_IBSCBS_ID + "=?";
		return get(ctx, LBR_TaxGroup_ID, where, new Object[] {LBR_ClassTrib_IBSCBS_ID}, date, trxName);
	}

	private static MLBRIBSCBSRate get(Properties ctx, int LBR_TaxGroup_ID, String whereLocal, Object[] paramsLocal,
			Timestamp date, String trxName) {
		if (LBR_TaxGroup_ID <= 0 || date == null)
			return null;

		Timestamp day = TimeUtil.getDay(date);
		String where = COLUMNNAME_LBR_TaxGroup_ID + "=?"
				+ " AND " + COLUMNNAME_AD_Client_ID + " IN (0,?)"
				+ " AND " + COLUMNNAME_ValidFrom + "<=?"
				+ " AND (" + COLUMNNAME_ValidTo + " IS NULL OR " + COLUMNNAME_ValidTo + ">=?)"
				+ " AND " + whereLocal;

		Object[] params = new Object[4 + paramsLocal.length];
		params[0] = LBR_TaxGroup_ID;
		params[1] = Env.getAD_Client_ID(ctx);
		params[2] = day;
		params[3] = day;
		System.arraycopy(paramsLocal, 0, params, 4, paramsLocal.length);

		// Município antes de UF antes de nacional; no mesmo nível, o tenant antes do System
		String orderBy = "CASE WHEN " + COLUMNNAME_C_City_ID + " IS NULL THEN 1 ELSE 0 END, "
				+ "CASE WHEN " + COLUMNNAME_C_Region_ID + " IS NULL THEN 1 ELSE 0 END, "
				+ COLUMNNAME_AD_Client_ID + " DESC, " + COLUMNNAME_ValidFrom + " DESC";

		return new Query(ctx, Table_Name, where, trxName)
				.setParameters(params)
				.setOnlyActiveRecords(true)
				.setOrderBy(orderBy)
				.first();
	}

	@Override
	protected boolean beforeSave(boolean newRecord) {
		if (getValidTo() != null && getValidTo().before(getValidFrom())) {
			log.saveError("Error", Msg.parseTranslation(getCtx(), "@ValidTo@ < @ValidFrom@"));
			return false;
		}

		// O município precisa ser da UF informada
		if (getC_City_ID() > 0 && getC_Region_ID() > 0) {
			X_C_City city = new X_C_City(getCtx(), getC_City_ID(), get_TrxName());
			if (city.getC_Region_ID() > 0 && city.getC_Region_ID() != getC_Region_ID()) {
				log.saveError("Error", "O município informado não pertence à UF informada. Corrija a UF ou "
						+ "deixe-a em branco para usar a do município.");
				return false;
			}
		}

		// Duas alíquotas na mesma chave e com vigências que se cruzam deixam a busca ambígua.
		// O índice do banco não barra a duplicata porque há colunas anuláveis na chave.
		String sql = "SELECT COUNT(*) FROM " + Table_Name
				+ " WHERE " + COLUMNNAME_AD_Client_ID + "=?"
				+ " AND " + COLUMNNAME_LBR_TaxGroup_ID + "=?"
				+ " AND COALESCE(" + COLUMNNAME_C_Region_ID + ",0)=?"
				+ " AND COALESCE(" + COLUMNNAME_C_City_ID + ",0)=?"
				+ " AND COALESCE(" + COLUMNNAME_LBR_ClassTrib_IBSCBS_ID + ",0)=?"
				+ " AND " + COLUMNNAME_IsActive + "='Y'"
				+ " AND " + COLUMNNAME_LBR_IBSCBSRate_ID + "<>?"
				+ " AND (" + COLUMNNAME_ValidTo + " IS NULL OR " + COLUMNNAME_ValidTo + ">=?)"
				+ (getValidTo() != null ? " AND " + COLUMNNAME_ValidFrom + "<=?" : "");

		int count = getValidTo() != null
				? DB.getSQLValueEx(get_TrxName(), sql, getAD_Client_ID(), getLBR_TaxGroup_ID(),
						getC_Region_ID(), getC_City_ID(), getLBR_ClassTrib_IBSCBS_ID(), get_ID(),
						getValidFrom(), getValidTo())
				: DB.getSQLValueEx(get_TrxName(), sql, getAD_Client_ID(), getLBR_TaxGroup_ID(),
						getC_Region_ID(), getC_City_ID(), getLBR_ClassTrib_IBSCBS_ID(), get_ID(),
						getValidFrom());

		if (isActive() && count > 0) {
			log.saveError("Error", "Já existe alíquota de IBS/CBS para este tributo, local e cClassTrib com "
					+ "vigência que se cruza com a deste registro. Encerre a vigência do registro anterior "
					+ "(Válido Até) antes de cadastrar a nova.");
			return false;
		}

		return true;
	}
}
