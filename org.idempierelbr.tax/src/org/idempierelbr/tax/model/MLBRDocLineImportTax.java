package org.idempierelbr.tax.model;

import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;

import org.adempiere.exceptions.DBException;
import org.compiere.model.Query;

public class MLBRDocLineImportTax extends X_LBR_DocLine_ImportTax {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8383356153009002225L;

	/**
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRDocLineImportTax(Properties ctx, int LBR_DocLine_ImportTax_ID,
			String trxName) {
		super(ctx, LBR_DocLine_ImportTax_ID, trxName);
	}
	
	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRDocLineImportTax(Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}
	
	/**
	 * 	Get ImportTax array of a given Doc Line Details.
	 *	@return ImportTax array
	 */
	public static MLBRDocLineImportTax[] getOfDetails (Properties ctx, int LBR_DocLine_Details_ID, String trxName) {	
		MLBRDocLineDetails details = new MLBRDocLineDetails(ctx, LBR_DocLine_Details_ID, trxName);
		return getOfDetails(details);
	}	
	
	/**
	 * 	Get ImportTax array of a given Doc Line Details.
	 *	@return ImportTax array
	 */
	public static MLBRDocLineImportTax[] getOfDetails (MLBRDocLineDetails details) {	
		if (details == null)
			return null;
		
		List<MLBRDocLineImportTax> list = new Query (details.getCtx(), MLBRDocLineImportTax.Table_Name,
				"LBR_DocLine_Details_ID=?", details.get_TrxName())
			.setParameters(new Object[]{details.get_ID()})
			.list();
		
		return list.toArray(new MLBRDocLineImportTax[list.size()]);
	}

}
