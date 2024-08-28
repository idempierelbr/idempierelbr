package org.idempierelbr.base.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;

import org.compiere.model.MTable;
import org.compiere.model.Query;

public class MLBRNotaFiscalTransp extends X_LBR_NotaFiscalTransp {
	/**
	 * 
	 */
	private static final long serialVersionUID = -5033530495798922709L;

	/** Standard Constructor */
    public MLBRNotaFiscalTransp (Properties ctx, int LBR_NotaFiscalTransp_ID, String trxName)
    {
      super (ctx, LBR_NotaFiscalTransp_ID, trxName);
      /** if (LBR_NotaFiscalTransp_ID == 0)
        {
			setLBR_IsICMSTaxExempt (false);
// N
			setLBR_NFeModShipping (null);
// 0
			setLBR_NotaFiscal_ID (0);
			setLBR_NotaFiscalTransp_ID (0);
        } */
    }

    /** Load Constructor */
    public MLBRNotaFiscalTransp (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }
    
    public BigDecimal getChargeAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_ChargeAmt);
		return bd;
	}
    
    public BigDecimal getLBR_TaxAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxAmt);
		return bd;
	}
    
    public BigDecimal getLBR_TaxBaseAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxBaseAmt);
		return bd;
	}
    
    public BigDecimal getLBR_TaxRate () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_LBR_TaxRate);
		return bd;
	}
    
    /**
	 *  getTrailers
	 *  @return X_LBR_NotaFiscalTrailer[] trailers
	 */
    public X_LBR_NotaFiscalTrailer[] getTrailers() {
    	MTable table = MTable.get (getCtx(), X_LBR_NotaFiscalTrailer.Table_Name);
		Query query =  new Query(getCtx(), table, "LBR_NotaFiscalTransp_ID=?", get_TrxName());
	 		  query.setParameters(new Object[]{get_ID()});
	 	//
	 	List<X_LBR_NotaFiscalTrailer> list = query.list();
	 	return list.toArray(new X_LBR_NotaFiscalTrailer[list.size()]);
    }
    
    /**
	 *  getPackages
	 *  @return MLBRNotaFiscalPackage[] packages
	 */
    public MLBRNotaFiscalPackage[] getPackages() {
    	MTable table = MTable.get (getCtx(), MLBRNotaFiscalPackage.Table_Name);
		Query query =  new Query(getCtx(), table, "LBR_NotaFiscalTransp_ID=?", get_TrxName());
	 		  query.setParameters(new Object[]{get_ID()});
	 	//
	 	List<MLBRNotaFiscalPackage> list = query.list();
	 	return list.toArray(new MLBRNotaFiscalPackage[list.size()]);
    }
}
