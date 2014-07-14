/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil                      *
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

import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;

import org.compiere.model.MSysConfig;
import org.compiere.model.Query;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 *	Model for ICMS Matrix
 *
 *	@contributor Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRICMSMatrix.java, v1.0 2011/11/10 15:57:20 PM, ralexsander Exp $
 *
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: MICMSMatrix.java, 15/12/2007 14:50:00 mgrigioni
 */
public class MLBRICMSMatrix extends X_LBR_ICMSMatrix
{
	/**
	 *
	 */
	private static final long serialVersionUID = 1L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRICMSMatrix (Properties ctx, int ID, String trx)
	{
		super (ctx, ID, trx);
	}	//	MLBRICMSMatrix

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRICMSMatrix (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}	//	MLBRICMSMatrix

	/**
	 *  	Retorna a configuração da Matriz de ICMS
	 *  
	 *  @return MLBRICMSMatrix matriz
	 */
	public static MLBRICMSMatrix get (Properties ctx, int AD_Org_ID, int C_Region_ID, int To_Region_ID, Timestamp validFrom, String trxName)
	{	
		if (!MSysConfig.getBooleanValue("LBR_USE_ICMS_MATRIX", true, Env.getAD_Client_ID(ctx)))
			return null;
		//
		String where = "IsActive='Y' AND AD_Org_ID IN (0, ?) AND AD_Client_ID=? " +
				"AND C_Region_ID=? AND To_Region_ID=? ";
		//
		if (validFrom != null)
			where += "AND (ValidFrom IS NULL OR ValidFrom>=" + DB.TO_DATE(validFrom) + ") ";
		//
		MLBRICMSMatrix icmsMatrix = new Query (Env.getCtx(), Table_Name, where, trxName)
			.setParameters(new Object[]{AD_Org_ID, Env.getAD_Client_ID(ctx), C_Region_ID, To_Region_ID})
			.setOrderBy("AD_Org_ID DESC, ValidFrom DESC")
			.first();
		//
		return icmsMatrix;
	}	//	get
}	//	MLBRICMSMatrix