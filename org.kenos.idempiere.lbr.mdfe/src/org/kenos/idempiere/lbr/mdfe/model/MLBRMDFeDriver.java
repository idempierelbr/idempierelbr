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

import org.idempierelbr.core.validator.ValidatorBPartner;
import org.compiere.util.Msg;

/**
 * 		Model for MDF-e Driver
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRMDFeDriver.java, v1.0 2014/01/28 5:09:44 PM, ralexsander Exp $
 */
public class MLBRMDFeDriver extends X_LBR_MDFeDriver
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = 202031551017882486L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int LBR_Tax_ID (0 create new)
	 *  @param String trx
	 */
	public MLBRMDFeDriver (Properties ctx, int LBR_MDFeDriver_ID, String trx)
	{
		super (ctx, LBR_MDFeDriver_ID, trx);
	}	//	MLBRMDFeDriver

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRMDFeDriver (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRMDFeDriver
	
	@Override
	protected boolean beforeSave (boolean newRecord)
	{
		if (!ValidatorBPartner.validaCPF(getlbr_CPF()))
		{
			log.saveError ("Error", Msg.parseTranslation(getCtx(), "@lbr_CPF@ @Invalid@"));
			return false;
		}
		return true;
	}	//	beforeSave
}	//	MLBRMDFeDriver
