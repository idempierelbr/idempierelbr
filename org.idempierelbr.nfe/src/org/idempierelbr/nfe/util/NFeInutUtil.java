package org.idempierelbr.nfe.util;

import java.io.File;
import java.io.StringReader;
import java.util.Properties;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MAttachment;
import org.compiere.model.MBPartner;
import org.compiere.model.MLocation;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MRegion;
import org.compiere.util.CLogger;
import org.compiere.util.Trx;
import org.idempierelbr.base.model.MLBRNFeWebService;
import org.idempierelbr.base.model.MLBRNotaFiscalInut;
import org.idempierelbr.base.util.BPartnerUtil;
import org.idempierelbr.base.util.TextUtil;
import org.idempierelbr.nfe.beans.InutilizacaoNFEBean;
import org.idempierelbr.nfe.stub.StubConnector;
import org.w3c.dom.Document;
import org.xml.sax.InputSource;

import com.thoughtworks.xstream.XStream;

public class NFeInutUtil {
	protected transient CLogger	log = CLogger.getCLogger (getClass());
	private MLBRNotaFiscalInut inut;
	
	public NFeInutUtil(MLBRNotaFiscalInut inut) {
		if (inut == null)
			throw new AdempiereException("MLBRNotaFiscalInut não pode ser null");
		
		this.inut = inut;
	}
	
	/**
	 * 	Send NF-e Inut to Sefaz
	 */
	public String send() throws Exception{
		Properties ctx = inut.getCtx();
		log.fine("Sending NF-e Inut: " + inut.getDocumentNo());

		// Dados da Org.
		MOrg org = new MOrg(ctx, inut.getAD_Org_ID(), inut.get_TrxName());
		MOrgInfo orgInfo = MOrgInfo.get(ctx, org.get_ID(), inut.get_TrxName());
		MLocation orgLoc = new MLocation(ctx, orgInfo.getC_Location_ID(), inut.get_TrxName());
		MRegion orgRegion = new MRegion(ctx, orgLoc.getC_Region_ID(), inut.get_TrxName());
		
		//INICIALIZA CERTIFICADO
		try {
			DigitalCertificateUtil.setCertificate(ctx, inut.getAD_Org_ID());
		} catch (Exception e) {
			e.printStackTrace();
			throw new AdempiereException("Could not set digital certificate");
		}

		File xmlFile;
		String xml;
		
		try {
			xmlFile = generateXML();
			xml = NFeUtil.XMLtoString(xmlFile).replaceAll("[\r\n]+", "");
		} catch (Exception e) {
			e.printStackTrace();
			throw new AdempiereException("Could not generate XML");
		}

		xml = "<nfeDadosMsg>" + xml + "</nfeDadosMsg>";
		
		StubConnector connector = new StubConnector(NFeUtil.VERSAO_APP,
				orgRegion.get_ID(), MLBRNFeWebService.SERVICE_NFE_INUTILIZACAO,
				false, inut.getLBR_NFeEnv().equals("2") ? true : false, inut.getLBR_NFBModel());
		
		String result = connector.sendMessage(xml);
		
		if (result == null || result.trim().equals(""))
			throw new AdempiereException("Could not connect to webservice. Please try again later");
		
		// Commit trx so we can save attachment properly
		Trx.get(inut.get_TrxName(), false).commit();
		
		MAttachment attachLotNFe = inut.createAttachment();
		File attachFile = new File(TextUtil.generateTmpFile(result, xmlFile.getName().replace(MLBRNotaFiscalInut.PEDIDO_FILE_EXT, MLBRNotaFiscalInut.DISTRIBUICAO_FILE_EXT)));
		attachLotNFe.addEntry(attachFile);
		attachLotNFe.saveEx(inut.get_TrxName());
		
		DocumentBuilder builder;
		Document doc;

		try {
			builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
        	doc = builder.parse(new InputSource(new StringReader(result)));
		} catch (Exception e) {
        	e.printStackTrace();
        	throw new AdempiereException("Could not parse xml");
		}

        String cStat = doc.getElementsByTagName("cStat").item(0).getTextContent();
        inut.setLBR_LotSendingStatus(cStat);
        
        String xMotivo = NFeUtil.getValue(doc, "xMotivo");
        
        if (!cStat.equals("102"))
        	inut.setDescription(xMotivo);

        if (doc.getElementsByTagName("dhRecbto") != null) {
        	String dhRecbto = NFeUtil.getValue(doc, "dhRecbto");
        	inut.setLBR_LotSentOn(NFeUtil.stringToTime(dhRecbto));
        }
        
        if (doc.getElementsByTagName("nProt") != null) {
        	String nProt = NFeUtil.getValue(doc, "nProt");
        	inut.setLBR_LotSendingProt(nProt);
        }
        
        inut.saveEx();
        
        return xMotivo;
	}
	
	/**
	 * 	Generate xml for NF-e Inut (before sending to Sefaz)
	 *
	 * @return File inut xml
	 * @throws Exception
	 */
	private File generateXML() throws Exception
	{
		log.fine("Generating NF-e Inut XML: " + inut.getDocumentNo());
		
		InutilizacaoNFEBean iNF = new InutilizacaoNFEBean();
		iNF.setMod(inut.getLBR_NFBModel());
		iNF.setSerie(inut.getLBR_NFeSerie());
		iNF.setnNFIni(inut.getLBR_Number_Start());
		iNF.setnNFFin(inut.getLBR_Number_End());
		iNF.setxJust(inut.getLBR_Justification());
		iNF.setAno(TextUtil.timeToString(inut.getDateDoc(), "yy"));
		iNF.setTpAmb(inut.getLBR_NFeEnv());
		
		// CNPJ
		MOrg org = new MOrg(inut.getCtx(), inut.getAD_Org_ID(), inut.get_TrxName());
		MOrgInfo orgInfo = MOrgInfo.get(inut.getCtx(), org.get_ID(), inut.get_TrxName());
		int linked2OrgC_BPartner_ID = org.getLinkedC_BPartner_ID(inut.get_TrxName());
		
		if (linked2OrgC_BPartner_ID < 1)
			throw new AdempiereException("Nenhum Parceiro vinculado à Organização");
		
		MBPartner bpLinked2Org = new MBPartner(inut.getCtx(), linked2OrgC_BPartner_ID, inut.get_TrxName());
		iNF.setCNPJ(TextUtil.toNumeric(bpLinked2Org.get_ValueAsString("LBR_CNPJ")));
		
		// UF
		String regionCode = BPartnerUtil.getRegionCode(new MLocation(inut.getCtx(), orgInfo.getC_Location_ID(), inut.get_TrxName()));
		
		if (regionCode.isEmpty())
			throw new AdempiereException("UF Inválida");
		
		iNF.setcUF(regionCode);
		
		// ID
		StringBuilder id = new StringBuilder("ID")
			.append(iNF.getcUF())
			.append(iNF.getAno())
			.append(iNF.getCNPJ())
			.append(iNF.getMod())
			.append(TextUtil.lPad(iNF.getSerie(), 3))
			.append(TextUtil.lPad(iNF.getnNFIni(), 9))
			.append(TextUtil.lPad(iNF.getnNFFin(), 9));
		
		iNF.setID(id.toString());
		
		// Generate XML
		XStream xml = new XStream();

		xml.alias("infInut", InutilizacaoNFEBean.class);
		xml.useAttributeFor(InutilizacaoNFEBean.class, "Id");
		StringBuffer inut = new StringBuffer("");
		inut.append("<inutNFe xmlns=\"http://www.portalfiscal.inf.br/nfe\" versao=\"4.00\">");
		inut.append(xml.toXML(iNF));
		inut.append("</inutNFe>");
		
		String inutMsg = NFeUtil.removeIndent(inut.toString());
		
		String xmlFile = TextUtil.generateTmpFile(inutMsg, iNF.getID() + MLBRNotaFiscalInut.PEDIDO_FILE_EXT);
		log.fine("Signing NF-e XML");
		AssinaturaDigital.Assinar(xmlFile, orgInfo, AssinaturaDigital.INUTILIZACAO_NFE);
		
		return new File(xmlFile);
	}	

}
