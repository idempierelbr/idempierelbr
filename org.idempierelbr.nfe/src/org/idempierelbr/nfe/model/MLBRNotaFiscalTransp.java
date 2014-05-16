package org.idempierelbr.nfe.model;

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
	 *  @return X_LBR_NotaFiscalPackage[] packages
	 */
    public X_LBR_NotaFiscalPackage[] getPackages() {
    	MTable table = MTable.get (getCtx(), X_LBR_NotaFiscalPackage.Table_Name);
		Query query =  new Query(getCtx(), table, "LBR_NotaFiscalTransp_ID=?", get_TrxName());
	 		  query.setParameters(new Object[]{get_ID()});
	 	//
	 	List<X_LBR_NotaFiscalPackage> list = query.list();
	 	return list.toArray(new X_LBR_NotaFiscalPackage[list.size()]);
    }
}
