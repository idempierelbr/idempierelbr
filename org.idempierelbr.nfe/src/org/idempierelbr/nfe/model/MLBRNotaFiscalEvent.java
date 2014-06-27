package org.idempierelbr.nfe.model;

import java.io.File;
import java.io.StringReader;
import java.io.StringWriter;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.compiere.model.MAttachment;
import org.compiere.model.MBPartner;
import org.compiere.model.MDocType;
import org.compiere.model.MLocation;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MRegion;
import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.idempierelbr.core.util.TextUtil;
import org.idempierelbr.nfe.beans.DetEventoCancelamento;
import org.idempierelbr.nfe.beans.DetEventoCartaDeCorrecao;
import org.idempierelbr.nfe.beans.EnvEvento;
import org.idempierelbr.nfe.beans.Evento;
import org.idempierelbr.nfe.beans.I_DetEvento;
import org.idempierelbr.nfe.beans.InfEvento;
import org.idempierelbr.nfe.beans.Signature;
import org.idempierelbr.nfe.stub.StubConnector;
import org.idempierelbr.nfe.util.AssinaturaDigital;
import org.idempierelbr.nfe.util.NFeUtil;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.xml.CompactWriter;
import com.thoughtworks.xstream.io.xml.DomDriver;

public class MLBRNotaFiscalEvent extends X_LBR_NotaFiscalEvent {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5008981170781809596L;

	public MLBRNotaFiscalEvent(Properties ctx, int LBR_NotaFiscalEvent_ID,
			String trxName) {
		super(ctx, LBR_NotaFiscalEvent_ID, trxName);
	}

	public MLBRNotaFiscalEvent(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	/**
	 *  getLines
	 *  @return MNotaFiscalEventLine[] lines
	 */
	public MLBRNotaFiscalEventLine[] getLines()
	{
		MTable table = MTable.get (getCtx(), MLBRNotaFiscalEventLine.Table_Name);
		Query query =  new Query(getCtx(), table, "LBR_NotaFiscalEvent_ID=?", get_TrxName());
	 		  query.setParameters(new Object[]{getLBR_NotaFiscalEvent_ID()});
	 	//
	 	List<MLBRNotaFiscalEventLine> list = query.list();
	 	return list.toArray(new MLBRNotaFiscalEventLine[list.size()]);
	}	//	getLines
	
	protected boolean beforeDelete() {
		if (isLBR_LotSent()) {
			log.log(Level.SEVERE, "NF-e Event Lot had been sent to Sefaz, and thus can not be deleted");
			return false;
		}
		
		return true;
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
	 * 	Send NF-e Event Lot to Sefaz
	 * 
	 *  @return String error or ""
	 */
	public String sendLot()
	{
		Properties ctx = getCtx();
		log.fine("Sending NF-e Event Lot: " + getDocumentNo());
		
		MLBRNotaFiscalEventLine[] lines = getLines();
		
		if (lines.length < 1) {
			return "NF-e Event Lot must have at least one line"; 
		}

		// Dados da Org.
		MOrg org = new MOrg(ctx, getAD_Org_ID(), get_TrxName());
		MOrgInfo orgInfo = MOrgInfo.get(ctx, org.get_ID(), get_TrxName());
		MLocation orgLoc = new MLocation(ctx, orgInfo.getC_Location_ID(), get_TrxName());
		MRegion  orgRegion = new MRegion(ctx, orgLoc.getC_Region_ID(), get_TrxName());
		
		//INICIALIZA CERTIFICADO
		try {
			MLBRDigitalCertificate.setCertificate(ctx, getAD_Org_ID());
		} catch (Exception e) {
			e.printStackTrace();
			return "Could not set digital certificate";
		}

		String xmlLot;
		
		try {
			xmlLot = generateLot(lines).trim().replaceFirst("^([\\W]+)<","<");
		} catch (Exception e) {
			e.printStackTrace();
			return "Could not generate xml";
		}
		
		xmlLot = "<nfeDadosMsg>" + xmlLot + "</nfeDadosMsg>";
		
		StubConnector connector = new StubConnector(NFeUtil.VERSAO_EVENTO,
				orgRegion.get_ID(), MLBRNFeWebService.SERVICE_NFE_RECEPCAO_EVENTO,
				isContingencia(xmlLot), isHomologacao(xmlLot));
		String result = connector.sendMessage(xmlLot);
		
		if (result == null)
			return "Could not send NF-e Event Lot";
		
		MAttachment attachLotNFe = createAttachment();
		File attachFile = new File(TextUtil.generateTmpFile(result, getDocumentNo() + "-pro-eve.xml"));
		attachLotNFe.addEntry(attachFile);
		attachLotNFe.saveEx(get_TrxName());
		
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

        setLBR_LotSendingStatus(cStat);
        
        String cStatL = NFeUtil.getValue(doc, "cStat");
	    NodeList infEvento =  doc.getElementsByTagName("infEvento");
        
        if (isImmutableStatus(cStatL)) {
		    for (int i=0; i< infEvento.getLength(); i++) {
	        	Node node = infEvento.item(i);
	        	updateLine(lines, node);
	        }
		    
		    setLBR_LotSent(true);
		    setProcessed(true);
		}

        Timestamp sentOn = NFeUtil.stringToTime(dhRegEvento);
        setLBR_LotSentOn(sentOn);
        save();
        
		return "";
	}
	
	/**
	 * 	Update Lot line and NF-e with result from query to Sefaz
	 *
	 * @param lines Lot lines array
	 * @param node NF-e entry from Sefaz returned message
	 */
	private void updateLine(MLBRNotaFiscalEventLine[] lines, Node node) {
		if (node.getNodeType() == Node.ELEMENT_NODE) {
			String chNFe	= NFeUtil.getValue(node, "chNFe");
			String cStat 	= NFeUtil.getValue(node, "cStat");
			String nProt 	= NFeUtil.getValue(node, "nProt");
			
			for (MLBRNotaFiscalEventLine line : lines) {
				if (line.getLBR_NFeID().equals(chNFe)) {
					if (line.getLBR_NFeEventType().equals("CAN")) {
						if (cStat.equals("135"))
							cStat = "101"; // 101 - Cancelamento de NF-e homologado
						else if (cStat.equals("155"))
							cStat = "151"; // 151 - Cancelamento de NF-e homologado fora de prazo
						
						// Update NF-e (only cancellation)
						MLBRNotaFiscal nf = new MLBRNotaFiscal(getCtx(), line.getLBR_NotaFiscal_ID(), get_TrxName());
						
						if (nf.getLBR_NFeID().equals(chNFe)) {
							nf.setLBR_LotSendingProt(nProt);
							nf.setLBR_NFeStatus(cStat);
							nf.saveEx();
						} else {
							log.severe("NF-e " + nf.getDocumentNo() + " has NF-e ID other than NF-e Lot. It won't be updated");
						}
					}
					
					// Update Lot Line
					line.setLBR_LotSendingProt(nProt);
					line.setLBR_NFeStatus(cStat);
					line.saveEx();					
				}
			}
		}
	}

	/**
	 * 	Generate xml for NF-e Lot (before sending to Sefaz)
	 *
	 * @return String lot xml
	 * @throws Exception
	 */
	private String generateLot(MLBRNotaFiscalEventLine[] lines) throws Exception
	{
		log.fine("Generating NF-e Event Lot: " + getDocumentNo());
		StringBuilder linesXml = new StringBuilder();
		
		// Dados do Envio
		EnvEvento env = new EnvEvento();
		env.setVersao(NFeUtil.VERSAO_EVENTO);
		env.setIdLote(getDocumentNo());
		
		// Classes usadas para annotation
		Class<?>[] classForAnnotation = new Class[]{DetEventoCartaDeCorrecao.class,
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
		
		for (MLBRNotaFiscalEventLine line : lines) {
			MLBRNotaFiscal nf = new MLBRNotaFiscal (getCtx(), line.getLBR_NotaFiscal_ID(), get_TrxName());
			MDocType nfDocType = new MDocType(getCtx(), nf.getC_DocType_ID(), get_TrxName());
			
			MOrg org = new MOrg(getCtx(), nf.getAD_Org_ID(), get_TrxName());
			MOrgInfo orgInfo = MOrgInfo.get(getCtx(), org.get_ID(), get_TrxName());
			MLocation orgLoc = new MLocation(getCtx(), orgInfo.getC_Location_ID(), get_TrxName());
			MRegion orgRegion = new MRegion(getCtx(), orgLoc.getC_Region_ID(), get_TrxName());
			
			int linked2OrgC_BPartner_ID = org.getLinkedC_BPartner_ID(get_TrxName());
			
			if (linked2OrgC_BPartner_ID < 1)
				return "Nenhum Parceiro vinculado à Organização";
			
			MBPartner bpLinked2Org = new MBPartner(getCtx(), linked2OrgC_BPartner_ID, get_TrxName());
			
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
				cce.setDhEvento(line.getCreated());
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
				String xmlFile = TextUtil.generateTmpFile(xml.toString(), cce.getId() + "-cce.xml");
				
				log.fine("Signing NF-e XML");
				AssinaturaDigital.Assinar(xmlFile, orgInfo, AssinaturaDigital.CARTADECORRECAO_CCE);
				
				// Lê o arquivo assinado
				xstream = new XStream(new DomDriver("UTF-8"));
				xstream.alias("detEvento", I_DetEvento.class, DetEventoCartaDeCorrecao.class);
				xstream.processAnnotations(classForAnnotation);

				evento = (Evento) xstream.fromXML(TextUtil.readFile(new File(xmlFile)));
				
				// Popula o envio do Evento com o XML assinado
				env.addEvento(evento);
				
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
				cancel.setDhEvento(line.getCreated());
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
				String xmlFile = TextUtil.generateTmpFile (xml.toString(), cancel.getId() + "-can.xml");
				
				log.fine("Signing NF-e XML");
				AssinaturaDigital.Assinar(xmlFile, orgInfo, AssinaturaDigital.CARTADECORRECAO_CCE);
				
				// Lê o arquivo assinado
				xstream = new XStream(new DomDriver("UTF-8"));
				xstream.alias("detEvento", I_DetEvento.class, DetEventoCancelamento.class);
				xstream.processAnnotations(classForAnnotation);

				evento = (Evento) xstream.fromXML(TextUtil.readFile(new File(xmlFile)));
				
				// Popula o envio do Evento com o XML assinado
				env.addEvento(evento);
				
				// Validação envio
				/*String validation = ValidaXML.ValidaDoc(xml.toString(), "Evento_Canc_PL_v1.01/envEventoCancNFe_v1.00.xsd");
				if (!validation.equals(""))
					return validation;*/
		
				linesXml.append(xml.toString());
			}
		}

		StringWriter sw = new StringWriter();
		XStream xstream = new XStream();
		xstream.aliasSystemAttribute(null, "class");
		xstream.processAnnotations(classForAnnotation);
		
		xstream.addImplicitCollection(EnvEvento.class, "eventos");
		xstream.alias("evento", Evento.class);
		
		xstream.marshal(env, new CompactWriter(sw));

		return sw.toString();
	}	//	gerarLote
}
