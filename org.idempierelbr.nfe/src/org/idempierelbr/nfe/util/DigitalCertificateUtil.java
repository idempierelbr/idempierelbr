package org.idempierelbr.nfe.util;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.security.Security;
import java.security.cert.X509Certificate;
import java.util.Date;
import java.util.Enumeration;
import java.util.Properties;

import org.apache.commons.httpclient.protocol.Protocol;

import org.compiere.model.MOrgInfo;
import org.compiere.util.Env;
import org.idempierelbr.base.model.MLBRDigitalCertificate;

public class DigitalCertificateUtil {
	/**
	 * setCertificate
	 * Set all System.property for webservice connection
	 */
	public static void setCertificate (Properties ctx, int AD_Org_ID) throws Exception
	{
		MOrgInfo oi = MOrgInfo.get (ctx, AD_Org_ID, null);
		
		Integer certOrg = oi.get_ValueAsInt("LBR_DC_Org_ID");
		Integer certWS = oi.get_ValueAsInt("LBR_DC_WS_ID");
		
		MLBRDigitalCertificate dcOrg = new MLBRDigitalCertificate(Env.getCtx(), certOrg, null);
		MLBRDigitalCertificate dcWS = new MLBRDigitalCertificate(Env.getCtx(), certWS, null);
		MLBRDigitalCertificate dcICP = MLBRDigitalCertificate.getICPTrustStore();
		
		if (dcICP != null)
			//	TrustStore dinamica, compatível com todos os endereços da NF-e
			setTrustStoreDynamic (dcOrg, dcICP);
		else
			//	Necessário um certificado para cada webservice
			setTrustStore (dcOrg, dcWS);
	}	//	setCertificate

	/**
	 * 		Dynamic Trust Store
	 * 
	 * 	@param dcOrg
	 * 	@param dcICP
	 * 	@throws Exception
	 */
	private static void setTrustStoreDynamic (MLBRDigitalCertificate dcOrg, MLBRDigitalCertificate dcICP) throws Exception
	{
		String orgPassword = dcOrg.getPassword();
		String certType = null;
		InputStream certFileOrg = null;

		//	PKCS11 - A3 (Cartão)
		if (MLBRDigitalCertificate.LBR_CERTTYPE_PKCS11.equals (dcOrg.getLBR_CertType()))
		{
			certType = "PKCS11";
			//
			//Provider p = new sun.security.pkcs11.SunPKCS11(dcOrg.getConfigurationFile());
			//Security.addProvider(p);
		}
		
		//	PKCS12 - A1 (Arquivo)
		else if (MLBRDigitalCertificate.LBR_CERTTYPE_PKCS12.equals (dcOrg.getLBR_CertType()))
		{
			certType = "PKCS12";
			//
			certFileOrg = dcOrg.getAttachment(true).getEntry(0).getInputStream();
			if (certFileOrg == null)
				throw new Exception("Unable to find private key attachment");
		}
		
		//	Unknown Certificate
		else
			return;
		
		//	Load Drivers
		KeyStore ks = KeyStore.getInstance (certType);
		
		try 
		{
			ks.load (certFileOrg, orgPassword.toCharArray());
		}
		catch (IOException e)
		{
			throw new Exception("Incorrect Certificate Password");
		}
		
		InputStream certFileWS = dcICP.getAttachment(true).getEntry(0).getInputStream();
		if (certFileWS == null)
			throw new Exception("Unable to find webservices keystore attachment");
		
		String alias = dcOrg.getAlias();
		
		//	Default Alias
		if (alias != null 
				&& ks.containsAlias(alias)
				&& ks.isKeyEntry(alias))
			;	//	Do Nothing
		else
		{
			//	Try to find a valid key entry
			Enumeration<String> aliasesEnum = ks.aliases();  
			while (aliasesEnum.hasMoreElements()) 
			{  
				alias = (String) aliasesEnum.nextElement();  
				if (ks.isKeyEntry(alias) && ((X509Certificate) ks.getCertificate(alias)).getNotAfter().after (new Date()))	break;
			}
		}
  		X509Certificate certificate = (X509Certificate) ks.getCertificate(alias);
		PrivateKey privateKey = (PrivateKey) ks.getKey(alias, orgPassword.toCharArray());
		SocketFactoryDinamico socketFactoryDinamico = new SocketFactoryDinamico(certificate, privateKey);
		socketFactoryDinamico.setFileCacerts (certFileWS, dcICP.getPassword());

		Protocol protocol = new Protocol("https", socketFactoryDinamico, 443);  
		Protocol.registerProtocol("https", protocol);
	}	//	setTrustStoreDynamic
	
	/**
	 * 		Trust Store
	 * 
	 * 	@param dcOrg
	 * 	@param dcWS
	 * 	@throws Exception
	 */
	private static void setTrustStore (MLBRDigitalCertificate dcOrg, MLBRDigitalCertificate dcWS) throws Exception
	{
		String certTypeOrg;
		String certTypeWS;
		
		//	Certificado PFX
		if (dcOrg.getLBR_CertType() == null)
			throw new Exception("Certificate Type is NULL");
		else if (dcOrg.getLBR_CertType().equals(MLBRDigitalCertificate.LBR_CERTTYPE_PKCS11))
		{
			certTypeOrg = "PKCS11";
			//
			//Provider p = new sun.security.pkcs11.SunPKCS11 (dcOrg.getConfigurationFile());
			//Security.addProvider(p);
			//
			System.setProperty("javax.net.ssl.keyStore", "NONE");
		}
		else if (dcOrg.getLBR_CertType().equals(MLBRDigitalCertificate.LBR_CERTTYPE_PKCS12))
		{
			certTypeOrg = "PKCS12";
			File certFileOrg = NFeUtil.getAttachmentEntryFile(dcOrg.getAttachment(true).getEntry(0));
			//
			Security.addProvider(Security.getProvider("SunJSSE"));
			System.setProperty("javax.net.ssl.keyStore", certFileOrg.toString());
		}
		else if (dcOrg.getLBR_CertType().equals(MLBRDigitalCertificate.LBR_CERTTYPE_JavaKeyStore))
			certTypeOrg = "JKS";
		else
			throw new Exception("Unknow Certificate Type or Not implemented yet");

		//	Certificado do WS
		if (dcWS.getLBR_CertType() == null)
			throw new Exception("Certificate Type is NULL");
		else if (dcWS.getLBR_CertType().equals(MLBRDigitalCertificate.LBR_CERTTYPE_PKCS12))
			certTypeWS = "PKCS12";
		else if (dcWS.getLBR_CertType().equals(MLBRDigitalCertificate.LBR_CERTTYPE_JavaKeyStore))
			certTypeWS = "JKS";
		else
			throw new Exception("Unknow Certificate Type or Not implemented yet");

		File certFileWS = NFeUtil.getAttachmentEntryFile(dcWS.getAttachment(true).getEntry(0));

		//	Commons
		System.setProperty("java.protocol.handler.pkgs", "com.sun.net.ssl.internal.www.protocol");
		System.setProperty("javax.net.ssl.keyStoreType", certTypeOrg);
		System.setProperty("javax.net.ssl.keyStorePassword", dcOrg.getPassword());
		//
		System.setProperty("javax.net.ssl.trustStoreType", certTypeWS);
		System.setProperty("javax.net.ssl.trustStore", certFileWS.toString());
		
		if (dcWS.getPassword() != null && !dcWS.getPassword().isEmpty())
			System.setProperty("javax.net.ssl.trustStorePassword", dcWS.getPassword());
		
		// BF - JRE > 1.6.19
		System.setProperty("sun.security.ssl.allowUnsafeRenegotiation", "true");
	}	//	setTrustStore
}
