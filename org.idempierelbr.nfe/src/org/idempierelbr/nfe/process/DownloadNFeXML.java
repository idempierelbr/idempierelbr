package org.idempierelbr.nfe.process;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.StringReader;
import java.util.Base64;
import java.util.logging.Level;
import java.util.zip.GZIPInputStream;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.compiere.model.MBPartner;
import org.compiere.model.MLocation;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MRegion;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.idempierelbr.core.util.TextUtil;
import org.idempierelbr.nfe.model.MLBRDigitalCertificate;
import org.idempierelbr.nfe.model.MLBRNFeWebService;
import org.idempierelbr.nfe.model.MLBRNFeXML;
import org.idempierelbr.nfe.model.MLBRNotaFiscal;
import org.idempierelbr.nfe.stub.StubConnector;
import org.idempierelbr.nfe.util.NFeUtil;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

public class DownloadNFeXML extends SvrProcess
{
	private int p_AD_Org_ID = 0;
	private String p_LBR_LastNSU = null;
	private String p_LBR_NSU = null;
	private String p_LBR_NFeID = null;
	
	@Override
	protected void prepare() 
	{
		ProcessInfoParameter[] para = getParameter();
		
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			
			if (para[i].getParameter() == null)
				;
			else if (name.equals("AD_Org_ID"))
				p_AD_Org_ID = para[i].getParameterAsInt();
			else if (name.equals("LBR_LastNSU"))
				p_LBR_LastNSU = para[i].getParameterAsString();
			else if (name.equals("LBR_NSU"))
				p_LBR_NSU = para[i].getParameterAsString();
			else if (name.equals("LBR_NFeID"))
				p_LBR_NFeID = para[i].getParameterAsString();
			else {
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
			}
		}
	}
	
	@Override
	protected String doIt() throws Exception {
		if (p_AD_Org_ID == 0)
			throw new Exception("No Organization defined");
		
		if ((p_LBR_LastNSU != null && (p_LBR_NSU != null || p_LBR_NFeID != null)) ||
				(p_LBR_NSU != null && (p_LBR_LastNSU != null || p_LBR_NFeID != null)) ||
				(p_LBR_NFeID != null && (p_LBR_LastNSU != null || p_LBR_NSU != null)))
			throw new Exception("Please enter only one of the optional fields!");			
		
		if (p_LBR_LastNSU == null && p_LBR_NSU == null && p_LBR_NFeID == null)
			p_LBR_LastNSU = "000000000000000";
		
		String result = request(p_AD_Org_ID, p_LBR_LastNSU, p_LBR_NSU, p_LBR_NFeID);

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
        	processDocZip(node);
        }
		
		return cStat + " - " + xMotivo;
	}

	private String request(int AD_Org_ID, String lastNSU, String NSU, String NFeID) throws Exception {
		MOrg org = new MOrg(getCtx(), AD_Org_ID, get_TrxName());
		MOrgInfo orgInfo = MOrgInfo.get(getCtx(), org.get_ID(), get_TrxName());
		MLocation orgLoc = new MLocation(getCtx(), orgInfo.getC_Location_ID(), get_TrxName());
		MRegion orgRegion = new MRegion(getCtx(), orgLoc.getC_Region_ID(), get_TrxName());
		
		String LBR_RegionCode = orgRegion.get_ValueAsString("LBR_RegionCode");
		
		int linked2OrgC_BPartner_ID = org.getLinkedC_BPartner_ID(get_TrxName());
		MBPartner bpLinked2Org = new MBPartner(getCtx(), linked2OrgC_BPartner_ID, get_TrxName());
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
			MLBRDigitalCertificate.setCertificate(getCtx(), AD_Org_ID);
		} catch (Exception e) {
			e.printStackTrace();
			return "Could not set digital certificate";
		}
		
		StubConnector connector = new StubConnector(NFeUtil.VERSAO_DISTRIBUICAO,
				orgRegion.get_ID(), MLBRNFeWebService.SERVICE_NFE_DISTRIBUICAO_DFE,
				false, false, MLBRNotaFiscal.LBR_NFEMODEL_55_NF_E);
		String result = connector.sendMessage(xml.toString());
		
		return result;
	}
	
	private void processDocZip(Node node) throws Exception {
		if (node.getNodeType() == Node.ELEMENT_NODE) {
			String NSU = node.getAttributes().item(0).getTextContent();
			String schemaName = node.getAttributes().item(1).getTextContent();
			String xml = decompress(node.getTextContent());
			
			// Parse XML
			DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
			Document doc = builder.parse(new InputSource(new StringReader(xml)));
			
			String chNFe = null;
	        if (doc.getElementsByTagName("chNFe") != null)
	        	chNFe = NFeUtil.getValue(doc, "chNFe");
	        
	        int LBR_NFeXML_ID = DB.getSQLValue(get_TrxName(),
	        	"SELECT LBR_NFeXML_ID FROM LBR_NFeXML WHERE AD_Client_ID=? AND AD_Org_ID=? AND LBR_NSU=? AND IsActive=?", 
	        	Env.getAD_Client_ID(getCtx()), p_AD_Org_ID, NSU, "Y");
	        
	        MLBRNFeXML nfeXml;
	        
	        if (LBR_NFeXML_ID > 0) {
	        	nfeXml = new MLBRNFeXML(getCtx(), LBR_NFeXML_ID, get_TrxName());
	        	nfeXml.deleteAttachments();
	        } else {
	        	nfeXml = new MLBRNFeXML(getCtx(), 0, get_TrxName());
	        	nfeXml.setAD_Org_ID(p_AD_Org_ID);
	        	nfeXml.setLBR_NSU(NSU);
	        	nfeXml.setLBR_NFeID(chNFe);
	        	nfeXml.setLBR_SchemaName(schemaName);
	        	nfeXml.saveEx();
	        }

	        nfeXml.attachXML(chNFe, xml);
	        nfeXml.saveEx();
		}
	}
	
	private String decompress(String gZip) throws IOException {
		byte[] decoded = Base64.getDecoder().decode(gZip);
		ByteArrayInputStream is = new ByteArrayInputStream(decoded);
		GZIPInputStream gzis = new GZIPInputStream(is);
		return new String(gzis.readAllBytes(), "UTF-8");
	}
}
