package org.idempierelbr.tax.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.model.Query;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 * 		Cadastro dos Impostos Brasileiros
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRTaxName.java, v1.0 2011/04/20 7:50:48 PM, ralexsander Exp $
 */
public class MLBRTaxName extends X_LBR_TaxName
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = -3454360861235382468L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRTaxName (Properties ctx, int X_LBR_TaxName_ID, String trxName)
	{
		super (ctx, X_LBR_TaxName_ID, trxName);
	}	//	MLBRTaxLine

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRTaxName (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRTaxLine
	
	/**
	 * 	Get the current formula for this tax
	 * 	@param trxType transaction type
	 * 	@param validFrom date
	 * 	@return formula
	 */
	public MLBRTaxFormula getFormula (String trxType, Timestamp validFrom)
	{
		MLBRTaxFormula tf = null;
		//
		StringBuffer sql = new StringBuffer("SELECT * FROM LBR_TaxFormula WHERE LBR_TaxName_ID=? AND LBR_TransactionType=?");
		if (validFrom != null)
			sql.append(" AND ValidFrom <= " + DB.TO_DATE(validFrom));
		//
		sql.append(" ORDER BY ValidFrom DESC");
		//
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), get_TrxName());
			pstmt.setInt(1, getLBR_TaxName_ID());
			pstmt.setString(2, trxType);
			rs = pstmt.executeQuery();
			if (rs.next())
			{
				tf = new MLBRTaxFormula(getCtx(), rs, get_TrxName());
			}
 		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
		}
		finally
		{
			DB.close(rs, pstmt);
			rs = null; pstmt = null;
		}
		return tf;
	}	//	getFormula
	
	/**
	 * 		Get All Tax Names from client
	 * 
	 * 	@return All Tax Names
	 */
	public static MLBRTaxName[] getTaxNames ()
	{
		List<MLBRTaxName> list = new Query (Env.getCtx(), MLBRTaxName.Table_Name, "AD_Client_ID IN (0,?)", null)
				.setParameters (new Object[]{Env.getAD_Client_ID(Env.getCtx())}).list();
		//
		MLBRTaxName[] lines = new MLBRTaxName[list.size()];
		return list.toArray(lines);
	} 	//	getTaxNames
	
	/**************************************************************************
	 * 	Before Save
	 *	@param newRecord new
	 *	@return save
	 */
	protected boolean beforeSave (boolean newRecord)
	{
		if (getName() == null)
		{
			log.saveError("FillMandatory", Msg.getElement(getCtx(), "Name"));
			return false;
		}
		//
		String taxName = getName().trim().replaceAll("[^A-Za-z]*", "");	//	Salva sempre sem espaços
		if (taxName.length() == 0)
		{
			log.saveError("FillMandatory", Msg.getElement(getCtx(), "Name"));
			return false;
		}
		//
		return super.beforeSave(newRecord);
	}	//	beforeSave
	
	/**
	 * 	To String
	 */
	public String toString()
	{
		return "MLBRTaxName[ID=" + getLBR_TaxName_ID() + ", Name=" + ("" + getName()).trim() + ", Type=" + getLBR_TaxType() + "]";
	}	//	toString
}	//	MLBRTaxName