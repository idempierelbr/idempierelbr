package org.idempierelbr.nfe.model;

import java.math.BigDecimal;
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
	
	public BigDecimal getDiscountAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_DiscountAmt);
		return bd;
	}
	
	public BigDecimal getGrandTotal () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_GrandTotal);
		return bd;
	}
	
	public BigDecimal getNetAmtToInvoice () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_NetAmtToInvoice);
		return bd;
	}
	
	/**
	 *  getPaySchedules
	 *  @return MLBRNotaFiscalPaySched[] schedules
	 */
    public MLBRNotaFiscalPaySched[] getPaySchedules() {
    	MTable table = MTable.get (getCtx(), MLBRNotaFiscalPaySched.Table_Name);
		Query query =  new Query(getCtx(), table, "LBR_NotaFiscalPay_ID=?", get_TrxName());
	 		  query.setParameters(new Object[]{get_ID()});
	 	//
	 	List<MLBRNotaFiscalPaySched> list = query.list();
	 	return list.toArray(new MLBRNotaFiscalPaySched[list.size()]);
    }
}
