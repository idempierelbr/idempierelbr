package org.idempierelbr.nfe.util;

import java.io.File;
import java.io.StringReader;
import java.sql.Timestamp;
import java.util.Properties;
import java.util.logging.Level;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MAttachment;
import org.compiere.model.MDocType;
import org.compiere.model.MLocation;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MRegion;
import org.compiere.util.CLogger;
import org.idempierelbr.base.model.MLBRNFeWebService;
import org.idempierelbr.base.model.MLBRNotaFiscal;
import org.idempierelbr.base.model.MLBRNotaFiscalLot;
import org.idempierelbr.base.model.MLBRNotaFiscalLotLine;
import org.idempierelbr.base.util.TextUtil;
import org.idempierelbr.nfe.stub.StubConnector;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

public class NFeLotUtil {
	protected transient CLogger	log = CLogger.getCLogger (getClass());
	private MLBRNotaFiscalLot lot;
	
	public NFeLotUtil(MLBRNotaFiscalLot lot) {
		if (lot == null)
			throw new AdempiereException("MLBRNotaFiscalLot não pode ser null");
		
		this.lot = lot;
	}
	
	/**
	 * 	Generate xml for NF-e Lot (before sending to Sefaz)
	 *
	 * @return String lot xml
	 * @throws Exception
	 */
	private String generateLot() throws Exception
	{
		log.fine("Generating NF-e Lot: " + lot.getDocumentNo());
		String[] xmlGerado = lot.getXMLs();
		//
		String dados[] = new String[xmlGerado.length];
		String conjunto = "";
		//
		for (int i = 0; i < xmlGerado.length; i++)
		{
			File xml = new File(xmlGerado[i]);
	        dados[i] = NFeUtil.XMLtoString(xml);

	       /* String validation = ValidaXML.validaXML(dados[i]);
	        if (!validation.equals(""))
	        {
	        	String error = "Validation individuals XML files for LOT Error: " + validation;
	        	log.severe(error);
	        	throw new Exception(error);
	        }*/
			conjunto += dados[i];
		}
		
		StringBuilder xmlLot = new StringBuilder();
		xmlLot.append("<enviNFe xmlns=\"http://www.portalfiscal.inf.br/nfe\" versao=\"4.00\">")
			.append("<idLote>")
			.append(lot.getDocumentNo())
			.append("</idLote>")
			.append("<indSinc>")
			.append(lot.getLBR_ProcessingType().equals("A") ? "0" : "1")
			.append("</indSinc>")
			.append(conjunto)
			.append("</enviNFe>");

		/*String validation = ValidaXML.validaEnvXML(xmlLot.toString());
		if (!validation.equals(""))
		{
			String error = "Validation XML LOT Error: " + validation;
			log.severe(error);
			throw new Exception(error);
		}*/

		File attachFile = new File(TextUtil.generateTmpFile(xmlLot.toString(), lot.getDocumentNo() + MLBRNotaFiscalLot.PEDIDO_FILE_EXT));

		//Verificação tamanho do Arquivo - Erro 214 / Tamanho Arquivo
		String error = NFeUtil.validateSize(attachFile);
		if (error != null)
			return error;

		//MAttachment attachLotNFe = createAttachment();
		//attachLotNFe.addEntry(attachFile);
		//attachLotNFe.save();
		//
		return xmlLot.toString();
	}	//	gerarLote

	/**
	 * 	Send NF-e Lot to Sefaz
	 * 
	 *  @return String error or ""
	 */
	public String sendLot() throws Exception
	{
		Properties ctx = lot.getCtx();

		log.fine("Sending NF-e Lot: " + lot.getDocumentNo());
		
		if (lot.getLines().length < 1) {
			return "NF-e Lot must have at least one line"; 
		}

		// Dados da Org.
		MOrg org = new MOrg(ctx, lot.getAD_Org_ID(), lot.get_TrxName());
		MOrgInfo orgInfo = MOrgInfo.get(ctx, org.get_ID(), lot.get_TrxName());
		MLocation orgLoc = new MLocation(ctx, orgInfo.getC_Location_ID(), lot.get_TrxName());
		MRegion  orgRegion = new MRegion(ctx, orgLoc.getC_Region_ID(), lot.get_TrxName());
		
		//INICIALIZA CERTIFICADO
		try {
			DigitalCertificateUtil.setCertificate(ctx, lot.getAD_Org_ID());
		} catch (Exception e) {
			e.printStackTrace();
			return "Could not set digital certificate";
		}

		String xmlLot;
		
		try {
			xmlLot = generateLot();
		} catch (Exception e) {
			e.printStackTrace();
			return "Could not generate xml";
		}

		// Validação envio
		/*String validation = ValidaXML.validaEnvXML(xmlLot);
		if (!validation.equals(""))
			return validation;*/
		
		xmlLot = "<nfeDadosMsg>" + xmlLot + "</nfeDadosMsg>";
		
		String LBR_NFeModel = null;
		try{
			LBR_NFeModel = lot.getNFeModel();
		} catch(Exception ex){
			return "Could not get NFe Model: "+ex.getMessage();
		}
		
		StubConnector connector = new StubConnector(NFeUtil.VERSAO_APP,
				orgRegion.get_ID(), MLBRNFeWebService.SERVICE_NFE_AUTORIZACAO,
				isContingencia(xmlLot), isHomologacao(xmlLot), LBR_NFeModel);
		String result = connector.sendMessage(xmlLot);
		
		if (result == null || result.trim().equals(""))
			return "Could not connect to webservice. Please try again later";
		
		// Resposta do Envio
		/*validation = ValidaXML.validaRetXML(result);
		if (!validation.equals(""))
			return validation;*/

		MAttachment attachLotNFe = lot.createAttachment();
		File attachFile = new File(TextUtil.generateTmpFile(result, lot.getDocumentNo() + MLBRNotaFiscalLot.RESPOSTA_PEDIDO_FILE_EXT));
		attachLotNFe.addEntry(attachFile);
		attachLotNFe.saveEx(lot.get_TrxName());
		
		DocumentBuilder builder;
		Document doc;

		try {
			builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
        	doc = builder.parse(new InputSource(new StringReader(result)));
		} catch (Exception e) {
        	e.printStackTrace();
			return "Could not parse xml";
		}

        String cStat = doc.getElementsByTagName("cStat").item(0).getTextContent();

        String nRec = null;
        if (doc.getElementsByTagName("nRec") != null)
        	nRec = NFeUtil.getValue(doc, "nRec");
        
        // Corrige tipo de processamento, caso Sefaz não aceitar método síncrono
        if (nRec != null && !nRec.isEmpty())
        	lot.setLBR_ProcessingType("A");

        String dhRecbto = null;
        if (doc.getElementsByTagName("dhRecbto") != null)
        	dhRecbto = NFeUtil.getValue(doc, "dhRecbto");

        lot.setLBR_LotSendingStatus(cStat);
        
        String cStatL = NFeUtil.getValue(doc, "cStat");
	    NodeList infProt =  doc.getElementsByTagName("infProt");
        
        if (lot.getLBR_ProcessingType().equals("S")) {
        	String nProt = null;
	        if (doc.getElementsByTagName("nProt") != null)
	        	nProt = NFeUtil.getValue(doc, "nProt");
	        lot.setLBR_LotSendingProt(nProt);
	        lot.setLBR_LotQueried(true);
	        lot.setProcessed(true);
        } else if (lot.getLBR_ProcessingType().equals("A"))
        	lot.setLBR_LotSendingRec(nRec);
        
        if (isImmutableStatus(cStatL)) {
		    MLBRNotaFiscalLotLine[] lines = lot.getLines();

		    for (int i=0; i< infProt.getLength(); i++) {
	        	Node node = infProt.item(i);
	        	updateLine(lines, node);
	        }
		    
		    lot.setLBR_LotSent(true);
		}

        Timestamp sentOn = NFeUtil.stringToTime(dhRecbto);
        lot.setLBR_LotSentOn(sentOn);
        lot.saveEx();
        
		return "";
	}
	
	/**
	 * 	Query NF-e Lot to Sefaz
	 *
	 *  @return String error or ""
	 */
	public String queryLot () throws Exception
	{
		Properties ctx = lot.getCtx();
		String trxName = lot.get_TrxName();

		log.fine("Querying NF-e Lot: " + lot.getDocumentNo());

		if (!lot.isLBR_LotSent()) {
			log.log(Level.SEVERE, "NF-e Lot not sent yet");
			return "NF-e Lot not sent yet";
		}

		// Dados da Org.
		MOrg org = new MOrg(ctx, lot.getAD_Org_ID(), lot.get_TrxName());
		MOrgInfo orgInfo = MOrgInfo.get(ctx, org.get_ID(), lot.get_TrxName());
		MLocation orgLoc = new MLocation(ctx, orgInfo.getC_Location_ID(), lot.get_TrxName());
		MRegion  orgRegion = new MRegion(ctx, orgLoc.getC_Region_ID(), lot.get_TrxName());
		
		//INICIALIZA CERTIFICADO
		try {
			DigitalCertificateUtil.setCertificate(ctx, lot.getAD_Org_ID());
		} catch (Exception e) {
			e.printStackTrace();
			return "Could not set digital certificate";
		}

		StringBuilder xmlLot = new StringBuilder();
		xmlLot.append("<consReciNFe xmlns=\"http://www.portalfiscal.inf.br/nfe\" versao=\"");
		xmlLot.append(NFeUtil.VERSAO_APP);
		xmlLot.append("\">");
		xmlLot.append("<tpAmb>");
		
		String tpAmb = "1";
		
		MLBRNotaFiscalLotLine[] linesNF = lot.getLines();
		if (linesNF.length > 0) {
			int C_DocType_ID = linesNF[0].getLBR_NotaFiscal().getC_DocType_ID();
			MDocType dt = new MDocType(lot.getCtx(), C_DocType_ID, null);
			tpAmb = dt.get_ValueAsString("LBR_NFeEnv");
		}		
		
		xmlLot.append(tpAmb);
		xmlLot.append("</tpAmb>");
		xmlLot.append("<nRec>");
		xmlLot.append(lot.getLBR_LotSendingRec());
		xmlLot.append("</nRec>");
		xmlLot.append("</consReciNFe>");

		//	Validação envio
		/*String validation = ValidaXML.validaConsultaProt(nfeConsultaDadosMsg);
		if (!validation.equals(""))
			return validation;*/
		
		String LBR_NFeModel = null;
		try{
			LBR_NFeModel = lot.getNFeModel();
		} catch(Exception ex){
			return "Could not get NFe Model: "+ex.getMessage();
		}
		
		StubConnector connector = new StubConnector(NFeUtil.VERSAO_APP,
				orgRegion.get_ID(), MLBRNFeWebService.SERVICE_NFE_RET_AUTORIZACAO,
				isContingencia(xmlLot.toString()), isHomologacao(xmlLot.toString()), LBR_NFeModel);
		String result = connector.sendMessage("<nfeDadosMsg>" + xmlLot.toString() + "</nfeDadosMsg>");
		
		if (result == null || result.trim().equals(""))
			return "Could not connect to webservice. Please try again later";
		
		MAttachment attachLotNFe = lot.createAttachment();
		File attachFile = new File(TextUtil.generateTmpFile(result, lot.getDocumentNo() + MLBRNotaFiscalLot.RESPOSTA_RECIBO_FILE_EXT));
		attachLotNFe.addEntry(attachFile);
		attachLotNFe.saveEx(lot.get_TrxName());

		DocumentBuilder builder;
		Document doc;
		
		try {
			builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
		    doc = builder.parse(new InputSource(new StringReader(result)));
		} catch (Exception e) {
	    	e.printStackTrace();
			return "Could not parse xml";
		}
	    //
	    String cStatL = NFeUtil.getValue(doc, "cStat");
	    NodeList infProt =  doc.getElementsByTagName("infProt");

	    if (isImmutableStatus(cStatL)) {
	    	lot.setLBR_LotQueried(true);
	    	lot.setProcessed(true);
		    
		    MLBRNotaFiscalLotLine[] lines = lot.getLines();

		    for (int i=0; i< infProt.getLength(); i++) {
	        	Node node = infProt.item(i);
	        	updateLine(lines, node);
	        }
		}
	    
	    String dhRecbto = null;
        if (doc.getElementsByTagName("dhRecbto") != null)
        	dhRecbto = NFeUtil.getValue(doc, "dhRecbto");

        lot.setLBR_LotQueryStatus(cStatL);
	    Timestamp queriedOn = NFeUtil.stringToTime(dhRecbto);
	    lot.setLBR_LotQueriedOn(queriedOn);
	    lot.save(trxName);

	    return "";
	}
	
	/**
	 * 	Update Lot line and NF-e with result from query to Sefaz
	 *
	 * @param lines Lot lines array
	 * @param node NF-e entry from Sefaz returned message
	 */
	private void updateLine(MLBRNotaFiscalLotLine[] lines, Node node) {
		if (node.getNodeType() == Node.ELEMENT_NODE) {
			String chNFe	= NFeUtil.getValue(node, "chNFe");
			String digVal 	= NFeUtil.getValue(node, "digVal");
			String cStat 	= NFeUtil.getValue(node, "cStat");
			String nProt 	= NFeUtil.getValue(node, "nProt");
			
			for (MLBRNotaFiscalLotLine line : lines) {
				if (line.getLBR_NFeID().equals(chNFe)) {
					// Update Lot Line
					line.setLBR_DigestValue(digVal);
					line.setLBR_LotSendingProt(nProt);
					line.setLBR_NFeStatus(cStat);
					line.saveEx();
					
					// Update NF-e
					MLBRNotaFiscal nf = new MLBRNotaFiscal(lot.getCtx(), line.getLBR_NotaFiscal_ID(), lot.get_TrxName());
					
					if (nf.getLBR_NFeID().equals(chNFe)) {
						nf.setLBR_DigestValue(digVal);
						nf.setLBR_LotSendingProt(nProt);
						nf.setLBR_NFeStatus(cStat);
						nf.saveEx();
						
						// Atualiza XML para padrão de distribuição
						File file = null;

						try {
							file = NFeUtil.generateDistribution(nf, node);
						} catch (Exception e) {
							e.printStackTrace();
							log.severe("Could not generate distribution xml for NF-e " + nf.getDocumentNo());
						}
						
						if (file != null) {
							// Delete any xml attachment
							MAttachment attachNFe = nf.createAttachment();
							
							for (int i = attachNFe.getEntryCount() - 1; i >= 0; i--) 
							{
								if (attachNFe.getEntry(i).getName().endsWith(MLBRNotaFiscal.INDIVIDUAL_FILE_EXT))
									attachNFe.deleteEntry(i);
								
								attachNFe.saveEx(lot.get_TrxName());
							}
							
							attachNFe.addEntry(file);
							attachNFe.saveEx(lot.get_TrxName());
						}
					} else {
						log.severe("NF-e " + nf.getDocumentNo() + " has NF-e ID other than NF-e Lot. It won't be updated");
					}
				}
			}
		}
	}
	
	/**
	 * 	Does NF-e Lot have a status that does not allow a change? 
	 *
	 * @param cStatL status returned by Sefaz
	 */
	private boolean isImmutableStatus(String cStatL) {
		if (cStatL.equals("103") ||			// 103 - Lote recebido com sucesso
				cStatL.equals("104"))		// 104 - Lote processado
			return true;
			
		return false;
	}
	
	/**
	 * 	Does NF-e contained in this Lot has been issued in contingency mode? 
	 *
	 * @param xmlLot xml
	 */
	private boolean isContingencia(String xmlLot) {
		int index = xmlLot.indexOf("<tpEmis>");
		if (index >= 0) {
			String tpEmis = xmlLot.substring(index+8, index+9);
			if (!tpEmis.equals("1"))
				return true;
		}
		
		return false;
	}
	
	/**
	 * 	Does NF-e contained in this Lot has been issued in test mode? 
	 *
	 * @param xmlLot xml
	 */
	private boolean isHomologacao(String xmlLot) {
		int index = xmlLot.indexOf("<tpAmb>");
		if (index >= 0) {
			String tpAmb = xmlLot.substring(index+7, index+8);
			if (tpAmb.equals("2"))
				return true;
		}
		
		return false;
	}
}
