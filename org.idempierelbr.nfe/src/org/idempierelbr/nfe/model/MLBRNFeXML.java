package org.idempierelbr.nfe.model;

import java.io.ByteArrayInputStream;
import java.io.StringReader;
import java.sql.ResultSet;
import java.util.Base64;
import java.util.Properties;
import java.util.zip.GZIPInputStream;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MAttachment;
import org.compiere.model.MAttachmentEntry;
import org.compiere.model.MBPartner;
import org.compiere.model.MLocation;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MRegion;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.idempierelbr.core.util.TextUtil;
import org.idempierelbr.nfe.stub.StubConnector;
import org.idempierelbr.nfe.util.NFeUtil;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

public class MLBRNFeXML extends X_LBR_NFeXML {
	private static final long serialVersionUID = 1L;

	public MLBRNFeXML(Properties ctx, int LBR_NFeXML_ID, String trxName) {
		super(ctx, LBR_NFeXML_ID, trxName);
	}

	public MLBRNFeXML(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}

	public void deleteAttachments() {
		MAttachment attachNFe = getAttachment(true);
		
		if (attachNFe != null) {
			for (int i = attachNFe.getEntryCount() - 1; i >= 0; i--) 
				attachNFe.deleteEntry(i);
			
			attachNFe.saveEx();
		}
	}
	
	public void attachXML(String name, String xml) {
		MAttachment attachment = createAttachment();
		MAttachmentEntry entry = new MAttachmentEntry(name, xml.getBytes());
		attachment.addEntry(entry);
		attachment.saveEx();		
	}
	
	public static String requestWS(Properties ctx, int AD_Org_ID, String lastNSU,
			String NSU, String NFeID, String trxName) throws Exception {
		MOrg org = new MOrg(ctx, AD_Org_ID, trxName);
		MOrgInfo orgInfo = MOrgInfo.get(ctx, org.get_ID(), trxName);
		MLocation orgLoc = new MLocation(ctx, orgInfo.getC_Location_ID(), trxName);
		MRegion orgRegion = new MRegion(ctx, orgLoc.getC_Region_ID(), trxName);
		
		String LBR_RegionCode = orgRegion.get_ValueAsString("LBR_RegionCode");
		
		int linked2OrgC_BPartner_ID = org.getLinkedC_BPartner_ID(trxName);
		MBPartner bpLinked2Org = new MBPartner(ctx, linked2OrgC_BPartner_ID, trxName);
		String LBR_CNPJ = TextUtil.toNumeric(bpLinked2Org.get_ValueAsString("LBR_CNPJ"));
		
		StringBuilder xml = new StringBuilder()
			.append("<nfeDadosMsg>")
			.append("<distDFeInt versao=\"1.01\" xmlns=\"http://www.portalfiscal.inf.br/nfe\">")
			.append("<tpAmb>1</tpAmb>")
			.append("<cUFAutor>" + LBR_RegionCode + "</cUFAutor>")
			.append("<CNPJ>" + LBR_CNPJ + "</CNPJ>");
		
		if (NSU != null)
			xml.append("<consNSU><NSU>").append(NSU).append("</NSU></consNSU>");
		else if (NFeID != null)
			xml.append("<consChNFe><chNFe>").append(NFeID).append("</chNFe></consChNFe>");
		else
			xml.append("<distNSU><ultNSU>").append(lastNSU).append("</ultNSU></distNSU>");		
		
		xml.append("</distDFeInt>")
			.append("</nfeDadosMsg>");
		
		//INICIALIZA CERTIFICADO
		try {
			MLBRDigitalCertificate.setCertificate(ctx, AD_Org_ID);
		} catch (Exception e) {
			throw new AdempiereException(e);
		}
		
		StubConnector connector = new StubConnector(NFeUtil.VERSAO_DISTRIBUICAO,
				orgRegion.get_ID(), MLBRNFeWebService.SERVICE_NFE_DISTRIBUICAO_DFE,
				false, false, MLBRNotaFiscal.LBR_NFEMODEL_55_NF_E);
		String result = connector.sendMessage(xml.toString());
		
		return result;
	}
	
	public static String requestWSAndProcess(Properties ctx, int AD_Org_ID, String lastNSU,
			String NSU, String NFeID, String trxName) throws Exception {
		String result = MLBRNFeXML.requestWS(ctx, AD_Org_ID, lastNSU, NSU, NFeID, trxName);
		
		// Parse XML
		DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
		Document doc = builder.parse(new InputSource(new StringReader(result)));

		String cStat = null;
        if (doc.getElementsByTagName("cStat") != null)
        	cStat = NFeUtil.getValue(doc, "cStat");
        
        String xMotivo = null;
        if (doc.getElementsByTagName("xMotivo") != null)
        	xMotivo = NFeUtil.getValue(doc, "xMotivo");
        
        String ultNSU = null;
        if (doc.getElementsByTagName("ultNSU") != null)
        	ultNSU = NFeUtil.getValue(doc, "ultNSU");
        
        String maxNSU = null;
        if (doc.getElementsByTagName("maxNSU") != null)
        	maxNSU = NFeUtil.getValue(doc, "maxNSU");
        
        NodeList docZipList = doc.getElementsByTagName("docZip");
        
        for (int i=0; i< docZipList.getLength(); i++) {
        	Node node = docZipList.item(i);
        	processDocZip(ctx, AD_Org_ID, node, trxName);
        }
		
		return cStat + " - " + xMotivo;
	}
	
	public static void processDocZip(Properties ctx, int AD_Org_ID, Node node, String trxName) throws Exception {
		if (node.getNodeType() == Node.ELEMENT_NODE) {
			String NSU = node.getAttributes().item(0).getTextContent();
			String schemaName = node.getAttributes().item(1).getTextContent();
			
			// decompress
			byte[] decoded = Base64.getDecoder().decode(node.getTextContent());
			ByteArrayInputStream is = new ByteArrayInputStream(decoded);
			GZIPInputStream gzis = new GZIPInputStream(is);
			String xml = new String(gzis.readAllBytes(), "UTF-8");
			
			// Parse XML
			DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
			Document doc = builder.parse(new InputSource(new StringReader(xml)));
			
			String chNFe = null;
	        if (doc.getElementsByTagName("chNFe") != null)
	        	chNFe = NFeUtil.getValue(doc, "chNFe");
	        
	        int LBR_NFeXML_ID = DB.getSQLValue(trxName,
	        	"SELECT LBR_NFeXML_ID FROM LBR_NFeXML WHERE AD_Client_ID=? AND AD_Org_ID=? AND LBR_NSU=? AND IsActive=?", 
	        	Env.getAD_Client_ID(ctx), AD_Org_ID, NSU, "Y");
	        
	        MLBRNFeXML nfeXml;
	        
	        if (LBR_NFeXML_ID > 0) {
	        	nfeXml = new MLBRNFeXML(ctx, LBR_NFeXML_ID, trxName);
	        	nfeXml.deleteAttachments();
	        } else {
	        	nfeXml = new MLBRNFeXML(ctx, 0, trxName);
	        	nfeXml.setAD_Org_ID(AD_Org_ID);
	        }

	        nfeXml.saveEx();
        	nfeXml.setLBR_NSU(NSU);
        	nfeXml.setLBR_NFeID(chNFe);
        	nfeXml.setLBR_SchemaName(schemaName);
	        nfeXml.attachXML(chNFe + ".xml", xml);
	        nfeXml.saveEx();
		}
	}
}
