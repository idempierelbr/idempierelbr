package org.idempierelbr.nfe.model;

import java.io.File;
import java.io.StringReader;
import java.sql.ResultSet;
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
import org.compiere.util.Trx;
import org.idempierelbr.core.util.BPartnerUtil;
import org.idempierelbr.core.util.TextUtil;
import org.idempierelbr.nfe.beans.InutilizacaoNFEBean;
import org.idempierelbr.nfe.stub.StubConnector;
import org.idempierelbr.nfe.util.AssinaturaDigital;
import org.idempierelbr.nfe.util.NFeUtil;
import org.w3c.dom.Document;
import org.xml.sax.InputSource;

import com.thoughtworks.xstream.XStream;

public class MLBRNotaFiscalInut extends X_LBR_NotaFiscalInut {

	private static final long serialVersionUID = -5437720661465297525L;

	public MLBRNotaFiscalInut(Properties ctx, int LBR_NotaFiscalInut_ID,
			String trxName) {
		super(ctx, LBR_NotaFiscalInut_ID, trxName);
	}

	public MLBRNotaFiscalInut(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}

	/**
	 * 	Send NF-e Inut to Sefaz
	 */
	public String send() {
		Properties ctx = getCtx();
		log.fine("Sending NF-e Inut: " + getDocumentNo());

		// Dados da Org.
		MOrg org = new MOrg(ctx, getAD_Org_ID(), get_TrxName());
		MOrgInfo orgInfo = MOrgInfo.get(ctx, org.get_ID(), get_TrxName());
		MLocation orgLoc = new MLocation(ctx, orgInfo.getC_Location_ID(), get_TrxName());
		MRegion orgRegion = new MRegion(ctx, orgLoc.getC_Region_ID(), get_TrxName());
		
		//INICIALIZA CERTIFICADO
		try {
			MLBRDigitalCertificate.setCertificate(ctx, getAD_Org_ID());
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
				false, getLBR_NFeEnv().equals("2") ? true : false);
		
		String result = connector.sendMessage(xml);
		
		if (result == null || result.trim().equals(""))
			throw new AdempiereException("Could not connect to webservice. Please try again later");
		
		// Commit trx so we can save attachment properly
		Trx.get(get_TrxName(), false).commit();
		
		MAttachment attachLotNFe = createAttachment();
		File attachFile = new File(TextUtil.generateTmpFile(result, xmlFile.getName().replace("-ped-inu.xml", "-inu.xml")));
		attachLotNFe.addEntry(attachFile);
		attachLotNFe.saveEx(get_TrxName());
		
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
        setLBR_LotSendingStatus(cStat);
        
        String xMotivo = NFeUtil.getValue(doc, "xMotivo");
        
        if (!cStat.equals("102"))
        	setDescription(xMotivo);

        if (doc.getElementsByTagName("dhRecbto") != null) {
        	String dhRecbto = NFeUtil.getValue(doc, "dhRecbto");
        	setLBR_LotSentOn(NFeUtil.stringToTime(dhRecbto));
        }
        
        if (doc.getElementsByTagName("nProt") != null) {
        	String nProt = NFeUtil.getValue(doc, "nProt");
        	setLBR_LotSendingProt(nProt);
        }
        
        saveEx();
        
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
		log.fine("Generating NF-e Inut XML: " + getDocumentNo());
		
		InutilizacaoNFEBean iNF = new InutilizacaoNFEBean();
		iNF.setMod(getLBR_NFBModel());
		iNF.setSerie(getLBR_NFeSerie());
		iNF.setnNFIni(getLBR_Number_Start());
		iNF.setnNFFin(getLBR_Number_End());
		iNF.setxJust(getLBR_Justification());
		iNF.setAno(TextUtil.timeToString(getDateDoc(), "yy"));
		iNF.setTpAmb(getLBR_NFeEnv());
		
		// CNPJ
		MOrg org = new MOrg(getCtx(), getAD_Org_ID(), get_TrxName());
		MOrgInfo orgInfo = MOrgInfo.get(getCtx(), org.get_ID(), get_TrxName());
		int linked2OrgC_BPartner_ID = org.getLinkedC_BPartner_ID(get_TrxName());
		
		if (linked2OrgC_BPartner_ID < 1)
			throw new AdempiereException("Nenhum Parceiro vinculado à Organização");
		
		MBPartner bpLinked2Org = new MBPartner(getCtx(), linked2OrgC_BPartner_ID, get_TrxName());
		iNF.setCNPJ(TextUtil.toNumeric(bpLinked2Org.get_ValueAsString("LBR_CNPJ")));
		
		// UF
		String regionCode = BPartnerUtil.getRegionCode(new MLocation(getCtx(), orgInfo.getC_Location_ID(), get_TrxName()));
		
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
		inut.append("<inutNFe xmlns=\"http://www.portalfiscal.inf.br/nfe\" versao=\"3.10\">");
		inut.append(xml.toXML(iNF));
		inut.append("</inutNFe>");
		
		String inutMsg = NFeUtil.removeIndent(inut.toString());
		
		String xmlFile = TextUtil.generateTmpFile(inutMsg, iNF.getID() + "-ped-inu.xml");
		log.fine("Signing NF-e XML");
		AssinaturaDigital.Assinar(xmlFile, orgInfo, AssinaturaDigital.INUTILIZACAO_NFE);
		
		return new File(xmlFile);
	}	

}
