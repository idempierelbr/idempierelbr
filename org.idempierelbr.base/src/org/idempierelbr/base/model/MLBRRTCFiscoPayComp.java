package org.idempierelbr.base.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.compiere.model.Query;

/**
 * Item da composição de um {@link MLBRRTCFiscoPayment}: o quanto do DARF foi
 * para cada documento e período.
 *
 * @author Alan Lescano
 */
public class MLBRRTCFiscoPayComp extends X_LBR_RTCFiscoPayComp {
	private static final long serialVersionUID = 1L;

	public MLBRRTCFiscoPayComp(Properties ctx, int LBR_RTCFiscoPayComp_ID, String trxName) {
		super(ctx, LBR_RTCFiscoPayComp_ID, trxName);
	}

	public MLBRRTCFiscoPayComp(Properties ctx, int LBR_RTCFiscoPayComp_ID, String trxName, String... virtualColumns) {
		super(ctx, LBR_RTCFiscoPayComp_ID, trxName, virtualColumns);
	}

	public MLBRRTCFiscoPayComp(Properties ctx, String LBR_RTCFiscoPayComp_UU, String trxName) {
		super(ctx, LBR_RTCFiscoPayComp_UU, trxName);
	}

	public MLBRRTCFiscoPayComp(Properties ctx, String LBR_RTCFiscoPayComp_UU, String trxName,
			String... virtualColumns) {
		super(ctx, LBR_RTCFiscoPayComp_UU, trxName, virtualColumns);
	}

	public MLBRRTCFiscoPayComp(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}

	/**
	 * Item pelo sequencial dentro do pagamento, ou nulo se ainda não foi
	 * gravado.
	 */
	public static MLBRRTCFiscoPayComp get(Properties ctx, int LBR_RTCFiscoPayment_ID, int seqNo, String trxName) {
		return new Query(ctx, Table_Name, "LBR_RTCFiscoPayment_ID=? AND SeqNo=?", trxName)
			.setParameters(LBR_RTCFiscoPayment_ID, seqNo)
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
