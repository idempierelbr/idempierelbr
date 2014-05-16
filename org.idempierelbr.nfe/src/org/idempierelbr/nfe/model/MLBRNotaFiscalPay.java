package org.idempierelbr.nfe.model;

import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;

import org.compiere.model.MTable;
import org.compiere.model.Query;

public class MLBRNotaFiscalPay extends X_LBR_NotaFiscalPay {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8875038850131932994L;

	public MLBRNotaFiscalPay(Properties ctx, int LBR_NotaFiscalPay_ID,
			String trxName) {
		super(ctx, LBR_NotaFiscalPay_ID, trxName);
		// TODO Auto-generated constructor stub
	}

	public MLBRNotaFiscalPay(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
		// TODO Auto-generated constructor stub
	}
	
	/**
	 *  getPaySchedules
	 *  @return X_LBR_NotaFiscalPaySched[] schedules
	 */
    public X_LBR_NotaFiscalPaySched[] getPaySchedules() {
    	MTable table = MTable.get (getCtx(), X_LBR_NotaFiscalPaySched.Table_Name);
		Query query =  new Query(getCtx(), table, "LBR_NotaFiscalPay_ID=?", get_TrxName());
	 		  query.setParameters(new Object[]{get_ID()});
	 	//
	 	List<X_LBR_NotaFiscalPaySched> list = query.list();
	 	return list.toArray(new X_LBR_NotaFiscalPaySched[list.size()]);
    }
}
