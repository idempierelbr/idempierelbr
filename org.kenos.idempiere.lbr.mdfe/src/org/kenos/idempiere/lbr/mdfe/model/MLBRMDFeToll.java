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

import org.adempierelbr.model.X_LBR_MDFeToll;
import org.adempierelbr.validator.ValidatorBPartner;
import org.compiere.util.Msg;

/**
 * 		Model for MDF-e Toll
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRMDFeToll.java, v1.0 2014/01/28 5:09:44 PM, ralexsander Exp $
 */
public class MLBRMDFeToll extends X_LBR_MDFeToll
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = 6688410325078224750L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int LBR_Tax_ID (0 create new)
	 *  @param String trx
	 */
	public MLBRMDFeToll (Properties ctx, int LBR_MDFeToll_ID, String trx)
	{
		super (ctx, LBR_MDFeToll_ID, trx);
	}	//	MLBRMDFeToll

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRMDFeToll (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRMDFeToll
	
	@Override
	protected boolean beforeSave (boolean newRecord)
	{
		if (!ValidatorBPartner.validaCNPJ(getlbr_BPCNPJ())
				|| (getlbr_BPShipperCNPJ() != null && getlbr_BPShipperCNPJ().length() > 13 && !ValidatorBPartner.validaCNPJ(getlbr_BPShipperCNPJ())))
		{
			log.saveError ("Error", Msg.parseTranslation(getCtx(), "@lbr_CNPJ@ @Invalid@"));
			return false;
		}
		return super.beforeSave(newRecord);
	}	//	beforeSave
}	//	MLBRMDFeToll
