package org.idempierelbr.nfe.stub;

import java.io.StringReader;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamReader;

import org.adempiere.exceptions.AdempiereException;
import org.apache.axiom.om.OMElement;
import org.compiere.model.MRegion;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.idempierelbr.nfe.model.MLBRNFeWebService;

public class StubConnector {
	
	/** Log	*/
	private static CLogger log = CLogger.getCLogger(StubConnector.class);
	
	/** Autorizadores */
	public static String SEFAZ_AMAZONAS										= "AM";
	public static String SEFAZ_BAHIA 										= "BA";
	public static String SEFAZ_CEARA 										= "CE";
	public static String SEFAZ_GOIAS 										= "GO";
	public static String SEFAZ_MINAS_GERAIS 								= "MG";
	public static String SEFAZ_MATO_GROSSO_DO_SUL 							= "MS";
	public static String SEFAZ_MATO_GROSSO 									= "MT";
	public static String SEFAZ_PERNAMBUCO 									= "PE";
	public static String SEFAZ_PARANA 										= "PR";
	public static String SEFAZ_RIO_GRANDE_DO_SUL 							= "RS";
	public static String SEFAZ_SAO_PAULO 									= "SP";
	public static String SEFAZ_VIRTUAL_AMBIENTE_NACIONAL 					= "SVAN";
	public static String SEFAZ_VIRTUAL_RIO_GRANDE_DO_SUL 					= "SVRS";
	public static String SEFAZ_CONTINGENCIA_AMBIENTE_NACIONAL 				= "SCAN";
	public static String SEFAZ_VIRTUAL_DE_CONTINGENCIA_AMBIENTE_NACIONAL 	= "SVCAN";
	public static String SEFAZ_VIRTUAL_DE_CONTINGENCIA_RIO_GRANDE_DO_SUL 	= "SVCRS";
	public static String AMBIENTE_NACIONAL 									= "AN";
	
	public static Map<String, String> autorizadores;
	public static Map<String, String> autorizadoresContingencia;
	
	private String versionNo, autorizador, service;
	private boolean isHomologacao;
	private MRegion region;
	private String LBR_NFeModel;
	
	public StubConnector(String versionNo, int C_Region_ID, String service, boolean isContingencia, boolean isHomologacao, String LBR_NFeModel)
			throws NullPointerException, IllegalArgumentException {
		
		if (versionNo == null || C_Region_ID <= 0 || service == null)
			throw new NullPointerException();
		
		this.versionNo = versionNo;
		this.service = service;
		this.isHomologacao = isHomologacao;
		this.LBR_NFeModel = LBR_NFeModel;
		
		if (autorizadores == null)
			autorizadores = getAutorizadoresMap();
		
		if (autorizadoresContingencia == null)
			autorizadoresContingencia = getAutorizadoresContigenciaMap();
		
		region = new MRegion(Env.getCtx(), C_Region_ID, null);
		
		if (isContingencia)
			autorizador = getAutorizadorContingencia(region.getName());
		else
			autorizador = getAutorizador(region.getName());
		
		if (autorizador == null)
			throw new IllegalArgumentException();		
	}
	
	private Map<String, String> getAutorizadoresMap() {
		Map<String, String> autorizadores = new HashMap<String, String>();
		autorizadores.put("AC", SEFAZ_VIRTUAL_RIO_GRANDE_DO_SUL);
		autorizadores.put("AL", SEFAZ_VIRTUAL_RIO_GRANDE_DO_SUL);
		autorizadores.put("AP", SEFAZ_VIRTUAL_RIO_GRANDE_DO_SUL);
		autorizadores.put("AM", SEFAZ_AMAZONAS);
		autorizadores.put("BA", SEFAZ_BAHIA);
		autorizadores.put("CE", SEFAZ_CEARA);
		autorizadores.put("DF", SEFAZ_VIRTUAL_RIO_GRANDE_DO_SUL);
		autorizadores.put("ES", SEFAZ_VIRTUAL_RIO_GRANDE_DO_SUL);
		autorizadores.put("GO", SEFAZ_GOIAS);
		autorizadores.put("MA", SEFAZ_VIRTUAL_AMBIENTE_NACIONAL);
		autorizadores.put("MT", SEFAZ_MATO_GROSSO);
		autorizadores.put("MS", SEFAZ_MATO_GROSSO_DO_SUL);
		autorizadores.put("MG", SEFAZ_MINAS_GERAIS);
		autorizadores.put("PA", SEFAZ_VIRTUAL_AMBIENTE_NACIONAL);
		autorizadores.put("PB", SEFAZ_VIRTUAL_RIO_GRANDE_DO_SUL);
		autorizadores.put("PR", SEFAZ_PARANA);
		autorizadores.put("PE", SEFAZ_PERNAMBUCO);
		autorizadores.put("PI", SEFAZ_VIRTUAL_AMBIENTE_NACIONAL);
		autorizadores.put("RJ", SEFAZ_VIRTUAL_RIO_GRANDE_DO_SUL);
		autorizadores.put("RN", SEFAZ_VIRTUAL_RIO_GRANDE_DO_SUL);
		autorizadores.put("RS", SEFAZ_RIO_GRANDE_DO_SUL);
		autorizadores.put("RO", SEFAZ_VIRTUAL_RIO_GRANDE_DO_SUL);
		autorizadores.put("RR", SEFAZ_VIRTUAL_RIO_GRANDE_DO_SUL);
		autorizadores.put("SC", SEFAZ_VIRTUAL_RIO_GRANDE_DO_SUL);
		autorizadores.put("SP", SEFAZ_SAO_PAULO);
		autorizadores.put("SE", SEFAZ_VIRTUAL_RIO_GRANDE_DO_SUL);
		autorizadores.put("TO", SEFAZ_VIRTUAL_RIO_GRANDE_DO_SUL);
		return autorizadores;
	}
	
	private String getAutorizador(String uf) {
		if (uf == null)
			return null;
		
		return autorizadores.get(uf);
	}
	
	private Map<String, String> getAutorizadoresContigenciaMap() {
		Map<String, String> autorizadores = new HashMap<String, String>();
		autorizadores.put("AC", SEFAZ_VIRTUAL_DE_CONTINGENCIA_AMBIENTE_NACIONAL);
		autorizadores.put("AL", SEFAZ_VIRTUAL_DE_CONTINGENCIA_AMBIENTE_NACIONAL);
		autorizadores.put("AP", SEFAZ_VIRTUAL_DE_CONTINGENCIA_AMBIENTE_NACIONAL);
		autorizadores.put("AM", SEFAZ_VIRTUAL_DE_CONTINGENCIA_RIO_GRANDE_DO_SUL);
		autorizadores.put("BA", SEFAZ_VIRTUAL_DE_CONTINGENCIA_RIO_GRANDE_DO_SUL);
		autorizadores.put("CE", SEFAZ_VIRTUAL_DE_CONTINGENCIA_RIO_GRANDE_DO_SUL);
		autorizadores.put("DF", SEFAZ_VIRTUAL_DE_CONTINGENCIA_AMBIENTE_NACIONAL);
		autorizadores.put("ES", SEFAZ_VIRTUAL_DE_CONTINGENCIA_AMBIENTE_NACIONAL);
		autorizadores.put("GO", SEFAZ_VIRTUAL_DE_CONTINGENCIA_RIO_GRANDE_DO_SUL);
		autorizadores.put("MA", SEFAZ_VIRTUAL_DE_CONTINGENCIA_RIO_GRANDE_DO_SUL);
		autorizadores.put("MT", SEFAZ_VIRTUAL_DE_CONTINGENCIA_RIO_GRANDE_DO_SUL);
		autorizadores.put("MS", SEFAZ_VIRTUAL_DE_CONTINGENCIA_RIO_GRANDE_DO_SUL);
		autorizadores.put("MG", SEFAZ_VIRTUAL_DE_CONTINGENCIA_AMBIENTE_NACIONAL);
		autorizadores.put("PA", SEFAZ_VIRTUAL_DE_CONTINGENCIA_RIO_GRANDE_DO_SUL);
		autorizadores.put("PB", SEFAZ_VIRTUAL_DE_CONTINGENCIA_AMBIENTE_NACIONAL);
		autorizadores.put("PR", SEFAZ_VIRTUAL_DE_CONTINGENCIA_RIO_GRANDE_DO_SUL);
		autorizadores.put("PE", SEFAZ_VIRTUAL_DE_CONTINGENCIA_RIO_GRANDE_DO_SUL);
		autorizadores.put("PI", SEFAZ_VIRTUAL_DE_CONTINGENCIA_RIO_GRANDE_DO_SUL);
		autorizadores.put("RJ", SEFAZ_VIRTUAL_DE_CONTINGENCIA_AMBIENTE_NACIONAL);
		autorizadores.put("RN", SEFAZ_VIRTUAL_DE_CONTINGENCIA_AMBIENTE_NACIONAL);
		autorizadores.put("RS", SEFAZ_VIRTUAL_DE_CONTINGENCIA_AMBIENTE_NACIONAL);
		autorizadores.put("RO", SEFAZ_VIRTUAL_DE_CONTINGENCIA_AMBIENTE_NACIONAL);
		autorizadores.put("RR", SEFAZ_VIRTUAL_DE_CONTINGENCIA_AMBIENTE_NACIONAL);
		autorizadores.put("SC", SEFAZ_VIRTUAL_DE_CONTINGENCIA_AMBIENTE_NACIONAL);
		autorizadores.put("SP", SEFAZ_VIRTUAL_DE_CONTINGENCIA_AMBIENTE_NACIONAL);
		autorizadores.put("SE", SEFAZ_VIRTUAL_DE_CONTINGENCIA_AMBIENTE_NACIONAL);
		autorizadores.put("TO", SEFAZ_VIRTUAL_DE_CONTINGENCIA_AMBIENTE_NACIONAL);
		return autorizadores;
	}

	private String getAutorizadorContingencia(String uf) {
		if (uf == null)
			return null;
		
		return autorizadoresContingencia.get(uf);
	}
	
	public String sendMessage(String message) throws Exception {
		if (message == null || message.trim().equals("")) {
			log.warning("Cannot send message. It is null/empty");
			return null;
		}

		return sendMessageToGenericStub(message);
	}
	
	private String sendMessageToGenericStub(String message) throws Exception {
		if (message == null || message.trim().equals(""))
			return null;
		
		XMLStreamReader reader;
		
		try {
			reader = XMLInputFactory.newInstance().createXMLStreamReader(new StringReader(message));
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		
		String envType = isHomologacao ? "2" : "1";
		String url = MLBRNFeWebService.getURL(service, envType, versionNo, region.getC_Region_ID(), LBR_NFeModel);
		
		System.out.println("Using URL: "+url);
		System.out.println("Service: "+service+" Env Type: "+envType+" Version No: "+versionNo+" Region: "+region.getC_Region_ID()+" Model: "+LBR_NFeModel);
		
		if (url == null || url.trim().equals(""))
			throw new AdempiereException("Couldn't get WebService URL for: " + service + " " +
				versionNo + ", " + envType + ", " + region.getName());
		
		String result = null;
		
		if (service.equals(MLBRNFeWebService.SERVICE_NFE_INUTILIZACAO)) {
			// Header
			org.idempierelbr.nfe.stub.generic.NfeInutilizacao2Stub.NfeCabecMsg cabecMsg =
					new org.idempierelbr.nfe.stub.generic.NfeInutilizacao2Stub.NfeCabecMsg();
			org.idempierelbr.nfe.stub.generic.NfeInutilizacao2Stub.NfeCabecMsgE cabecMsgE =
					new org.idempierelbr.nfe.stub.generic.NfeInutilizacao2Stub.NfeCabecMsgE();
			cabecMsg.setCUF(region.get_ValueAsString("LBR_RegionCode"));
			cabecMsg.setVersaoDados(versionNo);
			cabecMsgE.setNfeCabecMsg(cabecMsg);
			try {
				// Message
				org.idempierelbr.nfe.stub.generic.NfeInutilizacao2Stub.NfeDadosMsg dadosMsg =
						org.idempierelbr.nfe.stub.generic.NfeInutilizacao2Stub.NfeDadosMsg.Factory.parse(reader);
				
				OMElement ome = addAttribute(dadosMsg.getExtraElement(), "evento", "xmlns", "http://www.portalfiscal.inf.br/nfe");			  
				dadosMsg.setExtraElement(ome);
				
				// Stub
				org.idempierelbr.nfe.stub.generic.NfeInutilizacao2Stub stub =
						new org.idempierelbr.nfe.stub.generic.NfeInutilizacao2Stub(url);
				result = stub.nfeInutilizacaoNF2(dadosMsg, cabecMsgE).getExtraElement().toString();
			} catch (Exception e) {
				e.printStackTrace();
				return null;
			}
		} else if (service.equals(MLBRNFeWebService.SERVICE_NFE_CONSULTA_PROTOCOLO)) {

		} else if (service.equals(MLBRNFeWebService.SERVICE_NFE_STATUS_SERVICO)) {

		} else if (service.equals(MLBRNFeWebService.SERVICE_NFE_CONSULTA_CADASTRO)) {
	
		} else if (service.equals(MLBRNFeWebService.SERVICE_NFE_RECEPCAO_EVENTO)) {
			// Header
			org.idempierelbr.nfe.stub.generic.RecepcaoEventoStub.NfeCabecMsg cabecMsg =
					new org.idempierelbr.nfe.stub.generic.RecepcaoEventoStub.NfeCabecMsg();
			org.idempierelbr.nfe.stub.generic.RecepcaoEventoStub.NfeCabecMsgE cabecMsgE =
					new org.idempierelbr.nfe.stub.generic.RecepcaoEventoStub.NfeCabecMsgE();
			cabecMsg.setCUF(region.get_ValueAsString("LBR_RegionCode"));
			cabecMsg.setVersaoDados(versionNo);
			cabecMsgE.setNfeCabecMsg(cabecMsg);
			try {
				// Message
				org.idempierelbr.nfe.stub.generic.RecepcaoEventoStub.NfeDadosMsg dadosMsg =
						org.idempierelbr.nfe.stub.generic.RecepcaoEventoStub.NfeDadosMsg.Factory.parse(reader);
				
				OMElement ome = addAttribute(dadosMsg.getExtraElement(), "evento", "xmlns", "http://www.portalfiscal.inf.br/nfe");			  
				dadosMsg.setExtraElement(ome);
				
				// Stub
				org.idempierelbr.nfe.stub.generic.RecepcaoEventoStub stub =
						new org.idempierelbr.nfe.stub.generic.RecepcaoEventoStub(url);
				result = stub.nfeRecepcaoEvento(dadosMsg, cabecMsgE).getExtraElement().toString();
			} catch (Exception e) {
				e.printStackTrace();
				return null;
			}
		} else if (service.equals(MLBRNFeWebService.SERVICE_NFE_AUTORIZACAO)) {
			// Header
			org.idempierelbr.nfe.stub.generic.NfeAutorizacaoStub.NfeCabecMsg cabecMsg =
					new org.idempierelbr.nfe.stub.generic.NfeAutorizacaoStub.NfeCabecMsg();
			org.idempierelbr.nfe.stub.generic.NfeAutorizacaoStub.NfeCabecMsgE cabecMsgE =
					new org.idempierelbr.nfe.stub.generic.NfeAutorizacaoStub.NfeCabecMsgE();
			cabecMsg.setCUF(region.get_ValueAsString("LBR_RegionCode"));
			cabecMsg.setVersaoDados(versionNo);
			cabecMsgE.setNfeCabecMsg(cabecMsg);
			try {
				// Message
				org.idempierelbr.nfe.stub.generic.NfeAutorizacaoStub.NfeDadosMsg dadosMsg =
						org.idempierelbr.nfe.stub.generic.NfeAutorizacaoStub.NfeDadosMsg.Factory.parse(reader);
				
				OMElement ome = addAttribute(dadosMsg.getExtraElement(), "NFe", "xmlns", "http://www.portalfiscal.inf.br/nfe");			  
				dadosMsg.setExtraElement(ome);

				// Stub
				org.idempierelbr.nfe.stub.generic.NfeAutorizacaoStub stub =
						new org.idempierelbr.nfe.stub.generic.NfeAutorizacaoStub(url);
				result = stub.nfeAutorizacaoLote(dadosMsg, cabecMsgE).getExtraElement().toString();
			} catch (Exception e) {
				e.printStackTrace();
				return null;
			}
		} else if (service.equals(MLBRNFeWebService.SERVICE_NFE_RET_AUTORIZACAO)) {
			// Header
			org.idempierelbr.nfe.stub.generic.NfeRetAutorizacaoStub.NfeCabecMsg cabecMsg =
					new org.idempierelbr.nfe.stub.generic.NfeRetAutorizacaoStub.NfeCabecMsg();
			org.idempierelbr.nfe.stub.generic.NfeRetAutorizacaoStub.NfeCabecMsgE cabecMsgE =
					new org.idempierelbr.nfe.stub.generic.NfeRetAutorizacaoStub.NfeCabecMsgE();
			cabecMsg.setCUF(region.get_ValueAsString("LBR_RegionCode"));
			cabecMsg.setVersaoDados(versionNo);
			cabecMsgE.setNfeCabecMsg(cabecMsg);
			try {
				// Message
				org.idempierelbr.nfe.stub.generic.NfeRetAutorizacaoStub.NfeDadosMsg dadosMsg =
						org.idempierelbr.nfe.stub.generic.NfeRetAutorizacaoStub.NfeDadosMsg.Factory.parse(reader);
				// Stub
				org.idempierelbr.nfe.stub.generic.NfeRetAutorizacaoStub stub =
						new org.idempierelbr.nfe.stub.generic.NfeRetAutorizacaoStub(url);
				result = stub.nfeRetAutorizacaoLote(dadosMsg, cabecMsgE).getExtraElement().toString();
			} catch (Exception e) {
				e.printStackTrace();
				throw e;
				//return null;
			}
		} else
			throw new UnsupportedOperationException();
		
		return result;
	}
	
	private OMElement addAttribute(OMElement ome, String childrenName, String attribName, String attribValue) {
		Iterator<?> children = ome.getChildrenWithLocalName(childrenName);
		
		while (children.hasNext()) {  
			OMElement omElement = (OMElement) children.next();
			
			if ((omElement != null) && (childrenName.equals(omElement.getLocalName()))) {    
				omElement.addAttribute(attribName, attribValue, null);    
			}  
		}
		
		return ome;
	}
}