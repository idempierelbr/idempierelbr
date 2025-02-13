package org.idempierelbr.nfe.util;

import java.io.File;
import java.io.StringReader;
import java.io.StringWriter;
import java.sql.Timestamp;
import java.util.Properties;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MAttachment;
import org.compiere.model.MBPartner;
import org.compiere.model.MDocType;
import org.compiere.model.MLocation;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MRegion;
import org.compiere.util.CLogger;
import org.idempierelbr.base.model.MLBRNFeWebService;
import org.idempierelbr.base.model.MLBRNFeXML;
import org.idempierelbr.base.model.MLBRNotaFiscal;
import org.idempierelbr.base.model.MLBRNotaFiscalEvent;
import org.idempierelbr.base.model.MLBRNotaFiscalEventLine;
import org.idempierelbr.base.util.AdempiereLBR;
import org.idempierelbr.base.util.TextUtil;
import org.idempierelbr.nfe.beans.DetEventoCancelamento;
import org.idempierelbr.nfe.beans.DetEventoCartaDeCorrecao;
import org.idempierelbr.nfe.beans.DetEventoManifestacaoDest;
import org.idempierelbr.nfe.beans.EnvEvento;
import org.idempierelbr.nfe.beans.Evento;
import org.idempierelbr.nfe.beans.I_DetEvento;
import org.idempierelbr.nfe.beans.InfEvento;
import org.idempierelbr.nfe.beans.Signature;
import org.idempierelbr.nfe.stub.StubConnector;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.xml.CompactWriter;
import com.thoughtworks.xstream.io.xml.DomDriver;
import com.thoughtworks.xstream.security.AnyTypePermission;

public class NFeEventUtil {
	protected transient CLogger	log = CLogger.getCLogger (getClass());
	private MLBRNotaFiscalEvent event;
	
	public NFeEventUtil(MLBRNotaFiscalEvent event) {
		if (event == null)
			throw new AdempiereException("MLBRNotaFiscalEvent não pode ser null");
		
		this.event = event;
	}

	/**
	 * 	Send NF-e Event Lot to Sefaz
	 * 
	 *  @return String error or ""
	 */
	public String sendLot() throws Exception
	{
		Properties ctx = event.getCtx();
		log.fine("Sending NF-e Event Lot: " + event.getDocumentNo());
		
		MLBRNotaFiscalEventLine[] lines = event.getLines();
		
		if (lines.length < 1) {
			return "NF-e Event Lot must have at least one line"; 
		}

		// Dados da Org.
		MOrg org = new MOrg(ctx, event.getAD_Org_ID(), event.get_TrxName());
		MOrgInfo orgInfo = MOrgInfo.get(ctx, org.get_ID(), event.get_TrxName());
		MLocation orgLoc = new MLocation(ctx, orgInfo.getC_Location_ID(), event.get_TrxName());
		MRegion  orgRegion = new MRegion(ctx, orgLoc.getC_Region_ID(), event.get_TrxName());
		
		//INICIALIZA CERTIFICADO
		try {
			DigitalCertificateUtil.setCertificate(ctx, event.getAD_Org_ID());
		} catch (Exception e) {
			e.printStackTrace();
			return "Could not set digital certificate";
		}

		String xmlLot;
		EnvEvento envLot;
		
		try {
			envLot = generateLot(lines);
			xmlLot = envToString(envLot).trim().replaceFirst("^([\\W]+)<","<");
		} catch (Exception e) {
			throw new AdempiereException(e);
		}
		
		xmlLot = "<nfeDadosMsg>" + xmlLot + "</nfeDadosMsg>";
		
		String LBR_NFeModel = null;
		try{
			LBR_NFeModel = getNFeModel();
		} catch(Exception ex){
			return "Could not get NFe Model: "+ex.getMessage();
		}
		
		// Ambiente nacional ou regional
		boolean isAmbienteNacional = false;
		
		for (MLBRNotaFiscalEventLine line : lines) {
			if (line.getLBR_NFeEventType().equals("MAN"))
				isAmbienteNacional = true;
		}
		
		StubConnector connector;
		
		if (isAmbienteNacional)
			connector = new StubConnector(NFeUtil.VERSAO_EVENTO,
				orgRegion.get_ID(), MLBRNFeWebService.SERVICE_NFE_RECEPCAO_EVENTO_AN,
				isContingencia(xmlLot), isHomologacao(xmlLot), LBR_NFeModel);
		else {
			String service = null;
			
			if (LBR_NFeModel.equals(MLBRNotaFiscal.LBR_NFEMODEL_55_NF_E))
				service = MLBRNFeWebService.SERVICE_NFE_RECEPCAO_EVENTO;
			else if (LBR_NFeModel.equals(MLBRNotaFiscal.LBR_NFEMODEL_65_NFC_E))
				service = MLBRNFeWebService.SERVICE_NFCE_RECEPCAO_EVENTO;
			
			
			connector = new StubConnector(NFeUtil.VERSAO_EVENTO,
					orgRegion.get_ID(), service,
					isContingencia(xmlLot), isHomologacao(xmlLot), LBR_NFeModel);
		
		}
		String result = connector.sendMessage(xmlLot);
		
		if (result == null || result.trim().equals(""))
			return "Could not connect to webservice. Please try again later";
		
		MAttachment attachLotNFe = event.createAttachment();
		File attachFile = new File(TextUtil.generateTmpFile(result, event.getDocumentNo() + MLBRNotaFiscalEvent.RESPOSTA_FILE_EXT));
		attachLotNFe.addEntry(attachFile);
		attachLotNFe.saveEx(event.get_TrxName());
		
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

        String dhRegEvento = null;
        if (doc.getElementsByTagName("dhRegEvento") != null)
        	dhRegEvento = NFeUtil.getValue(doc, "dhRegEvento");

        event.setLBR_LotSendingStatus(cStat);
        
        String cStatL = NFeUtil.getValue(doc, "cStat");
	    NodeList retEvento =  doc.getElementsByTagName("retEvento");
        if (isImmutableStatus(cStatL)) {
		    for (int i=0; i< retEvento.getLength(); i++) {
	        	Node node = retEvento.item(i);
	        	// Since the batch was processed, any individual line error should not break the process 
	        	try {
	        		updateLine( lines, node , findEvento( envLot , NFeUtil.getValue(node, "chNFe") ) );
	        	} catch (Exception e) {
	        		e.printStackTrace();
	        	}
	        }
		    
		    event.setLBR_LotSent(true);
		    event.setProcessed(true);
		}

        Timestamp sentOn = NFeUtil.stringToTime(dhRegEvento);
        event.setLBR_LotSentOn(sentOn);
        event.saveEx();
        
		return "";
	}
	
	/**
	 * 	Update Lot line and NF-e with result from query to Sefaz
	 *
	 * @param lines Lot lines array
	 * @param node NF-e entry from Sefaz returned message
	 * @param sent The event that was sent to Sefaz
	 */
	private void updateLine(MLBRNotaFiscalEventLine[] lines, Node node, Evento sent) {
		if (node.getNodeType() == Node.ELEMENT_NODE) {
			String chNFe	= NFeUtil.getValue(node, "chNFe");
			String cStat 	= NFeUtil.getValue(node, "cStat");
			String nProt 	= NFeUtil.getValue(node, "nProt");
			String tpEvento = NFeUtil.getValue(node, "tpEvento");
			String nSeqEvento = NFeUtil.getValue(node, "nSeqEvento");
			
			for (MLBRNotaFiscalEventLine line : lines) {
				// Update Lot Line
				// Movido para o início, de forma que qualquer Exception posterior não impedirá o registro adequado
				line.setLBR_LotSendingProt(nProt);
				line.setLBR_NFeStatus(cStat);
				line.saveEx();					

				if (line.getLBR_NFeID().equals(chNFe)) {
					if (line.getLBR_NFeEventType().equals("CAN") || line.getLBR_NFeEventType().equals("CCE")) {
						// Find the NF-e object
						MLBRNotaFiscal nf = new MLBRNotaFiscal(event.getCtx(), line.getLBR_NotaFiscal_ID(), event.get_TrxName());
	
						// Attach distribution file to the referenced NF-e
						if ( cStat.equals("135") || cStat.equals("136") || cStat.equals("155") ) {
							MAttachment attachNFe = nf.createAttachment();
							File attachFile = new File(TextUtil.generateTmpFile(  generateDistributionXMLString ( sent , node )  , chNFe + "_"
									+ tpEvento + ( nSeqEvento.equals("1") ? "" : "_"+nSeqEvento ) + MLBRNotaFiscalEvent.DISTRIBUICAO_FILE_EXT));
							attachNFe.addEntry(attachFile);
							attachNFe.saveEx(event.get_TrxName());
						}
						
						if (line.getLBR_NFeEventType().equals("CAN")) {
							String cStatNFe = "";
							if (cStat.equals("135"))
								cStatNFe = "101"; // 101 - Cancelamento de NF-e homologado
							else if (cStat.equals("155"))
								cStatNFe = "151"; // 151 - Cancelamento de NF-e homologado fora de prazo
							
							if (cStatNFe.equals("101") || cStatNFe.equals("151")) {
								
								if (nf.getLBR_NFeID().equals(chNFe)) {
									nf.setLBR_LotSendingProt(nProt);
									nf.setLBR_NFeStatus(cStatNFe);
									nf.saveEx();
								} else {
									log.severe("NF-e " + nf.getDocumentNo() + " has NF-e ID other than NF-e Lot. It won't be updated");
								}
							}
						} 
					}					
					
					if (line.getLBR_NFeEventType().equals("MAN")) {
						MLBRNFeXML nfeXML = new MLBRNFeXML(event.getCtx(), line.getLBR_NFeXML_ID(), event.get_TrxName());
						nfeXML.setLBR_UltimaManifestacao(line.getLBR_TipoDeManifestacao());
						nfeXML.saveEx();
					}
				}
			}
		}
	}

	// Classes usadas para annotation
	private Class<?>[] classForAnnotation = new Class[]{DetEventoCartaDeCorrecao.class,
			DetEventoCancelamento.class,
			InfEvento.class,
			Evento.class,
			EnvEvento.class,
			Signature.CanonicalizationMethod.class, 
			Signature.DigestMethod.class,
			Signature.KeyInfo.class,
			Signature.Reference.class,
			Signature.SignatureMethod.class, 
			Signature.SignedInfo.class,
			Signature.Transform.class,
			Signature.Transforms.class,
			Signature.X509Data.class};
	
	/**
	 * 	Generate xml for NF-e Lot (before sending to Sefaz)
	 *
	 * @return String lot xml
	 * @throws Exception
	 */
	private EnvEvento generateLot(MLBRNotaFiscalEventLine[] lines) throws Exception
	{
		log.fine("Generating NF-e Event Lot: " + event.getDocumentNo());
		StringBuilder linesXml = new StringBuilder();
		
		// Dados do Envio
		EnvEvento envEvento = new EnvEvento();
		envEvento.setVersao(NFeUtil.VERSAO_EVENTO);
		envEvento.setIdLote(event.getDocumentNo());
		
		for (MLBRNotaFiscalEventLine line : lines) {
			MLBRNotaFiscal nf = new MLBRNotaFiscal (event.getCtx(), line.getLBR_NotaFiscal_ID(), event.get_TrxName());
			MDocType nfDocType = new MDocType(event.getCtx(), nf.getC_DocType_ID(), event.get_TrxName());
			
			MOrg org = new MOrg(event.getCtx(), line.getLBR_NotaFiscal_ID() > 0 ? nf.getAD_Org_ID() : line.getAD_Org_ID(), event.get_TrxName());
			MOrgInfo orgInfo = MOrgInfo.get(event.getCtx(), org.get_ID(), event.get_TrxName());
			MLocation orgLoc = new MLocation(event.getCtx(), orgInfo.getC_Location_ID(), event.get_TrxName());
			MRegion orgRegion = new MRegion(event.getCtx(), orgLoc.getC_Region_ID(), event.get_TrxName());
			
			int linked2OrgC_BPartner_ID = org.getLinkedC_BPartner_ID(event.get_TrxName());
			
			if (linked2OrgC_BPartner_ID < 1)
				throw new AdempiereException ( "Nenhum Parceiro vinculado à Organização" );
			
			MBPartner bpLinked2Org = new MBPartner(event.getCtx(), linked2OrgC_BPartner_ID, event.get_TrxName());
			
			if (line.getLBR_NFeEventType().equals("CCE")) {	
				// Detalhes
				DetEventoCartaDeCorrecao det = new DetEventoCartaDeCorrecao();
				det.setVersao(NFeUtil.VERSAO_CCE);
				det.setXCorrecao(line.getLBR_CorrectionReason().trim());
				
				// Informações
				InfEvento cce = new InfEvento();
				cce.setCOrgao(orgRegion.get_ValueAsString("LBR_RegionCode"));
				cce.setTpAmb(nfDocType.get_ValueAsString("LBR_NFeEnv"));				
				cce.setCNPJ(TextUtil.toNumeric(bpLinked2Org.get_ValueAsString("LBR_CNPJ")));				
				cce.setChNFe(line.getLBR_NFeID());
				
				String DEv 	= TextUtil.timeToString(line.getCreated(), "yyyy-MM-dd");
				String TEv 	= TextUtil.timeToString(line.getCreated(), "HH:mm:ss");
				String timezone = AdempiereLBR.getTimezone(nf.getAD_Client_ID(), nf.getAD_Org_ID());
				cce.setDhEvento(DEv + "T" + TEv + timezone);

				cce.setNSeqEvento("" + line.getLBR_NFeEventSeqNo());
				cce.setVerEvento(NFeUtil.VERSAO_CCE);
				cce.setDetEvento(det);
				cce.setTpEvento("110110");
				cce.setId();
				
				// Dados
				Evento evento = new Evento();
				evento.setVersao(NFeUtil.VERSAO_CCE);
				evento.setInfEvento(cce);
				
				XStream xstream = new XStream();
				xstream.aliasSystemAttribute(null, "class");
				xstream.autodetectAnnotations(true);
				
				StringWriter sw = new StringWriter();
				xstream.marshal(evento, new CompactWriter(sw));
				StringBuilder xml = new StringBuilder(sw.toString());
				String xmlFile = TextUtil.generateTmpFile(xml.toString(), cce.getId() + MLBRNotaFiscalEvent.INDIVIDUAL_CORRECAO_FILE_EXT);
				
				log.fine("Signing NF-e XML");
				AssinaturaDigital.Assinar(xmlFile, orgInfo, AssinaturaDigital.CARTADECORRECAO_CCE);
				
				// Lê o arquivo assinado
				xstream = new XStream(new DomDriver("UTF-8"));
				xstream.alias("detEvento", I_DetEvento.class, DetEventoCartaDeCorrecao.class);
				xstream.processAnnotations(classForAnnotation);
				
				// Configurando permissões de segurança
				xstream.addPermission(AnyTypePermission.ANY); // Permite todas as classes (cuidado com segurança)
				xstream.allowTypesByWildcard(new String[] {
				    "org.idempierelbr.nfe.beans.**" // Permite todas as classes no pacote específico
				});

				evento = (Evento) xstream.fromXML(TextUtil.readFile(new File(xmlFile)));
				
				// Popula o envio do Evento com o XML assinado
				envEvento.addEvento(evento);
				
				// Validação envio
				/*String validation = ValidaXML.ValidaDoc(xml.toString(), "Evento_CCe_PL_v1.01/envCCe_v1.00.xsd");
				if (!validation.equals(""))
					return validation;*/
				
				linesXml.append(xml.toString());
			} else if (line.getLBR_NFeEventType().equals("CAN")) {		
				// Detalhes
				DetEventoCancelamento det = new DetEventoCancelamento();
				det.setVersao(NFeUtil.VERSAO_CAN);
				det.setnProt(nf.getLBR_LotSendingProt());
				det.setxJust(TextUtil.retiraEspecial(line.getLBR_Justification().trim()));
				
				// Informações
				InfEvento cancel = new InfEvento();
				cancel.setCOrgao(orgRegion.get_ValueAsString("LBR_RegionCode"));
				cancel.setTpAmb(nfDocType.get_ValueAsString("LBR_NFeEnv"));	
				cancel.setCNPJ(TextUtil.toNumeric(bpLinked2Org.get_ValueAsString("LBR_CNPJ")));
				cancel.setChNFe(line.getLBR_NFeID());
				
				String DEv 	= TextUtil.timeToString(line.getCreated(), "yyyy-MM-dd");
				String TEv 	= TextUtil.timeToString(line.getCreated(), "HH:mm:ss");
				String timezone = AdempiereLBR.getTimezone(nf.getAD_Client_ID(), nf.getAD_Org_ID());
				cancel.setDhEvento(DEv + "T" + TEv + timezone);
				
				cancel.setNSeqEvento("" + line.getLBR_NFeEventSeqNo());
				cancel.setVerEvento(NFeUtil.VERSAO_CAN);
				cancel.setDetEvento(det);
				cancel.setTpEvento("110111");
				cancel.setId();
				
				// Dados
				Evento evento = new Evento ();
				evento.setVersao(NFeUtil.VERSAO_CAN);
				evento.setInfEvento(cancel);
				
				XStream xstream = new XStream();
				xstream.aliasSystemAttribute(null, "class");
				xstream.autodetectAnnotations(true);
				
				StringWriter sw = new StringWriter();
				xstream.marshal(evento, new CompactWriter(sw));
				StringBuilder xml = new StringBuilder(sw.toString());
				String xmlFile = TextUtil.generateTmpFile (xml.toString(), cancel.getId() + MLBRNotaFiscalEvent.INDIVIDUAL_CANCELAMENTO_FILE_EXT);
				
				log.fine("Signing NF-e XML");
				AssinaturaDigital.Assinar(xmlFile, orgInfo, AssinaturaDigital.CARTADECORRECAO_CCE);
				
				// Lê o arquivo assinado
				xstream = new XStream(new DomDriver("UTF-8"));
				xstream.alias("detEvento", I_DetEvento.class, DetEventoCancelamento.class);
				xstream.processAnnotations(classForAnnotation);
				
				// Configurando permissões de segurança
				xstream.addPermission(AnyTypePermission.ANY); // Permite todas as classes (cuidado com segurança)
				xstream.allowTypesByWildcard(new String[] {
				    "org.idempierelbr.nfe.beans.**" // Permite todas as classes no pacote específico
				});

				evento = (Evento) xstream.fromXML(TextUtil.readFile(new File(xmlFile)));
				
				// Popula o envio do Evento com o XML assinado
				envEvento.addEvento(evento);
				
				// Validação envio
				/*String validation = ValidaXML.ValidaDoc(xml.toString(), "Evento_Canc_PL_v1.01/envEventoCancNFe_v1.00.xsd");
				if (!validation.equals(""))
					return validation;*/
		
				linesXml.append(xml.toString());
			} else if (line.getLBR_NFeEventType().equals("MAN")) {	
				// Detalhes
				DetEventoManifestacaoDest det = new DetEventoManifestacaoDest();
				det.setVersao(NFeUtil.VERSAO_MAN);
				
				if (line.getLBR_TipoDeManifestacao().equals(MLBRNotaFiscalEventLine.LBR_TIPODEMANIFESTACAO_210200_ConfirmacaoDaOperacao))
					det.setDescEvento(DetEventoManifestacaoDest.DESC_EVENTO_CONFIRMACAO);
				else if (line.getLBR_TipoDeManifestacao().equals(MLBRNotaFiscalEventLine.LBR_TIPODEMANIFESTACAO_210210_CienciaDaOperacao))
					det.setDescEvento(DetEventoManifestacaoDest.DESC_EVENTO_CIENCIA);
				else if (line.getLBR_TipoDeManifestacao().equals(MLBRNotaFiscalEventLine.LBR_TIPODEMANIFESTACAO_210220_DesconhecimentoDaOperacao))
					det.setDescEvento(DetEventoManifestacaoDest.DESC_EVENTO_DESCONHECIMENTO);
				else if (line.getLBR_TipoDeManifestacao().equals(MLBRNotaFiscalEventLine.LBR_TIPODEMANIFESTACAO_210240_OperacaoNaoRealizada))
					det.setDescEvento(DetEventoManifestacaoDest.DESC_EVENTO_NAO_REALIZADA);
				
				// Informações
				InfEvento man = new InfEvento();
				man.setCOrgao("91");
				man.setTpAmb("1"); // TODO				
				man.setCNPJ(TextUtil.toNumeric(bpLinked2Org.get_ValueAsString("LBR_CNPJ")));				
				man.setChNFe(line.getLBR_NFeID());
				
				String DEv 	= TextUtil.timeToString(line.getCreated(), "yyyy-MM-dd");
				String TEv 	= TextUtil.timeToString(line.getCreated(), "HH:mm:ss");
				String timezone = AdempiereLBR.getTimezone(nf.getAD_Client_ID(), nf.getAD_Org_ID());
				man.setDhEvento(DEv + "T" + TEv + timezone);

				man.setNSeqEvento("" + line.getLBR_NFeEventSeqNo());
				man.setVerEvento(NFeUtil.VERSAO_MAN);
				man.setDetEvento(det);
				man.setTpEvento("210210");
				man.setId();
				
				// Dados
				Evento evento = new Evento();
				evento.setVersao(NFeUtil.VERSAO_MAN);
				evento.setInfEvento(man);
				
				XStream xstream = new XStream();
				xstream.aliasSystemAttribute(null, "class");
				xstream.autodetectAnnotations(true);
				
				StringWriter sw = new StringWriter();
				xstream.marshal(evento, new CompactWriter(sw));
				StringBuilder xml = new StringBuilder(sw.toString());
				String xmlResult = xml.toString();
				String xmlFile = TextUtil.generateTmpFile(xmlResult, man.getId() + MLBRNotaFiscalEvent.INDIVIDUAL_CORRECAO_FILE_EXT);
				
				log.fine("Signing NF-e XML");
				AssinaturaDigital.Assinar(xmlFile, orgInfo, AssinaturaDigital.CARTADECORRECAO_CCE);
				
				// Lê o arquivo assinado
				xstream = new XStream(new DomDriver("UTF-8"));
				xstream.alias("detEvento", I_DetEvento.class, DetEventoCartaDeCorrecao.class);
				xstream.processAnnotations(classForAnnotation);
				
				// Configurando permissões de segurança
				xstream.addPermission(AnyTypePermission.ANY); // Permite todas as classes (cuidado com segurança)
				xstream.allowTypesByWildcard(new String[] {
				    "org.idempierelbr.nfe.beans.**" // Permite todas as classes no pacote específico
				});

				evento = (Evento) xstream.fromXML(TextUtil.readFile(new File(xmlFile)));
				
				// Popula o envio do Evento com o XML assinado
				envEvento.addEvento(evento);
				
				// Validação envio
				/*String validation = ValidaXML.ValidaDoc(xml.toString(), "Evento_CCe_PL_v1.01/envCCe_v1.00.xsd");
				if (!validation.equals(""))
					return validation;*/
				
				linesXml.append(xml.toString());
			}
		}

		return envEvento;
	}
	
	public String envToString ( EnvEvento env ) {
		StringWriter sw = new StringWriter();
		XStream xstream = new XStream();
		xstream.aliasSystemAttribute(null, "class");
		xstream.processAnnotations(classForAnnotation);
		
		xstream.addImplicitCollection(EnvEvento.class, "eventos");
		xstream.alias("evento", Evento.class);
		
		xstream.marshal(env, new CompactWriter(sw));

		return sw.toString();
	}	//	gerarLote
	
	public String generateDistributionXMLString(  Evento sent , Node returned ) {
		String procEventoString = "<procEventoNFe xmlns=\"http://www.portalfiscal.inf.br/nfe\" versao=\"1.00\">";

		// convert returned node into xml string
		TransformerFactory transFactory = TransformerFactory.newInstance();
		StringWriter buffer = new StringWriter();
		try {
			Transformer transformer = transFactory.newTransformer();
			transformer.setOutputProperty(OutputKeys.OMIT_XML_DECLARATION, "yes");
			transformer.transform(new DOMSource(returned),
					new StreamResult(buffer));
		} catch (TransformerException e) {
			e.printStackTrace();
			return null;
		}
		String str = buffer.toString();

		// convert xml string into Evento bean
		StringWriter sw = new StringWriter();
		XStream xstream = new XStream(new DomDriver("UTF-8"));
		xstream.aliasSystemAttribute(null, "class");
		xstream.alias("retEvento", Evento.class);
		xstream.processAnnotations(classForAnnotation);
		xstream.addImplicitCollection(EnvEvento.class, "eventos");
		
		xstream.marshal(sent, new CompactWriter(sw));
		procEventoString += sw.toString();
		procEventoString += str;
		procEventoString += "</procEventoNFe>";
		
		return procEventoString;
	}
	
	public Evento findEvento( EnvEvento eventos , String chNFE ) {
		for ( Evento evento : eventos.getEvento() ) {
			if (evento.getInfEvento().getChNFe().toString().equals(chNFE)) {
				return evento;
			}
		}
		return null;
	}
	
	
	/**
	 * 	Does NF-e Lot have a status that does not allow a change? 
	 *
	 * @param cStatL status returned by Sefaz
	 */
	private boolean isImmutableStatus(String cStatL) {
		if (cStatL.equals("128"))		// 128 - Lote de Evento processado
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
	

	
	/**
	 * Returns the model of the NF inside this Lote.
	 * @return
	 * @throws Exception
	 */
	private String getNFeModel() throws Exception{
		MLBRNotaFiscalEventLine[] lines = event.getLines();
		
		if (lines == null || lines.length < 1) {
			return null; 
		}

		for (MLBRNotaFiscalEventLine line : lines) {
			if (line.getLBR_NotaFiscal_ID() > 0) {
				MLBRNotaFiscal nf = new MLBRNotaFiscal (event.getCtx(), line.getLBR_NotaFiscal_ID(), event.get_TrxName());			
				return nf.getLBR_NFeModel();
			} else if (line.getLBR_NFeXML_ID() > 0) {
				return MLBRNotaFiscal.LBR_NFEMODEL_55_NF_E; // TODO
			}
		}
		
		return null;
	}	
}
