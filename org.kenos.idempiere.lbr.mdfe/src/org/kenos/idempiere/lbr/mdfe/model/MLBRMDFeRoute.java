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

import org.adempierelbr.model.X_LBR_MDFeRoute;
import org.compiere.util.Msg;

/**
 * 		Model for MDF-e Route
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRMDFeRoute.java, v1.0 2014/01/28 5:09:44 PM, ralexsander Exp $
 */
public class MLBRMDFeRoute extends X_LBR_MDFeRoute
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = -8028240045048739524L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int LBR_Tax_ID (0 create new)
	 *  @param String trx
	 */
	public MLBRMDFeRoute (Properties ctx, int LBR_MDFeRoute_ID, String trx)
	{
		super (ctx, LBR_MDFeRoute_ID, trx);
	}	//	MLBRMDFeRoute

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRMDFeRoute (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRMDFeRoute
	
	@Override
	protected boolean beforeSave (boolean newRecord)
	{
		if (getC_Region_ID() == getLBR_MDFe().getC_Region_ID()
				|| getC_Region_ID() == getLBR_MDFe().getC_SalesRegion_ID())
		{
			log.saveError("Error", Msg.parseTranslation(getCtx(), "@C_Region_ID@ não pode ser a mesma de Inicio ou Fim"));
			return false;
		}
		return true;
	}	//	beforeSave
}	//	MLBRMDFeRoute
