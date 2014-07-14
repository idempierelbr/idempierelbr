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
package org.idempierelbr.nfe.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.StringReader;
import java.io.StringWriter;
import java.security.Key;
import java.security.KeyPair;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.Signature;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.xml.crypto.dsig.CanonicalizationMethod;
import javax.xml.crypto.dsig.DigestMethod;
import javax.xml.crypto.dsig.Reference;
import javax.xml.crypto.dsig.SignatureMethod;
import javax.xml.crypto.dsig.SignedInfo;
import javax.xml.crypto.dsig.Transform;
import javax.xml.crypto.dsig.XMLSignature;
import javax.xml.crypto.dsig.XMLSignatureFactory;
import javax.xml.crypto.dsig.dom.DOMSignContext;
import javax.xml.crypto.dsig.keyinfo.KeyInfo;
import javax.xml.crypto.dsig.keyinfo.KeyInfoFactory;
import javax.xml.crypto.dsig.keyinfo.X509Data;
import javax.xml.crypto.dsig.spec.C14NMethodParameterSpec;
import javax.xml.crypto.dsig.spec.TransformParameterSpec;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MOrgInfo;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.idempierelbr.core.util.TextUtil;
import org.idempierelbr.nfe.model.MLBRDigitalCertificate;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

import sun.misc.BASE64Encoder;

/**
 * 	Assina o arquivo XML
 * 
 * @contributor Ricardo Santana
 */
public class AssinaturaDigital
{
	/**		Document Type 	*/
	public static final String RECEPCAO_NFE			="1";
	public static final String CANCELAMENTO_NFE		="2";
	public static final String INUTILIZACAO_NFE		="3";
	public static final String CARTADECORRECAO_CCE	="4";
	public static final String RPS					="5";
	public static final String RECEPCAO_MDFE		="6";
	
	/**		Algoritmos		*/
	private static final String C14N_TRANSFORM_METHOD = "http://www.w3.org/TR/2001/REC-xml-c14n-20010315";
	
	private static X509Certificate cert;
	private static KeyPair keyP;
	
	private static String certType = "";
	private static String cfgFile = "";
	private static boolean isToken = false;
	private static String alias = "";
	private static char[] senha = "".toCharArray();
	private static InputStream jksData = null;
	
	/**	Logger				*/
	private static CLogger log = CLogger.getCLogger (AssinaturaDigital.class);

	/**
	 * 	Assina o arquivo XML
	 * 
	 * @param String XML
	 * @param OrgInfo
	 * @throws Exception
	 */
	public static void Assinar (String xmlPath, MOrgInfo oi, String docType) throws Exception
	{
		//	Lê o arquivo e assina
		StringBuilder xml = Assinar (new StringBuilder (TextUtil.readFile (new File (xmlPath))), oi, docType);
		
		//	Grava o arquivo
		TextUtil.generateFile (xml.toString(), xmlPath);
	}	//	Assinar
	
	/**
	 * 	Assina o arquivo XML
	 * 
	 * @param String XML
	 * @param OrgInfo
	 * @throws Exception
	 */
	public static StringBuilder Assinar (StringBuilder xml, MOrgInfo oi, String docType) throws Exception
	{
		AssinaturaDigital.loadKeys (oi);
		return AssinaturaDigital.assinarDocumento (xml, docType);
	}	//	Assinar

	private static PrivateKey getChavePrivada() throws Exception
	{
		return keyP.getPrivate();
	}	//	getChavePrivada

	private static void loadKeys (MOrgInfo oi) throws Exception
	{
		Integer cert_ID = (Integer) oi.get_Value("LBR_DC_Org_ID");
		MLBRDigitalCertificate dc = new MLBRDigitalCertificate(Env.getCtx(), cert_ID, null);
		alias = dc.getAlias();
		senha = dc.getPassword().toCharArray();			
		//
		if (dc.getLBR_CertType() == null)
			throw new Exception("Certificate Type is NULL");
		else if (dc.getLBR_CertType().equals(MLBRDigitalCertificate.LBR_CERTTYPE_PKCS11))
		{
			certType = "PKCS11";
			isToken = true;
			jksData = null;
			//
			cfgFile = dc.getConfigurationFile();
		}
		else if (dc.getLBR_CertType().equals(MLBRDigitalCertificate.LBR_CERTTYPE_PKCS12))
		{
			certType = "PKCS12";
			jksData = new FileInputStream(NFeUtil.getAttachmentEntryFile((dc.getAttachment().getEntry(0))));			
		}
		else if (dc.getLBR_CertType().equals(MLBRDigitalCertificate.LBR_CERTTYPE_JavaKeyStore))
			certType = "JKS";
		else
			throw new Exception("Unknow Certificate Type or Not implemented yet");
		
		if (isToken)
		{
			//Provider p = new sun.security.pkcs11.SunPKCS11(cfgFile);  
            //Security.addProvider(p);
		}
		//
		KeyStore keystore = KeyStore.getInstance(certType);
		keystore.load(jksData, senha);
		Key key = keystore.getKey(alias, senha);
		//
		if (key instanceof PrivateKey)
		{
			java.security.cert.Certificate certTmp = keystore.getCertificate (alias);
			PublicKey publicKey = certTmp.getPublicKey();
			cert = (X509Certificate) keystore.getCertificate (alias);
			keyP = new KeyPair(publicKey, (PrivateKey) key);
		}
		cert.checkValidity();
	}	//	loadKeys
	
	/**
	 * 	Assina o Documento XML
	 * 
	 * @param localDocumento
	 * @param docType
	 * @throws Exception
	 */
	public static StringBuilder assinarDocumento (StringBuilder xml, String docType) throws Exception
	{
		log.fine ("Signing document: " + xml);

		//	Carrega o documento
		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
		dbf.setNamespaceAware(true);
		Document doc = dbf.newDocumentBuilder().parse (new InputSource(new StringReader (xml.toString())));

		//	Factory
		XMLSignatureFactory sig = XMLSignatureFactory.getInstance("DOM");

		//	Transformações
		ArrayList<Transform> transformList = new ArrayList<Transform>();
		
		//	Adiciona Transformação (1) Enveloped (http://www.w3c.org/2000/09/xmldsig#enveloped-signature)
		transformList.add (sig.newTransform(Transform.ENVELOPED, (TransformParameterSpec) null));
		
		// 	Adiciona Transformação (2) C14N (http://www.w3c.org/TR/2001/REC-xml-c14n-20010315)
		transformList.add (sig.newTransform(C14N_TRANSFORM_METHOD, (TransformParameterSpec) null));
		
		//	TAG de Referência para posicionar a Assinatura
		String tag = null;

		if (docType.equals(RECEPCAO_NFE))
			tag = "infNFe";
		else if (docType.equals(CANCELAMENTO_NFE))
			tag = "infCanc";
		else if (docType.equals(INUTILIZACAO_NFE))
			tag = "infInut";
		else if (docType.equals(CARTADECORRECAO_CCE))
			tag = "infEvento";
		else if (docType.equals(RPS))
			tag = "RPS";
		else if (docType.equals(RECEPCAO_MDFE))
			tag = "infMDFe";
		//
		Reference r = null;
		
		/**
		 * 	Para RPS não é necessário assinar uma URI especifica
		 */
		if (docType.equals(RPS))
			r = sig.newReference("", sig.newDigestMethod(DigestMethod.SHA1, null), transformList, null, null);
		
		else
		{
			/**
			 * 	Encontra a URI ID para assiná-la
			 */
			NodeList elements = doc.getElementsByTagName(tag);
			org.w3c.dom.Element el = (org.w3c.dom.Element) elements.item(0);
			String id = el.getAttribute("Id");
			el.setIdAttribute("Id", true);
			//
			r = sig.newReference("#".concat(id), sig.newDigestMethod(DigestMethod.SHA1, null), transformList, null, null);
		}
		
		SignedInfo si = sig.newSignedInfo(sig.newCanonicalizationMethod(CanonicalizationMethod.INCLUSIVE, (C14NMethodParameterSpec) null),
				sig.newSignatureMethod(SignatureMethod.RSA_SHA1, null), Collections.singletonList(r));

		KeyInfoFactory kif = sig.getKeyInfoFactory();
		List<X509Certificate> x509Content = new ArrayList<X509Certificate>();
		x509Content.add(cert);
		X509Data xd = kif.newX509Data(x509Content);
		KeyInfo ki = kif.newKeyInfo(Collections.singletonList(xd));

		DOMSignContext dsc = new DOMSignContext(getChavePrivada(), doc.getDocumentElement());
		XMLSignature signature = sig.newXMLSignature(si, ki);
		signature.sign(dsc);
		//
		StringWriter sw = new StringWriter ();
		//
		TransformerFactory tf = TransformerFactory.newInstance();
		Transformer trans = tf.newTransformer();
		trans.transform(new DOMSource(doc), new StreamResult (sw));
		//
		return new StringBuilder (sw.toString());
	}	//	assinarDocumento
	
	/**
	 * 		Assinatura RPS usando SHA1withRSA + Base64
	 * 
	 * 	@param ascii
	 * 	@return
	 */
	public static String signASCII (String ascii, int AD_Org_ID) 
	{
		log.fine("Signing: " + ascii);
		//
		try 
		{
			//	Prepare Certificates
			loadKeys (MOrgInfo.get (Env.getCtx(), AD_Org_ID, null));
			//
			Signature dsa = Signature.getInstance ("SHA1withRSA");
			dsa.initSign(getChavePrivada());
			dsa.update(ascii.getBytes());
			return new BASE64Encoder().encode (dsa.sign());
		} 
		catch (Exception ex) 
		{
			throw new AdempiereException ("Error siging RPS");
		}
	}	//	signASCII
}	//	AssinaturaDigital