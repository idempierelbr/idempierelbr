package org.idempierelbr.openitems.model;

import java.sql.ResultSet;
import java.util.Properties;

public class MLBRBankAccountConvenio extends X_LBR_BankAccount_Convenio {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1730415840465290585L;

	public MLBRBankAccountConvenio(Properties ctx,
			int LBR_BankAccount_Convenio_ID, String trxName) {
		super(ctx, LBR_BankAccount_Convenio_ID, trxName);
	}

	public MLBRBankAccountConvenio(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}

}
