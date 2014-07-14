package org.idempierelbr.core.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;

import org.compiere.model.MSysConfig;
import org.compiere.util.CLogger;
import org.compiere.util.DB;

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
		if (getCNPJ() != null && !getCNPJ().equals("")) { 
			try
			{
				int d1,d4,xx,nCount,fator,resto,digito1,digito2;
			    String Check, s_aux;
			    String Separadores = "/-.";
			    d1 = 0;
			    d4 = 0;
			    xx = 0;
		
			    for (nCount = 0; nCount < getCNPJ().length()-2; nCount++) {
			      s_aux = getCNPJ().substring (nCount, nCount+1);
			      if (Separadores.indexOf(s_aux) == -1) {
			    	  if (xx < 4) {
			    		  fator = 5 - xx;
			          }
			          else {
			              fator = 13 - xx;
			          }
		
			          d1 = d1 + Integer.valueOf (s_aux).intValue() * fator;
		
			          if (xx < 5) {
			              fator = 6 - xx;
			          }
			          else {
			              fator = 14 - xx;
			          }
		
			          d4 += Integer.valueOf (s_aux).intValue() * fator;
			          xx++;
			      }
			    }
		
			    resto = (d1 % 11);
		
			    if (resto < 2) {
			      digito1 = 0;
			    }
			    else{
			      digito1 = 11 - resto;
			    }
		
			    d4 = d4 + 2 * digito1;
			    resto = (d4 % 11);
		
			    if (resto < 2) {
			      digito2 = 0;
			    }
			    else {
			      digito2 = 11 - resto;
			    }
		
			    Check = String.valueOf(digito1) + String.valueOf(digito2);
		
			    if (Check.compareTo(getCNPJ().substring(getCNPJ().length()-2, getCNPJ().length() )) !=0) {
			      return false;
			    }
			    
			    return true;
			}
			catch (Exception e)
			{
				return false;
			}
		} else 
			return false;
	}
	
	/**
	 *	Verifica se o CNPJ informado é único nos registros de Parceiro de Negócios
	 *	@return boolean true or false
	 */
	public boolean isUniqueOnBP(int AD_Client_ID, int C_BPartner_ID, String TableName, String trxName)
	{
		Boolean isUnifiedBP = MSysConfig.getBooleanValue("LBR_USE_UNIFIED_BP", false, AD_Client_ID);
		int iCNPJ = 0;
		String sql = "SELECT COUNT(LBR_CNPJ) " +
				     "FROM " + TableName + " ";

		if(isUnifiedBP && TableName.equals("C_BPartner"))
			sql += "WHERE SUBSTR(LBR_CNPJ, 1, 8) = ? AND AD_Client_ID = ? ";
		else
			sql += "WHERE LBR_CNPJ = ? AND AD_Client_ID = ? ";

		sql += "AND " + TableName + "_ID <> ? AND IsActive='Y'";

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
			pstmt.setInt(3, C_BPartner_ID);
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
		}

		if (iCNPJ > 0)
			return false;
		else
			return true;
	}

}
