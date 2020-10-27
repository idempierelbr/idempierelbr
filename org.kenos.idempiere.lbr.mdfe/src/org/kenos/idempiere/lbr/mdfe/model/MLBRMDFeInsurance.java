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

import org.adempierelbr.model.X_LBR_MDFeInsurance;
import org.adempierelbr.util.TextUtil;

/**
 * 		Model for MDF-e Insurance
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRMDFeInsurance.java, v1.0 2019/10/22 5:09:44 PM, ralexsander Exp $
 */
public class MLBRMDFeInsurance extends X_LBR_MDFeInsurance
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
	public MLBRMDFeInsurance (Properties ctx, int LBR_MDFeInsurance_ID, String trx)
	{
		super (ctx, LBR_MDFeInsurance_ID, trx);
	}	//	MLBRMDFeInsurance

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRMDFeInsurance (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRMDFeInsurance

	public String getCNPJ()
	{
		if (LBR_BPTYPEBR_PJ_LegalEntity.equals(getlbr_BPTypeBR()) && super.getlbr_CNPJ() != null)
			return TextUtil.toNumeric(super.getlbr_CNPJ());
		return null;
	}	//	getCNPJ

	public String getCPF()
	{
		if (LBR_BPTYPEBR_PF_Individual.equals(getlbr_BPTypeBR()) && super.getlbr_CPF() != null)
			return TextUtil.toNumeric(super.getlbr_CPF());
		return null;
	}	//	getCPF

	public String getInsuranceCNPJ()
	{
		if (super.getlbr_BPCNPJ() != null)
			return TextUtil.toNumeric(super.getlbr_BPCNPJ());
		return null;
	}	//	getInsuranceCNPJ
}	//	MLBRMDFeInsurance
