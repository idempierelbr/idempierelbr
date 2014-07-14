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
import java.sql.Timestamp;

import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.compiere.model.MAttachment;
import org.compiere.model.MAttachmentEntry;
import org.compiere.util.CLogger;
import org.idempierelbr.core.util.TextUtil;
import org.idempierelbr.nfe.model.MLBRNotaFiscal;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/**
 * 	Utilitários para gerar a NFe.
 *
 * @author Ricardo Santana
 */
public abstract class NFeUtil
{

	/**	Logger				*/
	private static CLogger log = CLogger.getCLogger(NFeUtil.class);

	/** Versão				*/
	public static final String VERSAO			= "3.10";
	public static final String VERSAO_APP		= "3.10";
	public static final String VERSAO_EVENTO	= "1.00";
	public static final String VERSAO_CCE		= "1.00";
	public static final String VERSAO_CAN		= "1.00";
	
	/** XML					*/
	public static final long XML_SIZE = 500;
	
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
			fileExt = "-dst.xml";
		else if (nf.isStatusCancelado())
			fileExt = "-can.xml";

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
	
}	//	NFeUtil
