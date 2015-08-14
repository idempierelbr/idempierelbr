
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

import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.List;
import java.util.Properties;

import org.compiere.model.Query;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * 		Model NCM Tax
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 * 	@version $Id: MLBRNCMTax.java, v1.0 2011/11/14 9:38:36 AM, ralexsander Exp $
 */
public class MLBRTaxDefinition extends X_LBR_TaxDefinition
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
	public MLBRTaxDefinition (Properties ctx, int ID, String trx)
	{
		super (ctx, ID, trx);
	}	//	MLBRTaxDefinition

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRTaxDefinition (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRTaxDefinition
	
	/**
	 * 		Retorna o grupo mais relevante de imposto
	 */
	public static MLBRTaxDefinition[] get (int AD_Org_ID, int C_BPartner_ID, int C_DocType_ID, 
			int C_Region_ID, int To_Region_ID, int LBR_BPartnerCategory_ID, int LBR_FiscalGroup_BPartner_ID,
			int LBR_FiscalGroup_Product_ID, int LBR_NCM_ID, int LBR_ProductCategory_ID, int M_Product_ID , boolean lbr_IsSubTributaria,
			boolean isSOTrx, String lbr_TransactionType, Timestamp validFrom)
	{
		String where = "IsActive='Y' AND AD_Org_ID IN (0, ?) ";
		//
		where += "AND (C_BPartner_ID IS NULL OR C_BPartner_ID=?) ";
		where += "AND (C_DocType_ID IS NULL OR C_DocType_ID=?) ";
		where += "AND (C_Region_ID IS NULL OR C_Region_ID=?) ";
		where += "AND (To_Region_ID IS NULL OR To_Region_ID=?) ";
		where += "AND (LBR_BPartnerCategory_ID IS NULL OR LBR_BPartnerCategory_ID=?) ";
		where += "AND (LBR_FiscalGroup_BPartner_ID IS NULL OR LBR_FiscalGroup_BPartner_ID=?) ";
		where += "AND (LBR_FiscalGroup_Product_ID IS NULL OR LBR_FiscalGroup_Product_ID=?) ";
		where += "AND (LBR_NCM_ID IS NULL OR LBR_NCM_ID=?) ";
		where += "AND (LBR_ProductCategory_ID IS NULL OR LBR_ProductCategory_ID=?) ";
		where += "AND (M_Product_ID IS NULL OR M_Product_ID=?) ";
		where += "AND lbr_IsSubTributaria IN ('B', ?) ";
		where += "AND IsSOTrx IN ('B', ?) ";
		where += "AND (lbr_TransactionType IS NULL OR lbr_TransactionType=?) ";
		//
		if (validFrom != null)
			where += "AND ValidFrom <= " + DB.TO_DATE(validFrom);
		//
		List<MLBRTaxDefinition> list = new Query (Env.getCtx(), MLBRTaxDefinition.Table_Name, where, null)
			.setParameters(new Object[]{AD_Org_ID, C_BPartner_ID, C_DocType_ID, C_Region_ID, To_Region_ID, 
					LBR_BPartnerCategory_ID, LBR_FiscalGroup_BPartner_ID, LBR_FiscalGroup_Product_ID, LBR_NCM_ID, 
					LBR_ProductCategory_ID, M_Product_ID, (lbr_IsSubTributaria ? "Y" : "N"), (isSOTrx ? "Y" : "N"), lbr_TransactionType})
			.setOrderBy("PriorityNo, ValidFrom").list();
		//
		return list.toArray(new MLBRTaxDefinition[list.size()]);
	}	//	get

	/**
	 * 	Called before Save for Pre-Save Operation
	 * 	@param newRecord new record
	 *	@return true if record can be saved
	 */
	protected boolean beforeSave (boolean newRecord)
	{
		int priorityNo = 0;

		//	Prioridades
		if (getAD_Org_ID() > 0)
			priorityNo += 1000;
		if (getC_BPartner_ID() > 0)
			priorityNo += 10;
		if (getC_DocType_ID() > 0)
			priorityNo += 10;
		if (getC_Region_ID() > 0)
			priorityNo += 10;
		if (getTo_Region_ID() > 0)
			priorityNo += 10;
		if (getLBR_BPartnerCategory_ID() > 0)
			priorityNo += 10;
		if (getLBR_FiscalGroup_BPartner_ID() > 0)
			priorityNo += 10;
		if (getLBR_FiscalGroup_Product_ID() > 0)
			priorityNo += 10;
		if (getLBR_NCM_ID() > 0)
			priorityNo += 10;
		if (getLBR_ProductCategory_ID() > 0)
			priorityNo += 10;
		if (LBR_ISSUBTRIBUTARIA_Both.equals(getLBR_IsSubTributaria()))
			priorityNo += 10;
		if (getLBR_TaxStatus() != null && getLBR_TaxStatus().length() > 0)
			priorityNo += 10;
		if (getLBR_TransactionType() != null && getLBR_TransactionType().length() > 0)
			priorityNo += 10;
		//
		setPriorityNo(priorityNo);
		//
		return true;
	}	//	beforeSave
}	//	MLBRTaxDefinition
