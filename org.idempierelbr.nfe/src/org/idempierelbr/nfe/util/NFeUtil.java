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

import org.compiere.model.MAttachmentEntry;
import org.compiere.util.CLogger;
import org.compiere.utils.DigestOfFile;

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
	
	/** XML					*/
	public static final long XML_SIZE   = 500;
	
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

}	//	NFeUtil
