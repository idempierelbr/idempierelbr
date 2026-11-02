package org.idempierelbr.nfs.nacional.util;

import java.io.InputStream;
import java.io.StringReader;
import java.io.StringWriter;
import java.security.Key;
import java.security.KeyStore;
import java.security.PrivateKey;
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
import javax.xml.crypto.dsig.spec.C14NMethodParameterSpec;
import javax.xml.crypto.dsig.spec.TransformParameterSpec;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.compiere.model.MAttachment;
import org.compiere.model.MOrgInfo;
import org.compiere.util.Env;
import org.idempierelbr.base.model.MLBRDigitalCertificate;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

/**
 * Assinatura XMLDSig (enveloped) de um elemento qualquer, identificado pelo
 * nome da tag, com a assinatura gravada como irma do elemento assinado.
 *
 * Existe porque o {@code AssinaturaDigital} do modulo NF-e associa cada tipo
 * de documento a uma tag fixa e nao conhece o {@code infPedReg} do pedido de
 * registro de evento da NFS-e Nacional. Usa os mesmos algoritmos dele
 * (C14N inclusivo, RSA-SHA1, digest SHA-1) e o mesmo certificado da
 * organizacao (AD_OrgInfo.LBR_DC_Org_ID).
 *
 * Suporta certificados PKCS12 e JKS anexados ao cadastro do certificado
 * digital; token/cartao (PKCS11) nao e' suportado.
 */
public class XmlSigner {

	private static final String C14N_TRANSFORM_METHOD = "http://www.w3.org/TR/2001/REC-xml-c14n-20010315";

	/**
	 * Assina o primeiro elemento {@code tag} do XML (pelo atributo Id).
	 *
	 * @return XML com o elemento Signature inserido logo apos o elemento assinado
	 */
	public static String sign(String xml, String tag, MOrgInfo orgInfo) throws Exception {

		KeyStore.PrivateKeyEntry key = loadKey(orgInfo);
		X509Certificate cert = (X509Certificate) key.getCertificate();
		cert.checkValidity();

		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
		dbf.setNamespaceAware(true);
		Document doc = dbf.newDocumentBuilder().parse(new InputSource(new StringReader(xml)));

		NodeList elements = doc.getElementsByTagNameNS("*", tag);
		if (elements.getLength() == 0)
			throw new Exception("Elemento " + tag + " nao encontrado no XML a assinar");
		Element el = (Element) elements.item(0);
		String id = el.getAttribute("Id");
		if (id.isEmpty())
			throw new Exception("Elemento " + tag + " sem atributo Id");
		el.setIdAttribute("Id", true);

		XMLSignatureFactory sig = XMLSignatureFactory.getInstance("DOM");

		List<Transform> transforms = new ArrayList<Transform>();
		transforms.add(sig.newTransform(Transform.ENVELOPED, (TransformParameterSpec) null));
		transforms.add(sig.newTransform(C14N_TRANSFORM_METHOD, (TransformParameterSpec) null));

		Reference ref = sig.newReference("#" + id, sig.newDigestMethod(DigestMethod.SHA1, null), transforms, null,
				null);
		SignedInfo si = sig.newSignedInfo(
				sig.newCanonicalizationMethod(CanonicalizationMethod.INCLUSIVE, (C14NMethodParameterSpec) null),
				sig.newSignatureMethod(SignatureMethod.RSA_SHA1, null), Collections.singletonList(ref));

		KeyInfoFactory kif = sig.getKeyInfoFactory();
		KeyInfo ki = kif.newKeyInfo(Collections.singletonList(kif.newX509Data(Collections.singletonList(cert))));

		// Assinatura como irma do elemento assinado (filha do mesmo pai, logo depois dele)
		DOMSignContext dsc = new DOMSignContext(key.getPrivateKey(), el.getParentNode(), el.getNextSibling());
		sig.newXMLSignature(si, ki).sign(dsc);

		StringWriter sw = new StringWriter();
		TransformerFactory.newInstance().newTransformer().transform(new DOMSource(doc), new StreamResult(sw));
		return sw.toString();
	}

	private static KeyStore.PrivateKeyEntry loadKey(MOrgInfo orgInfo) throws Exception {

		Object certId = orgInfo.get_Value("LBR_DC_Org_ID");
		if (!(certId instanceof Number) || ((Number) certId).intValue() <= 0)
			throw new Exception("Certificado digital (LBR_DC_Org_ID) nao definido nas informacoes da organizacao");

		MLBRDigitalCertificate dc = new MLBRDigitalCertificate(Env.getCtx(), ((Number) certId).intValue(), null);
		String certType = dc.getLBR_CertType();
		String ksType;
		if (MLBRDigitalCertificate.LBR_CERTTYPE_PKCS12.equals(certType))
			ksType = "PKCS12";
		else if (MLBRDigitalCertificate.LBR_CERTTYPE_JavaKeyStore.equals(certType))
			ksType = "JKS";
		else
			throw new Exception("Tipo de certificado nao suportado para assinatura de eventos da NFS-e Nacional: "
					+ certType + " (use PKCS12 ou JKS)");

		MAttachment att = dc.getAttachment();
		if (att == null || att.getEntryCount() == 0)
			throw new Exception("Arquivo do certificado digital nao anexado ao cadastro do certificado");

		char[] senha = dc.getPassword() == null ? new char[0] : dc.getPassword().toCharArray();
		KeyStore ks = KeyStore.getInstance(ksType);
		try (InputStream is = att.getEntry(0).getInputStream()) {
			ks.load(is, senha);
		}

		Key key = ks.getKey(dc.getAlias(), senha);
		if (!(key instanceof PrivateKey))
			throw new Exception("Chave privada nao encontrada no certificado (alias " + dc.getAlias() + ")");

		java.security.cert.Certificate[] chain = ks.getCertificateChain(dc.getAlias());
		if (chain == null || chain.length == 0)
			chain = new java.security.cert.Certificate[] { ks.getCertificate(dc.getAlias()) };
		return new KeyStore.PrivateKeyEntry((PrivateKey) key, chain);
	}
}
