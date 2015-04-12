package org.idempierelbr.tax.model;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Properties;

import org.compiere.model.MInvoice;
import org.compiere.model.MOrder;
import org.compiere.model.PO;
import org.compiere.model.Query;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.idempierelbr.core.util.TextUtil;

public class MLBRIBPTax extends X_LBR_IBPTax
{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 5436412104911684345L;
	private static final CLogger log = CLogger.getCLogger(MLBRIBPTax.class);

	/**
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRIBPTax (Properties ctx, int LBR_DocLine_Details_ID, String trxName)
	{
		super (ctx, LBR_DocLine_Details_ID, trxName);
	}

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRIBPTax (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}
	
	
	/**
	 * Check if key already exists
	 * 
	 * @param chave
	 * @return
	 */
	public static boolean exists(String key, int AD_Org_ID){
		
		// check if exists 
		return DB.getSQLValue(null, "SELECT LBR_IBPTax_ID FROM LBR_IBPTax WHERE LBR_IBPTaxKey = ? AND AD_Org_ID = ?", new Object[]{key, AD_Org_ID}) > 0;
	}
	
	
	/**
	 * Get IBPTax record by NCM, DateDoc and Org
	 * 
	 * @param dateDoc
	 * @param ncm
	 * @param AD_Org_ID
	 * @return
	 */
	public static MLBRIBPTax getByNCM(Integer AD_Org_ID, Timestamp dateDoc, String ncm){
		
		String where = " AD_Org_ID IN (0, ?) 					" + // #1 - AD_Org_ID
				"		 AND ? BETWEEN StartDate AND EndDate 	" + // #2 - Date
				"		   AND Code = ?							";	// #3 - Ncm
		
		
		//
		return new Query (Env.getCtx(), MLBRIBPTax.Table_Name, where, null)
			.setParameters(new Object[]{AD_Org_ID, dateDoc, ncm})
			.setOrderBy("AD_Org_ID").firstOnly();
	}
	
	
	/**
	 * Get IBPTax record by NCM, DateDoc and Org
	 * 
	 * @param dateDoc
	 * @param LBR_NCM_ID
	 * @param AD_Org_ID
	 * @return
	 */
	public static MLBRIBPTax getByNCM(Properties ctx, Integer LBR_NCM_ID, String trxName){
		
		// check ncm 
		if (LBR_NCM_ID == null || LBR_NCM_ID.intValue() <= 0)
			return null;
		
		// query
		String sql = "SELECT * 								" +
				"	FROM LBR_IBPTax 						" +
				"	WHERE AD_Org_ID IN (0, ?) 				" + // #1 - AD_Org_ID
				"	  AND ? BETWEEN StartDate AND EndDate 	" + // #2 - Date
				"	  AND Code = ?							" + // #3 - NCM
				"	ORDER BY AD_Org_ID DESC					";	// order by Org, ZERO is the last

		// 
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try	{
			
			// get clean ncm 
			String ncm = TextUtil.retiraEspecial(new MLBRNCM(Env.getCtx(), LBR_NCM_ID, null).getValue()).replace(" ", "");
			
			// exec query
			pstmt = DB.prepareStatement(sql, trxName);
			pstmt.setInt(1, Env.getAD_Org_ID(ctx));
			pstmt.setTimestamp(2, new Timestamp(System.currentTimeMillis()));
			pstmt.setString(3, ncm);
			rs = pstmt.executeQuery();
			
			// 
			if (rs.next()) 	
				return new MLBRIBPTax(ctx, rs, trxName);
			
		}
		catch (SQLException e)
		{
			log.severe("Couldn't get IBPTax of LBR_NCM_ID=" + LBR_NCM_ID);
			e.printStackTrace();
		}
		finally
		{
			DB.close(rs, pstmt);
			rs = null; pstmt = null;
		}
		
		return null;
	}
	
	
	/**
	 * 
	 * @param ncm
	 * @return
	 */
	public static BigDecimal getTaxAmt(Properties ctx, Integer LBR_NCM_ID, String productSource, BigDecimal sourceAmt, String trxName) {
		
		// get ibptax 
		MLBRIBPTax m_ibptax = getByNCM(ctx, LBR_NCM_ID, trxName);
		
		// tax rate
		BigDecimal taxRate = Env.ZERO;
		
		// check 
		if (m_ibptax != null && sourceAmt != null && sourceAmt.signum() != 0) {

			// set sourca as ZERO if null
			if (productSource == null || productSource.isEmpty())
				productSource = "0";
			
			// product source 
			if (productSource.equals("0") || productSource.equals("3") || 
					productSource.equals("4") || productSource.equals("5"))
				taxRate = m_ibptax.getLBR_DomesticFederalTax();
			else 
				taxRate = m_ibptax.getLBR_ImportedFederalTax();
			
			// sum total rates
			taxRate = taxRate.add(m_ibptax.getLBR_StateTax()).add(m_ibptax.getLBR_MunicipalTax());
			
			// multiply sourceAmt by total tax rate to get the grand total of all taxes
			return sourceAmt.multiply(taxRate.divide(Env.ONEHUNDRED)).setScale(2, RoundingMode.HALF_UP);
		}
		
		return null;
	}
	
	/**
	 * Get IBPTax Description
	 * 
	 * 
	 * @param po
	 * @return
	 */
	public static String getIBPTaxDescription(PO po){
		
		String sql = " SELECT 								" +
				"	COALESCE(t.LBR_DomesticFederalTax, 0) AS LBR_DomesticFederalTax,	" +
				"	COALESCE(t.LBR_ImportedFederalTax, 0) AS LBR_ImportedFederalTax,	" +
				"	COALESCE(t.LBR_StateTax, 0) AS LBR_StateTax,						" +
				"	COALESCE(t.LBR_MunicipalTax, 0) AS LBR_MunicipalTax,				" +
				"	COALESCE(d.LBR_GrossAmt, 0) AS LBR_GrossAmt,						" +
				"	COALESCE(icms.LBR_ProductSource, '0') AS LBR_ProductSource,			" +
				"	t.LBR_Source,														" +
				"	t.LBR_IBPTaxKey														" +
				"	FROM LBR_DocLine_Details d											" +
				"		INNER JOIN LBR_NCM ncm ON ncm.LBR_NCM_ID = d.LBR_NCM_ID														" +
				"		INNER JOIN LBR_IBPTax t ON t.Code = REPLACE(ncm.value, '.', '') AND now() BETWEEN t.StartDate AND t.EndDate	" +
				"	 LEFT JOIN LBR_DocLine_Icms icms ON icms.LBR_DocLine_Details_ID = d.LBR_DocLine_Details_ID						";
				
		// order
		if (po.get_TableName().equals(MOrder.Table_Name))
			sql +=	"  WHERE d.C_OrderLine_ID IN (SELECT C_OrderLine_ID FROM C_OrderLine WHERE C_Order_ID = ?)			";
		
		// nf
		else if (po.get_TableName().equals("LBR_NotaFiscal"))
			sql +=	"  WHERE d.LBR_NotaFiscalLine_ID IN (SELECT LBR_NotaFiscalLine_ID FROM LBR_NotaFiscalLine WHERE LBR_NotaFiscal_ID = ?)	";
			
		// invoice
		else if (po.get_TableName().equals(MInvoice.Table_Name))
			sql +=	"  WHERE d.C_InvoiceLine_ID IN (SELECT C_InvoiceLine_ID FROM C_InvoiceLine WHERE C_Invoice_ID = ?)	";
		
		
		// totals
		BigDecimal federalTaxAmt = Env.ZERO;
		BigDecimal stateTaxAmt = Env.ZERO;
		BigDecimal municipalTaxAmt = Env.ZERO;
		BigDecimal grossAmt = Env.ZERO;
		
		// 
		String source = "";
		String ibpt_key = ""; 
		
		// 
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try	{
	
			// exec query
			pstmt = DB.prepareStatement(sql, po.get_TrxName());
			pstmt.setInt(1, po.get_ID());
			rs = pstmt.executeQuery();
			
			// 
			while (rs.next()){
				
				// get gross amt
				grossAmt = rs.getBigDecimal("LBR_GrossAmt");
				
				// source and key
				source = rs.getString("LBR_Source");
				ibpt_key = rs.getString("LBR_IBPTaxKey");
				
				// taxRate
				BigDecimal taxRate = Env.ZERO;
				
				// federal
				if (rs.getString("LBR_ProductSource").equals("0")
						|| rs.getString("LBR_ProductSource").equals("3")
						|| rs.getString("LBR_ProductSource").equals("4")
						|| rs.getString("LBR_ProductSource").equals("5")) {
					
					// calc taxRate for domestic federal tax
					taxRate = rs.getBigDecimal("LBR_DomesticFederalTax").signum() == 0 ? 
							Env.ZERO : rs.getBigDecimal("LBR_DomesticFederalTax").divide(Env.ONEHUNDRED);					
				} else { 
					
					// calc taxRate for imported federal tax
					taxRate = rs.getBigDecimal("LBR_ImportedFederalTax").signum() == 0 ? 
							Env.ZERO : rs.getBigDecimal("LBR_ImportedFederalTax").divide(Env.ONEHUNDRED);
				}
				
				// federal tax 
				if (taxRate.signum() != 0)
					federalTaxAmt = federalTaxAmt.add(grossAmt.multiply(taxRate));

				// state tax
				if (rs.getBigDecimal("LBR_StateTax").signum() != 0) {
					taxRate = rs.getBigDecimal("LBR_StateTax").divide(Env.ONEHUNDRED);
					stateTaxAmt = stateTaxAmt.add(grossAmt.multiply(taxRate));
				}
				
				// municipal tax
				if (rs.getBigDecimal("LBR_MunicipalTax").signum() != 0) {
					taxRate = rs.getBigDecimal("LBR_MunicipalTax").divide(Env.ONEHUNDRED);
					municipalTaxAmt = municipalTaxAmt.add(grossAmt.multiply(taxRate));
				}
			}

			// hasn't taxes, return empty
			if (federalTaxAmt.signum() == 0 && stateTaxAmt.signum() == 0 && municipalTaxAmt.signum() == 0)
				return "";
			
			// mount message
			String message = "Trib aprox ";
			if (federalTaxAmt.signum() != 0)
				message += "R$: " + federalTaxAmt.setScale(2, RoundingMode.HALF_UP) + " Federal ";
			if (stateTaxAmt.signum() != 0)
				message += "R$: " + stateTaxAmt.setScale(2, RoundingMode.HALF_UP) + " Estadual ";
			if (municipalTaxAmt.signum() != 0)
				message += "R$: " + municipalTaxAmt.setScale(2, RoundingMode.HALF_UP) + " Municipal ";
			message += "\nFonte: " + source;
			message += "             " + ibpt_key;
			
			// return
			return message;			
		}
		catch (SQLException e)
		{
			log.severe("Couldn't get IBPTax Description of " + po);
			e.printStackTrace();
		}
		finally
		{
			DB.close(rs, pstmt);
			rs = null; pstmt = null;
		}
		
		
		return "";
	}
}