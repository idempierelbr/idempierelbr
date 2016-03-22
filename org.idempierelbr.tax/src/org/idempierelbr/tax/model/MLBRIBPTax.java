package org.idempierelbr.tax.model;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Properties;

import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.PO;
import org.compiere.model.Query;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.idempierelbr.core.util.TextUtil;

public class MLBRIBPTax extends X_LBR_IBPTax {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5436412104911684345L;
	private static final CLogger log = CLogger.getCLogger(MLBRIBPTax.class);

	/**
	 * Default Constructor
	 * 
	 * @param Properties
	 *            ctx
	 * @param int
	 *            ID (0 create new)
	 * @param String
	 *            trx
	 */
	public MLBRIBPTax(Properties ctx, int LBR_DocLine_Details_ID, String trxName) {
		super(ctx, LBR_DocLine_Details_ID, trxName);
	}

	/**
	 * Load Constructor
	 * 
	 * @param ctx
	 *            context
	 * @param rs
	 *            result set record
	 * @param trxName
	 *            transaction
	 */
	public MLBRIBPTax(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}

	/**
	 * Check if key already exists
	 * 
	 * @param chave
	 * @return
	 */
	public static boolean exists(String key, int AD_Org_ID) {

		// check if exists
		return DB.getSQLValue(null, "SELECT LBR_IBPTax_ID FROM LBR_IBPTax WHERE LBR_IBPTaxKey = ? AND AD_Org_ID = ?",
				new Object[] { key, AD_Org_ID }) > 0;
	}

	/**
	 * Get IBPTax record by NCM, DateDoc and Org
	 * 
	 * @param dateDoc
	 * @param ncm
	 * @param AD_Org_ID
	 * @return
	 */
	public static MLBRIBPTax getByNCM(Integer AD_Org_ID, Timestamp dateDoc, String ncm) {

		String where = " AD_Org_ID IN (0, ?) 					" + // #1 -
																	// AD_Org_ID
		"		 AND ? BETWEEN StartDate AND EndDate 	" + // #2 - Date
				"		   AND Code = ?							"; // #3 - Ncm

		//
		return new Query(Env.getCtx(), MLBRIBPTax.Table_Name, where, null)
				.setParameters(new Object[] { AD_Org_ID, dateDoc, ncm }).setOrderBy("AD_Org_ID").firstOnly();
	}

	/**
	 * Get IBPTax record by NCM, DateDoc and Org
	 * 
	 * @param dateDoc
	 * @param LBR_NCM_ID
	 * @param AD_Org_ID
	 * @return
	 */
	public static MLBRIBPTax getByNCM(Properties ctx, Integer LBR_NCM_ID, String trxName) {

		// check ncm
		if (LBR_NCM_ID == null || LBR_NCM_ID.intValue() <= 0)
			return null;

		// query
		String sql = "SELECT * 								" + "	FROM LBR_IBPTax 						"
				+ "	WHERE AD_Org_ID IN (0, ?) 				" + // #1 -
																// AD_Org_ID
		"	  AND ? BETWEEN StartDate AND EndDate 	" + // #2 - Date
				"	  AND Code = ?							" + // #3 - NCM
				"	ORDER BY AD_Org_ID DESC					"; // order by Org,
																// ZERO is the
																// last

		//
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {

			// get clean ncm
			String ncm = TextUtil.retiraEspecial(new MLBRNCM(Env.getCtx(), LBR_NCM_ID, null).getValue()).replace(" ",
					"");

			// exec query
			pstmt = DB.prepareStatement(sql, trxName);
			pstmt.setInt(1, Env.getAD_Org_ID(ctx));
			pstmt.setTimestamp(2, new Timestamp(System.currentTimeMillis()));
			pstmt.setString(3, ncm);
			rs = pstmt.executeQuery();

			//
			if (rs.next())
				return new MLBRIBPTax(ctx, rs, trxName);

		} catch (SQLException e) {
			log.severe("Couldn't get IBPTax of LBR_NCM_ID=" + LBR_NCM_ID);
			e.printStackTrace();
		} finally {
			DB.close(rs, pstmt);
			rs = null;
			pstmt = null;
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
	public static String getIBPTaxDescription(PO po, boolean IsSummary) {

		String sql = " SELECT 								"
				+ "	COALESCE(t.LBR_DomesticFederalTax, 0) AS LBR_DomesticFederalTax,	"
				+ "	COALESCE(t.LBR_ImportedFederalTax, 0) AS LBR_ImportedFederalTax,	"
				+ "	COALESCE(t.LBR_StateTax, 0) AS LBR_StateTax,						"
				+ "	COALESCE(t.LBR_MunicipalTax, 0) AS LBR_MunicipalTax,				"
				+ "	COALESCE(d.LBR_GrossAmt, 0)  AS BaseCalcAmt,						"
				+ "	COALESCE(icms.LBR_ProductSource, '0') AS LBR_ProductSource,			"
				+ "	t.LBR_Source,														"
				+ "	t.LBR_IBPTaxKey														"
				+ "	FROM LBR_DocLine_Details d											"
				+ "		INNER JOIN LBR_NCM ncm ON ncm.LBR_NCM_ID = d.LBR_NCM_ID														"
				+ "		INNER JOIN LBR_CFOP cfop ON cfop.LBR_CFOP_ID = d.LBR_CFOP_ID												"
				+ "		INNER JOIN LBR_IBPTax t ON t.Code = REPLACE(ncm.value, '.', '') AND now() BETWEEN t.StartDate AND t.EndDate	"
				+ "	     LEFT JOIN LBR_DocLine_Icms icms ON icms.LBR_DocLine_Details_ID = d.LBR_DocLine_Details_ID					"

		// only SO cfops
				+ "	WHERE cfop.value IN ('5.929', '6.929','5.101', '5.102', '5.103', '5.104',  										"
				+ "			'5.105', '5.106', '5.109', '5.110', '5.111', '5.112', '5.113', '5.114', 								"
				+ "			'5.115', '5.116', '5.117', '5.118', '5.119', '5.120', '5.122', '5.123',									"
				+ "			'5.124', '5.125', '6.101', '6.102', '6.103', '6.104', '6.105', '6.106', 								"
				+ "			'6.109', '6.110', '6.111', '6.112', '6.113', '6.114', '6.115', '6.116', 								"
				+ "			'6.117', '6.118', '6.119', '6.120',	'6.122', '6.123', '6.124', '6.125',									"
				+ "			'5.401', '5.402', '5.403', '5.405', '6.401', '6.402', '6.403', '6.404')									"
				+ "     AND t.AD_Org_ID = ?																							";

		// order
		if (po.get_TableName().equals(MOrder.Table_Name))
			sql += "  AND d.C_OrderLine_ID IN (SELECT C_OrderLine_ID FROM C_OrderLine WHERE C_Order_ID = ?)						";

		// nf
		else if (po.get_TableName().equals("LBR_NotaFiscal"))
			sql += "  AND d.LBR_NotaFiscalLine_ID IN (SELECT LBR_NotaFiscalLine_ID FROM LBR_NotaFiscalLine WHERE LBR_NotaFiscal_ID = ?) ";

		// invoice
		else if (po.get_TableName().equals(MInvoice.Table_Name))
			sql += "  AND d.C_InvoiceLine_ID IN (SELECT C_InvoiceLine_ID FROM C_InvoiceLine WHERE C_Invoice_ID = ?)				";

		// totals
		BigDecimal federalTaxAmt = Env.ZERO;
		BigDecimal stateTaxAmt = Env.ZERO;
		BigDecimal municipalTaxAmt = Env.ZERO;
		BigDecimal baseCalcAmt = Env.ZERO;
		BigDecimal totalTaxAmt = Env.ZERO;

		//
		String source = "";
		String ibpt_key = "";
		String message = "";

		//
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {

			// exec query
			pstmt = DB.prepareStatement(sql, po.get_TrxName());
			pstmt.setInt(1, po.getAD_Org_ID());
			pstmt.setInt(2, po.get_ID());
			rs = pstmt.executeQuery();

			//
			while (rs.next()) {

				// base calc
				baseCalcAmt = rs.getBigDecimal("BaseCalcAmt");

				// source and key
				source = rs.getString("LBR_Source");
				ibpt_key = rs.getString("LBR_IBPTaxKey");

				// taxRate
				BigDecimal taxRate = Env.ZERO;

				// federal
				if (rs.getString("LBR_ProductSource").equals("0") || rs.getString("LBR_ProductSource").equals("3")
						|| rs.getString("LBR_ProductSource").equals("4")
						|| rs.getString("LBR_ProductSource").equals("5")) {

					// calc taxRate for domestic federal tax
					taxRate = rs.getBigDecimal("LBR_DomesticFederalTax").signum() == 0 ? Env.ZERO
							: rs.getBigDecimal("LBR_DomesticFederalTax").divide(Env.ONEHUNDRED);
				} else {

					// calc taxRate for imported federal tax
					taxRate = rs.getBigDecimal("LBR_ImportedFederalTax").signum() == 0 ? Env.ZERO
							: rs.getBigDecimal("LBR_ImportedFederalTax").divide(Env.ONEHUNDRED);
				}

				// federal tax
				if (taxRate.signum() != 0)
					federalTaxAmt = federalTaxAmt.add(baseCalcAmt.multiply(taxRate));

				// state tax
				if (rs.getBigDecimal("LBR_StateTax").signum() == 1) {
					taxRate = rs.getBigDecimal("LBR_StateTax").divide(Env.ONEHUNDRED);
					stateTaxAmt = stateTaxAmt.add(baseCalcAmt.multiply(taxRate));
				}

				// municipal tax
				if (rs.getBigDecimal("LBR_MunicipalTax").signum() == 1) {
					taxRate = rs.getBigDecimal("LBR_MunicipalTax").divide(Env.ONEHUNDRED);
					municipalTaxAmt = municipalTaxAmt.add(baseCalcAmt.multiply(taxRate));
				}
			}

			// hasn't taxes, return empty
			if (federalTaxAmt.signum() == 0 && stateTaxAmt.signum() == 0 && municipalTaxAmt.signum() == 0)
				return "";

			if (IsSummary) {

				//
				totalTaxAmt = federalTaxAmt.add(stateTaxAmt).add(municipalTaxAmt);

				// only total tax
				message += "Tributos Totais Incidentes (Lei Federal 12.741/2012): R$ "
						+ TextUtil.bigdecimalToString(totalTaxAmt);

			} else {

				//
				message = "Trib aprox ";

				// mount message
				message += " R$: " + TextUtil.bigdecimalToString(federalTaxAmt) + " Federal e";
				message += " R$: " + TextUtil.bigdecimalToString(stateTaxAmt) + " Estadual ";

				//
				if (municipalTaxAmt.signum() == 1)
					message += " R$: " + TextUtil.bigdecimalToString(municipalTaxAmt) + " Municipal ";

				message += " Fonte: " + source + "  " + ibpt_key;
			}

			// return
			return message;
		} catch (SQLException e) {

			// 
			log.severe("Não foi possível gerar descrição de impostos aproximados. Erro: " + e.getMessage());
			
			// 
			e.printStackTrace();

		} finally {
			DB.close(rs, pstmt);
			rs = null;
			pstmt = null;
		}

		return "";
	}

	/**
	 * Get IBPTax Amt
	 * 
	 * 
	 * @param po
	 * @return
	 */
	public static BigDecimal getIBPTaxAmtByPOLine(PO po) {

		String sql = " SELECT 								"
				+ "	COALESCE(t.LBR_DomesticFederalTax, 0) AS LBR_DomesticFederalTax,	"
				+ "	COALESCE(t.LBR_ImportedFederalTax, 0) AS LBR_ImportedFederalTax,	"
				+ "	COALESCE(t.LBR_StateTax, 0) AS LBR_StateTax,						"
				+ "	COALESCE(t.LBR_MunicipalTax, 0) AS LBR_MunicipalTax,				"
				+ "	COALESCE(d.LBR_GrossAmt, 0)  AS BaseCalcAmt,						"
				+ "	COALESCE(icms.LBR_ProductSource, '0') AS LBR_ProductSource			"
				+ "	FROM LBR_DocLine_Details d											"
				+ "		INNER JOIN LBR_NCM ncm ON ncm.LBR_NCM_ID = d.LBR_NCM_ID														"
				+ "		INNER JOIN LBR_CFOP cfop ON cfop.LBR_CFOP_ID = d.LBR_CFOP_ID												"
				+ "		INNER JOIN LBR_IBPTax t ON t.Code = REPLACE(ncm.value, '.', '') AND now() BETWEEN t.StartDate AND t.EndDate	"
				+ "	     LEFT JOIN LBR_DocLine_Icms icms ON icms.LBR_DocLine_Details_ID = d.LBR_DocLine_Details_ID					"

		// only SO cfops
				+ "	WHERE cfop.value IN ('5.929', '6.929','5.101', '5.102', '5.103', '5.104',  										"
				+ "			'5.105', '5.106', '5.109', '5.110', '5.111', '5.112', '5.113', '5.114', 								"
				+ "			'5.115', '5.116', '5.117', '5.118', '5.119', '5.120', '5.122', '5.123',									"
				+ "			'5.124', '5.125', '6.101', '6.102', '6.103', '6.104', '6.105', '6.106', 								"
				+ "			'6.109', '6.110', '6.111', '6.112', '6.113', '6.114', '6.115', '6.116', 								"
				+ "			'6.117', '6.118', '6.119', '6.120',	'6.122', '6.123', '6.124', '6.125',									"
				+ "			'5.401', '5.402', '5.403', '5.405', '6.401', '6.402', '6.403', '6.404')									"
				+ "     AND t.AD_Org_ID = ?																							";

		// order line
		if (po.get_TableName().equals(MOrderLine.Table_Name))
			sql += "  AND d.C_OrderLine_ID IN (?)			";

		// nf line
		else if (po.get_TableName().equals("LBR_NotaFiscalLine"))
			sql += "  AND d.LBR_NotaFiscalLine_ID IN (?) 	";

		// invoice line
		else if (po.get_TableName().equals(MInvoiceLine.Table_Name))
			sql += "  AND d.C_InvoiceLine_ID IN (?)			";

		// totals
		BigDecimal federalTaxAmt = Env.ZERO;
		BigDecimal stateTaxAmt = Env.ZERO;
		BigDecimal municipalTaxAmt = Env.ZERO;
		BigDecimal baseCalcAmt = Env.ZERO;

		//
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {

			// exec query
			pstmt = DB.prepareStatement(sql, po.get_TrxName());
			pstmt.setInt(1, po.getAD_Org_ID());
			pstmt.setInt(2, po.get_ID());
			rs = pstmt.executeQuery();

			//
			if (rs.next()) {

				// base calc
				baseCalcAmt = rs.getBigDecimal("BaseCalcAmt");

				// taxRate
				BigDecimal taxRate = Env.ZERO;

				// federal
				if (rs.getString("LBR_ProductSource").equals("0") || rs.getString("LBR_ProductSource").equals("3")
						|| rs.getString("LBR_ProductSource").equals("4")
						|| rs.getString("LBR_ProductSource").equals("5")) {

					// calc taxRate for domestic federal tax
					taxRate = rs.getBigDecimal("LBR_DomesticFederalTax").signum() == 0 ? Env.ZERO
							: rs.getBigDecimal("LBR_DomesticFederalTax").divide(Env.ONEHUNDRED);
				} else {

					// calc taxRate for imported federal tax
					taxRate = rs.getBigDecimal("LBR_ImportedFederalTax").signum() == 0 ? Env.ZERO
							: rs.getBigDecimal("LBR_ImportedFederalTax").divide(Env.ONEHUNDRED);
				}

				// federal tax
				if (taxRate.signum() != 0)
					federalTaxAmt = federalTaxAmt.add(baseCalcAmt.multiply(taxRate));

				// state tax
				if (rs.getBigDecimal("LBR_StateTax").signum() == 1) {
					taxRate = rs.getBigDecimal("LBR_StateTax").divide(Env.ONEHUNDRED);
					stateTaxAmt = stateTaxAmt.add(baseCalcAmt.multiply(taxRate));
				}

				// municipal tax
				if (rs.getBigDecimal("LBR_MunicipalTax").signum() == 1) {
					taxRate = rs.getBigDecimal("LBR_MunicipalTax").divide(Env.ONEHUNDRED);
					municipalTaxAmt = municipalTaxAmt.add(baseCalcAmt.multiply(taxRate));
				}
			}

			// hasn't taxes, return empty
			if (federalTaxAmt.signum() == 0 && stateTaxAmt.signum() == 0 && municipalTaxAmt.signum() == 0)
				return null;

			//
			return (federalTaxAmt.add(stateTaxAmt).add(municipalTaxAmt)).setScale(2, RoundingMode.HALF_UP);

		} catch (SQLException e) {

			// log
			log.severe("Não foi possível gerar o valor de impostos aproximados para a linha. Erro: " + e.getMessage());

			e.printStackTrace();

		} finally {

			DB.close(rs, pstmt);
			rs = null;
			pstmt = null;
		}

		return null;
	}

}