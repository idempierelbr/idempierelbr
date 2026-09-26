package org.idempierelbr.base.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.Properties;

import org.compiere.model.Query;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * Período de apuração de um tributo, como o fisco o apurou, para uma raiz de
 * CNPJ. Os documentos apurados ficam em {@link MLBRRTCFiscoApurDoc}.
 *
 * <p>Os totais são a soma do que veio da Receita, recalculada a cada
 * importação. Nada aqui é conciliado com a escrituração do iDempiere.
 *
 * @author Alan Lescano
 */
public class MLBRRTCFiscoApuracao extends X_LBR_RTCFiscoApuracao {
	private static final long serialVersionUID = 1L;

	public MLBRRTCFiscoApuracao(Properties ctx, int LBR_RTCFiscoApuracao_ID, String trxName) {
		super(ctx, LBR_RTCFiscoApuracao_ID, trxName);
	}

	public MLBRRTCFiscoApuracao(Properties ctx, int LBR_RTCFiscoApuracao_ID, String trxName, String... virtualColumns) {
		super(ctx, LBR_RTCFiscoApuracao_ID, trxName, virtualColumns);
	}

	public MLBRRTCFiscoApuracao(Properties ctx, String LBR_RTCFiscoApuracao_UU, String trxName) {
		super(ctx, LBR_RTCFiscoApuracao_UU, trxName);
	}

	public MLBRRTCFiscoApuracao(Properties ctx, String LBR_RTCFiscoApuracao_UU, String trxName,
			String... virtualColumns) {
		super(ctx, LBR_RTCFiscoApuracao_UU, trxName, virtualColumns);
	}

	public MLBRRTCFiscoApuracao(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}

	/**
	 * Período da raiz de CNPJ e do tributo, gravando-o se ainda não existir.
	 *
	 * @param pa período de apuração no formato {@code MM/AAAA}
	 */
	public static MLBRRTCFiscoApuracao getOrCreate(Properties ctx, String cnpjBase, String taxType, String pa,
			String trxName) {
		MLBRRTCFiscoApuracao apuracao = new Query(ctx, Table_Name,
				"LBR_CNPJBase=? AND LBR_RTCTaxType=? AND LBR_PA=?", trxName)
			.setParameters(cnpjBase, taxType, pa)
			.setClient_ID()
			.firstOnly();

		if (apuracao != null)
			return apuracao;

		apuracao = new MLBRRTCFiscoApuracao(ctx, 0, trxName);
		apuracao.setAD_Org_ID(0);
		apuracao.setLBR_CNPJBase(cnpjBase);
		apuracao.setLBR_RTCTaxType(taxType);
		apuracao.setLBR_PA(pa);
		apuracao.saveEx();

		return apuracao;
	}

	/**
	 * Recalcula os totais a partir dos documentos e da composição dos
	 * pagamentos gravados, e grava o período.
	 *
	 * <ul>
	 * <li>Total de Débito e Total de Crédito: soma do valor apurado de cada lado;
	 * <li>Total Pago: soma da composição dos pagamentos ligados ao período;
	 * <li>Saldo: soma do saldo devedor que a própria Receita informa em cada
	 *     débito — não é conta feita pelo LBR.
	 * </ul>
	 */
	public void updateTotals() {
		String docSQL = "SELECT COALESCE(SUM(LBR_AssessedAmt),0) FROM " + MLBRRTCFiscoApurDoc.Table_Name
				+ " WHERE LBR_RTCFiscoApuracao_ID=? AND LBR_RTCFiscoDocType=? AND IsActive='Y'";

		setLBR_TotalDebit(sum(docSQL, getLBR_RTCFiscoApuracao_ID(), MLBRRTCFiscoApurDoc.LBR_RTCFISCODOCTYPE_Débito));
		setLBR_TotalCredit(sum(docSQL, getLBR_RTCFiscoApuracao_ID(), MLBRRTCFiscoApurDoc.LBR_RTCFISCODOCTYPE_Crédito));

		setLBR_TotalPaid(sum("SELECT COALESCE(SUM(TotalAmt),0) FROM " + MLBRRTCFiscoPayComp.Table_Name
				+ " WHERE LBR_RTCFiscoApuracao_ID=? AND IsActive='Y'", getLBR_RTCFiscoApuracao_ID()));

		setLBR_Balance(sum("SELECT COALESCE(SUM(LBR_DebitBalanceAmt),0) FROM "
				+ MLBRRTCFiscoApurDoc.Table_Name
				+ " WHERE LBR_RTCFiscoApuracao_ID=? AND LBR_RTCFiscoDocType=? AND IsActive='Y'",
				getLBR_RTCFiscoApuracao_ID(), MLBRRTCFiscoApurDoc.LBR_RTCFISCODOCTYPE_Débito));

		setLBR_DateUpdated(DB.getSQLValueTSEx(get_TrxName(),
				"SELECT MAX(LBR_DateUpdated) FROM " + MLBRRTCFiscoApurDoc.Table_Name
					+ " WHERE LBR_RTCFiscoApuracao_ID=?", getLBR_RTCFiscoApuracao_ID()));

		saveEx();
	}

	private BigDecimal sum(String sql, Object... params) {
		BigDecimal value = DB.getSQLValueBDEx(get_TrxName(), sql, params);

		return value == null ? Env.ZERO : value;
	}

	@Override
	protected boolean beforeSave(boolean newRecord) {
		// o dado é da raiz de CNPJ, não de uma organização
		setAD_Org_ID(0);

		return true;
	}
}
