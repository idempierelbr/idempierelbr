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
package org.kenos.idempiere.lbr.mdfe.model;

import java.io.File;
import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Arrays;
import java.util.List;
import java.util.Properties;
import java.util.Random;
import java.util.stream.Collectors;

import javax.xml.bind.JAXBException;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRAuthorizedAccessXML;
import org.adempierelbr.model.MLBRNFConfig;
import org.idempierelbr.nfe.model.MLBRNFeWebService;
import org.adempierelbr.model.X_LBR_SystemResponsible;
import org.idempierelbr.nfe.beans.ChaveNFE;
import org.idempierelbr.nfe.util.NFeUtil;
// import org.idempierelbr.core.util.SignatureUtil;
import org.idempierelbr.core.util.TextUtil;
import org.idempierelbr.tax.wrapper.I_W_AD_OrgInfo;
import org.idempierelbr.core.wrapper.I_W_C_BPartner;
// import org.adempierelbr.wrapper.I_W_C_City;
import org.idempierelbr.core.util.AdempiereLBR;
import org.idempierelbr.core.util.BPartnerUtil;  
import org.apache.xmlbeans.XmlCursor;
import org.compiere.model.MAttachment;
import org.compiere.model.MCity;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MRegion;
import org.compiere.model.MTable;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.Query;
import org.compiere.process.DocAction;
import org.compiere.process.DocOptions;
import org.compiere.process.DocumentEngine;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.kenos.idempiere.lbr.mdfe.process.MDFeRecepcao;
import org.kenos.idempiere.lbr.mdfe.process.MDFeRegEvento;
import org.kenos.idempiere.lbr.mdfe.process.MDFeRetRecepcao;
import org.kenos.idempiere.lbr.mdfe.util.MDFeUtil;

import br.inf.portalfiscal.mdfe.EvCancMDFeDocument;
import br.inf.portalfiscal.mdfe.EvEncMDFeDocument;
import br.inf.portalfiscal.mdfe.EvEncMDFeDocument.EvEncMDFe;
import br.inf.portalfiscal.mdfe.MDFeDocument;
import br.inf.portalfiscal.mdfe.RetEventoMDFeDocument;
import br.inf.portalfiscal.mdfe.RodoDocument;
import br.inf.portalfiscal.mdfe.RodoDocument.Rodo;
import br.inf.portalfiscal.mdfe.RodoDocument.Rodo.InfANTT;
import br.inf.portalfiscal.mdfe.RodoDocument.Rodo.InfANTT.InfCIOT;
import br.inf.portalfiscal.mdfe.RodoDocument.Rodo.InfANTT.ValePed;
import br.inf.portalfiscal.mdfe.RodoDocument.Rodo.InfANTT.ValePed.Disp;
import br.inf.portalfiscal.mdfe.RodoDocument.Rodo.VeicReboque;
import br.inf.portalfiscal.mdfe.RodoDocument.Rodo.VeicTracao;
import br.inf.portalfiscal.mdfe.RodoDocument.Rodo.VeicTracao.Condutor;
import br.inf.portalfiscal.mdfe.RodoDocument.Rodo.VeicTracao.Prop;
import br.inf.portalfiscal.mdfe.TAmb;
import br.inf.portalfiscal.mdfe.TCodUfIBGE;
import br.inf.portalfiscal.mdfe.TEmit;
import br.inf.portalfiscal.mdfe.TEndeEmi;
import br.inf.portalfiscal.mdfe.TMDFe;
import br.inf.portalfiscal.mdfe.TMDFe.InfMDFe;
import br.inf.portalfiscal.mdfe.TMDFe.InfMDFe.AutXML;
import br.inf.portalfiscal.mdfe.TMDFe.InfMDFe.Emit;
import br.inf.portalfiscal.mdfe.TMDFe.InfMDFe.Ide;
import br.inf.portalfiscal.mdfe.TMDFe.InfMDFe.Ide.IndCanalVerde;
import br.inf.portalfiscal.mdfe.TMDFe.InfMDFe.Ide.IndCarregaPosterior;
import br.inf.portalfiscal.mdfe.TMDFe.InfMDFe.Ide.InfMunCarrega;
import br.inf.portalfiscal.mdfe.TMDFe.InfMDFe.Ide.InfPercurso;
import br.inf.portalfiscal.mdfe.TMDFe.InfMDFe.InfAdic;
import br.inf.portalfiscal.mdfe.TMDFe.InfMDFe.InfDoc;
import br.inf.portalfiscal.mdfe.TMDFe.InfMDFe.InfDoc.InfMunDescarga;
import br.inf.portalfiscal.mdfe.TMDFe.InfMDFe.InfDoc.InfMunDescarga.InfCTe;
import br.inf.portalfiscal.mdfe.TMDFe.InfMDFe.InfDoc.InfMunDescarga.InfNFe;
import br.inf.portalfiscal.mdfe.TMDFe.InfMDFe.InfModal;
import br.inf.portalfiscal.mdfe.TMDFe.InfMDFe.Lacres;
import br.inf.portalfiscal.mdfe.TMDFe.InfMDFe.Seg;
import br.inf.portalfiscal.mdfe.TMDFe.InfMDFe.Seg.InfResp;
import br.inf.portalfiscal.mdfe.TMDFe.InfMDFe.Seg.InfResp.RespSeg;
import br.inf.portalfiscal.mdfe.TMDFe.InfMDFe.Seg.InfSeg;
import br.inf.portalfiscal.mdfe.TMDFe.InfMDFe.Tot;
import br.inf.portalfiscal.mdfe.TMDFe.InfMDFeSupl;
import br.inf.portalfiscal.mdfe.TModMD;
import br.inf.portalfiscal.mdfe.TModalMD;
import br.inf.portalfiscal.mdfe.TRespTec;
import br.inf.portalfiscal.mdfe.TRetEvento;
import br.inf.portalfiscal.mdfe.TUf;

/**
 * 		Model for MDF-e
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRMDFe.java, v1.0 2014/01/28 5:09:44 PM, ralexsander Exp $
 */
public class MLBRMDFe extends X_LBR_MDFe implements DocAction, DocOptions
{	
	/**
	 * 
	 */
	private static final long serialVersionUID = 3013056205391762265L;
	
	/** lbr_NFeEnv AD_Reference_ID=1100001 */
	public static final int LBR_NFEENV_AD_Reference_ID=1100001;
	
	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int LBR_Tax_ID (0 create new)
	 *  @param String trx
	 */
	public MLBRMDFe (Properties ctx, int LBR_MDFe_ID, String trx)
	{
		super (ctx, LBR_MDFe_ID, trx);
	}	//	MLBRTax

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRMDFe (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRTax

	/**	Process Message 			*/
	private String		m_processMsg = null;
	
	@Override
	public boolean processIt (String processAction) throws Exception
	{
		m_processMsg = null;
		//
		DocumentEngine engine = new DocumentEngine (this, getDocStatus());
		return engine.processIt (processAction, getDocAction());
	}
	
	/**
	 * 	Get Document Info
	 *	@return document info (untranslated)
	 */
	public String getDocumentInfo()
	{
		return getDocumentNo();
	}	//	getDocumentInfo
	
	/**
	 * 	Create PDF file
	 *	@param file output file
	 *	@return file if success
	 */
	public File createPDF ()
	{
		return null;
	}	//	createPDF

	/**
	 * 	Unlock Document.
	 * 	@return true if success 
	 */
	public boolean unlockIt()
	{
		log.info("unlockIt - " + toString());
		return true;
	}	//	unlockIt
	
	/**
	 * 	Invalidate Document
	 * 	@return true if success 
	 */
	public boolean invalidateIt()
	{
		log.info("invalidateIt - " + toString());
		return true;
	}	//	invalidateIt
	
	/**
	 *	Prepare Document
	 * 	@return new status (In Progress or Invalid) 
	 */
	public String prepareIt()
	{
		log.info(toString());
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_BEFORE_PREPARE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;
		
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_AFTER_PREPARE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;

		return DocAction.STATUS_InProgress;
	}	//	prepareIt
	
	/**
	 * 	Approve Document
	 * 	@return true if success 
	 */
	public boolean  approveIt()
	{
		log.info("approveIt - " + toString());
		return true;
	}	//	approveIt
	
	/**
	 * 	Reject Approval
	 * 	@return true if success 
	 */
	public boolean rejectIt()
	{
		log.info("rejectIt - " + toString());
		return true;
	}	//	rejectIt
	
	/**
	 * 	Complete Document
	 * 	@return new status (Complete, In Progress, Invalid, Waiting ..)
	 */
	public String completeIt()
	{
		log.info(toString());
		
		try
		{
			if (DOCSTATUS_WaitingConfirmation.equals (getDocStatus()))
				MDFeRetRecepcao.processReturn (this);
				
			else if (TextUtil.match (getDocStatus(), DOCSTATUS_NotApproved, DOCSTATUS_Drafted, DOCSTATUS_InProgress, DOCSTATUS_Invalid))
				MDFeRecepcao.sendDocument (this);
		}
		catch (Exception e)
		{
			e.printStackTrace();
			m_processMsg = e.getMessage();
			//
			return getDocStatus();
		}

		return getDocStatus();
	}	//	completeIt

	/**
	 * 	Void Document.
	 * 	Same as Close.
	 * 	@return true if success 
	 */
	public boolean voidIt()
	{
		log.info("voidIt - " + toString());
		
		if (!DOCSTATUS_Completed.equals(getDocStatus()))
		{
			m_processMsg = "Estado do documento inválido";
			return false;
		}
		
		String motivoCanc = getlbr_MotivoCancel();

		if (motivoCanc == null)
			throw new AdempiereException ("Sem motivo de cancelamento");
		
		else if (motivoCanc.length() < 16)
			throw new AdempiereException ("Motivo de cancelamento muito curto. Min: 15 letras.");
		
		if (getlbr_NFeProt () == null || getlbr_NFeProt ().isEmpty())
			throw new AdempiereException ("Protocolo do MDF-e não encontrado");
		
		//
		EvCancMDFeDocument cancDoc = EvCancMDFeDocument.Factory.newInstance();
		EvCancMDFeDocument.EvCancMDFe canc = cancDoc.addNewEvCancMDFe();
		canc.setDescEvento (EvCancMDFeDocument.EvCancMDFe.DescEvento.CANCELAMENTO);
		canc.setNProt (getlbr_NFeProt ());
		canc.setXJust (TextUtil.retiraEspecial (motivoCanc.trim ()));
		
		try
		{
			RetEventoMDFeDocument retDoc = MDFeRegEvento.registerEvent (this, new Timestamp (System.currentTimeMillis()), MDFeUtil.EVENTO_CANCELAMENTO, 1, canc.newCursor());
			TRetEvento ret = retDoc.getRetEventoMDFe();
			//
			if (MDFeUtil.STATUS_EVENTO_VINCULADO.equals (ret.getInfEvento().getCStat()))
			{
				setDocAction(DOCACTION_None);
				setlbr_NFeStatus(MDFeUtil.STATUS_CANCELADO);
				setlbr_NFeAnswerStatus (MDFeUtil.STATUS_CANCELADO + "-Cancelamento do MDF-e Homologado (" + ret.getInfEvento().getNProt() + " " + MDFeUtil.formatTime (ret.getInfEvento().getDhRegEvento()) + ")");
				
				StringBuilder xml = new StringBuilder (cancDoc.xmlText(NFeUtil.getXmlOpt()));
				
				//	Add Attachment Entry
				MAttachment attachment = createAttachment ();
				//
				attachment.addEntry (ret.getInfEvento().getChMDFe() + "-env.xml", xml.toString().getBytes());
				attachment.save();
			}
			else
				throw new AdempiereException (ret.getInfEvento().getCStat() + "-" + ret.getInfEvento().getXMotivo());
		}
		catch (Exception e)
		{
			e.printStackTrace();
			//
			m_processMsg = "@Error@ " + e.getMessage();
			return false;
		}
		
		return true;
	}	//	voidIt
	
	/**
	 * 	Close Document.
	 * 	Cancel not delivered Qunatities
	 * 	@return true if success 
	 */
	public boolean closeIt()
	{
		log.info("closeIt - " + toString());
		
		if (!MDFeUtil.STATUS_AUTORIZADO.equals (getlbr_NFeStatus())
				|| !DOCSTATUS_Completed.equals(getDocStatus()))
		{
			m_processMsg = "Não é permitido fechar o documento neste estado, o documento deve estar autorizado primeiro.";
			return false;
		}
		
		if (getLBR_EndRegion_ID() <= 0 || getC_City_ID() <= 0)
		{
			m_processMsg = "Preencha o estado e cidade em que o Manifesto teve seu encerramento.";
			return false;
		}
		
		// I_W_C_City city = POWrapper.create (new MCity (p_ctx, getC_City_ID(), null), I_W_C_City.class);
		//
		EvEncMDFeDocument closeDoc = EvEncMDFeDocument.Factory.newInstance();
		EvEncMDFe close = closeDoc.addNewEvEncMDFe();
		close.setDescEvento (EvEncMDFeDocument.EvEncMDFe.DescEvento.ENCERRAMENTO);
		close.setNProt (getlbr_NFeProt ());
		close.setDtEnc(MDFeUtil.formatDate (new Timestamp (System.currentTimeMillis ())));
		close.setCMun(Integer.toString (city.getlbr_CityCode()));
		close.setCUF(br.inf.portalfiscal.mdfe.TCodUfIBGEEX.Enum.forString (Integer.toString (city.getlbr_CityCode()).substring(0, 2)));
		
		try
		{
			RetEventoMDFeDocument retDoc = MDFeRegEvento.registerEvent (this, new Timestamp (System.currentTimeMillis()), MDFeUtil.EVENTO_ENCERRAMENTO, 1, close.newCursor());
			TRetEvento ret = retDoc.getRetEventoMDFe();
			//
			if (MDFeUtil.STATUS_EVENTO_VINCULADO.equals (ret.getInfEvento().getCStat()))
			{
				setDocAction(DOCACTION_None);
				setlbr_NFeStatus(MDFeUtil.STATUS_ENCERRADO);
				setlbr_NFeAnswerStatus (MDFeUtil.STATUS_ENCERRADO + "-Encerramento do MDF-e Homologado (" + ret.getInfEvento().getNProt() + " " + MDFeUtil.formatTime (ret.getInfEvento().getDhRegEvento()) + ")");
								
				String xml = retDoc.xmlText(NFeUtil.getXmlOpt());
				
				//	Add Attachment Entry
				MAttachment attachment = createAttachment ();
				//
				attachment.addEntry (ret.getInfEvento().getChMDFe() + "-env.xml", xml.getBytes());
				attachment.save();
			}
			else
				throw new AdempiereException (ret.getInfEvento().getCStat() + "-" + ret.getInfEvento().getXMotivo());
		}
		catch (Exception e)
		{
			e.printStackTrace();
			//
			m_processMsg = "@Error@ " + e.getMessage();
			return false;
		}
		
		return true;
	}	//	closeIt
	
	/**
	 * 	Reverse Correction
	 * 	@return true if success 
	 */
	public boolean reverseCorrectIt()
	{
		log.info("reverseCorrectIt - " + toString());
		return false;
	}	//	reverseCorrectionIt
	
	/**
	 * 	Reverse Accrual - none
	 * 	@return true if success 
	 */
	public boolean reverseAccrualIt()
	{
		log.info("reverseAccrualIt - " + toString());
		return false;
	}	//	reverseAccrualIt
	
	/** 
	 * 	Re-activate
	 * 	@return true if success 
	 */
	public boolean reActivateIt()
	{
		log.info("reActivateIt - " + toString());

		if (reverseCorrectIt())
			return true;
		return false;
	}	//	reActivateIt
	
	/*************************************************************************
	 * 	Get Summary
	 *	@return Summary of Document
	 */
	public String getSummary()
	{
		return "";
	}	//	getSummary

	/**
	 * 	Get Process Message
	 *	@return clear text error message
	 */
	public String getProcessMsg()
	{
		return m_processMsg;
	}	//	getProcessMsg
	
	/**
	 * 	Get Document Owner (Responsible)
	 *	@return AD_User_ID
	 */
	public int getDoc_User_ID()
	{
		return 0;
	}	//	getDoc_User_ID

	/**
	 * 	Get Document Approval Amount
	 *	@return amount
	 */
	public BigDecimal getApprovalAmt()
	{
		return null;
	}	//	getApprovalAmt
	
	/**
	 * 	Get Document Currency
	 *	@return C_Currency_ID
	 */
	public int getC_Currency_ID()
	{
		return 0;
	}	//	getC_Currency_ID	
	
	/**
	 * 	Transform information to XML
	 * 	@return XML
	 * 	@throws JAXBException 
	 */
	public MDFeDocument getMDFe () throws JAXBException
	{
		I_W_AD_OrgInfo oi = POWrapper.create(MOrgInfo.get (p_ctx, getAD_Org_ID(), get_TrxName()), I_W_AD_OrgInfo.class);
		
		if (oi.getC_Location_ID() == 0
				|| oi.getC_Location().getC_Region_ID() == 0)
			throw new AdempiereException ("Endereço da empresa inválido");
		
		I_W_C_City orgCity = POWrapper.create(new MCity (p_ctx, oi.getC_Location().getC_City_ID(), null), I_W_C_City.class);

		/**
		 * 	Identificação do MDF-e
		 */
		MDFeDocument mdfeDoc = MDFeDocument.Factory.newInstance(); 
		TMDFe tmdfe = mdfeDoc.addNewMDFe();
		InfMDFe infMDFe = tmdfe.addNewInfMDFe();
		
		/**
		 * 	Identificação
		 */
		Ide ide = infMDFe.addNewIde();
		ide.setCUF (TCodUfIBGE.Enum.forString(String.valueOf (orgCity.getlbr_CityCode()).substring(0,2)));
		ide.setTpAmb (TAmb.Enum.forString(getlbr_NFeEnv ()));
		ide.setTpEmit (TEmit.Enum.forString(getLBR_MDFeIssuerType ()));
		ide.setMod (TModMD.Enum.forString(getlbr_NFModel ()));
		ide.setSerie (getlbr_NFSerie ());
		ide.setNMDF (getDocumentNo ());
		
		Random random = new Random ();	//	Aleatório
		ide.setCMDF (TextUtil.lPad (random.nextInt (122674373), 8));
				
		/**
		 * 	Chave da MDF-e
		 */
		ChaveNFE key = new ChaveNFE();
		//
		key.setCUF(String.valueOf (orgCity.getlbr_CityCode()).substring(0,2));	//	2-Código do Estado
		key.setAAMM(TextUtil.timeToString (getDateDoc(), "yyMM"));	//	4-Ano e Mês
		key.setCNPJ(TextUtil.toNumeric(oi.getlbr_CNPJ()));			//	14-CNPJ
		key.setMod(getlbr_NFModel());								//	2-Modelo
		key.setSerie(TextUtil.lPad(getlbr_NFSerie(), 3));			//	3-Série
		key.setNNF(TextUtil.lPad(getDocumentNo(), 9));				//	9-Número do Documento
		key.setTpEmis(getLBR_CommType());							//	1-Forma Emissão
		key.setCNF(ide.getCMDF());									//	8-Random
		
		ide.setCDV (key.getDigito());
		ide.setModal (TModalMD.Enum.forString(getLBR_ShipmentType ()));
		ide.setDhEmi (MDFeUtil.formatTime (getDateDoc()));
		ide.setTpEmis (Ide.TpEmis.Enum.forString(getLBR_CommType()));
		ide.setProcEmi (MDFeUtil.EMISSAO_APLICATIVO_CONTRIB);
		ide.setVerProc (MDFeUtil.VERSION);
		ide.setUFIni (TUf.Enum.forString (getRegionBegin ()));
		ide.setUFFim (TUf.Enum.forString (getRegionEnd ()));
		
		if (getDateStartPlan() != null)
			ide.setDhIniViagem(MDFeUtil.formatTime (getDateStartPlan()));
		if (MLBRMDFe.LBR_GREENCHANNEL_Yes.equals(getLBR_GreenChannel()))
			ide.setIndCanalVerde(IndCanalVerde.X_1);
		if (MLBRMDFe.LBR_POSTLOADING_Yes.equals(getLBR_PostLoading()))
			ide.setIndCarregaPosterior(IndCarregaPosterior.X_1);
		
		/**
		 * 	Locais de Carregamento
		 */
		for (MLBRMDFeLoad load : getLoadPlaces())
		{
			I_W_C_City city = POWrapper.create(new MCity (p_ctx, load.getC_City_ID(), null), I_W_C_City.class);
			//
			InfMunCarrega mc = ide.addNewInfMunCarrega();
			mc.setCMunCarrega(String.valueOf (city.getlbr_CityCode()));
			mc.setXMunCarrega(city.getName());
		}
		
		/**
		 * 	Rota, informando os estados em que a carga irá transitar
		 */
		for (MLBRMDFeRoute route : getRoute())
		{
			InfPercurso p = ide.addNewInfPercurso();
			//
			p.setUFPer(TUf.Enum.forString(route.getC_Region().getName()));
		}
		
		/**
		 * 	Identificação do Emitente do Manifesto
		 */
		Emit emit = infMDFe.addNewEmit();
		emit.setCNPJ (TextUtil.toNumeric (oi.getlbr_CNPJ()));
		emit.setIE (TextUtil.retiraEspecial(oi.getlbr_IE()).replace(" ", ""));
		emit.setXNome(oi.getlbr_LegalEntity());
		emit.setXFant(oi.getlbr_Fantasia());
		
		/**
		 * 	Endereço
		 */
		TEndeEmi end = emit.addNewEnderEmit();
		end.setXLgr (oi.getC_Location().getAddress1());
		end.setNro(oi.getC_Location().getAddress2());
		
		if (oi.getC_Location().getAddress4() != null && oi.getC_Location().getAddress4().length() > 0)
			end.setXCpl(oi.getC_Location().getAddress4());
		
		end.setXBairro(oi.getC_Location().getAddress3());
		
		I_W_C_City city = POWrapper.create(new MCity (p_ctx, oi.getC_Location().getC_City_ID(), null), I_W_C_City.class);
		
		end.setCMun(String.valueOf (city.getlbr_CityCode()));
		end.setXMun(city.getName());
		end.setCEP(TextUtil.toNumeric(oi.getC_Location().getPostal()));
		if (oi.getC_Location().getC_Region_ID() > 0)
			end.setUF(TUf.Enum.forString(oi.getC_Location().getC_Region().getName()));
		
		if (oi.getPhone() != null && oi.getPhone().length() > 0)
			end.setFone(TextUtil.toNumeric(oi.getPhone()));
		
		if (oi.getEMail() != null && oi.getEMail().length() > 0)
			end.setEmail(oi.getEMail());
		
		emit.setEnderEmit(end);
		
		/**
		 * 	Informações do Modal (Aéreo, Rodoviário, Ferroviário ou Aquaviário)
		 */
		InfModal modal = infMDFe.addNewInfModal();
		modal.setVersaoModal(MDFeUtil.VERSION);
		
		XmlCursor cursor = null;
		
		//	Rodoviário
		if (LBR_SHIPMENTTYPE_Road.equals (getLBR_ShipmentType()))
		{
			RodoDocument rodoDoc = RodoDocument.Factory.newInstance();
			Rodo rodo = rodoDoc.addNewRodo();
			InfANTT antt = rodo.addNewInfANTT();
			
			if (getLBR_RNTRC() != null)
				antt.setRNTRC(getLBR_RNTRC());
			
			if (getLBR_CIOT() != null)
			{
				InfCIOT ciot = antt.addNewInfCIOT();
				ciot.setCIOT(getLBR_CIOT());
//				ciot.setCNPJ("");
//				ciot.setCPF("");
			}
			
			MLBRMDFeVehicle vei = new MLBRMDFeVehicle (p_ctx, getLBR_MDFeVehicle_ID(), null); 
			
			//	Veículo da Tração
			VeicTracao vTr = rodo.addNewVeicTracao();
			vTr.setCInt(vei.getValue());
			vTr.setPlaca(vei.getlbr_BPShipperLicensePlate());
			vTr.setTara(TextUtil.bigdecimalToString (vei.getWeight(), 0));
			vTr.setTpRod(VeicTracao.TpRod.Enum.forString (vei.getLBR_VehicleType()));
			vTr.setTpCar(VeicTracao.TpCar.Enum.forString (vei.getLBR_TruckType()));
			vTr.setUF(TUf.Enum.forString (vei.getC_SalesRegion().getName()));
			
			if (vei.getLBR_VehicleSizeKG() != null && vei.getLBR_VehicleSizeKG().compareTo(Env.ZERO) == 1)
				vTr.setCapKG(TextUtil.bigdecimalToString (vei.getLBR_VehicleSizeKG(), 0));
			
			if (vei.getLBR_VehicleSizeM3() != null && vei.getLBR_VehicleSizeM3().compareTo(Env.ZERO) == 1)
				vTr.setCapM3(TextUtil.bigdecimalToString (vei.getLBR_VehicleSizeM3(), 0));
			
			if (vei.getLBR_RNTRC() != null && vei.getLBR_RNTRC().length() > 0)
			{
				Prop prop = vTr.addNewProp();
				prop.setRNTRC(vei.getLBR_RNTRC());
				prop.setXNome(vei.getName());
				
				if (vei.getlbr_CNPJ() != null && vei.getlbr_CNPJ().length() > 0)
					prop.setCNPJ(TextUtil.toNumeric(vei.getlbr_CNPJ()));
				else
					prop.setCPF(TextUtil.toNumeric(vei.getlbr_CPF()));
				
				prop.setIE(vei.getlbr_IE());
				prop.setUF(TUf.Enum.forString (vei.getC_Region().getName()));
//	FIXME			prop.setTpProp(VeicReboque.Prop.TpProp.Enum.forString (vei.getLBR_OwnerType()));
			}
			
			//	Condutores
			for (MLBRMDFeDriverInstance di : getDriver())
			{
				Condutor condutor = vTr.addNewCondutor();
				condutor.setCPF(TextUtil.toNumeric(di.getLBR_MDFeDriver().getlbr_CPF()));
				condutor.setXNome(di.getLBR_MDFeDriver().getName());
			}
			
			//	Preencher os veículos de Reboque (0 até 3)
			for (Integer LBR_MDFeTrailer_ID : new Integer[]{getLBR_MDFeTrailer1_ID(), 
					getLBR_MDFeTrailer2_ID(), getLBR_MDFeTrailer3_ID()})
			{
				if (LBR_MDFeTrailer_ID <= 0)
					continue;
				
				VeicReboque vr = rodo.addNewVeicReboque();
				//
				MLBRMDFeVehicle vei1 = new MLBRMDFeVehicle (p_ctx, LBR_MDFeTrailer_ID, null);
				//
				vr.setCInt(vei1.getValue());
				vr.setPlaca(vei1.getlbr_BPShipperLicensePlate());
				vr.setTara(TextUtil.bigdecimalToString (vei1.getWeight(), 0));
				vr.setTpCar(VeicReboque.TpCar.Enum.forString(vei1.getLBR_TruckType()));
				vr.setUF(TUf.Enum.forString (vei1.getC_SalesRegion().getName()));
				vr.setCapKG(TextUtil.bigdecimalToString (vei1.getLBR_VehicleSizeKG(), 0));
				
				if (vei1.getLBR_VehicleSizeM3() != null && vei1.getLBR_VehicleSizeM3().compareTo(Env.ZERO) == 1)
					vr.setCapM3(TextUtil.bigdecimalToString (vei1.getLBR_VehicleSizeM3(), 0));
				//
				if (vei1.getLBR_RNTRC() != null && vei1.getLBR_RNTRC().length() > 0)
				{
					Rodo.VeicReboque.Prop prop = vr.addNewProp();
					prop.setRNTRC(vei1.getLBR_RNTRC());
					vr.setProp(prop);
				}
			}
			
			//	Vale Pedágio
			for (MLBRMDFeToll toll : getToll())
			{
				ValePed ped = antt.addNewValePed();

				Disp disp = ped.addNewDisp();
				disp.setCNPJForn(TextUtil.toNumeric(toll.getlbr_BPCNPJ()));
				disp.setCNPJPg(TextUtil.toNumeric(toll.getlbr_BPShipperCNPJ()));
				disp.setNCompra(TextUtil.toNumeric (toll.getPOReference()));
				disp.setVValePed(TextUtil.toNumeric(TextUtil.toNumeric(toll.getAmount(), 2)));
			}
			
//			ValidaXML.ValidaDocEx (MDFeUtil.marshall (rodo).toString (), MDFeUtil.XSD_VERSION + "/mdfeModalRodoviario_v1.00.xsd");
			
			cursor = rodo.newCursor();
			
//			modal.setAny (rodo);
		}
//		else if (LBR_SHIPMENTTYPE_Air.equals (getLBR_ShipmentType()))
//		{
//			//	TODO: Aéreo
//		}
//		else if (LBR_SHIPMENTTYPE_Marine.equals (getLBR_ShipmentType()))
//		{
//			//	Não disponível ainda
//		}
//		else if (LBR_SHIPMENTTYPE_Train.equals (getLBR_ShipmentType()))
//		{
//			//	TODO: Ferroviário
//		}
		else
			throw new AdempiereException ("Modalidade de Transporte não implementada: " + getLBR_ShipmentType());
		
		//	Move o cursor para o XML top (XXXXDocument)
		cursor.toStartDoc();
		cursor.toNextToken();
		
		//	Move o XML Modal para o MDFe
		XmlCursor rootCursor = modal.newCursor();
		rootCursor.toEndToken();
		cursor.moveXml(rootCursor);
		
		InfDoc doc = infMDFe.addNewInfDoc();
		
		/**
		 * 	Contadores
		 */
		int countCTe 	= 0;
		int countNFe 	= 0;
		
		/**
		 * 	Documento para Descarregamento
		 */
		for (MLBRMDFeUnload unload : getUnloadPlaces())
		{
			I_W_C_City unloadCity = POWrapper.create(new MCity (p_ctx, unload.getC_City_ID(), null), I_W_C_City.class);
			//
			InfMunDescarga desc = doc.addNewInfMunDescarga(); 
			desc.setCMunDescarga(String.valueOf (unloadCity.getlbr_CityCode()));
			desc.setXMunDescarga(unloadCity.getName());
			
			//	CT-e
			for (MLBRMDFeUnloadDoc uDocument : unload.getUnloadDocs (MLBRMDFeUnloadDoc.LBR_MDFEDOCTYPE_CT_E))
			{
				InfCTe cte = desc.addNewInfCTe();
				cte.setChCTe(uDocument.getlbr_NFeID());
				if (uDocument.getlbr_Barcode2() != null)
					cte.setSegCodBarra(uDocument.getlbr_Barcode2());
				//
				countCTe++;
			}
			
			//	NF-e
			for (MLBRMDFeUnloadDoc uDocument : unload.getUnloadDocs (MLBRMDFeUnloadDoc.LBR_MDFEDOCTYPE_NF_E))
			{
				InfNFe nfe = desc.addNewInfNFe();
				nfe.setChNFe(uDocument.getlbr_NFeID());
				if (uDocument.getlbr_Barcode2() != null)
					nfe.setSegCodBarra(uDocument.getlbr_Barcode2());
				//
				countNFe++;
			}
		}
		
		//	Totalizadores
		Tot tot = infMDFe.addNewTot();
		
		if (countCTe > 0)
			tot.setQCTe (String.valueOf (countCTe));
		
		if (countNFe > 0)
			tot.setQNFe (String.valueOf (countNFe));
		
		tot.setVCarga(TextUtil.bigdecimalToString (getGrandTotal()));
		tot.setCUnid(InfMDFe.Tot.CUnid.Enum.forString(getLBR_WeightUOM()));
		tot.setQCarga(TextUtil.bigdecimalToString (getWeight(), 4));
		
		if ((getDescription() != null && getDescription().length() > 0)
				|| (getlbr_NFDescription() != null && getlbr_NFDescription().length() > 0))
		{
			InfAdic inf = infMDFe.addNewInfAdic();
			inf.setInfAdFisco(getDescription());
			inf.setInfCpl(getlbr_NFDescription());
		}
		
		/**
		 * 	Informações do MDF-e
		 */
		infMDFe.setVersao (MDFeUtil.VERSION);
		infMDFe.setId ("MDFe" + key.toString() + ide.getCDV());	//	Chave
		infMDFe.setIde (ide);
		infMDFe.setEmit(emit);
		infMDFe.setInfModal(modal);
		infMDFe.setInfDoc(doc);
		infMDFe.setTot(tot);
		
		/**
		 * 	Lacres
		 */
		for (MLBRMDFeSeal seal : getSeal())
		{
			Lacres lac = infMDFe.addNewLacres();
			lac.setNLacre(seal.getName());
		}
		
		/**
		 * 	Seguro
		 */
		getInsurance().stream().forEach(ins -> 
		{
			Seg seg = infMDFe.addNewSeg();
			InfResp infResp = seg.addNewInfResp();
			infResp.setRespSeg(RespSeg.Enum.forString(ins.getLBR_InsuResp()));
			//
			if (ins.getCNPJ() != null)
				infResp.setCNPJ(ins.getCNPJ());
			else if (ins.getCPF() != null)
				infResp.setCPF(ins.getCPF());
			
			if (ins.getA_Insurance_Co() != null && ins.getInsuranceCNPJ() != null)
			{
				InfSeg infSeg = seg.addNewInfSeg();
				infSeg.setXSeg(ins.getA_Insurance_Co().trim());
				infSeg.setCNPJ(ins.getInsuranceCNPJ());
			}
			
			//	Apolice
			if (ins.getLBR_InsurancePolicy() != null)
				seg.setNApol(ins.getLBR_InsurancePolicy().trim());
			
			//	Averbação
			if (ins.getLBR_InsuranceAnnot() != null)
			{
				Arrays.asList(ins.getLBR_InsuranceAnnot().split(";")).stream()
					.filter(s -> !s.isBlank())
					.map(TextUtil::toNumeric)
					.collect(Collectors.toSet())
					.forEach(annot ->
					{
						seg.addNAver(annot);
					});
			}
		});
		
		/**
		 * 	Autorizados
		 */
		List<MLBRAuthorizedAccessXML> accessXMLs = Arrays.asList (MLBRAuthorizedAccessXML.get (oi.getAD_Org_ID (), 0));
		
		//	PJ
		accessXMLs.stream()
			//	Only PJ
			.filter(x -> I_W_C_BPartner.LBR_BPTYPEBR_PJ_LegalEntity.equals(x.getlbr_BPTypeBR()))
			//	Only one field needed
			.map(MLBRAuthorizedAccessXML::getCNPJ)
			//	Make it Unique
			.collect(Collectors.toSet())
			//	Include
			.forEach(x -> 
			{
				AutXML autXML = infMDFe.addNewAutXML();
				autXML.setCNPJ(x);
			});
		
		//	PF
		accessXMLs.stream()
			//	Only PF
			.filter(x -> I_W_C_BPartner.LBR_BPTYPEBR_PF_Individual.equals(x.getlbr_BPTypeBR()))
			//	Only one field needed
			.map(MLBRAuthorizedAccessXML::getCPF)
			//	Make it Unique
			.collect(Collectors.toSet())
			//	Include
			.forEach(x -> 
			{
				AutXML autXML = infMDFe.addNewAutXML();
				autXML.setCPF(x);
			});
		
		MLBRNFConfig config = MLBRNFConfig.get(getAD_Org_ID());
		
		//	Add Technical Resposible
		X_LBR_SystemResponsible sresp = new Query(Env.getCtx(), X_LBR_SystemResponsible.Table_Name, "", null)
										.first();
		if (sresp != null && sresp.getlbr_CNPJ() != null && sresp.getContactName() != null
				&& sresp.getEMail() != null && sresp.getPhone() != null)
		{							
			//	add Technical Responsible
			TRespTec respTec = infMDFe.addNewInfRespTec();
			respTec.setCNPJ(TextUtil.toNumeric(sresp.getlbr_CNPJ()));
			respTec.setXContato(sresp.getContactName().trim());
			respTec.setEmail(sresp.getEMail().trim());
			respTec.setFone(TextUtil.toNumeric(sresp.getPhone()));
			
			//
			if (config != null && config.getLBR_CSRTCode() != null)
			{
				//	CSRT Hash
				byte[] CSRTHash = TextUtil.generateCSRTHash (key.toString() + ide.getCDV(), config.getLBR_CSRTCode());
				
				if (CSRTHash != null)
				{
					String hash = new String (CSRTHash);				
					setLBR_CSRTHash(hash);
					respTec.setIdCSRT(TextUtil.lPad(config.getLBR_CSRTID(), 2));
					respTec.setHashCSRT(CSRTHash);
				}
			}
		}
		
		/**	
		 *  QR Code Consulta
		 */
		String consultURL = MLBRNFeWebService.getURL (MDFeUtil.TYPE_QRCODEURL, getlbr_NFeEnv(), MDFeUtil.VERSION, oi.getC_Location().getC_Region_ID());
		StringBuilder qrCodeURL = new StringBuilder (consultURL);
		qrCodeURL.append("?chMDFe=").append(key.toString() + ide.getCDV());
		qrCodeURL.append("&tpAmb=").append(getlbr_NFeEnv());
		
		/**
		 * 	Assinatura do QR Code
		 */
		try 
		{
			if (LBR_COMMTYPE_Contingent.equals(getLBR_CommType()))
				qrCodeURL.append("&sign=").append(new SignatureUtil (POWrapper.getPO (oi), SignatureUtil.RECEPCAO_MDFE).signASCII (key.toString() + ide.getCDV()));
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		InfMDFeSupl supl = tmdfe.addNewInfMDFeSupl();
		supl.setQrCodMDFe (qrCodeURL.toString());
		
		return mdfeDoc;
	}	//	getXML
	
	/**
	 * 	Transform information to XML
	 * 	@return XML
	 * 	@throws JAXBException 
	 */
	public StringBuilder getXML () throws JAXBException
	{
		//	Retorno o XML gerado
		return new StringBuilder (getMDFe().xmlText(NFeUtil.getXmlOpt()));
	}	//	getXML
	
	/**
	 * 	Get the Region Name of the route beginning
	 * 	@return UF
	 */
	private String getRegionBegin ()
	{
		if (getC_Region_ID() == 0)
			return "";
		MRegion region = new MRegion (getCtx(), getC_Region_ID(), get_TrxName());
		return region.getName();
	}	//	getRegionBegin
	
	/**
	 * 	Get the Region Name of the route ending
	 * 	@return UF
	 */
	private String getRegionEnd ()
	{
		if (getC_SalesRegion_ID() == 0)
			return "";
		MRegion region = new MRegion (getCtx(), getC_SalesRegion_ID(), get_TrxName());
		return region.getName();
	}	//	getRegionEnd
	
	/**
	 * 	Called before Save for Pre-Save Operation
	 * 	@param newRecord new record
	 *	@return true if record can be saved
	 */
	@Override
	protected boolean beforeSave (boolean newRecord)
	{
		if ((getLBR_MDFeVehicle_ID () > 0
				&& TextUtil.match (getLBR_MDFeVehicle_ID (), getLBR_MDFeTrailer1_ID(), getLBR_MDFeTrailer2_ID(), getLBR_MDFeTrailer3_ID())))
		{
			log.saveError ("Error", Msg.parseTranslation(getCtx(), "@LBR_MDFeVehicle_ID@ repetido como Veículo de Reboque"));
			return false;
		}
		
		if ((getLBR_MDFeTrailer1_ID () > 0
				&& TextUtil.match (getLBR_MDFeTrailer1_ID (), getLBR_MDFeTrailer2_ID(), getLBR_MDFeTrailer3_ID())))
		{
			log.saveError ("Error", Msg.parseTranslation(getCtx(), "@LBR_MDFeTrailer1_ID@ repetido. Verifique: @LBR_MDFeTrailer2_ID@ e @LBR_MDFeTrailer3_ID@"));
			return false;
		}
		
		if ((getLBR_MDFeTrailer2_ID () > 0
				&& TextUtil.match (getLBR_MDFeTrailer2_ID (), getLBR_MDFeTrailer3_ID())))
		{
			log.saveError ("Error", Msg.parseTranslation(getCtx(), "@LBR_MDFeTrailer2_ID@ repetido. Verifique @LBR_MDFeTrailer3_ID@"));
			return false;
		}
		
		//	Ajusta a UF de encerramento
		if (newRecord)
			setLBR_EndRegion_ID (getC_SalesRegion_ID ());
		
		return true;
	}	//	beforeSave
	
	/**
	 * 	Called after Save for Post-Save Operation
	 * 	@param newRecord new record
	 *	@param success true if save operation was success
	 *	@return if save was a success
	 */
	@Override
	protected boolean afterSave (boolean newRecord, boolean success)
	{
		if (newRecord && success)
		{
			I_W_AD_OrgInfo oi = POWrapper.create (MOrgInfo.get (p_ctx, getAD_Org_ID(), get_TrxName()), I_W_AD_OrgInfo.class);
			
			//	Fill the load City same as Organization
			if (LBR_MDFEISSUERTYPE_Non_ShipperProvider.equals (getLBR_MDFeIssuerType())
					&& oi.getC_Location_ID() > 0)
			{
				MLBRMDFeLoad load = new MLBRMDFeLoad (this);
				load.setC_Region_ID (oi.getC_Location().getC_Region_ID());
				load.setC_City_ID (oi.getC_Location().getC_City_ID());
				load.save();
				
				//	Post-loading must have same city on both load and unload
				if (LBR_POSTLOADING_Yes.equals(getLBR_PostLoading()))
				{
					MLBRMDFeUnload unload = new MLBRMDFeUnload(getCtx(), 0, get_TrxName());
					unload.setLBR_MDFe_ID (getLBR_MDFe_ID());
					unload.setC_Region_ID (oi.getC_Location().getC_Region_ID());
					unload.setC_City_ID (oi.getC_Location().getC_City_ID());
					unload.save();
				}
			}
			
			//	Fill the default Driver name
			if (getLBR_MDFeVehicle().getLBR_MDFeDriver_ID() > 0)
			{
				MLBRMDFeDriverInstance di = new MLBRMDFeDriverInstance (this);
				di.setLBR_MDFeDriver_ID(getLBR_MDFeVehicle().getLBR_MDFeDriver_ID());
				di.save();
			}
		}
		return true;
	}	//	afterSave
	
	/**
	 *  Get Load Places
	 *  @return MLBRMDFeLoad[] lines
	 */
	public MLBRMDFeLoad[] getLoadPlaces ()
	{
		MTable table = MTable.get (getCtx(), MLBRMDFeLoad.Table_Name);
		Query query =  new Query (getCtx(), table, "LBR_MDFe_ID=?", get_TrxName());
	 		  query.setParameters(new Object[]{getLBR_MDFe_ID()});
	 	//
	 	List<MLBRMDFeLoad> list = query.list();
	 	return list.toArray(new MLBRMDFeLoad[list.size()]);
	}	//	getLoadPlaces
	
	/**
	 *  Get Unload Place
	 *  @return MLBRMDFeUnload line or null if not found
	 */
	public MLBRMDFeUnload getUnloadPlace (int p_C_City_ID)
	{
		MTable table = MTable.get (getCtx(), MLBRMDFeUnload.Table_Name);
		Query query =  new Query (getCtx(), table, "LBR_MDFe_ID=? AND C_City_ID=?", get_TrxName());
	 		  query.setParameters(new Object[]{getLBR_MDFe_ID(), p_C_City_ID});
	 	//
	 	return query.firstOnly();
	}	//	getUnloadPlace
	
	/**
	 *  Get Unload Places
	 *  @return MLBRMDFeLoad[] lines
	 */
	public MLBRMDFeUnload[] getUnloadPlaces ()
	{
		MTable table = MTable.get (getCtx(), MLBRMDFeUnload.Table_Name);
		Query query =  new Query (getCtx(), table, "LBR_MDFe_ID=?", get_TrxName());
	 		  query.setParameters(new Object[]{getLBR_MDFe_ID()});
	 	//
	 	List<MLBRMDFeUnload> list = query.list();
	 	return list.toArray(new MLBRMDFeUnload[list.size()]);
	}	//	getUnloadPlaces

	/**
	 *  Get Route
	 *  @return MLBRMDFeRoute[] lines
	 */
	public MLBRMDFeRoute[] getRoute ()
	{
		MTable table = MTable.get (getCtx(), MLBRMDFeRoute.Table_Name);
		Query query =  new Query (getCtx(), table, "LBR_MDFe_ID=?", get_TrxName());
	 		  query.setParameters(new Object[]{getLBR_MDFe_ID()});
	 	//
	 	List<MLBRMDFeRoute> list = query.list();
	 	return list.toArray(new MLBRMDFeRoute[list.size()]);
	}	//	getRoute

	/**
	 *  Get Seal
	 *  @return MLBRMDFeSeal[] lines
	 */
	public MLBRMDFeSeal[] getSeal ()
	{
		MTable table = MTable.get (getCtx(), MLBRMDFeSeal.Table_Name);
		Query query =  new Query (getCtx(), table, "LBR_MDFe_ID=?", get_TrxName());
	 		  query.setParameters(new Object[]{getLBR_MDFe_ID()});
	 	//
	 	List<MLBRMDFeSeal> list = query.list();
	 	return list.toArray(new MLBRMDFeSeal[list.size()]);
	}	//	getSeal

	/**
	 *  Get Insurance
	 *  @return List<MLBRMDFeInsurance> lines
	 */
	public List<MLBRMDFeInsurance> getInsurance ()
	{
		Query query =  new Query (getCtx(), MLBRMDFeInsurance.Table_Name, "LBR_MDFe_ID=?", get_TrxName());
	 		  query.setParameters(new Object[]{getLBR_MDFe_ID()});
	 	//
	 	return query.list();
	}	//	getInsurance
	
	/**
	 *  Get Driver
	 *  @return MLBRMDFeDriver[] lines
	 */
	public MLBRMDFeDriverInstance[] getDriver ()
	{
		MTable table = MTable.get (getCtx(), MLBRMDFeDriverInstance.Table_Name);
		Query query =  new Query (getCtx(), table, "LBR_MDFe_ID=?", get_TrxName());
	 		  query.setParameters(new Object[]{getLBR_MDFe_ID()});
	 	//
	 	List<MLBRMDFeDriverInstance> list = query.list();
	 	return list.toArray(new MLBRMDFeDriverInstance[list.size()]);
	}	//	getDriver
	

	/**
	 *  Get Driver
	 *  @return MLBRMDFeToll[] lines
	 */
	public MLBRMDFeToll[] getToll ()
	{
		MTable table = MTable.get (getCtx(), MLBRMDFeToll.Table_Name);
		Query query =  new Query (getCtx(), table, "LBR_MDFe_ID=?", get_TrxName());
	 		  query.setParameters(new Object[]{getLBR_MDFe_ID()});
	 	//
	 	List<MLBRMDFeToll> list = query.list();
	 	return list.toArray(new MLBRMDFeToll[list.size()]);
	}	//	getToll

	/**
	 * 	Status
	 */
	@Override
	public int customizeValidActions (String docStatus, Object processing,
			String orderType, String isSOTrx, int AD_Table_ID, String[] docAction,
			String[] options, int index)
	{
		if (DOCSTATUS_Completed.equals(docStatus))
			options[index++] = DOCACTION_Void;
		
		else if (DOCSTATUS_WaitingConfirmation.equals(docStatus))
		{
			options[0] = DOCACTION_Complete;
			options[1] = null;
			options[2] = null;
			options[3] = null;
			options[4] = null;
			index=1;
		}
		//
		return index;
	}	//	docStatus
}	//	MLBRMDFe
