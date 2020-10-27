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

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.StringReader;
import java.sql.Timestamp;
import java.util.Base64;
import java.util.List;
import java.util.Properties;
import java.util.UUID;
import java.util.logging.Level;
import java.util.zip.GZIPOutputStream;

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
import org.compiere.model.MAttachment;
import org.compiere.model.MCity;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MSysConfig;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.kenos.idempiere.lbr.base.event.IDocFiscalHandler;
import org.kenos.idempiere.lbr.base.event.IDocFiscalHandlerFactory;
import org.kenos.idempiere.lbr.base.model.SysConfig;
import org.kenos.idempiere.lbr.mdfe.model.MLBRMDFe;
import org.kenos.idempiere.lbr.mdfe.util.MDFeUtil;

import br.inf.portalfiscal.mdfe.MDFeDocument;
import br.inf.portalfiscal.mdfe.RetMDFeDocument;
import br.inf.portalfiscal.mdfe.TMDFe;
import br.inf.portalfiscal.mdfe.TRetMDFe;
import br.inf.portalfiscal.www.mdfe.wsdl.mdferecepcaosinc.MDFeRecepcaoSincStub;

/**
 * 		Retorno do Envio do MDFe
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: RetRecepcao.java, v1.0 2014/02/01 00:02:49, ralexsander Exp $
 */
public class MDFeRecepcao extends SvrProcess
{
	/**	Static Logger	*/
	private static CLogger	s_log	= CLogger.getCLogger (MDFeRecepcao.class);
	
	/**	Legacy Process Name	*/
	public static String PROCESS_NAME = "org.adempierelbr.process.MDFeRecepcao";
	
	private int p_Record_ID 		= 0;
	
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
		MLBRMDFe mdfe = new MLBRMDFe (getCtx(), p_Record_ID, get_TrxName());
		
		try
		{
			sendDocument (mdfe);
			mdfe.save();
		}
		catch (Exception e)
		{
			e.printStackTrace();
			return "@Error@ " + e.getMessage();
		}
		
		return "@Success@ " + mdfe.getlbr_NFeAnswerStatus();
	}	//	doIt
	
	/**
	 * 	Processa o Retorno do MDFe
	 * 	@param mdfe
	 * 	@return Status
	 * 	@throws Exception
	 */
	public static void sendDocument (MLBRMDFe mdfe) throws Exception
	{
		if (mdfe == null)
			throw new AdempiereException ("@Error@ @lbr_NFeStatus@ invalido");
		
		Properties p_ctx = mdfe.getCtx();

		// 	Preenche a data da emissão com a data atual
		mdfe.setDateDoc	(new Timestamp (System.currentTimeMillis()));
		
		//	Gera o XML
		MDFeDocument mdfeDoc = mdfe.getMDFe();
		TMDFe tMDFe = mdfeDoc.getMDFe();

		//	Assina o XML
		MOrgInfo oi = MOrgInfo.get(mdfe.getCtx(), mdfe.getAD_Org_ID(), null);
		new SignatureUtil (oi, SignatureUtil.RECEPCAO_MDFE).sign (mdfeDoc, tMDFe.newCursor());
		
		StringBuilder sb = MDFeUtil.removeNS (new StringBuilder ("<![CDATA[" + encode (compress (mdfeDoc.xmlText(NFeUtil.getXmlOpt ()))) + "]]>"));
		
		//	Validate document
		NFeUtil.validate (mdfeDoc);
		
		//	XML
		String wrapped = MDFeUtil.getWrapped (sb, "mdfeDadosMsg", "http://www.portalfiscal.inf.br/mdfe/wsdl/MDFeRecepcaoSinc");
		XMLStreamReader data = XMLInputFactory.newInstance().createXMLStreamReader(new StringReader(wrapped));

		//	Prepara a Transmissão
		MLBRDigitalCertificate.setCertificate (p_ctx, mdfe.getAD_Org_ID());
		
		I_W_C_City city = POWrapper.create (new MCity (p_ctx, MOrgInfo.get(p_ctx, mdfe.getAD_Org_ID(), null).getC_Location().getC_City_ID(), null), I_W_C_City.class);

		MLBRNFeWebService url = MLBRNFeWebService.get (MDFeUtil.TYPE_RECEPCAOSINC, mdfe.getlbr_NFeEnv(), MDFeUtil.VERSION, MDFeUtil.MDFE_REGION);
		if (url == null)
			throw new Exception ("URL for MDF-e not found");

		String region = (city.getlbr_CityCode()+"").substring(0, 2);
		String remoteURL = MSysConfig.getValue(SysConfig.LBR_REMOTE_PKCS11_URL, mdfe.getAD_Client_ID(), mdfe.getAD_Org_ID());
		final StringBuilder result = new StringBuilder();
		
		//	Try to find a service for PKCS#11 for transmit
		IDocFiscalHandler handler = null;
		List<IDocFiscalHandlerFactory> list = Service.locator ().list (IDocFiscalHandlerFactory.class).getServices();
		for (IDocFiscalHandlerFactory docFiscal : list)
		{
			handler = docFiscal.getHandler (MDFeRecepcao.class.getName());
			if (handler != null)
				break;
		}
		
		// 	We have both, the URL for the local app and the Plugin transmitter
		if (remoteURL != null && handler != null)
		{
			synchronized (result)
			{
				String uuid = UUID.randomUUID().toString();
				handler.transmitDocument(IDocFiscalHandler.DOC_NFE_STATUS, oi.get_ValueAsString(I_W_AD_OrgInfo.COLUMNNAME_lbr_CNPJ), 
						uuid, remoteURL, url.getURL(), region, MDFeUtil.getWrapped (sb), result);	//	FIXME MDFe URL
				
				//	Wait until process is completed
				result.wait();
				
				//	Error message
				if (result.toString().startsWith("@Error="))
					throw new Exception (result.toString().substring(7));
			}	//	synchronized
		}
		else
		{
			//	Conteúdo
			MDFeRecepcaoSincStub.MdfeDadosMsg content = MDFeRecepcaoSincStub.MdfeDadosMsg.Factory.parse (data);
			
			//	Consulta
			MDFeRecepcaoSincStub stub = new MDFeRecepcaoSincStub(url.getURL());
			
			result.append(MDFeUtil.HEADER + stub.mdfeRecepcao (content).getExtraElement().toString());
		}
		
		s_log.fine (result.toString());

		TRetMDFe ret = RetMDFeDocument.Factory.parse (result.toString()).getRetMDFe();
		
		if (MDFeUtil.STATUS_AUTORIZADO.equals (ret.getCStat()) && ret.getProtMDFe() != null && ret.getProtMDFe().getInfProt() != null)
		{
			mdfe.setlbr_NFeStatus(ret.getProtMDFe().getInfProt().getCStat());
			mdfe.setlbr_NFeAnswerStatus(ret.getProtMDFe().getInfProt().getCStat() + "-" + ret.getProtMDFe().getInfProt().getXMotivo());
			//
			mdfe.setlbr_NFeID(ret.getProtMDFe().getInfProt().getChMDFe());
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
				attachment.addEntry (new File (TextUtil.generateTmpFile (result.toString(), mdfe.getlbr_NFeID() + "-pro-rec.xml")));
				attachment.save();
				
				attachment.addEntry (new File (TextUtil.generateTmpFile (MDFeUtil.HEADER + mdfeDoc.xmlText(NFeUtil.getXmlOpt ()), mdfe.getlbr_NFeID() + "-mdfe.xml")));
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
	

	private static String encode(byte[] compress)
	{  
		byte[] encoded = Base64.getEncoder().encode(compress);  
		return new String(encoded);  
	}  
	
	public static byte[] compress(String data) throws IOException 
	{
		ByteArrayOutputStream bos = new ByteArrayOutputStream(data.length());
		GZIPOutputStream gzip = new GZIPOutputStream(bos);
		gzip.write(data.getBytes());
		gzip.close();
		byte[] compressed = bos.toByteArray();
		bos.close();
		return compressed;
	}
}	//	RetRecepcao
