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
package org.idempierelbr.sped.model;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * 		Model for DI
 * 
 * 	@author Pablo Boff Pigozzo
 *	@version $Id: MLBRTaxAssessment.java $
 */
public class MLBRTaxAssessment extends X_LBR_TaxAssessment
{
	/**
	 * 	Serial
	 */
	private static final long serialVersionUID = 1L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRTaxAssessment (Properties ctx, int ID, String trx)
	{
		super(ctx, ID, trx);	
	}	//	MLBRDI
	
	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRTaxAssessment (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}	//	MLBRDI
	
	
	
	/**
	 * Retornar as linhas de ajustes da apuração de impostsos
	 * 
	 * @param OrderBy
	 * @return
	 */
	public static MLBRTaxAssessment get(Properties ctx, int AD_Org_ID, String TaxName, int C_Period_ID, String trxName)
	{
		
		// where
		String sql = "SELECT LBR_TaxAssessment_ID										" +
					 "	FROM LBR_TaxAssessment											" +
					 " WHERE LBR_TaxName_ID IN (SELECT LBR_TaxName_ID 					" +
					 " 						FROM LBR_TaxName WHERE LBR_TaxType = 'P' 	" +
					 "  					 AND trim(Name) Like ?) 					" +
					 " AND C_Period_ID = ? 												" +
					 " AND AD_Org_ID = ?												";		
		
		// 
		int res = DB.getSQLValue(trxName, sql, new Object[] {TaxName, C_Period_ID, AD_Org_ID});
		
		// 
		if(res == -1)
			return null;
		
		// 
		return new MLBRTaxAssessment(ctx, res, trxName);
	
	}
	
	
	/**
	 * Retornar as linhas da apuração de impostos
	 * 
	 * @return
	 */
	public X_LBR_TaxAssessmentLine[] getLines()
	{
		return getLines("Type");
	}
	
	
	/**
	 * Retornar as linhas de ajustes da apuração de impostsos
	 * 
	 * @param OrderBy
	 * @return
	 */
	public X_LBR_TaxAssessmentLine[] getLines(String orderBy){

		String sql = " SELECT * FROM LBR_TaxAssessmentLine WHERE LBR_TaxAssessment_ID = ? ";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<X_LBR_TaxAssessmentLine> lines = new ArrayList<X_LBR_TaxAssessmentLine>();

		try
		{
			//
			pstmt = DB.prepareStatement (sql, get_TrxName());
			pstmt.setInt(1, getLBR_TaxAssessment_ID());
			rs = pstmt.executeQuery();
			
			//
			while (rs.next ())
				lines.add(new X_LBR_TaxAssessmentLine(getCtx(), rs, get_TrxName()));
			
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally
		{
		  DB.close(rs, pstmt);
		}

		// convert to array
		return lines.toArray(new X_LBR_TaxAssessmentLine[lines.size()]);

	} //getLastPurchase	
	
	
	
	
	
	/**
	 * Retorna SALDO do PERIODO ANTERIOR
	 * @param ctx
	 * @param C_Period_ID
	 * @return BigDecimal CumulatedAmt
	 */
	public static BigDecimal getCumulatedAmt(Properties ctx, int C_Period_ID, int AD_Org_ID, int LBR_TaxName_ID){
		
		//
		BigDecimal amt = null;
		
		//
		String sql = "SELECT LBR_SaldoCredorTransportar	 								" +
					 "	FROM LBR_TaxAssessment ai 										" +
				     " WHERE ai.C_Period_ID = (SELECT p1.C_Period_ID FROM C_Period p1 	" +
				     " 							WHERE p1.StartDate = (SELECT TRUNC(p2.StartDate-1,'MM') " +
				     "													FROM C_Period p2				" +
				     "												   WHERE p2.C_Period_ID = ?)		" +
		     		 " 							  AND p1.AD_Client_ID = ?)								" +
		     		 "  AND ai.AD_Org_ID = ?											" +
		     		 "  AND LBR_TaxName_ID = ?											";
		
		//
		amt = DB.getSQLValueBD(null, sql, new Object[]{C_Period_ID, Env.getAD_Client_ID(ctx), AD_Org_ID, LBR_TaxName_ID});
		
		// se for negativo, recolher, senão trasporta para o mês seguinte
		if (amt == null || amt.signum() != 1)
			amt =  Env.ZERO;
		
		return amt;
	} //getCumulatedAmt

	
	/**
	 * Retorna Soma das Linhas por Tipo de Ajuste
	 * 
	 * TYPE_OutrosDébitos = "002"
	 * TYPE_EstornosDeCréditos = "003"
	 * TYPE_OutrosCréditos = "006"
	 * TYPE_EstornoDeDébitos = "007"
	 * 
	 * @return BigDecimal amt
	 */
	public BigDecimal getAmtByType(String type){
		
		BigDecimal amt = null;
		
		String sql = " SELECT SUM(al.Amt) 									" +
					 "   FROM LBR_TaxAssessmentLine al 						" +
				     "  WHERE al.LBR_TaxAssessment_ID = ? 					" +
				     "    AND al.Type = ?									";
		
		amt = DB.getSQLValueBD(null, sql, new Object[]{get_ID(),type});
		
		if (amt == null)
			amt =  Env.ZERO;
		
		return amt;
	} //getAmtByType
	
	
}	//	MLBRDI
