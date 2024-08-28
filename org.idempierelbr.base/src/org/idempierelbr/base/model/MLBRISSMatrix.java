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
package org.idempierelbr.base.model;

import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;

import org.compiere.model.MSysConfig;
import org.compiere.model.Query;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 *	Model for ISS Matrix
 *
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRISSMatrix.java, v1.0 2011/11/24 23:08:22 PM, ralexsander Exp $
 *
 *	@author Mario Grigioni (Kenos, www.kenos.com.br)
 *	@version $Id: MISSMatrix.java, 02/03/2008 11:40:00 mgrigioni
 */
public class MLBRISSMatrix extends X_LBR_ISSMatrix
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
	public MLBRISSMatrix (Properties ctx, int ID, String trx)
	{
		super (ctx, ID, trx);
	}	//	MLBRISSMatrix

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRISSMatrix (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRISSMatrix

	/**
	 *  	Retorna a configuração da Matriz de ISS
	 *  
	 *  @return MLBRISSMatrix matriz
	 */
	public static MLBRISSMatrix get (Properties ctx, int AD_Org_ID, int C_Region_ID, int C_City_ID, int M_Product_ID, Timestamp validFrom, String trxName)
	{	
		if (!MSysConfig.getBooleanValue("LBR_USE_ISS_MATRIX", true, Env.getAD_Client_ID(ctx)))
			return null;
		//
		String where = "IsActive='Y' AND AD_Org_ID IN (0, ?) AND AD_Client_ID=? " +
				"AND C_Region_ID=? AND C_City_ID=? AND (M_Product_ID IS NULL OR M_Product_ID=?) ";
		//
		if (validFrom != null)
			where += "AND (ValidFrom IS NULL OR ValidFrom>=" + DB.TO_DATE(validFrom) + ") ";
		//
		MLBRISSMatrix issMatrix = new Query (Env.getCtx(), Table_Name, where, trxName)
			.setParameters(new Object[]{AD_Org_ID, Env.getAD_Client_ID(ctx), C_Region_ID, C_City_ID, M_Product_ID})
			.setOrderBy("AD_Org_ID DESC, M_Product_ID DESC, ValidFrom DESC")
			.first();
		//
		return issMatrix;
	}	//	get
}	//	MLBRISSMatrix