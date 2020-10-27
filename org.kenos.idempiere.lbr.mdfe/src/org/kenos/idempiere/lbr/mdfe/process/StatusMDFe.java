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

import java.io.StringReader;
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
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.adempierelbr.wrapper.I_W_C_City;
import org.compiere.model.MCity;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MRefList;
import org.compiere.model.MSysConfig;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.kenos.idempiere.lbr.base.event.IDocFiscalHandler;
import org.kenos.idempiere.lbr.base.event.IDocFiscalHandlerFactory;
import org.kenos.idempiere.lbr.base.model.SysConfig;
import org.kenos.idempiere.lbr.mdfe.model.MLBRMDFe;
import org.kenos.idempiere.lbr.mdfe.util.MDFeUtil;

import br.inf.portalfiscal.mdfe.ConsStatServMDFeDocument;
import br.inf.portalfiscal.mdfe.RetConsStatServMDFeDocument;
import br.inf.portalfiscal.mdfe.TAmb;
import br.inf.portalfiscal.mdfe.TConsStatServ;
import br.inf.portalfiscal.mdfe.TRetConsStatServ;
import br.inf.portalfiscal.www.mdfe.wsdl.mdfestatusservico.MDFeStatusServicoStub;

/**
 * 		Consulta a disponibilidade do serviço MDF-e
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: StatusMDFe.java, v1.0 2014/01/31 9:01:51 AM, ralexsander Exp $
 */
public class StatusMDFe extends SvrProcess
{
	/**	Organization		*/
	private int p_AD_Org_ID 		= 0;
	
	/**	Legacy Process Name	*/
	public static String PROCESS_NAME = "org.adempierelbr.process.StatusMDFe";
	
	@SuppressWarnings("unused")
	private String p_LBR_CommType	= MLBRMDFe.LBR_COMMTYPE_Regular;
	
	private String p_LBR_NFeEnv		= MLBRMDFe.LBR_NFEENV_Production;
	
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
			
			else if (MLBRNotaFiscal.COLUMNNAME_AD_Org_ID.equals(name))
				p_AD_Org_ID = para[i].getParameterAsInt();
			
			else if (MLBRMDFe.COLUMNNAME_LBR_CommType.equals(name))
				p_LBR_CommType = (String) para[i].getParameter();
			
			else if (MLBRMDFe.COLUMNNAME_lbr_NFeEnv.equals(name))
				p_LBR_NFeEnv = (String) para[i].getParameter();
			
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
	}	//	prepare

	/**
	 *  Perform process.
	 *  @return Message
	 *  @throws Exception if not successful
	 */
	protected String doIt()
	{
		log.info ("StatusMDFe Process");
		
		if (p_AD_Org_ID <= 0)
			throw new AdempiereException ("@FillMandatory@ @AD_Org_ID@");
		
		try
		{
			MOrgInfo oi = MOrgInfo.get(getCtx(), p_AD_Org_ID, null);
			I_W_C_City city = POWrapper.create(new MCity (getCtx(), oi.getC_Location().getC_City_ID(), null), I_W_C_City.class);
			
			//	Certificado
			MLBRDigitalCertificate.setCertificate (getCtx(), oi.getAD_Org_ID());
			
			//	XML
			ConsStatServMDFeDocument statDoc = ConsStatServMDFeDocument.Factory.newInstance();
			TConsStatServ status = statDoc.addNewConsStatServMDFe();
			status.setTpAmb(TAmb.Enum.forString(p_LBR_NFeEnv));
			status.setVersao(MDFeUtil.VERSION);
			status.setXServ(MDFeUtil.STATUS);
			
			StringBuilder xml = new StringBuilder (statDoc.xmlText(NFeUtil.getXmlOpt()));
			log.fine (xml.toString());
			
//			ValidaXML.ValidaDocEx (sw.toString(), MDFeUtil.XSD_VERSION + "/consStatServMDFe_v1.00.xsd");

			String regionCode = (city.getlbr_CityCode()+"").substring(0, 2);
			MLBRNFeWebService ws = MLBRNFeWebService.get (MDFeUtil.TYPE_STATUS, p_LBR_NFeEnv, MDFeUtil.VERSION, MDFeUtil.MDFE_REGION);
			
			String remoteURL = MSysConfig.getValue(SysConfig.LBR_REMOTE_PKCS11_URL, oi.getAD_Client_ID(), oi.getAD_Org_ID());
			final StringBuilder respStatus = new StringBuilder("");
			
			//	Try to find a service for PKCS#11 for transmit
			IDocFiscalHandler handler = null;
			List<IDocFiscalHandlerFactory> list = Service.locator ().list (IDocFiscalHandlerFactory.class).getServices();
			for (IDocFiscalHandlerFactory docFiscal : list)
			{
				handler = docFiscal.getHandler (StatusMDFe.class.getName());
				if (handler != null)
					break;
			}
			
			// 	We have both, the URL for the local app and the Plugin transmitter
			if (remoteURL != null && handler != null)
			{
				synchronized (respStatus)
				{
					String uuid = UUID.randomUUID().toString();
					handler.transmitDocument(IDocFiscalHandler.DOC_NFE_STATUS, oi.get_ValueAsString(I_W_AD_OrgInfo.COLUMNNAME_lbr_CNPJ), 
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
				MDFeStatusServicoStub.MdfeCabecMsg header = new MDFeStatusServicoStub.MdfeCabecMsg ();
				header.setCUF(regionCode);
				header.setVersaoDados(MDFeUtil.VERSION);
				
				MDFeStatusServicoStub.MdfeCabecMsgE headerE = new MDFeStatusServicoStub.MdfeCabecMsgE ();
				headerE.setMdfeCabecMsg(header);
				
				XMLStreamReader xmlReader = XMLInputFactory.newInstance().createXMLStreamReader(new StringReader(MDFeUtil.getWrapped (xml)));
				
				//	Conteúdo
				MDFeStatusServicoStub.MdfeDadosMsg content = MDFeStatusServicoStub.MdfeDadosMsg.Factory.parse (xmlReader);
				
				//	Consulta
				MDFeStatusServicoStub stub = new MDFeStatusServicoStub(ws.getURL());
				
				respStatus.append(MDFeUtil.HEADER + stub.mdfeStatusServicoMDF (content, headerE).getExtraElement().toString());
			}

			log.fine (respStatus.toString());
			
			TRetConsStatServ ret = RetConsStatServMDFeDocument.Factory.parse(respStatus.toString()).getRetConsStatServMDFe();
			
			StringBuilder msg = new StringBuilder("<br />");
			msg.append("<br />Ambiente: ").append(ret.getTpAmb()).append(" - ").append(MRefList.getListName (getCtx(), MLBRMDFe.LBR_NFEENV_AD_Reference_ID, ret.getTpAmb().toString()));
			msg.append("<br />Versão: ").append(ret.getVerAplic());
			
			if ("107".equals(ret.getCStat()))	//	OK
			{
				msg.append("<font color=\"008800\">");
				msg.append("<br />Estado: ").append(ret.getCStat()).append(" - ").append(ret.getXMotivo());
				msg.append("</font>");
			}
			else
			{
				msg.append("<font color=\"880000\">");
				msg.append("<br />Estado: ").append(ret.getCStat()).append(" - ").append(ret.getXMotivo());
				msg.append("</font>");
			}
			msg.append("<br />UF: ").append(ret.getCUF());
			msg.append("<br />Data/Hora: ").append (MDFeUtil.formatTime (ret.getDhRecbto().toString()));
			
			if (ret.getTMed() != null)
				msg.append("<br />Tempo Médio de Processamento: ").append(ret.getTMed()).append(" minuto(s)");
			
			if (ret.getDhRetorno() != null)
			{
				msg.append("<font color=\"880000\">");
				msg.append("<br />Previsão de Retorno: ").append(ret.getDhRetorno());
				msg.append("</font>");
			}
			
			if (ret.getXObs() != null)
				msg.append("<br />Obs: ").append(ret.getXObs());
			//
			return "@Success@ " + msg.toString();
		}
		catch (Exception e)
		{
			e.printStackTrace();
			return "@Error@. Problemas na consulta do serviço, verifique diretamente no site https://bit.ly/3dVJE5x. <br /><br />" + e.getMessage();
		}
	}	//	doIt
}	//	StatusMDFe
