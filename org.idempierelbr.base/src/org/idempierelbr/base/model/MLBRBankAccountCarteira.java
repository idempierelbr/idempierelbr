package org.idempierelbr.base.model;

import java.sql.ResultSet;
import java.util.Properties;

public class MLBRBankAccountCarteira extends X_LBR_BankAccount_Carteira {

	/**
	 * 
	 */
	private static final long serialVersionUID = -913882242614203841L;

	public MLBRBankAccountCarteira(Properties ctx,
			int LBR_BankAccount_Carteira_ID, String trxName) {
		super(ctx, LBR_BankAccount_Carteira_ID, trxName);
	}

	public MLBRBankAccountCarteira(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}

}
