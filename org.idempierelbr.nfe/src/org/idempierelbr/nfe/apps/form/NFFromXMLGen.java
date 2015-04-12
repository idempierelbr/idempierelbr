package org.idempierelbr.nfe.apps.form;

import java.io.File;
import java.io.InputStream;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.TreeMap;
import java.util.logging.Level;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.adempiere.model.POWrapper;
import org.adempiere.webui.util.ReaderInputStream;
import org.compiere.model.MAttachment;
import org.compiere.model.MBPartner;
import org.compiere.model.MCity;
import org.compiere.model.MCurrency;
import org.compiere.model.MOrg;
import org.compiere.model.MProductPO;
import org.compiere.model.MSysConfig;
import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.compiere.model.Tax;
import org.compiere.process.DocAction;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.compiere.util.Trx;
import org.idempierelbr.core.util.AdempiereLBR;
import org.idempierelbr.core.util.TextUtil;
import org.idempierelbr.core.wrapper.I_W_C_BPartner;
import org.idempierelbr.nfe.model.MLBRDocLineDetailsNfe;
import org.idempierelbr.nfe.model.MLBRNotaFiscal;
import org.idempierelbr.nfe.model.MLBRNotaFiscalLine;
import org.idempierelbr.nfe.model.MLBRNotaFiscalLineComb;
import org.idempierelbr.tax.model.MLBRCFOP;
import org.idempierelbr.tax.model.MLBRDocLineCOFINS;
import org.idempierelbr.tax.model.MLBRDocLineICMS;
import org.idempierelbr.tax.model.MLBRDocLineIPI;
import org.idempierelbr.tax.model.MLBRDocLineISSQN;
import org.idempierelbr.tax.model.MLBRDocLineImportTax;
import org.idempierelbr.tax.model.MLBRDocLinePIS;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.zkoss.io.Files;
import org.zkoss.util.media.Media;

public class NFFromXMLGen
{
	/**	Logger			*/
	public static CLogger log = CLogger.getCLogger(NFFromXMLGen.class);
	
	// XML File
	File xmlFile;
	
	// DOM Document
	Document doc;
	
	// Document Fields
	Integer C_DocType_ID;
	String LBR_TransactionType;
	String description;
	String docAction;
	
	// XML Fields
	String xmlDocumentNo;
	String xmlIssueDate;
	String xmlTotalLinesAmt;
	String xmlGrandTotal;
	String xmlInfo;
	String xmlStatus;
	String xmlStatusCode;
	String xmlNFeID;
	
	String xmlOrgName;
	String xmlOrgCPF;
	String xmlOrgCNPJ;
	String xmlOrgLocation;
	
	String xmlBPartnerName;
	String xmlBPartnerCPF;
	String xmlBPartnerCNPJ;
	String xmlBPartnerLocation;
	
	// Internal Fields
	Integer C_BPartner_ID;
	Integer C_BPartner_Location_ID;
	Integer AD_Org_ID;
	
	Map<String, XMLProductInfo> xmlProductMap = new TreeMap<String, XMLProductInfo>();

	public String cmd_save() {
		String errorMsg = validateMandatoryFields();
		if (errorMsg != null && errorMsg.length() > 0)
			return errorMsg;
		
		errorMsg = createNotaFiscal();
		if (errorMsg != null && errorMsg.length() > 0)
			return errorMsg;
		
		doc = null;
		return null;
	}

	protected void processUploadMedia(Media media) throws Exception {
		if (media == null)
			return;

		xmlFile = File.createTempFile("GenNFFromXML_", ".xml");
		Files.copy(xmlFile, media.getStreamData());

		InputStream istream;
		if (media.isBinary()) {
			istream = media.getStreamData();
		} else {
			istream = new ReaderInputStream(media.getReaderData());
		}
		
		DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
	    DocumentBuilder dBuilder;
		dBuilder = dbFactory.newDocumentBuilder();
		doc = dBuilder.parse(istream);	

		if (log.isLoggable(Level.CONFIG)) log.config(media.getName());

		refreshXMLInfo();
	}
	
	protected String refreshXMLInfo() {
		xmlDocumentNo = null;
		xmlIssueDate = null;
		xmlTotalLinesAmt = null;
		xmlGrandTotal = null;
		xmlInfo = null;
		xmlStatus = null;
		xmlStatusCode = null;
		xmlNFeID = null;
		
		xmlOrgName = null;
		xmlOrgCPF = null;
		xmlOrgCNPJ = null;
		xmlOrgLocation = null;
		
		xmlBPartnerName = null;
		xmlBPartnerCPF = null;
		xmlBPartnerCNPJ = null;
		xmlBPartnerLocation = null;
		
		C_BPartner_ID = null;
		C_BPartner_Location_ID = null;
		AD_Org_ID = null;
		
		xmlProductMap = new HashMap<String, XMLProductInfo>();
		
		if (doc == null)
			return null;
		
		// NF-e General Info
		NodeList nList = doc.getElementsByTagName("ide");
		for (int temp = 0; temp < nList.getLength(); temp++) {
			Node nNode = nList.item(temp);

			if (nNode.getNodeType() == Node.ELEMENT_NODE) {
				Element eElement = (Element) nNode;
				
				// Document No.
				xmlDocumentNo = eElement.getElementsByTagName("nNF").item(0).getTextContent();
				
				// Issue Date
				if (eElement.getElementsByTagName("dhEmi").item(0) != null)
					xmlIssueDate = eElement.getElementsByTagName("dhEmi").item(0).getTextContent();
				else // XML 2.0
					xmlIssueDate = eElement.getElementsByTagName("dEmi").item(0).getTextContent();
			}
		}
		
		nList = doc.getElementsByTagName("ICMSTot");
		for (int temp = 0; temp < nList.getLength(); temp++) {
			Node nNode = nList.item(temp);

			if (nNode.getNodeType() == Node.ELEMENT_NODE) {
				Element eElement = (Element) nNode;
				
				// Total Lines Amount
				xmlTotalLinesAmt = eElement.getElementsByTagName("vProd").item(0).getTextContent();
				
				// Grand Total
				xmlGrandTotal = eElement.getElementsByTagName("vNF").item(0).getTextContent();
			}
		}
		
		nList = doc.getElementsByTagName("infAdic");
		for (int temp = 0; temp < nList.getLength(); temp++) {
			Node nNode = nList.item(temp);

			if (nNode.getNodeType() == Node.ELEMENT_NODE) {
				Element eElement = (Element) nNode;
				
				StringBuilder info = new StringBuilder();
				
				// Tax Payer Info
				if (eElement.getElementsByTagName("infCpl").item(0) != null)
					info.append(eElement.getElementsByTagName("infCpl").item(0).getTextContent());
				
				// Fiscal Info
				if (eElement.getElementsByTagName("infAdFisco").item(0) != null) {
					info.append(" | ");
					info.append(eElement.getElementsByTagName("infAdFisco").item(0).getTextContent());
				}
				
				xmlInfo = info.toString();
			}
		}
		
		nList = doc.getElementsByTagName("infProt");
		for (int temp = 0; temp < nList.getLength(); temp++) {
			Node nNode = nList.item(temp);

			if (nNode.getNodeType() == Node.ELEMENT_NODE) {
				Element eElement = (Element) nNode;
				
				// Status
				if (eElement.getElementsByTagName("xMotivo").item(0) != null)
					xmlStatus = eElement.getElementsByTagName("xMotivo").item(0).getTextContent();
				
				if (eElement.getElementsByTagName("cStat").item(0) != null)
					xmlStatusCode = eElement.getElementsByTagName("cStat").item(0).getTextContent();
				
				// ID
				if (eElement.getElementsByTagName("chNFe").item(0) != null)
					xmlNFeID = eElement.getElementsByTagName("chNFe").item(0).getTextContent();
			}
		}
		
		// Org
		nList = doc.getElementsByTagName("dest");
		for (int temp = 0; temp < nList.getLength(); temp++) {
			Node nNode = nList.item(temp);

			if (nNode.getNodeType() == Node.ELEMENT_NODE) {
				Element eElement = (Element) nNode;
				
				// Name
				xmlOrgName = eElement.getElementsByTagName("xNome").item(0).getTextContent();
				
				// CPF
				NodeList cpf = eElement.getElementsByTagName("CPF");
				
				if (cpf != null && cpf.getLength() > 0)
					xmlOrgCPF = cpf.item(0).getTextContent();
				
				// CNPJ
				NodeList cnpj = eElement.getElementsByTagName("CNPJ");
				
				if (cnpj != null && cnpj.getLength() > 0)
					xmlOrgCNPJ = cnpj.item(0).getTextContent();
				
				// Check any Org with CPF/CNPJ (in a linked BP)
				MOrg org = getPresumedOrg(xmlOrgCPF != null ? xmlOrgCPF : xmlOrgCNPJ);
				
				if (org != null)
					AD_Org_ID = org.get_ID();
				
				// Location
				StringBuilder location = new StringBuilder();
				NodeList xLgr = eElement.getElementsByTagName("xLgr");
				
				if (xLgr != null && xLgr.getLength() > 0)
					location.append(xLgr.item(0).getTextContent());
				
				NodeList nro = eElement.getElementsByTagName("nro");
				
				if (nro != null && nro.getLength() > 0)
					location.append(", ").append(nro.item(0).getTextContent());
				
				NodeList xMun = eElement.getElementsByTagName("xMun");
				
				if (xMun != null && xMun.getLength() > 0)
					location.append(", ").append(xMun.item(0).getTextContent());
				
				NodeList UF = eElement.getElementsByTagName("UF");
				
				if (UF != null && UF.getLength() > 0)
					location.append("-").append(UF.item(0).getTextContent());
				
				NodeList CEP = eElement.getElementsByTagName("CEP");
				
				if (CEP != null && CEP.getLength() > 0)
					location.append(", CEP ").append(CEP.item(0).getTextContent());

				xmlOrgLocation = location.toString();
		    }
		}
		
		// Business Partner
		nList = doc.getElementsByTagName("emit");
		for (int temp = 0; temp < nList.getLength(); temp++) {
			Node nNode = nList.item(temp);

			if (nNode.getNodeType() == Node.ELEMENT_NODE) {
				Element eElement = (Element) nNode;
				
				// Name
				xmlBPartnerName = eElement.getElementsByTagName("xNome").item(0).getTextContent();
				
				// CPF
				NodeList cpf = eElement.getElementsByTagName("CPF");
				
				if (cpf != null && cpf.getLength() > 0)
					xmlBPartnerCPF = cpf.item(0).getTextContent();
				
				// CNPJ
				NodeList cnpj = eElement.getElementsByTagName("CNPJ");
				
				if (cnpj != null && cnpj.getLength() > 0)
					xmlBPartnerCNPJ = cnpj.item(0).getTextContent();
				
				// Check any BP with CPF/CNPJ
				MBPartner bp = getPresumedBPartner(xmlBPartnerCPF != null ? xmlBPartnerCPF : xmlBPartnerCNPJ);
				
				if (bp != null)
					C_BPartner_ID = bp.get_ID();
				
				// Location
				StringBuilder location = new StringBuilder(eElement.getElementsByTagName("xLgr").item(0).getTextContent())
					.append(", ")
					.append(eElement.getElementsByTagName("nro").item(0).getTextContent())
					.append(", ")
					.append(eElement.getElementsByTagName("xMun").item(0).getTextContent())
					.append("-")
					.append(eElement.getElementsByTagName("UF").item(0).getTextContent())
					.append(", CEP ")
					.append(eElement.getElementsByTagName("CEP").item(0).getTextContent());
				xmlBPartnerLocation = location.toString();
		    }
		}
		
		// Products / Charges
		nList = doc.getElementsByTagName("det");

		for (int temp = 0; temp < nList.getLength(); temp++) {
			Node nNode = nList.item(temp);

			if (nNode.getNodeType() == Node.ELEMENT_NODE) {
				Element eElement = (Element) nNode;
				
				XMLProductInfo infoGroup = new XMLProductInfo();

				// Store Element
				infoGroup.eElement = eElement;
				
				// Line No.
				infoGroup.xmlLineNo = String.valueOf(temp + 1);
				
				// Name
				infoGroup.xmlName = eElement.getElementsByTagName("xProd").item(0).getTextContent();
				
				// Value
				infoGroup.xmlValue = eElement.getElementsByTagName("cProd").item(0).getTextContent();
				
				// Qty
				infoGroup.xmlQty = eElement.getElementsByTagName("qCom").item(0).getTextContent();
				infoGroup.qty = toBigDecimal(infoGroup.xmlQty);
				
				// UOM
				infoGroup.xmlUOM = eElement.getElementsByTagName("uCom").item(0).getTextContent();
				
				// Unit Price
				infoGroup.xmlUnitPrice = eElement.getElementsByTagName("vUnCom").item(0).getTextContent();
				infoGroup.unitPrice = toBigDecimal(infoGroup.xmlUnitPrice);
				
				// Line Amount
				infoGroup.xmlLineAmt = eElement.getElementsByTagName("vProd").item(0).getTextContent();
				
				// Freight Amt
				if (eElement.getElementsByTagName("vFrete").item(0) != null) {
					infoGroup.xmlFreightAmt = eElement.getElementsByTagName("vFrete").item(0).getTextContent();
					infoGroup.freightAmt = toBigDecimal(infoGroup.xmlFreightAmt);
				}

				// Other Charges
				if (eElement.getElementsByTagName("vOutro").item(0) != null) {
					infoGroup.xmlSurCharges = eElement.getElementsByTagName("vOutro").item(0).getTextContent();
					infoGroup.surCharges = toBigDecimal(infoGroup.xmlSurCharges);
				}
				
				// Insurance Amt
				if (eElement.getElementsByTagName("vSeg").item(0) != null) {
					infoGroup.xmlInsuredAmount = eElement.getElementsByTagName("vSeg").item(0).getTextContent();
					infoGroup.InsuredAmount = toBigDecimal(infoGroup.xmlInsuredAmount);
				}
				
				// Discount Amt
				if (eElement.getElementsByTagName("vDesc").item(0) != null) {
					infoGroup.xmlDiscountAmt = eElement.getElementsByTagName("vDesc").item(0).getTextContent();
					infoGroup.DiscountAmt = toBigDecimal(infoGroup.xmlDiscountAmt);
				}
				
				infoGroup.xmlCFOP = eElement.getElementsByTagName("CFOP").item(0).getTextContent();
				
				// Fuels and Lubricants
				if (eElement.getElementsByTagName("comb").item(0) != null) {
					Element comb = (Element) eElement.getElementsByTagName("comb").item(0);
					
					// cProdANP
					infoGroup.xmlcProdANP = comb.getElementsByTagName("cProdANP").item(0).getTextContent();
					
					// pMixGN
					if (eElement.getElementsByTagName("pMixGN").item(0) != null) {
						infoGroup.xmlpMixGN = eElement.getElementsByTagName("pMixGN").item(0).getTextContent();
						infoGroup.pMixGN = toBigDecimal(infoGroup.xmlpMixGN);
					}
					
					// CODIF
					
					if (eElement.getElementsByTagName("CODIF").item(0) != null) {
						infoGroup.xmlCODIF = eElement.getElementsByTagName("CODIF").item(0).getTextContent();
					}
					
					// qTemp
					
					if (eElement.getElementsByTagName("qTemp").item(0) != null) {
						infoGroup.xmlqTemp = eElement.getElementsByTagName("qTemp").item(0).getTextContent();
						infoGroup.qTemp = toBigDecimal(infoGroup.xmlqTemp);
					}
					
					// UFCons
					
					infoGroup.xmlUFCons = comb.getElementsByTagName("UFCons").item(0).getTextContent();
				}
				
				xmlProductMap.put(String.valueOf(temp + 1), infoGroup);
		    }
		}
		
		getPresumedProducts();
		return null;
	}
	
	private BigDecimal toBigDecimal(String amt) {
		if (amt == null)
			return null;
		
		BigDecimal convertedAmt = null;
		
		try {
			convertedAmt = new BigDecimal(amt);
		} catch (Exception e) {
			return null;
		}
		
		return convertedAmt;
	}
	
	private MBPartner getPresumedBPartner(String documentNo) {
		if (documentNo == null)
			return null;
		
		MTable table = MTable.get (Env.getCtx(), MBPartner.Table_Name);
		
		String where;
		
		if (documentNo.length() == 11)
			where = "LBR_CPF=?";
		else
			where = "LBR_CNPJ=?";
			
		Query query =  new Query(Env.getCtx(), table, where, null);
		query.setParameters(new Object[]{documentNo});

		return query.first();
	}
	
	private MOrg getPresumedOrg(String documentNo) {
		MBPartner bp = getPresumedBPartner(documentNo);
		
		if (bp == null)
			return null;
		
		int AD_Org_ID = bp.getAD_OrgBP_ID_Int();
		
		if (AD_Org_ID <= 0)
			return null;
		
		return new MOrg(Env.getCtx(), AD_Org_ID, null);
	}
	
	private MProductPO getMProductPO(String vendorProductNo, String trxName) {
		if (vendorProductNo == null)
			return null;
		
		MTable table = MTable.get (Env.getCtx(), MProductPO.Table_Name);
		Query query =  new Query(Env.getCtx(), table, "C_BPartner_ID=? AND VendorProductNo=?", trxName);
		query.setParameters(new Object[]{C_BPartner_ID, vendorProductNo});
		return query.first();
	}
	
	private MProductPO getMProductPO(Integer M_Product_ID, String trxName) {
		if (M_Product_ID == null)
			return null;
		
		MTable table = MTable.get (Env.getCtx(), MProductPO.Table_Name);
		Query query =  new Query(Env.getCtx(), table, "C_BPartner_ID=? AND M_Product_ID=?", trxName);
		query.setParameters(new Object[]{C_BPartner_ID, M_Product_ID});
		return query.first();
	}
	
	protected void getPresumedProducts() {
		for (int i = 1; i <= xmlProductMap.size(); i++) {
			String key = String.valueOf(i);
			XMLProductInfo group = xmlProductMap.get(key);
			MProductPO pPO = getMProductPO(group.xmlValue, null);
			
			if (pPO != null) {
				group.pPO = pPO;
				group.M_Product_ID = pPO.getM_Product_ID();
				group.C_UOM_ID = pPO.getC_UOM_ID();
			}
		}
	}

	protected String validateMandatoryFields() {
		boolean valid = true;
		String mandatoryMsg = "Por favor, preencha todos os campos obrigatórios.";
		
		if (C_BPartner_ID == null ||
				C_BPartner_Location_ID == null ||
				AD_Org_ID == null)
			valid = false;
		
		for (int i = 1; i <= xmlProductMap.size(); i++) {
			String key = String.valueOf(i);
			XMLProductInfo group = xmlProductMap.get(key);
			
			if (!(group.M_Product_ID != null || group.C_Charge_ID != null) ||
					group.C_UOM_ID == null ||
					group.qty == null ||
					group.unitPrice == null)
				valid = false;
		}
		
		return valid ? null : mandatoryMsg;
	}
	
	private String createNotaFiscal() {
		String errorMsg = null;

		// Create Trx
		String trxName = Trx.createTrxName("NFX");
		Trx trx = Trx.get(trxName, true);
		
		// check if NFe already imported
		if (xmlNFeID != null) {
			MLBRNotaFiscal oldNF = MLBRNotaFiscal.getNFe(xmlNFeID, trxName);
			if (oldNF != null && 
					(oldNF.isStatusAutorizado() && 
							(oldNF.getDocStatus().equals(MLBRNotaFiscal.DOCSTATUS_Completed) || 
									oldNF.getDocStatus().equals(MLBRNotaFiscal.DOCSTATUS_Closed))))
				return "Nota Fiscal jÃ¡ importada anteriormente. NÃºmero: " + xmlDocumentNo;
		} 
		
		
		// Create Brazilian Fiscal Invoice
		MLBRNotaFiscal nf = new MLBRNotaFiscal(Env.getCtx(), 0, trx.getTrxName());
		nf.setAD_Org_ID(AD_Org_ID);
		nf.setDescription(description);
		nf.setLBR_NFeStatus(xmlStatusCode);
		nf.setLBR_NFeID(xmlNFeID);
		nf.setDocumentNo(xmlDocumentNo);
		nf.setLBR_TransactionType(LBR_TransactionType);
		nf.setC_DocType_ID(C_DocType_ID);
		
		String versionNo = "";
		
		NodeList nList = doc.getElementsByTagName("infNFe");
		for (int temp = 0; temp < nList.getLength(); temp++) {
			Node nNode = nList.item(temp);

			if (nNode.getNodeType() == Node.ELEMENT_NODE) {
				Element eElement = (Element) nNode;
				versionNo = eElement.getAttribute("versao");
			}
		}

		nList = doc.getElementsByTagName("ide");
		for (int temp = 0; temp < nList.getLength(); temp++) {
			Node nNode = nList.item(temp);

			if (nNode.getNodeType() == Node.ELEMENT_NODE) {
				Element eElement = (Element) nNode;
				
				if (!versionNo.equals("3.10")) {
					nf.setLBR_NFE_DestinationType(getPresumedDestinationType());
					nf.setLBR_NFeIndFinal("0"); // Não
					nf.setLBR_NFeIndPres("0"); // Não se Aplica
				} else {
					nf.setLBR_NFE_DestinationType(eElement.getElementsByTagName("idDest").item(0).getTextContent());
					nf.setLBR_NFeIndFinal(eElement.getElementsByTagName("indFinal").item(0).getTextContent());
					nf.setLBR_NFeIndPres(eElement.getElementsByTagName("indPres").item(0).getTextContent());
				}
				
				nf.setLBR_NFeModel(eElement.getElementsByTagName("mod").item(0).getTextContent());
				nf.setLBR_NFeSerie(eElement.getElementsByTagName("serie").item(0).getTextContent());
				nf.setLBR_NFE_OperationType(eElement.getElementsByTagName("tpNF").item(0).getTextContent());
				
				if (eElement.getElementsByTagName("dhEmi").item(0) != null)
					nf.setDateDoc(getTimestamp(eElement.getElementsByTagName("dhEmi").item(0).getTextContent()));
				else
					nf.setDateDoc(getTimestamp(eElement.getElementsByTagName("dEmi").item(0).getTextContent()));
					
				nf.setDateAcct(nf.getDateDoc());
				nf.setPaymentRule(eElement.getElementsByTagName("indPag").item(0).getTextContent());
				nf.setLBR_NFeTpEmis(eElement.getElementsByTagName("tpEmis").item(0).getTextContent());
				nf.setLBR_FinNFe(eElement.getElementsByTagName("finNFe").item(0).getTextContent());
				nf.setLBR_NFeNatOp(eElement.getElementsByTagName("natOp").item(0).getTextContent());

				MCity city = getCity(eElement.getElementsByTagName("cMunFG").item(0).getTextContent());
				nf.setC_City_ID(city.get_ID());
				nf.setC_Region_ID(city.getC_Region_ID());		
			}
		}
		
		nf.setVersionNo(versionNo);
		nf.setLBR_IsDocIssuedByOrg(false);
		nf.setC_BPartner_ID(C_BPartner_ID);
		nf.setC_BPartner_Location_ID(C_BPartner_Location_ID);
		nf.setIsTaxIncluded(true);
		nf.setTotalLines(new BigDecimal(xmlTotalLinesAmt));
		nf.setGrandTotal(new BigDecimal(xmlGrandTotal));
		
		try {
			nf.saveEx();
		} catch (Exception e) {
			return "Não foi possível gerar a Nota Fiscal.";
		}
		
		// Attach XML File
		MAttachment attachNFe = nf.createAttachment();
		attachNFe.setAD_Org_ID(nf.getAD_Org_ID());
		attachNFe.addEntry(xmlFile);
		attachNFe.save(trx.getTrxName());
		
		// Should update/create entries in M_ProductPO ?
		boolean createProductPO = MSysConfig.getBooleanValue("LBR_PRODUCTPO_WHEN_GEN_NF_FROM_XML",
				true, nf.getAD_Client_ID(), nf.getAD_Org_ID());
		
		// Generate Lines
		for (int i = 1; i <= xmlProductMap.size(); i++) {
			String key = String.valueOf(i);
			XMLProductInfo group = xmlProductMap.get(key);
			
			MLBRNotaFiscalLine line = new MLBRNotaFiscalLine(nf);
			line.setAD_Org_ID(nf.getAD_Org_ID());
			line.setLine(i*10);
			
			if (group.M_Product_ID != null){
				line.setM_Product_ID(group.M_Product_ID);
				
				if (group.pPO == null) {
					// Try to get existing MProductPO for BPartner
					MProductPO existingPPO = getMProductPO(group.M_Product_ID, trx.getTrxName());
					
					if (existingPPO == null) {
						group.pPO = new MProductPO(Env.getCtx(), 0, trx.getTrxName());
						group.pPO.setAD_Org_ID(AD_Org_ID);
					} else {
						group.pPO = existingPPO;
					}
				}
				
				// Update MProductPO
				if (createProductPO) {
					group.pPO.setC_BPartner_ID(C_BPartner_ID);
					group.pPO.setM_Product_ID(group.M_Product_ID);
					group.pPO.setC_UOM_ID(group.C_UOM_ID);
					group.pPO.setVendorProductNo(group.xmlValue);
					group.pPO.set_TrxName(trx.getTrxName());
					group.pPO.setIsCurrentVendor(false);
					group.pPO.saveEx();
				}
			}
			
			if (group.C_Charge_ID != null)
				line.setC_Charge_ID(group.C_Charge_ID);
			
			line.setQty(group.qty);
			line.setC_UOM_ID(group.C_UOM_ID);
			line.setPriceActual(group.unitPrice);
			
			int stdPrecision = MCurrency.getStdPrecision(Env.getCtx(), MLBRNotaFiscal.CURRENCY_BRL);
			
			if (group.qty != null && group.unitPrice != null) {
				BigDecimal LineNetAmt = group.qty.multiply(group.unitPrice);
				if (LineNetAmt.scale() > stdPrecision)
					LineNetAmt = LineNetAmt.setScale(stdPrecision, BigDecimal.ROUND_HALF_UP);
				line.setLineNetAmt(LineNetAmt);
			}

			line.setC_Tax_ID(getTax(nf, group.M_Product_ID, group.C_Charge_ID));
			
			try {
				line.saveEx();
			} catch (Exception e) {
				return "Não foi possível gerar a Linha da Nota Fiscal.";
			}
			
			// Generate details and taxes
			MLBRDocLineDetailsNfe details = MLBRDocLineDetailsNfe.createFromPO(line);
			
			if (details != null) {
				details.setProductValue(group.xmlValue);
				details.setProductName(group.xmlName);
				
				// CFOP
				
				// puts a dot after the first CFOP digit
				
				if(group.xmlCFOP != null && !group.xmlCFOP.isEmpty()){
					String cfopValue = group.xmlCFOP.substring(0,1)+"."+group.xmlCFOP.substring(1,4);
					
					MLBRCFOP cfop = MLBRCFOP.getCFOP(Env.getCtx(), cfopValue, trx.getTrxName());
					
					if (cfop != null)
						details.setLBR_CFOP_ID(cfop.get_ID());
				}
				
				// freight and other charges
				details.setFreightAmt(group.freightAmt);
				details.setSurcharges(group.surCharges);
				details.setInsuredAmount(group.InsuredAmount);
				details.setDiscountAmt(group.DiscountAmt);
				
				details.saveEx();
				
				// ICMS
				createICMS(Env.getCtx(), details, group.eElement, trx.getTrxName());
				// IPI
				createIPI(Env.getCtx(), details, group.eElement, trx.getTrxName());
				// PIS
				createPIS(Env.getCtx(), details, group.eElement, trx.getTrxName());
				// COFINS
				createCOFINS(Env.getCtx(), details, group.eElement, trx.getTrxName());
				// II
				createII(Env.getCtx(), details, group.eElement, trx.getTrxName());
				// ISSQN
				createISSQN(Env.getCtx(), details, group.eElement, trx.getTrxName());
			}
			
			// Create Fuel and Lubricants group:
			
			if(group.xmlcProdANP != null){
				MLBRNotaFiscalLineComb nfLineComb = MLBRNotaFiscalLineComb.createFromPO(line);
				nfLineComb.setLBR_CodANP(group.xmlcProdANP);
				nfLineComb.setLBR_pMixGN(group.pMixGN);
				nfLineComb.setLBR_CODIF(group.xmlCODIF);
				nfLineComb.setLBR_qTemp(group.qTemp);
				nfLineComb.setC_Region_ID(AdempiereLBR.getC_Region_ID(group.xmlUFCons, trx.getTrxName()));
				
				nfLineComb.saveEx();
			}
			
		}
		
		nf.calculateTaxTotal();
		
		// Process
		if (errorMsg == null) {
			if (!DocAction.ACTION_None.equals(docAction))
			{
				String msg = "Não foi possível gerar/processar a Nota Fiscal.";
				try {
					if (!nf.processIt(docAction)) {
						log.warning("Failed: " + nf);
						return msg;
					}
				} catch (Exception e) {
					e.printStackTrace();
					return msg;
				}
			}
			
			// Commit Trx
			trx.commit();
			trx.close();
		}

		return errorMsg;
	}
	
	private MCity getCity(String cMunFG) {
		MTable table = MTable.get (Env.getCtx(), MCity.Table_Name);
		Query query =  new Query(Env.getCtx(), table, "LBR_CityCode=?", null);
		query.setParameters(new Object[]{cMunFG});
		
		return query.first();
	}
	
	private String getPresumedDestinationType() {
		String cPaisEmit = "";
		String cPaisDest = "";
		String xPaisEmit = "";
		String xPaisDest = "";
		String UFEmit = "";
		String UFDest = "";
		
		NodeList nList = doc.getElementsByTagName("enderEmit");
		for (int temp = 0; temp < nList.getLength(); temp++) {
			Node nNode = nList.item(temp);

			if (nNode.getNodeType() == Node.ELEMENT_NODE) {
				Element eElement = (Element) nNode;
				
				//
				if (eElement.getElementsByTagName("cPais").item(0) != null)
					cPaisEmit = eElement.getElementsByTagName("cPais").item(0).getTextContent();
				
				//
				if (eElement.getElementsByTagName("xPais").item(0) != null)
					xPaisEmit = eElement.getElementsByTagName("xPais").item(0).getTextContent();
				
				UFEmit = eElement.getElementsByTagName("UF").item(0).getTextContent();
			}
		}
		
		nList = doc.getElementsByTagName("enderDest");
		for (int temp = 0; temp < nList.getLength(); temp++) {
			Node nNode = nList.item(temp);

			if (nNode.getNodeType() == Node.ELEMENT_NODE) {
				Element eElement = (Element) nNode;
				
				//
				if (eElement.getElementsByTagName("cPais").item(0) != null)
					cPaisDest = eElement.getElementsByTagName("cPais").item(0).getTextContent();
				
				//
				if (eElement.getElementsByTagName("xPais").item(0) != null)
					xPaisDest = eElement.getElementsByTagName("xPais").item(0).getTextContent();

				UFDest = eElement.getElementsByTagName("UF").item(0).getTextContent();
			}
		}
		
		if (!(cPaisEmit.equals(cPaisDest) || xPaisEmit.equalsIgnoreCase(xPaisDest)))
			return "3"; // Operação com o Exterior
		
		if (UFEmit.equals(UFDest))
			return "1"; // Operação Interna
		
		return "2"; // Operação Interestadual;
	}
	
	protected Timestamp getTimestamp(String date) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	    Date parsedDate = null;
		try {
			parsedDate = dateFormat.parse(date.substring(0, 10));
		} catch (ParseException e) {
			e.printStackTrace();
		}
	    return new java.sql.Timestamp(parsedDate.getTime());
	}
	
	/**
	 * 	Create ICMS (child of Doc Line Details)
	 */
	private MLBRDocLineICMS createICMS(Properties ctx, MLBRDocLineDetailsNfe details, Element element, String trxName) {
		NodeList nList = element.getElementsByTagName("ICMS");
		for (int temp = 0; temp < nList.getLength(); temp++) {
			MLBRDocLineICMS icms;
			MLBRDocLineICMS[] icmsEntries = MLBRDocLineICMS.getOfDetails(details);
			
			if (icmsEntries != null && icmsEntries.length > 0)
				icms = icmsEntries[0];
			else
				icms = new MLBRDocLineICMS(ctx, 0, trxName);
			
			icms.setAD_Org_ID(details.getAD_Org_ID());
			icms.setLBR_DocLine_Details_ID(details.get_ID());
			
			Node nNode = nList.item(temp);

			if (nNode.getNodeType() == Node.ELEMENT_NODE) {
				Element eElementICMS = (Element) nNode;
				
				if (eElementICMS.getElementsByTagName("orig").item(0) != null) {
					String productSource = eElementICMS.getElementsByTagName("orig").item(0).getTextContent();
					icms.setLBR_ProductSource(productSource);
				}
				
				String taxStatus = "";
				if (eElementICMS.getElementsByTagName("CST").item(0) != null)
					taxStatus = eElementICMS.getElementsByTagName("CST").item(0).getTextContent();
				
				// If not found, try to identify CSOSN
				if (taxStatus != null && taxStatus.equals("")) {
					if (eElementICMS.getElementsByTagName("CSOSN").item(0) != null)
						taxStatus = eElementICMS.getElementsByTagName("CSOSN").item(0).getTextContent();
				}
				
				// Tax Status Suffix
				String taxStatusSuffix = "";
				NodeList nICMSPart = element.getElementsByTagName("ICMSPart");
				NodeList nICMSST = element.getElementsByTagName("ICMSST");

				if (taxStatus != null) {
					if (taxStatus.equals("10")) {
						if (nICMSPart != null && nICMSPart.getLength() > 0)
							taxStatusSuffix = "_2";
						else
							taxStatusSuffix = "_1";
					} else if (taxStatus.equals("41")) {
						if (nICMSST != null && nICMSST.getLength() > 0)
							taxStatusSuffix = "_2";
						else
							taxStatusSuffix = "_1";
					} else if (taxStatus.equals("90")) {
						if (nICMSPart != null && nICMSPart.getLength() > 0)
							taxStatusSuffix = "_2";
						else
							taxStatusSuffix = "_1";
					}
				}
				
				boolean isSimplesNacional = true;
				
				if (taxStatus.length() == 2)
					isSimplesNacional = false;
				
				if (isSimplesNacional) {
					icms.setLBR_ICMS_TaxStatusSN(taxStatus);
					icms.setLBR_ICMSRegime(MLBRDocLineICMS.LBR_ICMSREGIME_SimpleTaxation);
				} else { 
					taxStatus = taxStatus + taxStatusSuffix;
					icms.setLBR_ICMS_TaxStatusTN(taxStatus);
					icms.setLBR_ICMSRegime(MLBRDocLineICMS.LBR_ICMSREGIME_DefaultTaxation);
				}
				
				icms.setIsTaxIncluded(true);
				
				if (TextUtil.match (taxStatus,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_10_TributadaEComCobrancaDoICMSPorSubTributaria,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_30_IsentaOuNao_TribEComCobrDoICMSPorSubTribut,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_70_ComRedDeBaseDeCalcECobrDoICMSPorSubTrib)) {
					icms.setLBR_ICMSST_IsTaxIncluded(false);
				}
				
				if (TextUtil.match (taxStatus,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_00_TributadaIntegralmente,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_10_TributadaEComCobrancaDoICMSPorSubTributaria,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_20_ComReducaoDeBaseDeCalculo,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_51_Diferimento,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_70_ComRedDeBaseDeCalcECobrDoICMSPorSubTrib,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_90_Outras,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSSN_900_Outros)) {

					if (eElementICMS.getElementsByTagName("modBC").item(0) != null)
						icms.setLBR_ICMS_TaxBaseType(eElementICMS.getElementsByTagName("modBC").item(0).getTextContent());
					
					if (eElementICMS.getElementsByTagName("vBC").item(0) != null) {
						String taxBaseAmt = eElementICMS.getElementsByTagName("vBC").item(0).getTextContent();
						if (taxBaseAmt != null)
							icms.setLBR_TaxBaseAmt(new BigDecimal(taxBaseAmt));
					}
					
					if (eElementICMS.getElementsByTagName("pICMS").item(0) != null) {
						String taxRate = eElementICMS.getElementsByTagName("pICMS").item(0).getTextContent();
						if (taxRate != null)
							icms.setLBR_TaxRate(new BigDecimal(taxRate));
					}
					
					if (eElementICMS.getElementsByTagName("vICMS").item(0) != null) {
						String taxAmt = eElementICMS.getElementsByTagName("vICMS").item(0).getTextContent();
						if (taxAmt != null)
							icms.setLBR_TaxAmt(new BigDecimal(taxAmt));
					}
				}
				
				if (TextUtil.match (taxStatus,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_40_Isenta,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_41_Nao_Tributada,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_50_Suspensao)) {

					if (eElementICMS.getElementsByTagName("vICMS").item(0) != null) {
						String taxAmt = eElementICMS.getElementsByTagName("vICMS").item(0).getTextContent();
						if (taxAmt != null)
							icms.setLBR_TaxAmt(new BigDecimal(taxAmt));
					}
					
					MBPartner bp = new MBPartner(ctx, C_BPartner_ID, trxName);
					I_W_C_BPartner bpW = POWrapper.create(bp, I_W_C_BPartner.class);
					
					if (bpW.getLBR_Suframa() != null && !bpW.getLBR_Suframa().isEmpty())
						icms.setLBR_ICMS_TaxReliefType(MLBRDocLineICMS.LBR_ICMS_TAXRELIEFTYPE_SUFRAMA);
					else
						icms.setLBR_ICMS_TaxReliefType(MLBRDocLineICMS.LBR_ICMS_TAXRELIEFTYPE_Other);
				}
				
				//	ICMS-ST
				if (TextUtil.match (taxStatus,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_10_TributadaEComCobrancaDoICMSPorSubTributaria,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_30_IsentaOuNao_TribEComCobrDoICMSPorSubTribut,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_70_ComRedDeBaseDeCalcECobrDoICMSPorSubTrib,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_90_Outras,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSSN_201_TributadaComPermissaoDeCredito,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSSN_202_TributadaSemPermissaoDeCredito,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSSN_203_IsencaoDoICMSParaFaixaDeReceitaBruta,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSSN_900_Outros)) {
					
					if (eElementICMS.getElementsByTagName("modBCST").item(0) != null)
						icms.setLBR_ICMSST_TaxBaseType(eElementICMS.getElementsByTagName("modBCST").item(0).getTextContent());
					
					if (eElementICMS.getElementsByTagName("pMVAST").item(0) != null) {
						String mvaST = eElementICMS.getElementsByTagName("pMVAST").item(0).getTextContent();
						if (mvaST != null)
							icms.setLBR_ICMSST_TaxAdded(new BigDecimal(mvaST));
					}
					
					if (eElementICMS.getElementsByTagName("pRedBCST").item(0) != null) {
						String taxBaseRedST = eElementICMS.getElementsByTagName("pRedBCST").item(0).getTextContent();
						if (taxBaseRedST != null)
							icms.setLBR_ICMSST_TaxBase(new BigDecimal(taxBaseRedST));
					}
					
					if (eElementICMS.getElementsByTagName("vBCST").item(0) != null) {
						String taxBaseAmtST = eElementICMS.getElementsByTagName("vBCST").item(0).getTextContent();
						if (taxBaseAmtST != null)
							icms.setLBR_ICMSST_TaxBaseAmt(new BigDecimal(taxBaseAmtST));
					}
					
					if (eElementICMS.getElementsByTagName("pICMSST").item(0) != null) {
						String taxRateST = eElementICMS.getElementsByTagName("pICMSST").item(0).getTextContent();
						if (taxRateST != null)
							icms.setLBR_ICMSST_TaxRate(new BigDecimal(taxRateST));
					}
					
					if (eElementICMS.getElementsByTagName("vICMSST").item(0) != null) {
						String taxAmtST = eElementICMS.getElementsByTagName("vICMSST").item(0).getTextContent();
						if (taxAmtST != null)
							icms.setLBR_ICMSST_TaxAmt(new BigDecimal(taxAmtST));
					}
				}

				if (TextUtil.match (taxStatus,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_60_ICMSCobradoAnteriormentePorSubstituicaoTributaria,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSSN_500_ICMSCobradoAnteriormente)) {
					
					if (eElementICMS.getElementsByTagName("vBCSTRet").item(0) != null) {
						String taxBAmtWhd = eElementICMS.getElementsByTagName("vBCSTRet").item(0).getTextContent();
						if (taxBAmtWhd != null)
							icms.setLBR_ICMSST_TaxBAmtWhd(new BigDecimal(taxBAmtWhd));
					}
					
					if (eElementICMS.getElementsByTagName("vICMSSTRet").item(0) != null) {
						String taxAmtWhd = eElementICMS.getElementsByTagName("vICMSSTRet").item(0).getTextContent();
						if (taxAmtWhd != null)
							icms.setLBR_ICMSST_TaxAmtWhd(new BigDecimal(taxAmtWhd));
					}
				}
				
				if (TextUtil.match (taxStatus,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSSN_101_TributadaComPermissaoDeCredito,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSSN_201_TributadaComPermissaoDeCredito,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSSN_900_Outros)) {
					
					if (eElementICMS.getElementsByTagName("pCredSN").item(0) != null) {
						String taxRateCredit = eElementICMS.getElementsByTagName("pCredSN").item(0).getTextContent();
						if (taxRateCredit != null)
							icms.setLBR_TaxRateCredit(new BigDecimal(taxRateCredit));
					}
					
					if (eElementICMS.getElementsByTagName("pCredSN").item(0) != null) {
						String taxAmtCredit = eElementICMS.getElementsByTagName("pCredSN").item(0).getTextContent();
						if (taxAmtCredit != null)
							icms.setLBR_TaxAmtCredit(new BigDecimal(taxAmtCredit));
					}
				}
				
				icms.saveEx();
				return icms;
			}
		}
		
		return null;
	}
	
	/**
	 * 	Create IPI (child of Doc Line Details)
	 * @param element 
	 */
	private MLBRDocLineIPI createIPI(Properties ctx, MLBRDocLineDetailsNfe details, Element element, String trxName) {
		NodeList nList = element.getElementsByTagName("IPI");
		for (int temp = 0; temp < nList.getLength(); temp++) {
			MLBRDocLineIPI ipi;
			MLBRDocLineIPI[] ipiEntries = MLBRDocLineIPI.getOfDetails(details);
			
			if (ipiEntries != null && ipiEntries.length > 0)
				ipi = ipiEntries[0];
			else
				ipi = new MLBRDocLineIPI(ctx, 0, trxName);

			ipi.setAD_Org_ID(details.getAD_Org_ID());
			ipi.setLBR_DocLine_Details_ID(details.get_ID());
			ipi.setIsTaxIncluded(false);
			
			Node nNode = nList.item(temp);

			if (nNode.getNodeType() == Node.ELEMENT_NODE) {
				Element eElementIPI = (Element) nNode;

				if (eElementIPI.getElementsByTagName("CST").item(0) != null)
					ipi.setLBR_IPI_TaxStatus(eElementIPI.getElementsByTagName("CST").item(0).getTextContent());
				
				if (eElementIPI.getElementsByTagName("vBC").item(0) != null) {
					String taxBaseAmt = eElementIPI.getElementsByTagName("vBC").item(0).getTextContent();
					if (taxBaseAmt != null)
						ipi.setLBR_TaxBaseAmt(new BigDecimal(taxBaseAmt));
				}

				if (eElementIPI.getElementsByTagName("pIPI").item(0) != null) {
					ipi.setCalculationType("PER");
					
					String taxRate = eElementIPI.getElementsByTagName("pIPI").item(0).getTextContent();
					if (taxRate != null)
						ipi.setLBR_TaxRate(new BigDecimal(taxRate));
				}
				
				if (eElementIPI.getElementsByTagName("qUnid").item(0) != null) {
					ipi.setCalculationType("AMT");
					
					String qUnid = eElementIPI.getElementsByTagName("qUnid").item(0).getTextContent();
					if (qUnid != null)
						ipi.setTotalQty(new BigDecimal(qUnid));
				}
				
				if (eElementIPI.getElementsByTagName("vUnid").item(0) != null) {
					String vUnid = eElementIPI.getElementsByTagName("vUnid").item(0).getTextContent();
					if (vUnid != null)
						ipi.setPriceActual(new BigDecimal(vUnid));
				}
				
				if (eElementIPI.getElementsByTagName("vIPI").item(0) != null) {
					String taxAmt = eElementIPI.getElementsByTagName("vIPI").item(0).getTextContent();
					if (taxAmt != null)
						ipi.setLBR_TaxAmt(new BigDecimal(taxAmt));
				}
				
				ipi.saveEx();
				return ipi;
			}
		}
		
		return null;
	}
	
	/**
	 * 	Create II (child of Doc Line Details)
	 */
	private MLBRDocLineImportTax createII(Properties ctx, MLBRDocLineDetailsNfe details, Element element, String trxName) {
		NodeList nList = element.getElementsByTagName("II");
		for (int temp = 0; temp < nList.getLength(); temp++) {
			MLBRDocLineImportTax ii;
			MLBRDocLineImportTax[] iiEntries = MLBRDocLineImportTax.getOfDetails(details);
			
			if (iiEntries != null && iiEntries.length > 0)
				ii = iiEntries[0];
			else
				ii = new MLBRDocLineImportTax(ctx, 0, trxName);
			
			ii.setAD_Org_ID(details.getAD_Org_ID());
			ii.setLBR_DocLine_Details_ID(details.get_ID());
			ii.setIsTaxIncluded(true);
			
			Node nNode = nList.item(temp);

			if (nNode.getNodeType() == Node.ELEMENT_NODE) {
				Element eElement = (Element) nNode;
				
				if (eElement.getElementsByTagName("vBC").item(0) != null) {
					String taxBaseAmt = eElement.getElementsByTagName("vBC").item(0).getTextContent();
					if (taxBaseAmt != null)
						ii.setLBR_TaxBaseAmt(new BigDecimal(taxBaseAmt));
				}
				
				if (eElement.getElementsByTagName("vDespAdu").item(0) != null) {
					String customsValue = eElement.getElementsByTagName("vDespAdu").item(0).getTextContent();
					if (customsValue != null)
						ii.setCustomsValue(new BigDecimal(customsValue));
				}
				
				if (eElement.getElementsByTagName("vII").item(0) != null) {
					String taxAmt = eElement.getElementsByTagName("vII").item(0).getTextContent();
					if (taxAmt != null)
						ii.setLBR_TaxAmt(new BigDecimal(taxAmt));
				}
				
				if (eElement.getElementsByTagName("vIOF").item(0) != null) {
					String iofAmt = eElement.getElementsByTagName("vIOF").item(0).getTextContent();
					if (iofAmt != null)
						ii.setLBR_IOFAmt(new BigDecimal(iofAmt));
				}
				
				ii.saveEx();
				return ii;
			}
		}
		
		return null;
	}
	
	/**
	 * 	Create PIS (child of Doc Line Details)
	 */
	private MLBRDocLinePIS createPIS(Properties ctx, MLBRDocLineDetailsNfe details, Element element, String trxName) {
		NodeList nList = element.getElementsByTagName("PIS");
		for (int temp = 0; temp < nList.getLength(); temp++) {
			MLBRDocLinePIS pis;
			MLBRDocLinePIS[] pisEntries = MLBRDocLinePIS.getOfDetails(details);
			
			if (pisEntries != null && pisEntries.length > 0)
				pis = pisEntries[0];
			else
				pis = new MLBRDocLinePIS(ctx, 0, trxName);
			
			pis.setAD_Org_ID(details.getAD_Org_ID());
			pis.setLBR_DocLine_Details_ID(details.get_ID());
			pis.setIsTaxIncluded(true);
			
			Node nNode = nList.item(temp);

			if (nNode.getNodeType() == Node.ELEMENT_NODE) {
				Element eElementPIS = (Element) nNode;

				if (eElementPIS.getElementsByTagName("CST").item(0) != null) {
					String taxStatus = eElementPIS.getElementsByTagName("CST").item(0).getTextContent();
					if (taxStatus != null)
						pis.setLBR_PIS_TaxStatus(taxStatus);
				}
				
				if (eElementPIS.getElementsByTagName("vBC").item(0) != null) {
					String taxBaseAmt = eElementPIS.getElementsByTagName("vBC").item(0).getTextContent();
					if (taxBaseAmt != null)
						pis.setLBR_TaxBaseAmt(new BigDecimal(taxBaseAmt));
				}
				
				if (eElementPIS.getElementsByTagName("pPIS").item(0) != null) {
					String taxRate = eElementPIS.getElementsByTagName("pPIS").item(0).getTextContent();
					if (taxRate != null)
						pis.setLBR_TaxRate(new BigDecimal(taxRate));
				}
				
				if (eElementPIS.getElementsByTagName("vPIS").item(0) != null) {
					String taxAmt = eElementPIS.getElementsByTagName("vPIS").item(0).getTextContent();
					if (taxAmt != null)
						pis.setLBR_TaxAmt(new BigDecimal(taxAmt));
				}
				
				pis.saveEx();
				return pis;
			}
		}
		
		return null;
	}
	
	/**
	 * 	Create COFINS (child of Doc Line Details)
	 */
	private MLBRDocLineCOFINS createCOFINS(Properties ctx, MLBRDocLineDetailsNfe details, Element element, String trxName) {
		NodeList nList = element.getElementsByTagName("COFINS");
		for (int temp = 0; temp < nList.getLength(); temp++) {
			MLBRDocLineCOFINS cofins;
			MLBRDocLineCOFINS[] cofinsEntries = MLBRDocLineCOFINS.getOfDetails(details);
			
			if (cofinsEntries != null && cofinsEntries.length > 0)
				cofins = cofinsEntries[0];
			else
				cofins = new MLBRDocLineCOFINS(ctx, 0, trxName);

			cofins.setAD_Org_ID(details.getAD_Org_ID());
			cofins.setLBR_DocLine_Details_ID(details.get_ID());
			cofins.setIsTaxIncluded(true);
			
			Node nNode = nList.item(temp);

			if (nNode.getNodeType() == Node.ELEMENT_NODE) {
				Element eElementCOFINS = (Element) nNode;

				if (eElementCOFINS.getElementsByTagName("CST").item(0) != null) {
					String taxStatus = eElementCOFINS.getElementsByTagName("CST").item(0).getTextContent();
					if (taxStatus != null)
						cofins.setLBR_COF_TaxStatus(taxStatus);
				}
				
				if (eElementCOFINS.getElementsByTagName("vBC").item(0) != null) {
					String taxBaseAmt = eElementCOFINS.getElementsByTagName("vBC").item(0).getTextContent();
					if (taxBaseAmt != null)
						cofins.setLBR_TaxBaseAmt(new BigDecimal(taxBaseAmt));
				}
				
				if (eElementCOFINS.getElementsByTagName("pCOFINS").item(0) != null) {
					String taxRate = eElementCOFINS.getElementsByTagName("pCOFINS").item(0).getTextContent();
					if (taxRate != null)
						cofins.setLBR_TaxRate(new BigDecimal(taxRate));
				}
				
				if (eElementCOFINS.getElementsByTagName("vCOFINS").item(0) != null) {
					String taxAmt = eElementCOFINS.getElementsByTagName("vCOFINS").item(0).getTextContent();
					if (taxAmt != null)
						cofins.setLBR_TaxAmt(new BigDecimal(taxAmt));
				}
				
				cofins.saveEx();
				return cofins;
			}
		}
		
		return null;
	}
	
	/**
	 * 	Create ISSQN (child of Doc Line Details)
	 */
	private MLBRDocLineISSQN createISSQN(Properties ctx, MLBRDocLineDetailsNfe details, Element element, String trxName) {
		NodeList nList = element.getElementsByTagName("ISSQN");
		for (int temp = 0; temp < nList.getLength(); temp++) {
			MLBRDocLineISSQN issqn;
			MLBRDocLineISSQN[] issqnEntries = MLBRDocLineISSQN.getOfDetails(details);
			
			if (issqnEntries != null && issqnEntries.length > 0)
				issqn = issqnEntries[0];
			else
				issqn = new MLBRDocLineISSQN(ctx, 0, trxName);

			issqn.setAD_Org_ID(details.getAD_Org_ID());
			issqn.setLBR_DocLine_Details_ID(details.get_ID());
			issqn.setIsTaxIncluded(true);
			
			Node nNode = nList.item(temp);

			if (nNode.getNodeType() == Node.ELEMENT_NODE) {
				Element eElement = (Element) nNode;
				
				if (eElement.getElementsByTagName("vBC").item(0) != null) {
					String taxBaseAmt = eElement.getElementsByTagName("vBC").item(0).getTextContent();
					if (taxBaseAmt != null)
						issqn.setLBR_TaxBaseAmt(new BigDecimal(taxBaseAmt));
				}
				
				if (eElement.getElementsByTagName("vAliq").item(0) != null) {
					String taxRate = eElement.getElementsByTagName("vAliq").item(0).getTextContent();
					if (taxRate != null)
						issqn.setLBR_TaxRate(new BigDecimal(taxRate));
				}
				
				if (eElement.getElementsByTagName("vISSQN").item(0) != null) {
					String taxAmt = eElement.getElementsByTagName("vISSQN").item(0).getTextContent();
					if (taxAmt != null)
						issqn.setLBR_TaxAmt(new BigDecimal(taxAmt));
				}
				
				issqn.saveEx();
				return issqn;
			}
		}
		
		return null;
	}
	
	private int getTax(MLBRNotaFiscal nf, Integer M_Product_ID, Integer C_Charge_ID) {
		int C_Tax_ID = 0;
		
		if (M_Product_ID != null) {
			C_Tax_ID = Tax.getProduct(nf.getCtx(), M_Product_ID, nf.getDateDoc(), nf.getDateDoc(), nf.getAD_Org_ID(),
					0, nf.getC_BPartner_Location_ID(), nf.getC_BPartner_Location_ID(), nf.isSOTrx(), null);
		} else if (C_Charge_ID != null) {
			C_Tax_ID = Tax.getCharge(nf.getCtx(), C_Charge_ID, nf.getDateDoc(), nf.getDateDoc(), nf.getAD_Org_ID(),
					0, nf.getC_BPartner_Location_ID(), nf.getC_BPartner_Location_ID(), nf.isSOTrx(), null);
		}

		return C_Tax_ID;
	}
	
	public class XMLProductInfo{
		Element eElement;
		
		String xmlLineNo;
		String xmlValue;
		String xmlName;
		String xmlUOM;
		String xmlQty;
		String xmlUnitPrice;
		String xmlLineAmt;
		String xmlCFOP;
		
		// Fuel and Lubricants
		String xmlcProdANP;
		String xmlpMixGN;
		String xmlCODIF;
		String xmlqTemp;
		String xmlUFCons;
		
		BigDecimal pMixGN;
		BigDecimal qTemp;
		
		Integer M_Product_ID;
		Integer C_Charge_ID;
		Integer C_UOM_ID;
		BigDecimal qty;
		BigDecimal unitPrice;
		
		String xmlFreightAmt;
		BigDecimal freightAmt;
		String xmlSurCharges;
		BigDecimal surCharges;
		String xmlInsuredAmount;
		BigDecimal InsuredAmount;
		String xmlDiscountAmt;
		BigDecimal DiscountAmt;

		
		MProductPO pPO;
	}
}
