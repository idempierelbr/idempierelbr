package org.idempierelbr.base.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;

import org.compiere.model.Query;
import org.compiere.util.DB;

/**
 * Pagamento (DARF) de tributo do fisco, dos serviços de pagamentos e de
 * recolhimentos. A composição fica em {@link MLBRRTCFiscoPayComp}.
 *
 * <p>A chave natural é raiz de CNPJ + número do DARF + data de arrecadação.
 *
 * @author Alan Lescano
 */
public class MLBRRTCFiscoPayment extends X_LBR_RTCFiscoPayment {
	private static final long serialVersionUID = 1L;

	public MLBRRTCFiscoPayment(Properties ctx, int LBR_RTCFiscoPayment_ID, String trxName) {
		super(ctx, LBR_RTCFiscoPayment_ID, trxName);
	}

	public MLBRRTCFiscoPayment(Properties ctx, int LBR_RTCFiscoPayment_ID, String trxName, String... virtualColumns) {
		super(ctx, LBR_RTCFiscoPayment_ID, trxName, virtualColumns);
	}

	public MLBRRTCFiscoPayment(Properties ctx, String LBR_RTCFiscoPayment_UU, String trxName) {
		super(ctx, LBR_RTCFiscoPayment_UU, trxName);
	}

	public MLBRRTCFiscoPayment(Properties ctx, String LBR_RTCFiscoPayment_UU, String trxName,
			String... virtualColumns) {
		super(ctx, LBR_RTCFiscoPayment_UU, trxName, virtualColumns);
	}

	public MLBRRTCFiscoPayment(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}

	/**
	 * Pagamento pela chave natural, ou nulo se ainda não foi gravado. Não
	 * filtra pelo serviço: o índice único também não, e quem chama precisa
	 * saber se o mesmo DARF já veio pelo outro serviço.
	 */
	public static MLBRRTCFiscoPayment get(Properties ctx, String cnpjBase, String darfNo, Timestamp dateCollection,
			String trxName) {
		return new Query(ctx, Table_Name, "LBR_CNPJBase=? AND LBR_DARFNo=? AND LBR_DateCollection=?", trxName)
			.setParameters(cnpjBase, darfNo, dateCollection)
			.setClient_ID()
			.firstOnly();
	}

	/**
	 * Recalcula o total do pagamento como a soma da composição gravada. O
	 * arquivo da Receita não traz o total do DARF, só o de cada item.
	 */
	public void updateTotal() {
		BigDecimal total = DB.getSQLValueBDEx(get_TrxName(),
				"SELECT SUM(TotalAmt) FROM " + MLBRRTCFiscoPayComp.Table_Name
					+ " WHERE LBR_RTCFiscoPayment_ID=? AND IsActive='Y'", getLBR_RTCFiscoPayment_ID());

		setTotalAmt(total);
		saveEx();
	}

	@Override
	protected boolean beforeSave(boolean newRecord) {
		// o dado é da raiz de CNPJ, não de uma organização
		setAD_Org_ID(0);

		return true;
	}
}
