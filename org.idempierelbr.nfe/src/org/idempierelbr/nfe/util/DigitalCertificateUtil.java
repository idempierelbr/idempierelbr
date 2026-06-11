package org.idempierelbr.nfe.util;

import java.io.IOException;
import java.io.InputStream;
import java.net.Socket;
import java.security.KeyStore;
import java.security.Principal;
import java.security.PrivateKey;
import java.security.cert.X509Certificate;
import java.util.Date;
import java.util.Enumeration;
import java.util.Properties;

import javax.net.ssl.KeyManager;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509KeyManager;

import org.compiere.model.MOrgInfo;
import org.compiere.util.Env;
import org.idempierelbr.base.model.MLBRDigitalCertificate;

public class DigitalCertificateUtil {

	public static SSLContext buildSSLContext(Properties ctx, int AD_Org_ID) throws Exception {
		MOrgInfo oi = MOrgInfo.get(ctx, AD_Org_ID, null);

		int certOrg = oi.get_ValueAsInt("LBR_DC_Org_ID");
		int certWS  = oi.get_ValueAsInt("LBR_DC_WS_ID");

		MLBRDigitalCertificate dcOrg = new MLBRDigitalCertificate(Env.getCtx(), certOrg, null);
		MLBRDigitalCertificate dcWS  = new MLBRDigitalCertificate(Env.getCtx(), certWS,  null);
		MLBRDigitalCertificate dcICP = MLBRDigitalCertificate.getICPTrustStore();

		if (dcICP != null)
			return buildSSLContextWithICP(dcOrg, dcICP);
		else
			return buildSSLContextWithWS(dcOrg, dcWS);
	}

	private static SSLContext buildSSLContextWithICP(MLBRDigitalCertificate dcOrg,
			MLBRDigitalCertificate dcICP) throws Exception {

		if (MLBRDigitalCertificate.LBR_CERTTYPE_PKCS11.equals(dcOrg.getLBR_CertType()))
			throw new Exception("PKCS11 certificates are not yet supported");

		if (!MLBRDigitalCertificate.LBR_CERTTYPE_PKCS12.equals(dcOrg.getLBR_CertType()))
			throw new Exception("Unsupported certificate type: " + dcOrg.getLBR_CertType());

		InputStream orgStream = dcOrg.getAttachment(true).getEntry(0).getInputStream();
		if (orgStream == null)
			throw new Exception("Unable to find private key attachment");

		String orgPassword = dcOrg.getPassword();
		KeyStore ks = KeyStore.getInstance("PKCS12");
		try {
			ks.load(orgStream, orgPassword.toCharArray());
		} catch (IOException e) {
			throw new Exception("Incorrect certificate password");
		}

		String alias = resolveAlias(ks, dcOrg.getAlias());
		X509Certificate certificate = (X509Certificate) ks.getCertificate(alias);
		PrivateKey privateKey = (PrivateKey) ks.getKey(alias, orgPassword.toCharArray());

		InputStream icpStream = dcICP.getAttachment(true).getEntry(0).getInputStream();
		if (icpStream == null)
			throw new Exception("Unable to find ICP trust store attachment");

		String icpPassword = dcICP.getPassword();
		KeyStore trustStore = KeyStore.getInstance("JKS");
		trustStore.load(icpStream, (icpPassword == null || icpPassword.isEmpty()) ? null : icpPassword.toCharArray());

		TrustManagerFactory tmf = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
		tmf.init(trustStore);

		SSLContext ssl = SSLContext.getInstance("TLS");
		ssl.init(new KeyManager[]{ new HSKeyManager(certificate, privateKey) }, tmf.getTrustManagers(), null);
		return ssl;
	}

	private static SSLContext buildSSLContextWithWS(MLBRDigitalCertificate dcOrg,
			MLBRDigitalCertificate dcWS) throws Exception {

		if (dcOrg.getLBR_CertType() == null)
			throw new Exception("Certificate type is null");
		if (MLBRDigitalCertificate.LBR_CERTTYPE_PKCS11.equals(dcOrg.getLBR_CertType()))
			throw new Exception("PKCS11 certificates are not yet supported");
		if (dcWS.getLBR_CertType() == null)
			throw new Exception("WS certificate type is null");

		String certTypeOrg = keystoreType(dcOrg.getLBR_CertType());
		String certTypeWS  = keystoreType(dcWS.getLBR_CertType());

		InputStream orgStream = dcOrg.getAttachment(true).getEntry(0).getInputStream();
		KeyStore ks = KeyStore.getInstance(certTypeOrg);
		try {
			ks.load(orgStream, dcOrg.getPassword().toCharArray());
		} catch (IOException e) {
			throw new Exception("Incorrect certificate password");
		}
		KeyManagerFactory kmf = KeyManagerFactory.getInstance(KeyManagerFactory.getDefaultAlgorithm());
		kmf.init(ks, dcOrg.getPassword().toCharArray());

		InputStream wsStream = dcWS.getAttachment(true).getEntry(0).getInputStream();
		KeyStore trustStore = KeyStore.getInstance(certTypeWS);
		String wsPassword = dcWS.getPassword();
		trustStore.load(wsStream, (wsPassword != null && !wsPassword.isEmpty()) ? wsPassword.toCharArray() : null);

		TrustManagerFactory tmf = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
		tmf.init(trustStore);

		SSLContext ssl = SSLContext.getInstance("TLS");
		ssl.init(kmf.getKeyManagers(), tmf.getTrustManagers(), null);
		return ssl;
	}

	private static String keystoreType(String certType) throws Exception {
		if (MLBRDigitalCertificate.LBR_CERTTYPE_PKCS12.equals(certType))
			return "PKCS12";
		if (MLBRDigitalCertificate.LBR_CERTTYPE_JavaKeyStore.equals(certType))
			return "JKS";
		throw new Exception("Unknown certificate type: " + certType);
	}

	private static String resolveAlias(KeyStore ks, String preferred) throws Exception {
		if (preferred != null && ks.containsAlias(preferred) && ks.isKeyEntry(preferred))
			return preferred;

		Enumeration<String> aliases = ks.aliases();
		while (aliases.hasMoreElements()) {
			String alias = aliases.nextElement();
			if (ks.isKeyEntry(alias) && ((X509Certificate) ks.getCertificate(alias)).getNotAfter().after(new Date()))
				return alias;
		}
		throw new Exception("No valid certificate alias found in key store");
	}

	private static final class HSKeyManager implements X509KeyManager {

		private final X509Certificate certificate;
		private final PrivateKey privateKey;

		HSKeyManager(X509Certificate certificate, PrivateKey privateKey) {
			this.certificate = certificate;
			this.privateKey = privateKey;
		}

		@Override
		public String chooseClientAlias(String[] keyType, Principal[] issuers, Socket socket) {
			return certificate.getIssuerX500Principal().getName();
		}

		@Override
		public String chooseServerAlias(String keyType, Principal[] issuers, Socket socket) {
			return null;
		}

		@Override
		public X509Certificate[] getCertificateChain(String alias) {
			return new X509Certificate[]{ certificate };
		}

		@Override
		public String[] getClientAliases(String keyType, Principal[] issuers) {
			return new String[]{ certificate.getIssuerX500Principal().getName() };
		}

		@Override
		public PrivateKey getPrivateKey(String alias) {
			return privateKey;
		}

		@Override
		public String[] getServerAliases(String keyType, Principal[] issuers) {
			return null;
		}
	}
}
