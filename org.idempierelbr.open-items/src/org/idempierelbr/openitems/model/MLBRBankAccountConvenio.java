package org.idempierelbr.openitems.model;

import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;

import org.compiere.model.MTable;
import org.compiere.model.Query;

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
	
	/**
	 *  Get Carteiras
	 *  @return MLBRBankAccountCarteira[] carteiras
	 */
	public MLBRBankAccountCarteira[] getCarteiras()
	{
		MTable table = MTable.get (getCtx(), MLBRBankAccountCarteira.Table_Name);
		Query query =  new Query(getCtx(), table, "LBR_BankAccount_Convenio_ID=?", get_TrxName());
		query.setOrderBy("IsDefault DESC");
		query.setParameters(new Object[]{get_ID()});

		List<MLBRBankAccountCarteira> list = query.list();
	 	return list.toArray(new MLBRBankAccountCarteira[list.size()]);
	}

	/**
	 *  Get Carteira By Type
	 *  @return MLBRBankAccountCarteira carteira
	 */
	public MLBRBankAccountCarteira getCarteiraByType(String type)
	{
		MTable table = MTable.get (getCtx(), MLBRBankAccountCarteira.Table_Name);
		Query query =  new Query(getCtx(), table, "LBR_BankAccount_Convenio_ID=? AND LBR_CarteiraType=?", get_TrxName());
		query.setOrderBy("IsDefault DESC");
		query.setParameters(new Object[]{get_ID(), type});

		MLBRBankAccountCarteira cart = query.first();
		
	 	return cart;
	}
	
	/**
	 *  Get Carteira By Number
	 *  @return MLBRBankAccountCarteira carteira
	 */
	public MLBRBankAccountCarteira getCarteiraByNumber(String number)
	{
		MTable table = MTable.get (getCtx(), MLBRBankAccountCarteira.Table_Name);
		Query query =  new Query(getCtx(), table, "LBR_BankAccount_Convenio_ID=? AND LBR_CarteiraNo=?", get_TrxName());
		query.setOrderBy("IsDefault DESC");
		query.setParameters(new Object[]{get_ID(), number});

		MLBRBankAccountCarteira cart = query.first();
		
	 	return cart;
	}
	
	public static MLBRBankAccountConvenio[] getConvenios(Properties ctx, int C_BankAccount_ID, String trxName) {
		MTable table = MTable.get (ctx, MLBRBankAccountConvenio.Table_Name);
		Query query =  new Query(ctx, table, "C_BankAccount_ID=?", trxName);
		query.setOrderBy("IsDefault DESC");
		query.setParameters(new Object[]{C_BankAccount_ID});

		List<MLBRBankAccountConvenio> list = query.list();
	 	return list.toArray(new MLBRBankAccountConvenio[list.size()]);
	}
}
