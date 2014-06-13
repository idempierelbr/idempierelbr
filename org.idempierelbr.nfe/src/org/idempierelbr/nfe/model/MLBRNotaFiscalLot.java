package org.idempierelbr.nfe.model;

import java.io.File;
import java.io.StringReader;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.compiere.model.MAttachment;
import org.compiere.model.MLocation;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MRegion;
import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.idempierelbr.core.util.TextUtil;
import org.idempierelbr.nfe.base.NFeXMLGenerator;
import org.idempierelbr.nfe.stub.StubConnector;
import org.idempierelbr.nfe.util.NFeUtil;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;


public class MLBRNotaFiscalLot extends X_LBR_NotaFiscalLot {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8204166675147122969L;

	public MLBRNotaFiscalLot(Properties ctx, int LBR_NotaFiscalLot_ID,
			String trxName) {
		super(ctx, LBR_NotaFiscalLot_ID, trxName);
		// TODO Auto-generated constructor stub
	}

	public MLBRNotaFiscalLot(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
		// TODO Auto-generated constructor stub
	}
	
	/**
	 *  getLines
	 *  @return MNotaFiscalLotLine[] lines
	 */
	public MLBRNotaFiscalLotLine[] getLines()
	{
		MTable table = MTable.get (getCtx(), MLBRNotaFiscalLotLine.Table_Name);
		Query query =  new Query(getCtx(), table, "LBR_NotaFiscalLot_ID=?", get_TrxName());
	 		  query.setParameters(new Object[]{getLBR_NotaFiscalLot_ID()});
	 	//
	 	List<MLBRNotaFiscalLotLine> list = query.list();
	 	return list.toArray(new MLBRNotaFiscalLotLine[list.size()]);
	}	//	getLines
	
	/**
	 * 	Gera o arquivo de Lote
	 *
	 * @param String envType
	 * @return String lot
	 * @throws Exception
	 */
	public String geraLote() throws Exception
	{
		log.fine("Generating NF-e Lot: " + getDocumentNo());
		String[] xmlGerado = getXMLs();
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
		xmlLot.append("<enviNFe xmlns=\"http://www.portalfiscal.inf.br/nfe\" versao=\"3.10\">")
			.append("<idLote>")
			.append(getDocumentNo())
			.append("</idLote>")
			.append("<indSinc>")
			.append(getLBR_ProcessingType().equals("A") ? "0" : "1")
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

		File attachFile = new File(TextUtil.generateTmpFile(xmlLot.toString(), getDocumentNo() + "-env-lot.xml"));

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
	 * 	Envia Lote NFe
	 *
	 *  @return String result
	 *  @throws Exception
	 */
	public String enviaNFe() throws Exception
	{
		Properties ctx = getCtx();

		log.fine("Sending NF-e Lot: " + getDocumentNo());
		
		if (getLines().length < 1) {
			return "NF-e Lot must have at least one line"; 
		}

		// Dados da Org.
		MOrg org = new MOrg(ctx, getAD_Org_ID(), get_TrxName());
		MOrgInfo orgInfo = MOrgInfo.get(ctx, org.get_ID(), get_TrxName());
		MLocation orgLoc = new MLocation(ctx, orgInfo.getC_Location_ID(), get_TrxName());
		MRegion  orgRegion = new MRegion(ctx, orgLoc.getC_Region_ID(), get_TrxName());
		
		//INICIALIZA CERTIFICADO
		MLBRDigitalCertificate.setCertificate(ctx, getAD_Org_ID());

		try{
			String xmlLot = geraLote();

			// Validação envio
			/*String validation = ValidaXML.validaEnvXML(xmlLot);
			if (!validation.equals(""))
				return validation;*/
			
			xmlLot = "<nfeDadosMsg>" + xmlLot + "</nfeDadosMsg>";
			
			StubConnector connector = new StubConnector(NFeUtil.VERSAO_APP,
					orgRegion.get_ID(), MLBRNFeWebService.SERVICE_NFE_AUTORIZACAO, false, true);
			String result = connector.sendMessage(xmlLot);
			
			// Resposta do Envio
			/*validation = ValidaXML.validaRetXML(result);
			if (!validation.equals(""))
				return validation;*/

			MAttachment attachLotNFe = createAttachment();
			File attachFile = new File(TextUtil.generateTmpFile(result, getDocumentNo() + "-rec.xml"));
			attachLotNFe.addEntry(attachFile);
			attachLotNFe.saveEx(get_TrxName());

	        DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
	        Document doc = builder.parse(new InputSource(new StringReader(result)));

	        String cStat = doc.getElementsByTagName("cStat").item(0).getTextContent();

	        String nRec = null;
	        if (doc.getElementsByTagName("nRec") != null)
	        	nRec = NFeUtil.getValue(doc, "nRec");
	        
	        // Corrige tipo de processamento, caso Sefaz não aceitar método síncrono
	        if (getLBR_ProcessingType().equals("S") && nRec != null)
	        	setLBR_ProcessingType("A");

	        String dhRecbto = null;
	        if (doc.getElementsByTagName("dhRecbto") != null)
	        	dhRecbto = NFeUtil.getValue(doc, "dhRecbto");

	        setLBR_LotSendingStatus(cStat);
	        
	        if (getLBR_ProcessingType().equals("S")) {
	        	String nProt = null;
		        if (doc.getElementsByTagName("nProt") != null)
		        	nProt = NFeUtil.getValue(doc, "nProt");
		        
	        	setLBR_LotSendingProt(nProt);
	        	
	        	//
			    String cStatL = NFeUtil.getValue(doc, "cStat");
			    NodeList infProt =  doc.getElementsByTagName("infProt");
			    
	        	// Marcar como processado somente em 104 ou 999
			    if (cStatL.equals("104") || cStatL.equals("999")) {	//	Lote Processado ou 999 Erro não catalogado
			    	setLBR_LotQueried(true);
				    setProcessed(true);
				    
				    MLBRNotaFiscalLotLine[] lines = getLines();

				    for (int i=0; i< infProt.getLength(); i++) {
			        	Node node = infProt.item(i);
			        	updateLine(lines, node);
			        }
				}
	        } else if (getLBR_ProcessingType().equals("A"))
	        	setLBR_LotSendingRec(nRec);

	        Timestamp sentOn = NFeUtil.stringToTime(dhRecbto);
	        setLBR_LotSentOn(sentOn);
	        setLBR_LotSent(true);
	        save();
		}
		catch (Throwable e1){
			log.severe(e1.getLocalizedMessage());
			e1.printStackTrace();
			return e1.getLocalizedMessage();
		}

		return "";
	}
	
	/**
	 * 	Consulta Lote NFe
	 *
	 *  @return String result
	 *  @throws Exception
	 */
	public String consultaNFe () throws Exception
	{
		Properties ctx = getCtx();
		String trxName = get_TrxName();

		log.fine("Querying NF-e Lot: " + getDocumentNo());

		if (!isLBR_LotSent()) {
			log.log(Level.SEVERE, "NF-e Lot not sent yet");
			throw new Exception("NF-e Lot not sent yet");
		}

		// Dados da Org.
		MOrg org = new MOrg(ctx, getAD_Org_ID(), get_TrxName());
		MOrgInfo orgInfo = MOrgInfo.get(ctx, org.get_ID(), get_TrxName());
		MLocation orgLoc = new MLocation(ctx, orgInfo.getC_Location_ID(), get_TrxName());
		MRegion  orgRegion = new MRegion(ctx, orgLoc.getC_Region_ID(), get_TrxName());
		
		//INICIALIZA CERTIFICADO
		MLBRDigitalCertificate.setCertificate(ctx, getAD_Org_ID());
		//
		try{
			StringBuilder xmlLot = new StringBuilder();
			xmlLot.append("<consReciNFe xmlns=\"http://www.portalfiscal.inf.br/nfe\" versao=\"");
			xmlLot.append(NFeUtil.VERSAO_APP);
			xmlLot.append("\">");
			xmlLot.append("<tpAmb>");
			xmlLot.append("2");
			xmlLot.append("</tpAmb>");
			xmlLot.append("<nRec>");
			xmlLot.append(getLBR_LotSendingRec());
			xmlLot.append("</nRec>");
			xmlLot.append("</consReciNFe>");

			//	Validação envio
			/*String validation = ValidaXML.validaConsultaProt(nfeConsultaDadosMsg);
			if (!validation.equals(""))
				return validation;*/
			
			StubConnector connector = new StubConnector(NFeUtil.VERSAO_APP,
					orgRegion.get_ID(), MLBRNFeWebService.SERVICE_NFE_RET_AUTORIZACAO, false, true);
			String result = connector.sendMessage("<nfeDadosMsg>" + xmlLot.toString() + "</nfeDadosMsg>");
			
			MAttachment attachLotNFe = createAttachment();
			File attachFile = new File(TextUtil.generateTmpFile(result, getDocumentNo() + "-pro-rec.xml"));
			attachLotNFe.addEntry(attachFile);
			attachLotNFe.saveEx(get_TrxName());

			DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
		    Document doc = builder.parse(new InputSource(new StringReader(result)));
		    //
		    String cStatL = NFeUtil.getValue(doc, "cStat");
		    NodeList infProt =  doc.getElementsByTagName("infProt");

		    // Marcar como processado somente em 104 ou 999
		    if (cStatL.equals("104") || cStatL.equals("999")) {	//	Lote Processado ou 999 Erro não catalogado
		    	setLBR_LotQueried(true);
			    setProcessed(true);
			    
			    MLBRNotaFiscalLotLine[] lines = getLines();

			    for (int i=0; i< infProt.getLength(); i++) {
		        	Node node = infProt.item(i);
		        	updateLine(lines, node);
		        }
			}
		    
		    String dhRecbto = null;
	        if (doc.getElementsByTagName("dhRecbto") != null)
	        	dhRecbto = NFeUtil.getValue(doc, "dhRecbto");

		    setLBR_LotQueryStatus(cStatL);
		    Timestamp queriedOn = NFeUtil.stringToTime(dhRecbto);
		    setLBR_LotQueriedOn(queriedOn);
		    save(trxName);
		}
		catch (Throwable e1){
			log.severe(e1.getLocalizedMessage());
			e1.printStackTrace();
		}

		return "";
	}
	
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
					MLBRNotaFiscal nf = new MLBRNotaFiscal(getCtx(), line.getLBR_NotaFiscal_ID(), get_TrxName());
					
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
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						
						if (file != null) {
							// Delete any xml attachment
							MAttachment attachNFe = nf.createAttachment();
							
							for (int i = attachNFe.getEntryCount() - 1; i >= 0; i--) 
							{
								if (attachNFe.getEntry(i).getName().endsWith(NFeXMLGenerator.FILE_EXT))
									attachNFe.deleteEntry(i);
								
								attachNFe.saveEx(get_TrxName());
							}
							
							attachNFe.addEntry(file);
							attachNFe.saveEx(get_TrxName());
						}
					} else {
						log.warning("NF-e " + nf.getDocumentNo() + " has NF-e ID other than NF-e Lot. It won't be updated");
					}
				}
			}
		}
	}
	
	/**
	 * XMLs
	 * @return String[] XML
	 */
	public String[] getXMLs ()
	{
		MLBRNotaFiscalLotLine[] lines = getLines();
		
		if (lines == null || lines.length == 0)
			return null;
		
		ArrayList<String> xmlArray = new ArrayList<String>();
		
		for (MLBRNotaFiscalLotLine line : lines) {
			if (line.getLBR_NotaFiscal_ID() > 0) {
				MLBRNotaFiscal nf = new MLBRNotaFiscal(getCtx(), line.getLBR_NotaFiscal_ID(), get_TrxName());
				
				MAttachment attachNFe = nf.getAttachment();
				
				for (int i = attachNFe.getEntryCount() - 1; i >= 0; i--) {
					if (attachNFe.getEntry(i).getName().endsWith(NFeXMLGenerator.FILE_EXT)) {
						//xmlArray.add(convertStreamToString(attachNFe.getEntry(i).getInputStream()));
						xmlArray.add(attachNFe.getEntry(i).getFile().toString());
					}
				}
			}
		}
		
		String[] result = new String[xmlArray.size()];
	 	xmlArray.toArray(result);
		return result;
	}	//	getXMLs
	
	protected boolean beforeDelete() {
		if (isLBR_LotSent()) {
			log.log(Level.SEVERE, "NF-e Lot had been sent to Sefaz, and thus can not be deleted");
			return false;
		}
		
		return true;
	}

}
