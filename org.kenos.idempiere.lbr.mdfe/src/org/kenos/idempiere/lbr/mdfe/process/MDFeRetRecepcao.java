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
import java.util.List;
import java.util.Properties;
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
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.adempierelbr.wrapper.I_W_C_City;
import org.compiere.Adempiere;
import org.compiere.model.MAttachment;
import org.compiere.model.MCity;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MSysConfig;
import org.compiere.model.PO;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogMgt;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.kenos.idempiere.lbr.base.event.IDocFiscalHandler;
import org.kenos.idempiere.lbr.base.event.IDocFiscalHandlerFactory;
import org.kenos.idempiere.lbr.base.model.SysConfig;
import org.kenos.idempiere.lbr.mdfe.model.MLBRMDFe;
import org.kenos.idempiere.lbr.mdfe.util.MDFeUtil;

import br.inf.portalfiscal.mdfe.ConsReciMDFeDocument;
import br.inf.portalfiscal.mdfe.RetConsReciMDFeDocument;
import br.inf.portalfiscal.mdfe.TAmb;
import br.inf.portalfiscal.mdfe.TConsReciMDFe;
import br.inf.portalfiscal.mdfe.TRetConsReciMDFe;
import br.inf.portalfiscal.www.mdfe.wsdl.mdferetrecepcao.MDFeRetRecepcaoStub;

/**
 * 		Retorno do Envio do MDFe
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: RetRecepcao.java, v1.0 2014/02/01 00:02:49, ralexsander Exp $
 */
public class MDFeRetRecepcao extends SvrProcess
{
	/**	Static Logger	*/
	private static CLogger	s_log	= CLogger.getCLogger (MDFeRetRecepcao.class);
	
	/**	Legacy Process Name	*/
	public static String PROCESS_NAME = "org.adempierelbr.process.MDFeRetRecepcao";
	
	/**	Organization		*/
	private int p_AD_Org_ID 		= 0;
	
	private int p_Record_ID 		= 0;
	
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
				s_log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
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
		try
		{
			//	Consulta única
			if (p_Record_ID > 0)
				processReturn (new MLBRMDFe(getCtx(), p_Record_ID, get_TrxName()));
				
			else
			{
				if (p_AD_Org_ID == 0 || p_LBR_NFeEnv == null)
					throw new AdempiereException ("@FillMandatory@  @AD_Org_ID@, @lbr_NFeEnv@");
				
				Query query =  new Query (getCtx(), MLBRMDFe.Table_Name, "LBR_NFeStatus IN (?,?) AND AD_Org_ID=? AND LBR_NFeEnv=?", get_TrxName());
		 		  		query.setParameters(new Object[]{MDFeUtil.STATUS_RECEBIDO, MDFeUtil.STATUS_EM_PROCESSAMENTO, p_AD_Org_ID, p_LBR_NFeEnv});
			 	//
			 	for (PO mdfe : query.list())
			 		processReturn ((MLBRMDFe) mdfe);
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
			return "@Error@ " + e.getMessage();
		}
		return "@Success@";
	}	//	doIt
	
	/**
	 * 	Processa o Retorno do MDFe
	 * 	@param mdfe
	 * 	@throws Exception
	 */
	public static void processReturn (MLBRMDFe mdfe) throws Exception
	{
		if (mdfe == null 
				|| !TextUtil.match (mdfe.getlbr_NFeStatus(), MDFeUtil.STATUS_RECEBIDO, MDFeUtil.STATUS_EM_PROCESSAMENTO))
			throw new AdempiereException ("@Error@ @lbr_NFeStatus@ invalido");
		
		Properties ctx = mdfe.getCtx();
		
		MOrgInfo oi = MOrgInfo.get (ctx, mdfe.getAD_Org_ID(), null);
		I_W_C_City city = POWrapper.create (new MCity (ctx, oi.getC_Location().getC_City_ID(), null), I_W_C_City.class);
		
		//	Certificado
		MLBRDigitalCertificate.setCertificate (ctx, mdfe.getAD_Org_ID());

		String regionCode = (city.getlbr_CityCode()+"").substring(0, 2);
		MLBRNFeWebService ws = MLBRNFeWebService.get (MDFeUtil.TYPE_RETRECEPCAO, mdfe.getlbr_NFeEnv(), MDFeUtil.VERSION, MDFeUtil.MDFE_REGION);
		
		//	XML
		ConsReciMDFeDocument recDoc = ConsReciMDFeDocument.Factory.newInstance();
		
		TConsReciMDFe rec = recDoc.addNewConsReciMDFe();
		rec.setVersao(MDFeUtil.VERSION);
		rec.setTpAmb(TAmb.Enum.forString(mdfe.getlbr_NFeEnv()));
		rec.setNRec(mdfe.getlbr_NFeRecID());
		
		StringBuilder xml = new StringBuilder (recDoc.xmlText(NFeUtil.getXmlOpt()));
		
		s_log.fine (xml.toString());
				
		XMLStreamReader xmlReader = XMLInputFactory.newInstance().createXMLStreamReader(new StringReader(MDFeUtil.getWrapped (xml)));
		
		String remoteURL = MSysConfig.getValue(SysConfig.LBR_REMOTE_PKCS11_URL, mdfe.getAD_Client_ID(), mdfe.getAD_Org_ID());
		final StringBuilder respStatus = new StringBuilder("");
		
		//	Try to find a service for PKCS#11 for transmit
		IDocFiscalHandler handler = null;
		List<IDocFiscalHandlerFactory> list = Service.locator ().list (IDocFiscalHandlerFactory.class).getServices();
		for (IDocFiscalHandlerFactory docFiscal : list)
		{
			handler = docFiscal.getHandler (MDFeRetRecepcao.class.getName());
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
			MDFeRetRecepcaoStub.MdfeCabecMsg header = new MDFeRetRecepcaoStub.MdfeCabecMsg ();
			header.setCUF(regionCode);
			header.setVersaoDados(MDFeUtil.VERSION);
			
			MDFeRetRecepcaoStub.MdfeCabecMsgE headerE = new MDFeRetRecepcaoStub.MdfeCabecMsgE ();
			headerE.setMdfeCabecMsg(header);
			
			//	Conteúdo
			MDFeRetRecepcaoStub.MdfeDadosMsg content = MDFeRetRecepcaoStub.MdfeDadosMsg.Factory.parse (xmlReader);
			
			//	Consulta
			MDFeRetRecepcaoStub stub = new MDFeRetRecepcaoStub(ws.getURL());
			
			respStatus.append(MDFeUtil.HEADER + stub.mdfeRetRecepcao (content, headerE).getExtraElement().toString());
		}
		
		s_log.fine (respStatus.toString());
		
		TRetConsReciMDFe ret = RetConsReciMDFeDocument.Factory.parse(respStatus.toString()).getRetConsReciMDFe();
		
		if (MDFeUtil.STATUS_PROCESSADO.equals (ret.getCStat()) && ret.getProtMDFe() != null && ret.getProtMDFe().getInfProt() != null)
		{
			mdfe.setlbr_NFeStatus(ret.getProtMDFe().getInfProt().getCStat());
			mdfe.setlbr_NFeAnswerStatus(ret.getProtMDFe().getInfProt().getCStat() + "-" + ret.getProtMDFe().getInfProt().getXMotivo());
			//
			mdfe.setDateTrx (TextUtil.stringToTime (ret.getProtMDFe().getInfProt().getDhRecbto().toString(), "yyyy-MM-dd'T'HH:mm:ss"));
			
			if (MDFeUtil.STATUS_AUTORIZADO.equals (ret.getProtMDFe().getInfProt().getCStat()))
			{
				if (ret.getProtMDFe().getInfProt().getNProt() != null)
					mdfe.setlbr_NFeProt(ret.getProtMDFe().getInfProt().getNProt());
				
				if (ret.getProtMDFe().getInfProt().getDigVal() != null)
					mdfe.setlbr_DigestValue(ret.getProtMDFe().getInfProt().xgetDigVal().getStringValue());
				
				//	Add Attachment Entry
				MAttachment attachment = mdfe.createAttachment();
				//
				attachment.addEntry (new File (TextUtil.generateTmpFile (respStatus.toString(), mdfe.getlbr_NFeRecID() + "-pro-rec.xml")));
				attachment.save();
				
				mdfe.setProcessed(true);
				mdfe.setDocStatus(MLBRMDFe.DOCSTATUS_Completed);
				mdfe.setDocAction(MLBRMDFe.DOCACTION_Close);
			}
			
			else
			{
				mdfe.setProcessed(false);
				mdfe.setDocStatus(MLBRMDFe.DOCSTATUS_InProgress);
				mdfe.setDocAction(MLBRMDFe.DOCACTION_Complete);
			}
		}
		
		else
		{
			mdfe.setlbr_NFeStatus(ret.getCStat());
			mdfe.setlbr_NFeAnswerStatus(ret.getCStat() + "-" + ret.getXMotivo());
			
			/**
			 * 		Para estado Em Processamento, 
			 * 	o documento deve continuar processado, para outros 
			 * 	deve ser liberado novamente para alteração.
			 */
			if (!MDFeUtil.STATUS_EM_PROCESSAMENTO.equals (ret.getCStat()))
			{
				mdfe.setProcessed(false);
				mdfe.setDocStatus(MLBRMDFe.DOCSTATUS_InProgress);
				mdfe.setDocAction(MLBRMDFe.DOCACTION_Complete);
			}
		}		
	}	//	getReturn
	
	public static void main(String[] args) 
	{
		Adempiere.startupEnvironment(false);
		CLogMgt.setLevel(Level.FINE);
		s_log.info("Retorno da Recepção");
		s_log.info("------------------");
		ProcessInfo pi = new ProcessInfo("Retorno da Recepção", 1120134);
		pi.setAD_Client_ID(2000000);
		pi.setAD_User_ID(100);
		pi.setRecord_ID(1000003);
		
		MDFeRetRecepcao rr = new MDFeRetRecepcao();
		rr.startProcess (Env.getCtx(), pi, null);
		
		System.out.println("Process=" + pi.getTitle() + " Error="+pi.isError() + " Summary=" + pi.getSummary());
	}
}	//	RetRecepcao
