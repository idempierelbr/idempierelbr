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

import org.adempierelbr.model.X_LBR_MDFeVehicle;

/**
 * 		Model for MDF-e Vehicle
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRMDFeVehicle.java, v1.0 2014/01/28 5:09:44 PM, ralexsander Exp $
 */
public class MLBRMDFeVehicle extends X_LBR_MDFeVehicle
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = 3615590645371614516L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int LBR_Tax_ID (0 create new)
	 *  @param String trx
	 */
	public MLBRMDFeVehicle (Properties ctx, int LBR_MDFeVehicle_ID, String trx)
	{
		super (ctx, LBR_MDFeVehicle_ID, trx);
	}	//	MLBRMDFeVehicle

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRMDFeVehicle (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRMDFeVehicle
	
	@Override
	protected boolean beforeSave(boolean newRecord)
	{
		if (newRecord)
		{
			//	Preenchimento da Placa automaticamente
			if (getValue() == null || getValue().isBlank())
				setValue(getlbr_BPShipperLicensePlate());
		}
		return true;
	}
}	//	MLBRMDFeVehicle
