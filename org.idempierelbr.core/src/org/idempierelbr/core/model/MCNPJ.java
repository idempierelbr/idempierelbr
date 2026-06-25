package org.idempierelbr.core.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;

import org.compiere.model.MSysConfig;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.idempierelbr.base.util.TextUtil;

public class MCNPJ {
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(MCNPJ.class);
	private String cnpj;
	
	public MCNPJ(String cnpj) {
		setCNPJ(cnpj);
	}

	public String getCNPJ() {
		return cnpj;
	}

	public void setCNPJ(String cnpj) {
		this.cnpj = cnpj;
	}
	
	/**
	 *	Verifica se o CNPJ possui a sequência de caracteres e os dígitos verificadores válidos 
	 *	@return boolean true or false
	 */
	public boolean isValid() {
		if (getCNPJ() == null || getCNPJ().equals(""))
			return false;

		try
		{
			// Remove a máscara mantendo os caracteres alfanuméricos (CNPJ alfanumérico)
			String cnpj = TextUtil.removeCNPJMask(getCNPJ());

			if (cnpj.length() != 14)
				return false;

			// As 12 primeiras posições podem ser alfanuméricas (0-9, A-Z);
			// os 2 últimos dígitos (DV) são sempre numéricos.
			if (!cnpj.substring(0, 12).matches("[0-9A-Z]{12}"))
				return false;

			if (!cnpj.substring(12).matches("[0-9]{2}"))
				return false;

			int d1 = 0, d4 = 0;

			for (int xx = 0; xx < 12; xx++) {
				// Cada caractere é convertido pelo código ASCII subtraído de 48
				// ('0'->0 ... '9'->9, 'A'->17 ... 'Z'->42)
				int valor = cnpj.charAt(xx) - 48;
				int fator;

				if (xx < 4)
					fator = 5 - xx;
				else
					fator = 13 - xx;

				d1 += valor * fator;

				if (xx < 5)
					fator = 6 - xx;
				else
					fator = 14 - xx;

				d4 += valor * fator;
			}

			int resto = (d1 % 11);
			int digito1 = (resto < 2) ? 0 : 11 - resto;

			d4 = d4 + 2 * digito1;
			resto = (d4 % 11);
			int digito2 = (resto < 2) ? 0 : 11 - resto;

			String check = String.valueOf(digito1) + String.valueOf(digito2);

			return check.equals(cnpj.substring(12));
		}
		catch (Exception e)
		{
			return false;
		}
	}
	
	/**
	 *	Verifica se o CNPJ informado é único nos registros de Parceiro de Negócios
	 *	@return boolean true or false
	 */
	public boolean isUniqueOnBP(int AD_Client_ID, int AD_Org_ID, int C_BPartner_ID, String TableName, String trxName)
	{
		Boolean isUnifiedBP = MSysConfig.getBooleanValue("LBR_USE_UNIFIED_BP", false, AD_Client_ID);
		Boolean isUniqueBPPerClient = MSysConfig.getBooleanValue("LBR_UNIQUE_BP_PER_CLIENT", true, AD_Client_ID);
		
		int iCNPJ = 0;
		String sql = "SELECT COUNT(LBR_CNPJ) " +
				     "FROM " + TableName + " ";

		if(isUnifiedBP && TableName.equals("C_BPartner"))
			sql += "WHERE SUBSTR(LBR_CNPJ, 1, 8) = ?";
		else
			sql += "WHERE LBR_CNPJ = ?";

		sql += " AND AD_Client_ID = ?";
		
		if (!isUniqueBPPerClient)
			sql += " AND AD_Org_ID = ?";		
		
		sql += " AND " + TableName + "_ID <> ? AND IsActive='Y'";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trxName);
			
			if(isUnifiedBP && TableName.equals("C_BPartner"))
				pstmt.setString (1, getCNPJ().substring(0, 8));
			else
				pstmt.setString (1, getCNPJ());
			
			pstmt.setInt(2, AD_Client_ID);
			
			if (!isUniqueBPPerClient) {
				pstmt.setInt(3, AD_Org_ID);
				pstmt.setInt(4, C_BPartner_ID);
			} else {
				pstmt.setInt(3, C_BPartner_ID);
			}

			rs = pstmt.executeQuery ();
			
			if (rs.next ())
			{
				iCNPJ = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
			DB.close(rs, pstmt);
			rs = null; pstmt = null;
		}

		if (iCNPJ > 0)
			return false;
		else
			return true;
	}

}
