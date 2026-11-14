package org.idempierelbr.base.model;

import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.regex.Pattern;

import org.compiere.model.Query;
import org.compiere.util.DisplayType;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.compiere.util.TimeUtil;
import org.compiere.util.Util;

/**
 * Regra de Código de Benefício Fiscal (cBenef) por UF do emitente.
 *
 * <p>O cBenef é validado pela UF do emitente, contra a tabela de códigos dela.
 * Um código cadastrado no Produto ou na Situação Tributária vale para todas as
 * UFs; esta regra restringe o código a uma UF e a um CST/CSOSN do ICMS e,
 * opcionalmente, a um produto ou a um NCM.
 *
 * <p>A ordem de busca fica em {@link MLBRDocLineICMS#updateCBenef(MLBRDocLineDetails, org.compiere.model.MProduct, Timestamp)}.
 *
 * @author Alan Lescano
 */
public class MLBRCBenefRule extends X_LBR_CBenefRule {

	private static final long serialVersionUID = 4302573106389571284L;

	/**
	 * Formato do cBenef no leiaute da NF-e: 8 ou 10 caracteres sem espaço, ou
	 * o literal "SEM CBENEF" (leiauteNFe_v4.00.xsd, campo cBenef).
	 */
	private static final Pattern CBENEF_FORMAT = Pattern.compile("[!-\\u00FF]{8}|[!-\\u00FF]{10}|SEM CBENEF");

	public MLBRCBenefRule(Properties ctx, int LBR_CBenefRule_ID, String trxName) {
		super(ctx, LBR_CBenefRule_ID, trxName);
	}

	public MLBRCBenefRule(Properties ctx, String LBR_CBenefRule_UU, String trxName) {
		super(ctx, LBR_CBenefRule_UU, trxName);
	}

	public MLBRCBenefRule(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}

	/**
	 * Busca a regra vigente para o item. Entre as que se aplicam, vale a do
	 * produto, depois a do NCM e por fim a que só tem o CST. Em cada nível, a
	 * regra da organização vence a regra para todas as organizações (*).
	 *
	 * @param ctx contexto
	 * @param AD_Client_ID empresa
	 * @param AD_Org_ID organização emitente
	 * @param C_Region_ID UF do emitente
	 * @param taxStatus CST ou CSOSN do ICMS da linha (ex.: 41_1, 102)
	 * @param M_Product_ID produto da linha, ou 0
	 * @param LBR_NCM_ID NCM da linha, ou 0
	 * @param date data do documento, para a vigência; null usa a data de hoje
	 * @param trxName transação
	 * @return regra ou null se nenhuma se aplica
	 */
	public static MLBRCBenefRule get(Properties ctx, int AD_Client_ID, int AD_Org_ID, int C_Region_ID,
			String taxStatus, int M_Product_ID, int LBR_NCM_ID, Timestamp date, String trxName) {
		if (C_Region_ID <= 0 || Util.isEmpty(taxStatus, true))
			return null;

		Timestamp day = TimeUtil.getDay(date);
		String cst = taxStatus.trim();

		String where = COLUMNNAME_AD_Client_ID + "=? AND " + COLUMNNAME_AD_Org_ID + " IN (0,?)"
				+ " AND " + COLUMNNAME_C_Region_ID + "=?"
				+ " AND (" + COLUMNNAME_LBR_ICMS_TaxStatusTN + "=? OR " + COLUMNNAME_LBR_ICMS_TaxStatusSN + "=?)"
				+ " AND (" + COLUMNNAME_M_Product_ID + " IS NULL OR " + COLUMNNAME_M_Product_ID + "=?)"
				+ " AND (" + COLUMNNAME_LBR_NCM_ID + " IS NULL OR " + COLUMNNAME_LBR_NCM_ID + "=?)"
				+ " AND " + COLUMNNAME_ValidFrom + "<=?"
				+ " AND (" + COLUMNNAME_ValidTo + " IS NULL OR " + COLUMNNAME_ValidTo + ">=?)";

		String orderBy = "CASE WHEN " + COLUMNNAME_M_Product_ID + " IS NOT NULL THEN 1"
				+ " WHEN " + COLUMNNAME_LBR_NCM_ID + " IS NOT NULL THEN 2 ELSE 3 END, "
				+ COLUMNNAME_AD_Org_ID + " DESC, " + COLUMNNAME_ValidFrom + " DESC";

		return new Query(ctx, Table_Name, where, trxName)
				.setParameters(AD_Client_ID, AD_Org_ID, C_Region_ID, cst, cst, M_Product_ID, LBR_NCM_ID, day, day)
				.setOnlyActiveRecords(true)
				.setOrderBy(orderBy)
				.first();
	}

	/**
	 * Verifica se o código segue o formato do campo cBenef no leiaute da NF-e.
	 *
	 * @param cBenef código, já sem espaços nas pontas
	 * @return true se o leiaute aceita o código
	 */
	public static boolean isValidCBenef(String cBenef) {
		return cBenef != null && CBENEF_FORMAT.matcher(cBenef).matches();
	}

	/**
	 * CST ou CSOSN desta regra, conforme o regime.
	 *
	 * @return CST (Tributação Normal) ou CSOSN (Simples Nacional)
	 */
	public String getTaxStatus() {
		return LBR_ICMSREGIME_SimpleTaxation.equals(getLBR_ICMSRegime())
				? getLBR_ICMS_TaxStatusSN() : getLBR_ICMS_TaxStatusTN();
	}

	@Override
	protected boolean beforeSave(boolean newRecord) {
		// Guarda só o CST do regime escolhido
		boolean simpleTaxation = LBR_ICMSREGIME_SimpleTaxation.equals(getLBR_ICMSRegime());
		if (simpleTaxation)
			setLBR_ICMS_TaxStatusTN(null);
		else
			setLBR_ICMS_TaxStatusSN(null);

		String taxStatus = getTaxStatus();
		if (Util.isEmpty(taxStatus, true)) {
			log.saveError("FillMandatory", Msg.getElement(getCtx(),
					simpleTaxation ? COLUMNNAME_LBR_ICMS_TaxStatusSN : COLUMNNAME_LBR_ICMS_TaxStatusTN));
			return false;
		}

		// Rejeição 928: cBenef informado para CST sem benefício fiscal
		if (!MLBRDocLineICMS.isCBenefApplicable(taxStatus)) {
			log.saveError("Error", "O CST " + taxStatus + " não admite Código de Benefício Fiscal, e a SEFAZ "
					+ "rejeita a NF-e (Rejeição 928). Escolha um CST com isenção, redução, diferimento ou suspensão.");
			return false;
		}

		if (getM_Product_ID() > 0 && getLBR_NCM_ID() > 0) {
			log.saveError("Error", "Informe o produto ou o NCM, não os dois. A regra do produto já vale antes da regra do NCM.");
			return false;
		}

		if (isLBR_IsOmitCBenef()) {
			setLBR_CBenef(null);
		} else {
			String cBenef = getLBR_CBenef() == null ? "" : getLBR_CBenef().trim();
			if (cBenef.isEmpty()) {
				log.saveError("FillMandatory", Msg.getElement(getCtx(), COLUMNNAME_LBR_CBenef));
				return false;
			}
			if (!isValidCBenef(cBenef)) {
				log.saveError("Error", "Código de Benefício Fiscal inválido: " + cBenef + ". O leiaute da NF-e aceita "
						+ "8 ou 10 caracteres sem espaço, ou SEM CBENEF. Para o item sair sem código nesta UF, "
						+ "marque Não Informar cBenef.");
				return false;
			}
			setLBR_CBenef(cBenef);
		}

		if (getValidTo() != null && getValidTo().before(getValidFrom())) {
			log.saveError("Error", "O fim da vigência é anterior ao início.");
			return false;
		}

		if (isActive()) {
			MLBRCBenefRule other = getOverlappingRule();
			if (other != null) {
				String validFrom = DisplayType.getDateFormat(DisplayType.Date, Env.getLanguage(getCtx()))
						.format(other.getValidFrom());
				log.saveError("Error", "Já existe uma regra ativa com a mesma organização, UF, CST, produto e NCM, "
						+ "vigente a partir de " + validFrom + ", com vigência que se sobrepõe a esta. Encerre a "
						+ "vigência daquela regra antes de cadastrar a nova.");
				return false;
			}
		}

		return true;
	}

	/**
	 * Procura outra regra ativa com os mesmos filtros e vigência sobreposta.
	 * Sem esta checagem, a busca não teria como escolher entre as duas.
	 *
	 * @return regra conflitante ou null
	 */
	private MLBRCBenefRule getOverlappingRule() {
		StringBuilder where = new StringBuilder(COLUMNNAME_AD_Client_ID + "=? AND " + COLUMNNAME_AD_Org_ID + "=?"
				+ " AND " + COLUMNNAME_C_Region_ID + "=? AND " + COLUMNNAME_LBR_CBenefRule_ID + "<>?");
		List<Object> params = new ArrayList<Object>();
		params.add(getAD_Client_ID());
		params.add(getAD_Org_ID());
		params.add(getC_Region_ID());
		params.add(get_ID());

		appendFilter(where, params, COLUMNNAME_LBR_ICMS_TaxStatusTN, getLBR_ICMS_TaxStatusTN());
		appendFilter(where, params, COLUMNNAME_LBR_ICMS_TaxStatusSN, getLBR_ICMS_TaxStatusSN());
		appendFilter(where, params, COLUMNNAME_M_Product_ID, getM_Product_ID() > 0 ? getM_Product_ID() : null);
		appendFilter(where, params, COLUMNNAME_LBR_NCM_ID, getLBR_NCM_ID() > 0 ? getLBR_NCM_ID() : null);

		// [início, fim] das duas regras se cruzam; fim vazio é vigência em aberto
		where.append(" AND (" + COLUMNNAME_ValidTo + " IS NULL OR " + COLUMNNAME_ValidTo + ">=?)");
		params.add(getValidFrom());
		if (getValidTo() != null) {
			where.append(" AND " + COLUMNNAME_ValidFrom + "<=?");
			params.add(getValidTo());
		}

		return new Query(getCtx(), Table_Name, where.toString(), get_TrxName())
				.setParameters(params)
				.setOnlyActiveRecords(true)
				.setOrderBy(COLUMNNAME_ValidFrom)
				.first();
	}

	private static void appendFilter(StringBuilder where, List<Object> params, String columnName, Object value) {
		if (value == null || (value instanceof String && Util.isEmpty((String) value, true))) {
			where.append(" AND ").append(columnName).append(" IS NULL");
		} else {
			where.append(" AND ").append(columnName).append("=?");
			params.add(value);
		}
	}
}
