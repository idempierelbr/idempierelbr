/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil				      *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.		   *
 * See the GNU General Public License for more details.				       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.				     *
 *****************************************************************************/
package org.idempierelbr.base.model;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.security.KeyStore;
import java.security.cert.X509Certificate;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Enumeration;
import java.util.Properties;

import org.compiere.model.MAttachment;
import org.compiere.model.Query;
import org.compiere.util.Env;
import org.idempierelbr.base.util.TextUtil;

/**
 *	Model for LBR_DigitalCertificate
 *
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@contributor Mario Grigioni
 *  @contributor Claudemir Todo Bom ( http://todobom.com )
 *  				<li>FR-LBR-34 - suporte a socket ssl dinâmico
 */
public class MLBRDigitalCertificate extends X_LBR_DigitalCertificate
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
	public MLBRDigitalCertificate (Properties ctx, int ID, String trx)
	{
		super (ctx, ID, trx);
	}	//	MLBRDigitalCertificate

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRDigitalCertificate (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRDigitalCertificate

	/**
	 * 	Procura o certificado do ICP
	 * 	@return
	 */
	public static MLBRDigitalCertificate getICPTrustStore ()
	{
		String where = COLUMNNAME_IsActive + "='Y' AND " + COLUMNNAME_LBR_CertType + "='" + LBR_CERTTYPE_ICPTrustStoreJKS + "'";
		String order = COLUMNNAME_ValidTo + " DESC";
		//
		return new Query (Env.getCtx(), Table_Name, where, null).setOrderBy(order).first();
	}	//	getICPTrustStore
	
	/**
	 * 	Validate the password against the digital certificate attached
	 * 	and optionally update alias/date fields
	 * 	@param updateFields true if alias and dates should be obtained from DC
	 *	@return "" or error message
	 */
	public String validateIt(boolean updateFields) {
		String returnMsg = "";
		
		MAttachment att = getAttachment (true);

		//	No attachment
		if ((LBR_CERTTYPE_JavaKeyStore.equals(getLBR_CertType()) || LBR_CERTTYPE_PKCS12.equals(getLBR_CertType())) 
				&& (att == null || att.getEntryCount() == 0)) {
			returnMsg = "No attachment, or digital certificate is not supported";
			log.info(returnMsg);
			return returnMsg;
		}
		
		try {
			String certType = getLBR_CertType();
			String pass = getPassword();
			
			if (LBR_CERTTYPE_PKCS12.equals(getLBR_CertType()))
				certType = "PKCS12";
			else if (LBR_CERTTYPE_ICPTrustStoreJKS.equals(getLBR_CertType()))
				certType = "JKS";
			
			String alias = getAlias();
			
			if (alias == null || alias.length() == 0)
				alias = "nfe";
				
			if (pass == null || pass.length() == 0)	{
				pass = "changeit";
				
				if (updateFields)
					setPassword(pass);
			}

			KeyStore ks = KeyStore.getInstance (certType);
			ks.load (att.getEntry(0).getInputStream(), pass.toCharArray());
			X509Certificate certificate = (X509Certificate) ks.getCertificate(alias);

			if (certificate == null) {
				Enumeration<String> aliases = ks.aliases();
				while (aliases.hasMoreElements()) {
					alias = aliases.nextElement();
					X509Certificate tmp = (X509Certificate) ks.getCertificate (alias);
					
					if (tmp != null && (certificate == null ||
							tmp.getNotAfter().after (Env.getContextAsDate(Env.getCtx(), "#Date")))) {
						
						certificate = tmp;
						
						if (updateFields)
							setAlias(alias);
						
						break;
					}	
				}
				
				if (certificate == null) {
					returnMsg = "Invalid digital certificate";
					log.info(returnMsg);
					return returnMsg;
				}
			}
			
			if (updateFields) {
				setValidFrom(new Timestamp(certificate.getNotBefore().getTime()));
				setValidTo(new Timestamp(certificate.getNotAfter().getTime()));
				saveEx();
			}

			if (getValidTo().before(Env.getContextAsDate(Env.getCtx(), "#Date")))
				log.info("Digital certificate has expired in " + TextUtil.timeToString(certificate.getNotAfter(), "dd/MM/yyyy"));
		} catch (Exception e)	{
			returnMsg = "Could not validate the digital certificate attached.";
			log.info(returnMsg);
			e.printStackTrace();
			return returnMsg;
		}
		
		return "";	
	}
	
	/**
	 * 	Gera um arquivo de configuração para o SmartCard, de acordo com o SO
	 * 	@return configuration file or null for error
	 */
	public String getConfigurationFile ()
	{
		String driverPath 		= null;
		String defaultDriver 	= null;
		String cfgFile 			= System.getProperty("java.io.tmpdir") + File.separator + "Token.cfg";

		byte[] library = null;
		//
		if (Env.isWindows())
		{
			library = getAttachmentData("dll");
			defaultDriver = "C:/Windows/System32/aetpkss1.dll";
		}
		
		else if (Env.isMac())
		{
			library = getAttachmentData("dylib");
			defaultDriver = "/usr/local/lib/libaetpkss.dylib";
		}
		else	//	Is Linux ?
		{
			library = getAttachmentData("so");
			defaultDriver = "/usr/lib/libaetpkss.so";
		}
		
		try 
		{
			//	Check driver - Default path
			if (library == null)
				driverPath = defaultDriver;
	
			//	Load from a file
			else
			{
				driverPath = System.getProperty("java.io.tmpdir") + File.separator + "SmartCard.Driver";
				//
				FileOutputStream fos = new FileOutputStream(driverPath);
				fos.write(library);
				fos.close();
			}
			
			FileWriter f = TextUtil.createFile (cfgFile, false);
			f.write("name= SmartCard");
			f.write("\nlibrary= " + driverPath);
			f.flush();
			f.close();
		}
		catch (FileNotFoundException e)
		{
			e.printStackTrace();
		}
		catch (IOException e)
		{
			e.printStackTrace();
		}
		return cfgFile;
	}	//	getConfigurationFile
}	//	MDigitalCertificate
