/******************************************************************************
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * Copyright (C) 2011 Ricardo Santana                                         *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.idempierelbr.tax.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.model.Query;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 *	Model for Tax Configuration
 *	
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRTaxConfiguration.java, v2.0 2011/10/13 2:16:18 PM, ralexsander Exp $
 *
 *	Former old-version:
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRTaxConfiguration.java, 29/04/2008 09:02:00 mgrigioni
 */
public class MLBRTaxConfiguration extends X_LBR_TaxConfiguration
{
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(MLBRTaxConfiguration.class);
	
	/**
	 * 	Serial Version
	 */
	private static final long serialVersionUID = 1L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRTaxConfiguration (Properties ctx, int ID, String trxName)
	{
		super (ctx, ID, trxName);	
	}	//	MLBRTaxConfiguration
	
	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRTaxConfiguration (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRTaxConfiguration
	
	/**	
	 * 		Retorna o imposto adequado de acordo com a configuração
	 * 
	 * 	@param ctx
	 * 	@param AD_Org_ID
	 * 	@param M_Product_ID
	 * 	@param LBR_FiscalGroup_Product_ID
	 * 	@param isSOTrx
	 * 	@param trxName
	 * 	@return	Configuração de Impostos
	 */
	public static MLBRTaxConfiguration get (Properties ctx, int AD_Org_ID, int M_Product_ID, 
			int LBR_FiscalGroup_Product_ID, boolean isSOTrx, String trxName)
	{
		String where = "IsActive='Y' AND AD_Client_ID=? AND AD_Org_ID IN (0, ?) ";
		//
		if (M_Product_ID > 0)
			where += "AND M_Product_ID=? ";
		else if (LBR_FiscalGroup_Product_ID > 0)
			where += "AND LBR_FiscalGroup_Product_ID=? ";
		else
			return null;
		//
		if (isSOTrx)
			where += "AND IsSOTrx='Y' ";
		else
			where += "AND LBR_IsPOTrx='Y' ";
		//
		MLBRTaxConfiguration tc = new Query (ctx, MLBRTaxConfiguration.Table_Name, where, trxName)
 			.setParameters(new Object[]{Env.getAD_Client_ID(ctx), AD_Org_ID, 
 					(M_Product_ID > 0 ? M_Product_ID : LBR_FiscalGroup_Product_ID)})
 			.setOrderBy("AD_Org_ID DESC")
 			.first();
		//
		return tc;
	}	//	get
	
	/**
	 * 		Retorna o grupo mais relevante para o grupo de produtos
	 * 
	 * 	@param 	AD_Org_ID
	 * 	@param 	LBR_FiscalGroup_Product_ID
	 * 	@param 	Valid From
	 * 	@return X_LBR_TaxConfig_ProductGroup
	 */
	public X_LBR_TaxConfig_ProductGroup getTC_ProductGroup (int AD_Org_ID, Timestamp validFrom)
	{
		String where = "IsActive='Y' AND AD_Org_ID IN (0, ?) AND LBR_TaxConfiguration_ID=? ";
		//
		if (validFrom != null)
			where += "AND (ValidFrom IS NULL OR ValidFrom>=" + DB.TO_DATE(validFrom) + ") ";
		//
		X_LBR_TaxConfig_ProductGroup tcpg = new Query (Env.getCtx(), X_LBR_TaxConfig_ProductGroup.Table_Name, where, get_TrxName())
			.setParameters(new Object[]{AD_Org_ID, getLBR_TaxConfiguration_ID()})
			.setOrderBy("AD_Org_ID DESC, ValidFrom DESC")
			.first();
		//
		return tcpg;
	}	//	getTC_ProductGroup
	
	/**
	 * 		Retorna o grupo mais relevante para o produto
	 * 
	 * 	@param 	AD_Org_ID
	 * 	@param 	M_Product_ID
	 * 	@param 	Valid From
	 * 	@return X_LBR_TaxConfig_Product
	 */
	public X_LBR_TaxConfig_Product getTC_Product (int AD_Org_ID, Timestamp validFrom)
	{
		String where = "IsActive='Y' AND AD_Org_ID IN (0, ?) AND LBR_TaxConfiguration_ID=? ";
		//
		if (validFrom != null)
			where += "AND (ValidFrom IS NULL OR ValidFrom>=" + DB.TO_DATE(validFrom) + ") ";
		//
		X_LBR_TaxConfig_Product tcp = new Query (Env.getCtx(), X_LBR_TaxConfig_Product.Table_Name, where, get_TrxName())
			.setParameters(new Object[]{AD_Org_ID, getLBR_TaxConfiguration_ID()})
			.setOrderBy("AD_Org_ID DESC, ValidFrom DESC")
			.first();
		//
		return tcp;
	}	//	getTC_Product
	
	/**
	 * 		Retorna o grupo mais relevante para o estado (região)
	 * 
	 * 	@param 	AD_Org_ID
	 * 	@param 	C_Region_ID
	 * 	@param	To_Region_ID
	 * 	@param 	Valid From
	 * 	@return X_LBR_TaxConfig_Region
	 */
	public X_LBR_TaxConfig_Region getTC_Region (int AD_Org_ID, int C_Region_ID, int To_Region_ID, Timestamp validFrom)
	{
		String where = "IsActive='Y' AND AD_Org_ID IN (0, ?) AND LBR_TaxConfiguration_ID=? AND C_Region_ID=? AND To_Region_ID=? ";
		//
		if (validFrom != null)
			where += "AND (ValidFrom IS NULL OR ValidFrom>=" + DB.TO_DATE(validFrom) + ") ";
		//
		X_LBR_TaxConfig_Region tcr = new Query (Env.getCtx(), X_LBR_TaxConfig_Region.Table_Name, where, get_TrxName())
			.setParameters(new Object[]{AD_Org_ID, getLBR_TaxConfiguration_ID(), C_Region_ID, To_Region_ID})
			.setOrderBy("AD_Org_ID DESC, ValidFrom DESC")
			.first();
		//
		return tcr;
	}	//	getTC_Region
	
	/**
	 * 		Retorna o grupo mais relevante para o grupo de parceiros
	 * 
	 * 	@param 	AD_Org_ID
	 * 	@param 	LBR_FiscalGroup_BPartner_ID
	 * 	@param 	Valid From
	 * 	@return X_LBR_TaxConfig_BPGroup
	 */
	public X_LBR_TaxConfig_BPGroup getTC_BPGroup (int AD_Org_ID, int LBR_FiscalGroup_BPartner_ID, Timestamp validFrom)
	{
		String where = "IsActive='Y' AND AD_Org_ID IN (0, ?) AND LBR_TaxConfiguration_ID=? AND LBR_FiscalGroup_BPartner_ID=? ";
		//
		if (validFrom != null)
			where += "AND (ValidFrom IS NULL OR ValidFrom>=" + DB.TO_DATE(validFrom) + ") ";
		//
		X_LBR_TaxConfig_BPGroup tcbpg = new Query (Env.getCtx(), X_LBR_TaxConfig_BPGroup.Table_Name, where, get_TrxName())
			.setParameters(new Object[]{AD_Org_ID, getLBR_TaxConfiguration_ID(), LBR_FiscalGroup_BPartner_ID})
			.setOrderBy("AD_Org_ID DESC, ValidFrom DESC")
			.first();
		//
		return tcbpg;
	}	//	getTC_BPGroup
	
	/**
	 * 		Retorna o grupo mais relevante para o grupo de parceiros
	 * 
	 * 	@param 	AD_Org_ID
	 * 	@param 	C_BPartner_ID
	 * 	@param 	Valid From
	 * 	@return X_LBR_TaxConfig_BPartner
	 */
	public X_LBR_TaxConfig_BPartner getTC_BPartner (int AD_Org_ID, int C_BPartner_ID, Timestamp validFrom)
	{
		String where = "IsActive='Y' AND AD_Org_ID IN (0, ?) AND LBR_TaxConfiguration_ID=? AND C_BPartner_ID=? ";
		//
		if (validFrom != null)
			where += "AND (ValidFrom IS NULL OR ValidFrom>=" + DB.TO_DATE(validFrom) + ") ";
		//
		X_LBR_TaxConfig_BPartner tcbpg = new Query (Env.getCtx(), X_LBR_TaxConfig_BPartner.Table_Name, where, get_TrxName())
			.setParameters(new Object[]{AD_Org_ID, getLBR_TaxConfiguration_ID(), C_BPartner_ID})
			.setOrderBy("AD_Org_ID DESC, ValidFrom DESC")
			.first();
		//
		return tcbpg;
	}	//	getTC_BPartner
	
	@Deprecated
	public static boolean hasSOTrx(Properties ctx, int LBR_TaxConfiguration_ID, int M_Product_ID, int LBR_FiscalGroup_Product_ID, String trx){
		
		String sql = "SELECT * " + //1
					 "FROM LBR_TaxConfiguration " +
				     "WHERE AD_Client_ID = ? AND LBR_TaxConfiguration_ID != ? AND IsSOTrx = 'Y'";
		
		if (M_Product_ID == 0 && LBR_FiscalGroup_Product_ID == 0)
			sql += " AND LBR_ExceptionType IS NULL";
		else
			sql += " AND LBR_ExceptionType IS NOT NULL";
		
		if (M_Product_ID != 0)
			sql += " AND M_Product_ID = " + M_Product_ID;
		if (LBR_FiscalGroup_Product_ID != 0)
			sql += " AND LBR_FiscalGroup_Product_ID = " + LBR_FiscalGroup_Product_ID;
		
		boolean hasSOTrx = false;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt(1, Env.getAD_Client_ID(ctx));
			pstmt.setInt(2, LBR_TaxConfiguration_ID);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				hasSOTrx = true;
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		return hasSOTrx;
	} //hasSOTrx
	
	@Deprecated
	public static boolean hasPOTrx(Properties ctx, int LBR_TaxConfiguration_ID, int M_Product_ID, int LBR_FiscalGroup_Product_ID, String trx){
		
		String sql = "SELECT * " + //1
					 "FROM LBR_TaxConfiguration " +
				     "WHERE AD_Client_ID = ? AND LBR_TaxConfiguration_ID != ? AND LBR_IsPOTrx = 'Y'";
		
		if (M_Product_ID == 0 && LBR_FiscalGroup_Product_ID == 0)
			sql += " AND LBR_ExceptionType IS NULL";
		else
			sql += " AND LBR_ExceptionType IS NOT NULL";
		
		if (M_Product_ID != 0)
			sql += " AND M_Product_ID = " + M_Product_ID;
		if (LBR_FiscalGroup_Product_ID != 0)
			sql += " AND LBR_FiscalGroup_Product_ID = " + LBR_FiscalGroup_Product_ID;
		
		boolean hasPOTrx = false;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trx);
			pstmt.setInt(1, Env.getAD_Client_ID(ctx));
			pstmt.setInt(2, LBR_TaxConfiguration_ID);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				hasPOTrx = true;
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		return hasPOTrx;
	} //hasPOTrx
	
	/**
	 * 	Valida se não há dados repetidos
	 */
	protected boolean beforeSave (boolean newRecord)
	{
		String exceptionType = getLBR_ExceptionType();
		
		if (exceptionType == null || (!exceptionType.equalsIgnoreCase(LBR_EXCEPTIONTYPE_Product) &&
				!exceptionType.equalsIgnoreCase(LBR_EXCEPTIONTYPE_FiscalGroup)))
			return true;
		
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT COUNT(*) FROM LBR_TaxConfiguration WHERE AD_Client_ID=? ");
		sql.append("AND IsActive='Y' ");

		//if (getAD_Org_ID() > 0)
		sql.append("AND AD_Org_ID=? ");

		sql.append("AND LBR_ExceptionType=? ");
			
		if (exceptionType.equalsIgnoreCase(LBR_EXCEPTIONTYPE_Product))
			sql.append("AND M_Product_ID=? ");
		else if (exceptionType.equalsIgnoreCase(LBR_EXCEPTIONTYPE_FiscalGroup))
			sql.append("AND LBR_FiscalGroup_Product_ID=? ");
			
		sql.append("AND (");

		if (isSOTrx())
			sql.append("IsSOTrx='Y' OR ");
		else
			sql.append("FALSE OR ");

		if (isLBR_IsPOTrx())
			sql.append("LBR_IsPOTrx='Y')");
		else
			sql.append("FALSE)");
		
		sql.append(" AND LBR_TaxConfiguration_ID<>?");
		int count = DB.getSQLValue (get_TrxName(), sql.toString(), new Object[]{getAD_Client_ID(),
			getAD_Org_ID(),
			exceptionType,
			getM_Product_ID() > 0 ? getM_Product_ID() : getLBR_FiscalGroup_Product_ID(),
			get_ID()});
		
		if (count > 0) {
			log.saveError("Error", Msg.getMsg(Env.getCtx(), "Configuração do " + (getM_Product_ID() > 0 ? "produto" : "grupo") +
					" já existe para a empresa/organização"));
		}
		
		return count < 1;
	}
}