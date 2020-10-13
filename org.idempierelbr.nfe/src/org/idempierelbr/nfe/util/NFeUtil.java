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
import java.io.StringWriter;
import java.math.BigDecimal;
import java.security.MessageDigest;
import java.sql.Timestamp;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Properties;

import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.apache.commons.codec.binary.Base64;
import org.compiere.model.I_C_BPartner;
import org.compiere.model.MAttachment;
import org.compiere.model.MAttachmentEntry;
import org.compiere.model.MBPartner;
import org.compiere.model.MClientInfo;
import org.compiere.model.MDocType;
import org.compiere.model.MTax;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.idempierelbr.core.util.TextUtil;
import org.idempierelbr.nfe.beans.DadosNFE;
import org.idempierelbr.nfe.model.MLBRCSC;
import org.idempierelbr.nfe.model.MLBRNFeWebService;
import org.idempierelbr.nfe.model.MLBRNotaFiscal;
import org.idempierelbr.nfe.model.MLBRNotaFiscalEvent;
import org.idempierelbr.nfe.model.MLBRNotaFiscalTax;
import org.idempierelbr.tax.model.X_LBR_TaxGroup;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/**
 * 	Utilitários para gerar a NFe.
 *
 * @author Ricardo Santana
 * @contributor Pablo, pablo@roundit.com.br, 27/09/2015
 */
public abstract class NFeUtil
{
	
	/**	Logger				*/
	private static CLogger log = CLogger.getCLogger(NFeUtil.class);

	/** Versão				*/
	public static final String VERSAO			= "4.00";
	public static final String VERSAO_APP		= "4.00";
	public static final String VERSAO_EVENTO	= "1.00";
	public static final String VERSAO_CCE		= "1.00";
	public static final String VERSAO_CAN		= "1.00";
	public static final String VERSAO_QR_CODE 	= "2";
	public static final String VERSAO_DISTRIBUICAO = "1.00";
	
	/*
	 * Formas de pagamento para a tag tpag NF-e 4.00
	 */
	public static final String NFCe_TPAG_DINHEIRO 			= "01";
	public static final String NFCe_TPAG_CHEQUE 			= "02";
	public static final String NFCe_TPAG_CARTAO_CREDITO		= "03";
	public static final String NFCe_TPAG_CARTAO_DEBITO		= "04";
	public static final String NFCe_TPAG_CREDITO_LOJA 		= "05";
	public static final String NFCe_TPAG_VALE_ALIMENTACAO	= "10";
	public static final String NFCe_TPAG_VALE_REFEICAO		= "11";
	public static final String NFCe_TPAG_VALE_PRESENTE		= "12";
	public static final String NFCe_TPAG_VALE_COMBUSTIVEL	= "13";
	public static final String NFCe_TPAG_BOLETO_BANCARIO	= "15";
	public static final String NFCe_TPAG_SEM_PAGAMENTO		= "90";
	public static final String NFCe_TPAG_OUTROS				= "99";
	
	/** XML					*/
	public static final long XML_SIZE = 500;	
	
	private static String P_CSC = "";
	private static String P_CSC_NAME = "";
	
	/** Reference NFeStatus */
	//public static final int REFERENCE_ID_LBR_NFeStatus = 1000039;
	
	/**
	 * Gera o cabeçalho da NFe
	 *
	 * @return cabecalho
	 */
	public static String geraCabecNFe(){
		String cabecalho = "<NFe xmlns=\"http://www.portalfiscal.inf.br/nfe\">";
		return cabecalho;
	} //geraCabecNFe

	/**
	 * Gera o rodapé da NFe
	 *
	 * return rodape
	 */
	public static String geraRodapNFe(){
		String rodape = "</NFe>";
		return rodape;
	} //geraRodapNFe

	/**
	 * removeIndent
	 * @param xml
	 * @return
	 */
	public static String removeIndent(String xml){
		
		StringBuilder newXML = new StringBuilder("");
		
		int i = 0;
		while (i < xml.length()){
			int end = xml.indexOf(">", i);
			if (end != -1){
				newXML.append(xml.substring(i, end+1));
				i = end + 1;
				
				int newTag = xml.indexOf("<", i);
				int endTag = xml.indexOf("</", i);
				
				if (endTag > newTag){
					i = newTag;
				}
				
				//check if value is blank
				if (endTag != -1){
					String value = xml.substring(i, endTag);
					if (value.trim().isEmpty())
						i = endTag;
				}
				
			}
		}
					
		return newXML.toString();
	} //removeIndent
	
	/**
	 * Valida tamanho do Arquivo XML
	 * @param file
	 * @return error or null
	 */
	public static String validateSize(File file){

		long size = file.length(); //bytes
		if ((size/1024) > XML_SIZE){ //check kbytes
			String erro = "Tamanho do Arquivo XML inválido > " + XML_SIZE + " kbytes";
			log.severe(erro);
			return erro;
		}

		return null;
	} //validateSize
	
	/**
	 * Valida tamanho do Arquivo XML
	 * @param file
	 * @return error or null
	 */
	public static String validateSize(String str){

		long size = str.getBytes().length; //bytes
		if ((size/1024) > XML_SIZE){ //check kbytes
			String erro = "Tamanho do Arquivo XML inválido > " + XML_SIZE + " kbytes";
			log.severe(erro);
			return erro;
		}

		return null;
	} //validateSize
	
	
	
	/**
	 * Get Attachment
	 *
	 * @param entry
	 * @return
	 */
	public static File getAttachmentEntryFile(MAttachmentEntry entry)
	{
		//BF - Attachment on FileSystem
		String fileName = entry.toString();
		if(fileName!=null && fileName.lastIndexOf(File.separator) != -1)
			fileName = fileName.substring(fileName.lastIndexOf(File.separator)+1);
		
		String localFile = System.getProperty("java.io.tmpdir")
				+ System.getProperty("file.separator") + fileName;
		String downloadedLocalFile = System.getProperty("java.io.tmpdir")
				+ System.getProperty("file.separator") + "TMP" + fileName;
		File attachedFile = new File(localFile);
		if (attachedFile.exists())
		{
			String localMD5hash = DigestOfFile.GetLocalMD5Hash(attachedFile);
			String entryMD5hash = DigestOfFile.getMD5Hash(entry.getData());
			if (localMD5hash.equals(entryMD5hash))
			{
				log.fine("no need to download: local file is up-to-date");
			}
			else
			{
				log.fine("file attached is different that local one, download and replace");
				File downloadedFile = new File(downloadedLocalFile);
				entry.getFile(downloadedFile);
				attachedFile.delete();
				downloadedFile.renameTo(attachedFile);
			}
		}
		else
		{
			entry.getFile(attachedFile);
		}
		return attachedFile;
	}	//	getAttachmentEntryFile
	
	public static String XMLtoString(File xml) throws Exception{

		String dados = "";
		if (xml == null)
			return dados;

		DocumentBuilderFactory documentBuilderFactory = DocumentBuilderFactory.newInstance();
        InputStream inputStream = new FileInputStream(xml);
        org.w3c.dom.Document doc = documentBuilderFactory.newDocumentBuilder().parse(inputStream);
        StringWriter stw = new StringWriter();
        Transformer serializer = TransformerFactory.newInstance().newTransformer();
        serializer.setOutputProperty(OutputKeys.OMIT_XML_DECLARATION, "yes");
        serializer.transform(new DOMSource(doc), new StreamResult(stw));
        dados = stw.toString();

        if (dados.indexOf("<NFe") != -1){
	        dados = dados.substring(dados.indexOf("<NFe"),dados.indexOf("</NFe>")+6);
	        if (dados.startsWith("<NFe>")){
	        	dados = geraCabecNFe() + dados.substring(5);
	        }
        }

        return dados;
	} //XMLtoString
	
	/**
	 * 	Get Value from XML
	 *
	 * @param node
	 * @param Tag
	 * @return
	 */
	public static String getValue (Document doc, String Tag)
	{
		if (doc.getElementsByTagName(Tag) == null)
			return "";

		if (doc.getElementsByTagName(Tag).item(0) == null)
			return "";

		return doc.getElementsByTagName(Tag).item(0).getTextContent();
	}	//	getValue
	
	/**
	 * 	Get Value from XML
	 *
	 * @param node
	 * @param Tag
	 * @return
	 */
	public static String getValue (Node node, String Tag)
	{
		if (node == null)
			return "";

		NodeList nl = ((Element) node).getElementsByTagName(Tag);
		if (nl == null)
			return "";

		Element el = (Element) nl.item(0);
		if (el == null)
			return "";

		nl = el.getChildNodes();
		if (nl == null)
			return "";

		return nl.item(0).getNodeValue();
	}	//	getValue
	
	/**
	 * String para Timestamp
	 * @param dhRecbto
	 * @return
	 */
	public static Timestamp stringToTime(String dhRecbto){
		return TextUtil.stringToTime(dhRecbto.replace('T', ' '), "yyyy-MM-dd HH:mm:ss");
	} //StringToDate

	/**
	 * Timestamp para String
	 * @param dhRecbto
	 * @return
	 */
	public static String timeToString(Timestamp dhRecbto){
		return TextUtil.timeToString(dhRecbto, "yyyy-MM-dd HH:mm:ss").replace(' ', 'T');
	} //DateToString
	
	public static File generateDistribution(MLBRNotaFiscal nf, Node node) throws Exception{
		String fileExt = ".xml";
		File attach = null;

		if (nf.getLBR_LotSendingProt() == null || nf.getLBR_LotSendingProt().equals(""))
			return attach;
		
		if (nf.isStatusAutorizado())
			fileExt = MLBRNotaFiscal.DISTRIBUICAO_FILE_EXT;
		else if (nf.isStatusCancelado())
			fileExt = MLBRNotaFiscalEvent.INDIVIDUAL_CANCELAMENTO_FILE_EXT;

		File xml = getAttachmentEntryFile(nf.getAttachment().getEntry(0));
		if (xml == null || xml.getName().endsWith(fileExt)) // Já está no padrão de distribuição
			return attach;

		StringBuilder newXmlContent = new StringBuilder();
		newXmlContent.append("<?xml version=\"1.0\" encoding=\"utf-8\"?>");
		newXmlContent.append("<nfeProc xmlns=\"http://www.portalfiscal.inf.br/nfe\" versao=\"");
		newXmlContent.append(VERSAO);
		newXmlContent.append("\">");
		newXmlContent.append(XMLtoString(xml));
		newXmlContent.append("<protNFe xmlns=\"http://www.portalfiscal.inf.br/nfe\" versao=\"");
		newXmlContent.append(VERSAO);
		newXmlContent.append("\">");
		newXmlContent.append("<infProt>");
		
		String tpAmb	= NFeUtil.getValue(node, "tpAmb");
		String verAplic	= NFeUtil.getValue(node, "verAplic");
		String chNFe	= NFeUtil.getValue(node, "chNFe");
		String dhRecbto	= NFeUtil.getValue(node, "dhRecbto");
		String cStat	= NFeUtil.getValue(node, "cStat");
		String xMotivo	= NFeUtil.getValue(node, "xMotivo");
		
		newXmlContent.append("<tpAmb>");
		newXmlContent.append(tpAmb);
		newXmlContent.append("</tpAmb>");
		newXmlContent.append("<verAplic>");
		newXmlContent.append(verAplic);
		newXmlContent.append("</verAplic>");
		newXmlContent.append("<chNFe>");
		newXmlContent.append(chNFe);
		newXmlContent.append("</chNFe>");
		newXmlContent.append("<dhRecbto>");
		newXmlContent.append(dhRecbto);
		newXmlContent.append("</dhRecbto>");
		newXmlContent.append("<nProt>");
		newXmlContent.append(nf.getLBR_LotSendingProt());
		newXmlContent.append("</nProt>");
		newXmlContent.append("<digVal>");
		newXmlContent.append(nf.getLBR_DigestValue());
		newXmlContent.append("</digVal>");
		newXmlContent.append("<cStat>");
		newXmlContent.append(cStat);
		newXmlContent.append("</cStat>");
		newXmlContent.append("<xMotivo>");
		newXmlContent.append(xMotivo);
		newXmlContent.append("</xMotivo>");
		newXmlContent.append("</infProt></protNFe></nfeProc>");

		attach = new File(TextUtil.generateTmpFile(newXmlContent.toString(), nf.getLBR_NFeID() + fileExt));
		return attach;
	} //NFeDistribution
	
	/**
	 * update Attachment
	 * @param nf
	 * @param xml
	 * @return true = success, false = error
	 */
	public static boolean updateAttach(MLBRNotaFiscal nf, File xml){
		if (xml != null){
			MAttachment attachDist = nf.createAttachment();
			attachDist.addEntry(xml);
			return attachDist.save();
		}

		return true;
	}
	
	/**
	 * Recebe partes de um endereço e monta tudo numa string, evitando nulls.
	 * @param partesEndereco
	 * @return
	 */
	public static String montaEndereco(String...partesEndereco){
		
		String enderecoStr = "";
		for (String parteEndereco : partesEndereco) {
			if(parteEndereco != null){
				if(!enderecoStr.isEmpty()) enderecoStr += " ";
				enderecoStr += parteEndereco;
			}
		}
		return enderecoStr;
	}
	
	/**
	 * Converte timestamp para o formato UTC utilizado na NF-e 4.00.
	 * @param ts
	 * @return
	 */
	public static String timeToUTC(Timestamp ts){
		
		String timeToString = TextUtil.timeToString(ts, "yyyy-MM-dd'T'HH:mm:ssZ");
		timeToString = timeToString.substring(0, timeToString.length()-2)+":"+timeToString.substring(timeToString.length()-2);
		
		return timeToString;
	}
	
	/**
	 * Retorna true se o BP é consumidor não identificado
	 * @param ctx
	 * @param bp
	 * @return
	 */
	public static boolean isBPartnerCashTrx(Properties ctx, I_C_BPartner bp) {
		
		MClientInfo mClientInfo = MClientInfo.get(ctx, bp.getAD_Client_ID());
		
		int c_BPartnerCashTrx_ID = mClientInfo.getC_BPartnerCashTrx_ID();
		
		return bp.getC_BPartner_ID() == c_BPartnerCashTrx_ID;
	}
		
	
	/**
	 * Monta parâmetros a serem colocados em uma URL
	 * 
	 * @param parametros
	 * @return
	 */
	public static String generateQRCodeParamsURL(Map<String, String> parametros) {

		String ret = "";
		int nParameter = 0;

		for (String key : parametros.keySet()) {

			if (nParameter > 0)
				ret += "&";

			ret += key + "=" + parametros.get(key);

			nParameter++;
		}

		return ret;
	}

	/**
	 * Encode byte array to Digest Code in SHA-1 method
	 * 
	 * Source:
	 * http://www.guj.com.br/17236-nota-fiscal-eletronica---validar-assinatura
	 * 
	 * @param data
	 *            byte[]
	 * @return String digest
	 */
	public static String getDigestBase64String(byte[] data) throws Exception {
		MessageDigest messageDisgester = MessageDigest.getInstance("SHA-1");
		return new String(Base64.encodeBase64(messageDisgester.digest(data)));
	}

	/**
	 * Generate QRCode
	 * 
	 * @param nf
	 * @param digestValue
	 * @param nfeID
	 * @return
	 * @throws Exception
	 */
	public static String generateQRCodeNFCeURL(MLBRNotaFiscal nf, String digestValue, String nfeID, String cDest, String vICMS, String tpAmb) throws Exception {
	
		// url
		String url = MLBRNFeWebService.getURL(MLBRNFeWebService.SERVICE_NFCE_CONSULTA_QRCODE,
				MDocType.get(nf.getCtx(), nf.getC_DocType_ID()).get_ValueAsString("LBR_NFeEnv"), NFeUtil.VERSAO_QR_CODE,
				nf.getC_Region_ID(), nf.getLBR_NFeModel());

		// csc
		MLBRCSC csc = MLBRCSC.get(nf.getAD_Org_ID(), tpAmb);
		
		// 
		String chNFe = nfeID;
		String nVersao = NFeUtil.VERSAO_QR_CODE;
		String vNF = TextUtil.bigdecimalToString(nf.getGrandTotal());
		String digest = digestValue;
		String tokenID = csc.getValue();
		String token = csc.getName();
		Timestamp dhEmi = nf.getDateDoc();		
		
		P_CSC =  csc.getValue();
		P_CSC_NAME = csc.getName();
		// generate
		return generateQRCodeNFCeURL(chNFe, nVersao, tpAmb, cDest, dhEmi, vNF, vICMS, digest, tokenID, token, url);
	}
	
	
	/**
	 * Generate NFC-e QRCode
	 * 
	 * Especs:
	 * http://www.nfe.fazenda.gov.br/portal/exibirArquivo.aspx?conteudo=jKHRw%
	 * 20g4V%20E=
	 * 
	 * @param chNFe
	 * @param nVersao
	 * @param tpAmb
	 * @param cDest
	 * @param dhEmi
	 * @param vNF
	 * @param vICMS
	 * @param digest
	 * @param tokenID
	 * @param token
	 * @param url
	 * @return
	 * @throws Exception
	 */
	public static String generateQRCodeNFCeURL(String chNFe, String nVersao, String tpAmb, String cDest,
			Timestamp dhEmi, String vNF, String vICMS, String digest, String tokenID, String token, String url)
					throws Exception {
		
		// 
		if (url == null || url.isEmpty())
			throw new Exception("URL de consulta pelo QrCode é inválida");
		
		//
		if (tokenID == null || tokenID.isEmpty() || token == null || token.isEmpty())
			throw new Exception(
					"CSC inválido! Empresa não possui chave de segurança para o QR-Code cadastrada na UF, ou as chaves existentes foram revogadas");

		//
		Map<String, String> parametros = new LinkedHashMap<String, String>();
		parametros.put("chNFe", chNFe);
		parametros.put("nVersao","2");
		parametros.put("tpAmb", tpAmb);
		if (!TextUtil.toNumeric(cDest).isEmpty())
			parametros.put("cDest", TextUtil.toNumeric(cDest));
		parametros.put("dhEmi", TextUtil.convertStringToHex(TextUtil.timeToUTC(dhEmi)));
		parametros.put("vNF", vNF);
		parametros.put("vICMS", vICMS);
		parametros.put("digVal", TextUtil.convertStringToHex(digest));
		parametros.put("cIdToken", TextUtil.lPad(tokenID, 6) + token);

		// Calcula o hash do QR Code:
		String hashQRCodeStr = generateQRCodeParamsURL(parametros);
		String hashQRCode = TextUtil.byteArrayToHexString(TextUtil.generateSHA1(hashQRCodeStr));

		parametros.put("cIdToken", TextUtil.lPad(tokenID, 6));
		parametros.put("cHashQRCode", hashQRCode);		
		
		P_CSC = zerosEsquerda(P_CSC);
		String hash_in =  chNFe + "|2|2|" + P_CSC + P_CSC_NAME ;
		String hash_out = TextUtil.byteArrayToHexString(TextUtil.generateSHA1(hash_in));			
		
		return url + "?p=" + chNFe + "|"+ NFeUtil.VERSAO_QR_CODE+"|" +tpAmb+"|" + P_CSC + "|" + hash_out ;


	}
	
	
	/**
	 * Check EAN Code
	 * 
	 * Validade digit calculator Link:
	 * http://www.gs1.org/how-calculate-check-digit-manually
	 * 
	 * @param value
	 *            ean
	 * @return
	 */
	public static boolean isValidEAN(String value) {

		if (value != null && !value.isEmpty()
				&& (value.length() == 8 || value.length() == 12 || value.length() == 13 || value.length() == 14)) {
			int factor = 3;
			int sum = 0;

			for (int index = value.length() - 1; index > 0; --index) {
				int mult = Integer.valueOf(value.substring(index - 1, index));
				sum = sum + mult * factor;
				factor = 4 - factor;
			}

			int cc = ((1000 - sum) % 10);
			int ca = Integer.valueOf(value.substring(value.length() - 1));

			if (cc == ca)
				return Boolean.TRUE;
		}

		return Boolean.FALSE;
	}

	// criado para normalizar o csc segundo a regra
	public static String zerosEsquerda(String str) {		
		return String.valueOf(Integer.parseInt(str));	
	}
}	//	NFeUtil
