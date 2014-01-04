package org.idempierelbr.core.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;

import org.compiere.util.CLogger;
import org.compiere.util.DB;

public class MCPF {
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(MCPF.class);
	private String cpf;
	
	public MCPF(String cpf) {
		setCPF(cpf);
	}
	
	public String getCPF() {
		return cpf;
	}

	public void setCPF(String cpf) {
		this.cpf = cpf;
	}

	/**
	 *	Verifica se o CPF possui a sequência de caracteres e os dígitos verificadores válidos 
	 *	@return boolean true or false
	 */
	public boolean isValid()
	{
		if (getCPF() != null && !getCPF().equals("")) { 
			try
			{
				int d1,d4,xx,nCount,resto,digito1,digito2;
				String Check;
				String Separadores = "/-.";
				d1 = 0; d4 = 0; xx = 1;
	
				if (getCPF().equals("000.000.000-00") ||
					getCPF().equals("111.111.111-11") ||
					getCPF().equals("222.222.222-22") ||
					getCPF().equals("333.333.333-33") ||
					getCPF().equals("444.444.444-44") ||
					getCPF().equals("555.555.555-55") ||
					getCPF().equals("666.666.666-66") ||
					getCPF().equals("777.777.777-77") ||
					getCPF().equals("888.888.888-88") ||
					getCPF().equals("999.999.999-99"))
				{
					return false;
				}
	
				for (nCount = 0; nCount < getCPF().length() -2; nCount++) {
					String s_aux = getCPF().substring(nCount, nCount+1);
					if (Separadores.indexOf(s_aux) == -1) {
						d1 = d1 + ( 11 - xx ) * Integer.valueOf (s_aux).intValue();
						d4 = d4 + ( 12 - xx ) * Integer.valueOf (s_aux).intValue();
						xx++;
					}
				}
	
				resto = (d1 % 11);
	
				if (resto < 2) {
					digito1 = 0;
				}
				else {
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
				String s_aux2 = getCPF().substring (getCPF().length()-2, getCPF().length());
	
				if (s_aux2.compareTo (Check) != 0){
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
	 *	Verifica se o CPF informado é único nos registros de Parceiro de Negócios
	 *	@return boolean true or false
	 */
	public boolean isUniqueOnBP(int AD_Client_ID, int C_BPartner_ID, String trxName) {
		int iCPF = 0;
		String sql = "SELECT count(LBR_CPF) " +
				     "FROM C_BPartner " +
				     "WHERE LBR_CPF = ? AND AD_Client_ID = ?" +
				     "AND C_BPartner_ID <> ? AND IsActive = 'Y'";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, trxName);
			pstmt.setString (1, getCPF());
			pstmt.setInt(2, AD_Client_ID);
			pstmt.setInt(3, C_BPartner_ID);
			rs = pstmt.executeQuery ();
			if (rs.next ())
			{
				iCPF = rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
			DB.close(rs, pstmt);
		}

		if (iCPF > 0)
			return false;
		else
			return true;
	}
}
