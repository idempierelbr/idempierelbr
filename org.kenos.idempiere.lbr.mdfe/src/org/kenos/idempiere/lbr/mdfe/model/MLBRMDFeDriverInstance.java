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
package org.kenos.idempiere.lbr.mdfe.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.adempierelbr.model.X_LBR_MDFe_DriverInstance;
import org.compiere.util.DB;

/**
 * 		Model for MDF-e Driver Instance
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRMDFeDriverInstance.java, v1.0 2014/01/28 5:09:44 PM, ralexsander Exp $
 */
public class MLBRMDFeDriverInstance extends X_LBR_MDFe_DriverInstance
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = 631150892726614466L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int LBR_Tax_ID (0 create new)
	 *  @param String trx
	 */
	public MLBRMDFeDriverInstance (Properties ctx, int LBR_MDFeDriverInstance_ID, String trx)
	{
		super (ctx, LBR_MDFeDriverInstance_ID, trx);
	}	//	MLBRMDFeDriverInstance

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRMDFeDriverInstance (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRMDFeDriverInstance
	

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRMDFeDriverInstance (MLBRMDFe mdfe)
	{
		this (mdfe.getCtx(), 0, mdfe.get_TrxName());
		
		setLBR_MDFe_ID (mdfe.getLBR_MDFe_ID());
	}	//	MLBRMDFeDriverInstance
	
	/**
	 * 	Called before Save for Pre-Save Operation
	 * 	@param newRecord new record
	 *	@return true if record can be saved
	 */
	@Override
	protected boolean beforeSave (boolean newRecord)
	{
		if (!newRecord)
			return true;
		
		//	Get Line No
		if (getLine() == 0)
		{
			String sql = "SELECT COALESCE(MAX(Line),0)+10 FROM LBR_MDFe_DriverInstance WHERE LBR_MDFe_ID=?";
			int ii = DB.getSQLValue (get_TrxName(), sql, getLBR_MDFe_ID());
			setLine (ii);
		}
			
		return true;
	}	//	beforeSave
}	//	MLBRMDFeDriverInstance
