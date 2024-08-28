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
import java.util.List;
import java.util.Properties;

import org.compiere.model.MLocation;
import org.compiere.model.Query;
import org.compiere.util.Env;

/**
 *	Model for CFOP Table
 *
 *	@author Mario Grigioni
 *	@contributor Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRCFOP.java, v2.0 2009/11/10 8:27:53 PM, mgrigioni Exp $
 */
public class MLBRCFOP extends X_LBR_CFOP
{
	/**
	 *	Serial Version
	 */
	private static final long serialVersionUID = 1L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRCFOP (Properties ctx, int ID, String trx)
	{
		super (ctx, ID, trx);
	}	//	MLBRCFOP

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRCFOP (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}	//	MLBRCFOP
	
	/**
	 * 		Retorno o Objeto do CFOP pelo Nome
	 * 
	 * 	@param ctx
	 * 	@param value
	 * 	@param trxName
	 * 	@return
	 */
	public static MLBRCFOP getCFOP (Properties ctx, String value, String trxName)
	{	
		String where = "AD_Client_ID IN (0, ?) AND value=?";
		MLBRCFOP cfop = new Query (Env.getCtx(), MLBRCFOP.Table_Name, where, trxName)
			.setParameters(new Object[]{Env.getAD_Client_ID(ctx), value})
			.setOrderBy("AD_Client_ID DESC")
			.first();

		return cfop != null ? cfop : null;		
	}

	/**
	 * 		Verifica se o CFOP é válido para o Documento Escolhido
	 * 
	 * @param isSOTrx
	 * @param orgLocation
	 * @param bpLocation
	 * @param allowNull - if true, return valid when NULL
	 * @return boolean true (valid), false (invalid)
	 */
	public boolean validateCFOP (boolean isSOTrx, MLocation orgLocation, MLocation bpLocation, boolean allowNull)
	{
		boolean validated   = true;
		boolean sameRegion  = true;
		boolean sameCountry = true;

		if (getValue() == null || getValue().equals(""))
			return allowNull;


		if (orgLocation.getC_Country_ID() != bpLocation.getC_Country_ID()){
			sameRegion  = false;
			sameCountry = false;
		}
		else if (orgLocation.getC_Region_ID() != bpLocation.getC_Region_ID()){
			sameRegion  = false;
		}

		//VALIDACAO
		if (isSOTrx){
			if (!sameCountry && getValue().charAt(0) != '7') //Saída fora do País)
				return false;

			if (!sameRegion && sameCountry && getValue().charAt(0) != '6') //Saída fora Estado
				return false;

			if (sameRegion && sameCountry && getValue().charAt(0) != '5') //Saída mesmo Estado
				return false;
		}
		else{
			if (!sameCountry && getValue().charAt(0) != '3') //Entrada fora do País)
				return false;

			if (!sameRegion && sameCountry && getValue().charAt(0) != '2') //Entrada fora Estado
				return false;

			if (sameRegion && sameCountry && getValue().charAt(0) != '1') //Entrada mesmo Estado
				return false;
		}

		return validated;
	}	//	validateCFOP

	/**
	 * validateCFOP
	 * @param LBR_CFOP_ID
	 * @param isSOTrx
	 * @param orgLocation
	 * @param bpLocation
	 * @param allowNull - if true, return valid when NULL
	 * @return boolean true (valid), false (invalid)
	 */
	public static boolean validateCFOP (Integer LBR_CFOP_ID, boolean isSOTrx,
			                           MLocation orgLocation, MLocation bpLocation, boolean allowNull){

		boolean validated = true;

		if (LBR_CFOP_ID == null || LBR_CFOP_ID.intValue() <= 0)
			return allowNull;

		MLBRCFOP cfop = new MLBRCFOP(Env.getCtx(),LBR_CFOP_ID,null);

		validated = cfop.validateCFOP(isSOTrx, orgLocation, bpLocation, allowNull);

		return validated;
	}	//	validateCFOP
	
	/**
	 * 		Return best CFOP based on config table
	 * 
	 * 	@param 	C_DocType_ID
	 * 	@param 	LBR_ProductCategory_ID
	 * 	@param 	LBR_BPartnerCategory_ID
	 * 	@param 	lbr_TransactionType
	 * 	@param 	lbr_DestionationType
	 * 	@param 	lbr_IsSubTributaria
	 * 	@param 	isManufactured
	 * 	@return	X_LBR_CFOPLine
	 */
	public static X_LBR_CFOPLine chooseCFOP (int AD_Org_ID, int C_DocType_ID, int LBR_ProductCategory_ID, int LBR_BPartnerCategory_ID, 
			String lbr_TransactionType, String lbr_DestionationType, boolean lbr_IsSubTributaria, boolean isManufactured, String trxName)
	{
		String whereClause = "AD_Org_ID IN (0, ?) AND C_DocType_ID=? "
				+ "AND (LBR_ProductCategory_ID=?  OR LBR_ProductCategory_ID IS NULL) "
				+ "AND (LBR_BPartnerCategory_ID=? OR LBR_BPartnerCategory_ID IS NULL) "
				+ "AND (lbr_TransactionType=? OR lbr_TransactionType IS NULL)"
				+ "AND lbr_DestionationType=? "
				+ "AND lbr_IsSubTributaria IN ('B', ?) "
				+ "AND IsManufactured IN ('B', ?) ";
		//
		Object[] parameters = new Object[]{AD_Org_ID, C_DocType_ID, LBR_ProductCategory_ID, LBR_BPartnerCategory_ID, 
 				lbr_TransactionType, lbr_DestionationType, (lbr_IsSubTributaria ? "Y" : "N"), (isManufactured ? "Y" : "N")};
		//
	 	List<X_LBR_CFOPLine> list = new Query(Env.getCtx(), X_LBR_CFOPLine.Table_Name, whereClause, trxName)
	 		.setParameters(parameters)
	 		.list();
	 	//
	 	if (list != null && list.size() == 1)
	 		return list.get (0);
	 	//
	 	X_LBR_CFOPLine cfopLine = null;
	 	int maxPoints = 0;
	 	//
	 	for (X_LBR_CFOPLine cfopLineChooser : list)
	 	{
	 		int points = 10;
	 		//
	 		if (cfopLineChooser.getAD_Org_ID() > 0)
	 			points += 100;
	 		if (cfopLineChooser.getLBR_TransactionType() != null)
	 			points += 20;
			if (cfopLineChooser.getLBR_BPartnerCategory_ID() > 0)
				points += 10;
			if (cfopLineChooser.getLBR_ProductCategory_ID() > 0)
				points += 10;
			//
			if (points > maxPoints)
			{
				maxPoints = points;
				cfopLine = cfopLineChooser;
			}
	 	}
	 	//
		return cfopLine;
	}	//	getCFOP
} 	//	MLBRCFOP