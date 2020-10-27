/******************************************************************************
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * Copyright (C) 2011 Ricardo Santana                                         *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.kenos.idempiere.lbr.mdfe.process;

import java.io.File;
import java.io.StringReader;
import java.sql.Timestamp;
import java.util.List;
import java.util.UUID;
import java.util.logging.Level;

import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamReader;

import org.adempiere.base.Service;
import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRDigitalCertificate;
import org.adempierelbr.model.MLBRNFeWebService;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.SignatureUtil;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.adempierelbr.wrapper.I_W_C_City;
import org.apache.xmlbeans.XmlCursor;
import org.compiere.model.MAttachment;
import org.compiere.model.MCity;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MSysConfig;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.kenos.idempiere.lbr.base.event.IDocFiscalHandler;
import org.kenos.idempiere.lbr.base.event.IDocFiscalHandlerFactory;
import org.kenos.idempiere.lbr.base.model.SysConfig;
import org.kenos.idempiere.lbr.mdfe.model.MLBRMDFe;
import org.kenos.idempiere.lbr.mdfe.model.MLBRMDFeDriver;
import org.kenos.idempiere.lbr.mdfe.model.MLBRMDFeDriverInstance;
import org.kenos.idempiere.lbr.mdfe.util.MDFeUtil;

import br.inf.portalfiscal.mdfe.EvIncCondutorMDFeDocument;
import br.inf.portalfiscal.mdfe.EventoMDFeDocument;
import br.inf.portalfiscal.mdfe.RetEventoMDFeDocument;
import br.inf.portalfiscal.mdfe.TAmb;
import br.inf.portalfiscal.mdfe.TCOrgaoIBGE;
import br.inf.portalfiscal.mdfe.TEvento;
import br.inf.portalfiscal.mdfe.TEvento.InfEvento;
import br.inf.portalfiscal.mdfe.TEvento.InfEvento.DetEvento;
import br.inf.portalfiscal.www.mdfe.wsdl.mdferecepcaoevento.MDFeRecepcaoEventoStub;


/**
 * 		Registro de Eventos
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MDFeRegEvento.java, v1.0 2014/02/02 22:47:09 PM, ralexsander Exp $
 */
public class MDFeRegEvento extends SvrProcess
{
	/**	Static Logger	*/
	private static CLogger	s_log	= CLogger.getCLogger (MDFeRegEvento.class);
	
	/**	Legacy Process Name	*/
	public static String PROCESS_NAME = "org.adempierelbr.process.MDFeRegEvento";
	
	private int p_Record_ID 			= 0;
	
	private int p_LBR_MDFeDriver_ID		= 0;
	
	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			
			else if (name.equals(MLBRMDFeDriver.COLUMNNAME_LBR_MDFeDriver_ID))
				p_LBR_MDFeDriver_ID = para[i].getParameterAsInt();
			
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
		//
		p_Record_ID = getRecord_ID();
	}	//	prepare

	/**
	 *  Perform process.
	 *  @return Message
	 *  @throws Exception if not successful
	 */
	protected String doIt () 
	{
		if (p_LBR_MDFeDriver_ID < 0)
			throw new AdempiereException ("Cadastro do Motorista não encontrado.");
		
		int count = DB.getSQLValue (get_TrxName(), "SELECT COUNT(*) FROM LBR_MDFe_DriverInstance WHERE LBR_MDFeDriver_ID=? AND LBR_MDFe_ID=?", p_LBR_MDFeDriver_ID, p_Record_ID);
		
		if (count != 0)
			throw new AdempiereException ("Motorista já habilitado para este manifesto");
		
		MLBRMDFe mdfe = new MLBRMDFe (getCtx(), p_Record_ID, get_TrxName());
		MLBRMDFeDriver driver = new MLBRMDFeDriver(getCtx(), p_LBR_MDFeDriver_ID, get_TrxName());
		
		/**
		 * 	Evento de Inclusão de Condutor
		 */
		EvIncCondutorMDFeDocument incDoc = EvIncCondutorMDFeDocument.Factory.newInstance();
		EvIncCondutorMDFeDocument.EvIncCondutorMDFe inc = incDoc.addNewEvIncCondutorMDFe();
		inc.setDescEvento (EvIncCondutorMDFeDocument.EvIncCondutorMDFe.DescEvento.INCLUSAO_CONDUTOR);

		br.inf.portalfiscal.mdfe.EvIncCondutorMDFeDocument.EvIncCondutorMDFe.Condutor condutor = inc.addNewCondutor();
		condutor.setCPF(TextUtil.toNumeric (driver.getlbr_CPF()));
		condutor.setXNome(driver.getName().trim());
		
		//	Contador de Motoristas adicionados
		count = DB.getSQLValue (get_TrxName(), "SELECT COUNT(*)+1 FROM LBR_MDFe_DriverInstance WHERE lbr_NFeProt IS NOT NULL AND LBR_MDFe_ID=?", mdfe.getLBR_MDFe_ID());
		
		try
		{
			RetEventoMDFeDocument ret = MDFeRegEvento.registerEvent (mdfe, new Timestamp (System.currentTimeMillis()), MDFeUtil.EVENTO_INCLUSAO_CONDUTOR, count, inc.newCursor());
			//
			if (MDFeUtil.STATUS_EVENTO_VINCULADO.equals (ret.getRetEventoMDFe().getInfEvento().getCStat()))
			{
				//	Add Attachment Entry
				MAttachment attachment = mdfe.createAttachment ();
				//
				attachment.addEntry (new File (TextUtil.generateTmpFile (ret.xmlText (NFeUtil.getXmlOpt()), ret.getRetEventoMDFe().getInfEvento().getChMDFe() + "-env.xml")));
				attachment.save();
				
				MLBRMDFeDriverInstance di = new MLBRMDFeDriverInstance (mdfe);
				di.setLBR_MDFeDriver_ID(p_LBR_MDFeDriver_ID);
				di.setlbr_NFeProt(ret.getRetEventoMDFe().getInfEvento().getNProt());
				di.setDateTrx(TextUtil.stringToTime(ret.getRetEventoMDFe().getInfEvento().getDhRegEvento(), "yyyy-MM-dd'T'HH:mm:ss"));
				di.setLine(0);
				di.save();
				
				return "@Success@ " + ret.getRetEventoMDFe().getInfEvento().getCStat() + "-" + ret.getRetEventoMDFe().getInfEvento().getXMotivo();
			}
			else
				throw new AdempiereException (ret.getRetEventoMDFe().getInfEvento().getCStat() + "-" + ret.getRetEventoMDFe().getInfEvento().getXMotivo());
		}
		catch (Exception e)
		{
			e.printStackTrace();
			//
			return "@Error@ " + e.getMessage();
		}
	}	//	doIt
	
	/**
	 * 	Registra um evento de MDFe
	 * 	@param any
	 * 	@throws Exception 
	 */
	public static RetEventoMDFeDocument registerEvent (MLBRMDFe mdfe, Timestamp time, String eventCode, int eventCount, XmlCursor cursor) throws Exception
	{
		I_W_AD_OrgInfo oi = POWrapper.create (MOrgInfo.get (mdfe.getCtx(), mdfe.getAD_Org_ID(), null), I_W_AD_OrgInfo.class);
		I_W_C_City orgCity = POWrapper.create(new MCity (mdfe.getCtx(), oi.getC_Location().getC_City_ID(), null), I_W_C_City.class);
		//
		EventoMDFeDocument mdfeDocument = EventoMDFeDocument.Factory.newInstance();
		
		TEvento evento = mdfeDocument.addNewEventoMDFe();
		evento.setVersao(MDFeUtil.VERSION);
		
		InfEvento infEvento = evento.addNewInfEvento();
		infEvento.setCOrgao (TCOrgaoIBGE.Enum.forString (Integer.toString (orgCity.getlbr_CityCode()).substring(0,2)));
		infEvento.setTpAmb (TAmb.Enum.forString(mdfe.getlbr_NFeEnv()));
		infEvento.setCNPJ (TextUtil.toNumeric (oi.getlbr_CNPJ()));
		infEvento.setChMDFe (mdfe.getlbr_NFeID());
		infEvento.setDhEvento (MDFeUtil.formatTime (time));
		infEvento.setTpEvento (eventCode);
		infEvento.setNSeqEvento (Integer.toString (eventCount));
		infEvento.setId("ID" + eventCode + mdfe.getlbr_NFeID() + TextUtil.lPad (eventCount, 2));
		
		DetEvento detEvento = infEvento.addNewDetEvento();
		detEvento.setVersaoEvento(MDFeUtil.VERSION);

		//	Move o cursor para o XML top (XXXXDocument)
		cursor.toStartDoc();
		cursor.toNextToken();
		
		//	Move o XML Modal para o MDFe
		XmlCursor rootCursor = detEvento.newCursor();
		rootCursor.toEndToken();
		cursor.moveXml(rootCursor);
		
		//	Certificado
		MLBRDigitalCertificate.setCertificate (mdfe.getCtx(), mdfe.getAD_Org_ID());

		String regionCode = (Integer.toString (orgCity.getlbr_CityCode())).substring(0,2);
		
		//	Assinatura
		new SignatureUtil ((MOrgInfo) POWrapper.getPO(oi), SignatureUtil.EVENTO).sign (mdfeDocument, evento.newCursor());
		
		StringBuilder xml = new StringBuilder (mdfeDocument.xmlText(NFeUtil.getXmlOpt()));		
		s_log.fine (xml.toString());

		MLBRNFeWebService ws = MLBRNFeWebService.get (MDFeUtil.TYPE_RECEPCAOEVENTO, mdfe.getlbr_NFeEnv(), MDFeUtil.VERSION, MDFeUtil.MDFE_REGION);
		
		String remoteURL = MSysConfig.getValue(SysConfig.LBR_REMOTE_PKCS11_URL, mdfe.getAD_Client_ID(), mdfe.getAD_Org_ID());
		final StringBuilder respStatus = new StringBuilder("");
		
		//	Try to find a service for PKCS#11 for transmit
		IDocFiscalHandler handler = null;
		List<IDocFiscalHandlerFactory> list = Service.locator ().list (IDocFiscalHandlerFactory.class).getServices();
		for (IDocFiscalHandlerFactory docFiscal : list)
		{
			handler = docFiscal.getHandler (MDFeRegEvento.class.getName());
			if (handler != null)
				break;
		}
		
		// 	We have both, the URL for the local app and the Plugin transmitter
		if (remoteURL != null && handler != null)
		{
			synchronized (respStatus)
			{
				String uuid = UUID.randomUUID().toString();
				handler.transmitDocument(IDocFiscalHandler.DOC_NFE_STATUS, oi.getlbr_CNPJ(), 
						uuid, remoteURL, ws.getURL(), regionCode, MDFeUtil.getWrapped (xml), respStatus);
				
				//	Wait until process is completed
				respStatus.wait();
				
				//	Error message
				if (respStatus.toString().startsWith("@Error="))
					throw new Exception (respStatus.toString().substring(7));
			}	//	synchronized
		}
		else
		{
			//	Cabeçalho
			MDFeRecepcaoEventoStub.MdfeCabecMsg header = new MDFeRecepcaoEventoStub.MdfeCabecMsg();
			header.setCUF (regionCode);
			header.setVersaoDados(MDFeUtil.VERSION);
			
			MDFeRecepcaoEventoStub.MdfeCabecMsgE headerE = new MDFeRecepcaoEventoStub.MdfeCabecMsgE();
			headerE.setMdfeCabecMsg(header);

			//	Conteúdo
			XMLStreamReader xmlReader = XMLInputFactory.newInstance().createXMLStreamReader(new StringReader(MDFeUtil.getWrapped (xml)));
			MDFeRecepcaoEventoStub.MdfeDadosMsg content = MDFeRecepcaoEventoStub.MdfeDadosMsg.Factory.parse (xmlReader);
			
			//	Consulta
			MDFeRecepcaoEventoStub stub = new MDFeRecepcaoEventoStub(ws.getURL());
			
			respStatus.append(MDFeUtil.HEADER + stub.mdfeRecepcaoEvento (content, headerE).getExtraElement().toString());
		}
		s_log.fine (respStatus.toString());
		
		return RetEventoMDFeDocument.Factory.parse (respStatus.toString());
	}	//	registerEvent
}	//	MDFeRegEvento
