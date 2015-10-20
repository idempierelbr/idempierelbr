package org.idempierelbr.openitems.processcnab240;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MAttachment;
import org.compiere.model.MBPartner;
import org.compiere.model.MBank;
import org.compiere.model.MBankAccount;
import org.compiere.model.MOrg;
import org.compiere.model.MSequence;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Msg;
import org.idempierelbr.cnab240.annotated.CNABHeaderArquivoRecord;
import org.idempierelbr.cnab240.annotated.CNABHeaderLoteRecord;
import org.idempierelbr.cnab240.annotated.CNABRecords;
import org.idempierelbr.cnab240.annotated.CNABSegmentPRecord;
import org.idempierelbr.cnab240.annotated.CNABSegmentQRecord;
import org.idempierelbr.cnab240.annotated.CNABSegmentRRecord;
import org.idempierelbr.cnab240.annotated.CNABTrailerArquivoRecord;
import org.idempierelbr.cnab240.annotated.CNABTrailerLoteRecord;
import org.idempierelbr.core.util.RemoverAcentos;
import org.idempierelbr.core.util.TextUtil;
import org.idempierelbr.openitems.model.MLBRBankAccountConvenio;
import org.idempierelbr.openitems.model.MLBRBoleto;
import org.idempierelbr.openitems.model.MLBRBoletoDetails;
import org.idempierelbr.openitems.model.MLBRBoletoMovement;
import org.idempierelbr.openitems.model.MLBRBoletoStaticData;
import org.idempierelbr.openitems.model.MLBRCNAB;
import org.idempierelbr.openitems.model.MLBRCobMovimento;
import org.idempierelbr.openitems.process.IBankCollection;
import org.idempierelbr.openitems.util.OpenItemsUtil;
import org.zkoss.zul.Filedownload;

public class CNAB240Generate extends SvrProcess
{
	/**	Manual Selection		*/
	private boolean 	p_Selection = false;
	/**	Created					*/
	private Timestamp	p_Created = null;
	/**	Org						*/
	private int			p_AD_Org_ID = 0;
	/** BankAccount				*/
	private int			p_C_BankAccount_ID = 0;
	/** Convenio				*/
	private int			p_LBR_BankAccount_Convenio_ID = 0;
	
	/** Used by each movement; keeping here to speed up performance */	
	String m_movementCode = null;
	MLBRBoleto m_boleto = null;
	MBank m_bank = null;
	MLBRBoletoDetails m_details = null;
	MBPartner m_bpLinked2Org = null;
	
	/** Used by each file */
	Timestamp m_LBR_FileGeneratingDate = null;
	private CNABRecords records = null;
	private MBankAccount bA;
	private MLBRBankAccountConvenio convenio;
	private MOrg org;
	private MBPartner cedente;
	
	private IBankCollection bankCollection=null;
	
	public CNAB240Generate(CNABRecords records , IBankCollection bankCollection ) {
		super();
		this.records = records;
		this.bankCollection = bankCollection;
	}

	public CNAB240Generate() {
		super();
	}

	@Override
	protected void prepare() {
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else if (name.equals("Selection"))
				p_Selection = "Y".equals(para[i].getParameter());
			else if (name.equals("Created"))
				p_Created = (Timestamp)para[i].getParameter();
			else if (name.equals("AD_Org_ID"))
				p_AD_Org_ID = para[i].getParameterAsInt();
			else if (name.equals("C_BankAccount_ID"))
				p_C_BankAccount_ID = para[i].getParameterAsInt();
			else if (name.equals("LBR_BankAccount_Convenio_ID"))
				p_LBR_BankAccount_Convenio_ID = para[i].getParameterAsInt();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		
		m_LBR_FileGeneratingDate = new Timestamp(Calendar.getInstance().getTime().getTime());
		
		
	}

	
	@Override
	protected String doIt() throws Exception {
		if (log.isLoggable(Level.INFO)) log.info("Selection=" + p_Selection + ", Created=" + p_Created
				+ ", AD_Org_ID=" + p_AD_Org_ID + ", C_BankAccount_ID=" + p_C_BankAccount_ID
				+ ", LBR_BankAccount_Convenio_ID=" + p_LBR_BankAccount_Convenio_ID);
			
			if (p_AD_Org_ID < 1 || p_C_BankAccount_ID < 1 || p_LBR_BankAccount_Convenio_ID < 1)
				throw new AdempiereException(); //TODO: Corrigir
			
			StringBuilder sql = null;
			if (p_Selection)	//	VCNABGen
			{
				sql = new StringBuilder("SELECT LBR_BoletoMovement.* FROM LBR_BoletoMovement, LBR_Boleto, T_Selection ")
					.append("WHERE LBR_Boleto.DocStatus='CO'")
					.append(" AND LBR_BoletoMovement.LBR_CNAB240MovementType = '1'") // 1 - Remessa (Cliente -> Banco)
					.append(" AND LBR_BoletoMovement.LBR_FileGeneratingDate IS NULL")
					.append(" AND LBR_BoletoMovement.LBR_BoletoMovement_ID = T_Selection.T_Selection_ID")
					.append(" AND LBR_BoletoMovement.LBR_Boleto_ID = LBR_Boleto.LBR_Boleto_ID")
					.append(" AND T_Selection.AD_PInstance_ID=? ")
					.append("ORDER BY LBR_BoletoMovement.LBR_Cob_Movimento_ID, LBR_BoletoMovement.Created");
			}
			else
			{
				sql = new StringBuilder("SELECT * FROM LBR_BoletoMovement bm ")
					.append("JOIN LBR_Boleto b ON b.LBR_Boleto_ID=bm.LBR_Boleto_ID ")
					.append("WHERE b.DocStatus='CO'")
					.append(" AND bm.LBR_CNAB240MovementType = '1'") // 1 - Remessa (Cliente -> Banco)
					.append(" AND bm.LBR_FileGeneratingDate IS NULL")
					.append(" AND b.AD_Org_ID=?")
					.append(" AND b.C_BankAccount_ID=?")
					.append(" AND b.LBR_BankAccount_Convenio_ID=? ")
					.append("ORDER BY bm.LBR_Cob_Movimento_ID, b.LBR_BankAccount_Carteira_ID, bm.Created");
			}
			
			PreparedStatement pstmt = null;
			try {
				pstmt = DB.prepareStatement (sql.toString(), get_TrxName());

				if (p_Selection) 
					pstmt.setInt(1, getAD_PInstance_ID());
				else {
					pstmt.setInt(1, p_AD_Org_ID);
					pstmt.setInt(2, p_C_BankAccount_ID);
					pstmt.setInt(3, p_LBR_BankAccount_Convenio_ID);
				}
			} catch (Exception e) {
				throw new AdempiereException(e);
			}

			bA = new MBankAccount(this.getCtx(), p_C_BankAccount_ID, this.get_TrxName());
			m_bank = (MBank) bA.getC_Bank();
			convenio = new MLBRBankAccountConvenio(this.getCtx(), p_LBR_BankAccount_Convenio_ID, this.get_TrxName());
			org = new MOrg(this.getCtx(), p_AD_Org_ID, this.get_TrxName());
			cedente = new MBPartner(this.getCtx(), org.getLinkedC_BPartner_ID(this.get_TrxName()), this.get_TrxName());

			String routingNo = m_bank.getRoutingNo();
			
			if (bankCollection == null) {
				bankCollection = OpenItemsUtil.getBankCollectionInstance( routingNo );
			}
			
			if (bankCollection == null) {
				throw new AdempiereException ( "BankCollection não encontrado para banco cód. " + routingNo );
			}
			
			if (records == null) {
				log.warning("Utilizando registros no padrão FEBRABAN");
				records = new CNABRecords();
			}

			return generate(pstmt);
	}

	private int getNextSequence( String seqName ) {
		int seq_ID = convenio.get_ValueAsInt(seqName);
		MSequence seq = new MSequence(getCtx(), seq_ID, get_TrxName());
		int nextId = seq.getNextID();
		seq.save(get_TrxName());
		return (nextId);
	}
	
	protected String generate (PreparedStatement pstmt) throws Exception {
		
		
		int tipoInscricao = 0;
		String inscricao = "";
		
		if (cedente.get_ValueAsString("LBR_BPTypeBR").equals("PF")) {
			tipoInscricao = 1;
			inscricao = cedente.get_ValueAsString("LBR_CPF");
		} else if (cedente.get_ValueAsString("LBR_BPTypeBR").equals("PJ")) {
			tipoInscricao = 2;
			inscricao = cedente.get_ValueAsString("LBR_CNPJ");
		}

		List<MLBRBoletoMovement> listMov = readMovements( pstmt );

		if ( listMov == null || listMov.size() == 0) {
			throw new Exception ( "Nenhum movimento para gerar remessa" );
		}
		
		int sequenciaArquivo = getNextSequence( "LBR_SeqCNAB240File_ID" );
		CNABHeaderArquivoRecord fileHeader = records.addHeader( tipoInscricao ,  inscricao , RemoverAcentos.remover(cedente.getName()), sequenciaArquivo );

		/* ----------- detalhes do header ------------------------------------ */

		String agencyNo = OpenItemsUtil.getPartialText(bA.get_ValueAsString("LBR_BankAgencyNo"), false);
		String agencyDigit = OpenItemsUtil.getPartialText(bA.get_ValueAsString("LBR_BankAgencyNo"), true);
		String accountNo = OpenItemsUtil.getPartialText(bA.get_ValueAsString("AccountNo"), false);
		String accountDigit = OpenItemsUtil.getPartialText(bA.get_ValueAsString("AccountNo"), true);

		fileHeader.setAgencia(Integer.parseInt(agencyNo));
		fileHeader.setDvAgencia(agencyDigit);
		fileHeader.setConta(Long.parseLong(accountNo));
		fileHeader.setDvConta(accountDigit);
		fileHeader.setConvenio(convenio.getLBR_ConvenioNo());
		
		fileHeader.setCodigoRemessa(1);

		bankCollection.postProcessGenerated(fileHeader, convenio);
		
		/*---------------------------------------------------------------------*/
		
		int sequenciaLote = getNextSequence( "LBR_SeqCNAB240Lot_ID" );
		CNABHeaderLoteRecord lote = records.addHeaderLote(1, sequenciaLote);
		lote.setTipoOperacao("R");
		bankCollection.postProcessGenerated(lote, convenio);

		// Create CNAB File record
		MLBRCNAB cnab = new MLBRCNAB(getCtx() , 0 , get_TrxName() );
		cnab.setC_Bank_ID(m_bank.get_ID());
		cnab.setC_BankAccount_ID(convenio.getC_BankAccount_ID());
		cnab.setLBR_FileGeneratingDate(m_LBR_FileGeneratingDate);
		cnab.setLBR_CNAB240MovementType(MLBRCNAB.LBR_CNAB240MOVEMENTTYPE_1_RemessaCliente_GtBanco);
		cnab.setLBR_CNAB240SeqNo(sequenciaArquivo);
		cnab.saveEx();
			
		for ( MLBRBoletoMovement mov : listMov ) {
			generateRegistroDeDetalhe(mov);
			mov.setLBR_FileGeneratingDate(m_LBR_FileGeneratingDate);
			mov.setLBR_CNAB_ID(cnab.get_ID());
			mov.saveEx();
		}
		
		CNABTrailerLoteRecord trailerLote = records.addTrailerLote();
		bankCollection.postProcessGenerated(trailerLote, convenio);

		CNABTrailerArquivoRecord fileTrailer = records.addTrailer();
		bankCollection.postProcessGenerated(fileTrailer, convenio);
		
		File file = generateFile(records);

		
		if (file != null) {
			if (this.processUI != null)
				this.processUI.download(file);
			else
				Filedownload.save(file, null);

			cnab.setDescription(getName() + " (" + m_bank.getName() + ")\n" + getProcessInfo().getSummary());
			cnab.saveEx();

			MAttachment attachment = cnab.createAttachment();
			attachment.addEntry(file);	

			String log = getProcessInfo().getLogInfo(true);
			if (log != null && log.trim().length() > 0)
				attachment.addEntry("ProcessLog.html", log.getBytes("UTF-8"));

			if (attachment != null)
				attachment.saveEx();
		} else {
			throw new AdempiereException("Could not generate CNAB");
		}

		
		return("");

	}

	private List<MLBRBoletoMovement> readMovements(PreparedStatement pstmt)  {

		List<MLBRBoletoMovement> listMov = new ArrayList<MLBRBoletoMovement>();
		
		ResultSet rs = null;
		try {
			rs = pstmt.executeQuery ();

			while (rs.next ()) {
				MLBRBoletoMovement mov = new MLBRBoletoMovement(getCtx(), rs, get_TrxName());
				StringBuilder msgsup = new StringBuilder(Msg.getMsg(getCtx(), "Processing")).append(" ").append(mov.getLBR_BoletoMovement_ID());
				statusUpdate(msgsup.toString());

				listMov.add(mov);

			}	//	for all movements
		} catch (Exception e) {
			throw new AdempiereException(e);
		} finally {
			DB.close(rs, pstmt);
			rs = null;
			pstmt = null;
		} 

		return listMov;
	}
	
	protected String getMovementCode(MLBRBoletoMovement mov) {
		return new MLBRCobMovimento(getCtx(), mov.getLBR_Cob_Movimento_ID(), get_TrxName()).getValue();
	}

	private void generateRegistroDeDetalhe(MLBRBoletoMovement mov) throws InstantiationException, IllegalAccessException {
		// Reset variables
		m_movementCode = getMovementCode(mov);
		m_boleto = new MLBRBoleto(getCtx(), mov.getLBR_Boleto_ID(), get_TrxName());
		
		// se nao for nem registrado, nem distribuido pelo banco
		if ( !m_boleto.getLBR_IssueType().equals("1") && !m_boleto.getLBR_CollectionRegType().equals("1") )
			return;
		
		MLBRBoletoDetails[] detailsEntries = m_boleto.getDetails();
		m_details = new MLBRBoletoDetails(getCtx(), 0, get_TrxName());

		// Process Movement
		if (detailsEntries.length > 0)
			m_details = detailsEntries[0];	
		
		CNABSegmentPRecord segP = generateSegmentoP(mov);
		bankCollection.postProcessGenerated(segP, mov);
		
		CNABSegmentQRecord segQ = generateSegmentoQ(mov);
		bankCollection.postProcessGenerated(segQ, mov);
		
		CNABSegmentRRecord segR = generateSegmentoR(mov);
		bankCollection.postProcessGenerated(segR, mov);

		/*
		if ( m_boleto.getLBR_IssueType().equals("1") ) {
			CNABSegmentSRecord segS = generateSegmentoS(mov);
		}
		/* */
		
		/*
		TitulosEmCobrancaSegmentoY01 segY01 = generateSegmentoY01(mov);
		if (segY01 != null) {
			m_RegistrosDeDetalhe.add(segY01);
			m_DetailNumber++;
		}
		*/
	}

	private CNABSegmentRRecord generateSegmentoR(MLBRBoletoMovement mov) throws InstantiationException, IllegalAccessException {
		
		int LBR_LatePaymentPenaltyCode = 0;
		Timestamp LBR_LatePaymentPenaltyDate = null;
		BigDecimal LBR_LatePaymentPenaltyAP = null;
		
		boolean haveValues = false;
		
		CNABSegmentRRecord segR = (CNABSegmentRRecord) records.createSegmento("R");

		//----------------------------------Serviço--------------------------------------
		MLBRCobMovimento cobMov = new MLBRCobMovimento(getCtx(), mov.getLBR_Cob_Movimento_ID(), get_TrxName());
		segR.setCodigoMovimento(Integer.parseInt(cobMov.getValue()));


		//----------------------------------Multa---------------------------------------
		if (m_movementCode.equals("14") || m_movementCode.equals("15") ) {
			if (mov.getLBR_LatePaymentPenaltyCode() != null && !mov.getLBR_LatePaymentPenaltyCode().trim().equals("")) {
				LBR_LatePaymentPenaltyCode = Integer.parseInt(mov.getLBR_LatePaymentPenaltyCode());
				LBR_LatePaymentPenaltyDate = mov.getLBR_LatePaymentPenaltyDate();
				LBR_LatePaymentPenaltyAP = mov.getLBR_LatePaymentPenaltyAP();
			}
		} else {
			if (m_details.getLBR_LatePaymentPenaltyCode() != null && !m_details.getLBR_LatePaymentPenaltyCode().trim().equals("")) {
				LBR_LatePaymentPenaltyCode = Integer.parseInt(m_details.getLBR_InterestCode());
				LBR_LatePaymentPenaltyDate = m_details.getLBR_LatePaymentPenaltyDate();
				LBR_LatePaymentPenaltyAP = m_details.getLBR_LatePaymentPenaltyAP();
			}
		}

		if ( LBR_LatePaymentPenaltyCode > 0) {
			segR.setCodigoMulta(LBR_LatePaymentPenaltyCode);
			
			if (LBR_LatePaymentPenaltyDate!=null)
				segR.setDataMulta(new java.util.Date(LBR_LatePaymentPenaltyDate.getTime()));
			
			double multaValue = LBR_LatePaymentPenaltyAP.doubleValue();
			segR.setMulta(multaValue , LBR_LatePaymentPenaltyCode == 2);
			haveValues = true;
		}
		
		if (haveValues) {
			records.addSegmento(segR);
		}
		
		return segR;
	}

	private CNABSegmentQRecord generateSegmentoQ(MLBRBoletoMovement mov) throws InstantiationException, IllegalAccessException {
		CNABSegmentQRecord segQ = (CNABSegmentQRecord) records.addSegmento("Q");

		MLBRBoletoStaticData[] boletoSDEntries = m_boleto.getStaticData();
		MLBRBoletoStaticData boletoSDSacado = null;
		MLBRBoletoStaticData boletoSDSacadorAvalista = null;
		
		for (MLBRBoletoStaticData e : boletoSDEntries) {
			if (e.getLBR_StaticDataType().equals(MLBRBoletoStaticData.LBR_STATICDATATYPE_PagadorSacado))
				boletoSDSacado = e;
			else if (e.getLBR_StaticDataType().equals(MLBRBoletoStaticData.LBR_STATICDATATYPE_SacadorAvalista))
				boletoSDSacadorAvalista = e;
		}
		
		//----------------------------------Serviço--------------------------------------
		MLBRCobMovimento cobMov = new MLBRCobMovimento(getCtx(), mov.getLBR_Cob_Movimento_ID(), get_TrxName());
		segQ.setCodigoMovimento(Integer.parseInt(cobMov.getValue()));
		
		//------------------------------Dados do Sacado----------------------------------
		
		if (boletoSDSacado != null) {		
			MBPartner bp = new MBPartner(getCtx(), m_boleto.getC_BPartner_ID(), get_TrxName());
			
			if (bp.get_ValueAsString("LBR_BPTypeBR").equals("PF")) {
				segQ.setTipoInscricaoSacado( 1 );
				segQ.setInscricaoSacado(bp.get_ValueAsString("LBR_CPF"));
			} else if (bp.get_ValueAsString("LBR_BPTypeBR").equals("PJ")) {
				segQ.setTipoInscricaoSacado( 2 );
				segQ.setInscricaoSacado(bp.get_ValueAsString("LBR_CNPJ"));
			}
			
			segQ.setNomeSacado(RemoverAcentos.remover(bp.getName()));
		
			StringBuilder endereco = new StringBuilder();
			endereco.append(boletoSDSacado.getAddress1());
			
			if (boletoSDSacado.getAddress2() != null && !boletoSDSacado.getAddress2().trim().equals("")) {
				endereco.append(", ");
				endereco.append(boletoSDSacado.getAddress2());
			}
			
			if (boletoSDSacado.getAddress4() != null && !boletoSDSacado.getAddress4().trim().equals("")) {
				endereco.append(", ");
				endereco.append(boletoSDSacado.getAddress4());
			}
			
			segQ.setEnderecoSacado(RemoverAcentos.remover(endereco.toString()));
			
			segQ.setBairroSacado(RemoverAcentos.remover(boletoSDSacado.getAddress3()));
			
			String cepComposto = boletoSDSacado.getPostal();
			
			if (cepComposto != null) {
				cepComposto = TextUtil.checkSize(TextUtil.formatStringCodes(cepComposto), 8, 8, '0');
			}
			
			segQ.setCepSacado(cepComposto);

			segQ.setMunicipioSacado(RemoverAcentos.remover(boletoSDSacado.getCity()));

			segQ.setUfSacado(RemoverAcentos.remover(boletoSDSacado.getRegionName()));

		}
		
		//------------------------------Sacador / Avalista-------------------------------
		
		if (boletoSDSacadorAvalista != null) {		
			MBPartner bp = new MBPartner(getCtx(), m_boleto.getLBR_Guarantor_ID(), get_TrxName());
			
			if (bp.get_ValueAsString("LBR_BPTypeBR").equals("PF")) {
				segQ.setTipoInscricaoSacadorAvalista(1);
				segQ.setInscricaoSacadorAvalista(bp.get_ValueAsString("LBR_CPF"));
			} else if (bp.get_ValueAsString("LBR_BPTypeBR").equals("PJ")) {
				segQ.setTipoInscricaoSacadorAvalista(2);
				segQ.setInscricaoSacadorAvalista(bp.get_ValueAsString("LBR_CNPJ"));
			}
			
			segQ.setNomeSacadorAvalista(RemoverAcentos.remover(bp.getName()));
		}
		
		return segQ;
	}

	private CNABSegmentPRecord generateSegmentoP(MLBRBoletoMovement mov) throws InstantiationException, IllegalAccessException {
		CNABSegmentPRecord segP = (CNABSegmentPRecord) records.addSegmento("P");

		String agencyNo = OpenItemsUtil.getPartialText(bA.get_ValueAsString("LBR_BankAgencyNo"), false);
		String agencyDigit = OpenItemsUtil.getPartialText(bA.get_ValueAsString("LBR_BankAgencyNo"), true);
		String accountNo = OpenItemsUtil.getPartialText(bA.get_ValueAsString("AccountNo"), false);
		String accountDigit = OpenItemsUtil.getPartialText(bA.get_ValueAsString("AccountNo"), true);

		segP.setAgenciaCedente( Integer.parseInt(agencyNo));
		segP.setDvAgenciaCedente(agencyDigit);
		segP.setContaCedente( Integer.parseInt(accountNo));
		segP.setDvContaCedente( accountDigit );

		//----------------------------------Serviço--------------------------------------
		
		MLBRCobMovimento cobMov = new MLBRCobMovimento(getCtx(), mov.getLBR_Cob_Movimento_ID(), get_TrxName());
		segP.setCodigoMovimento(Integer.parseInt(cobMov.getValue()));

		//--------------------------------Nosso Número-----------------------------------
		String LBR_NumberInBank = "";
		
		if (m_movementCode.equals("44")) {
			if (mov.getLBR_NumberInBank() != null && !mov.getLBR_NumberInBank().trim().equals(""))
				LBR_NumberInBank = mov.getLBR_NumberInBank();
		} else {
			if (m_boleto.getLBR_NumberInBank() != null && !m_boleto.getLBR_NumberInBank().trim().equals(""))
				LBR_NumberInBank = m_boleto.getLBR_NumberInBank();
		}
		
		segP.setNossoNumero( LBR_NumberInBank );
		
		//--------------------------Característica Cobrança------------------------------

		String LBR_CarteiraType;
		
		if (m_movementCode.equals("40") || m_movementCode.equals("43")) {
			LBR_CarteiraType = mov.getLBR_CarteiraType();
		} else {
			LBR_CarteiraType = m_boleto.getLBR_CarteiraType();
		}

		segP.setCodigoCarteira(LBR_CarteiraType);
		segP.setFormaCadastramento(Integer.parseInt(m_boleto.getLBR_CollectionRegType()));
		segP.setTipoDocumento(m_boleto.getLBR_CNAB240DocType());

		segP.setEmissaoBloqueto(Integer.parseInt(m_boleto.getLBR_IssueType()));
		segP.setDistribuicaoBloqueto(m_boleto.getLBR_DistributionType());
		
		
		//----------------------------Informações Diversas-------------------------------
		String LBR_NumberInOrg;
		
		if (m_movementCode.equals("21")) {
			LBR_NumberInOrg = mov.getLBR_NumberInOrg();
		} else {
			LBR_NumberInOrg = m_boleto.getLBR_NumberInOrg();
		}
		
		segP.setNumeroDocumento(LBR_NumberInOrg);
		
		Timestamp DueDate;
		
		if (m_movementCode.equals("06")) {
			DueDate = mov.getDueDate();
		} else {
			DueDate = m_boleto.getDueDate();
		}
		
		segP.setVencimento(new java.util.Date(DueDate.getTime()));
		segP.setValorTitulo(m_boleto.getGrandTotal().doubleValue());
		
		int especieTitulo;
		if (m_movementCode.equals("42")) {
			especieTitulo = Integer.parseInt(mov.getLBR_CollectionType());
		} else {
			especieTitulo = Integer.parseInt(m_boleto.getLBR_CollectionType());
		}
		
		segP.setEspecieTitulo(especieTitulo);
		
		segP.setAceite(m_boleto.getLBR_Accepted());
		segP.setDataEmissao(new java.util.Date(m_boleto.getDateDoc().getTime()));
		
		//------------------------------------Juros--------------------------------------
		
		int LBR_InterestCode = 3;
		Timestamp LBR_InterestDate = null;
		BigDecimal LBR_InterestAP = null;
		
		if (m_movementCode.equals("12")) {
			if (mov.getLBR_InterestCode() != null && !mov.getLBR_InterestCode().trim().equals("")) {
				LBR_InterestCode = Integer.parseInt(mov.getLBR_InterestCode());
				LBR_InterestDate = mov.getLBR_InterestDate();
				LBR_InterestAP = mov.getLBR_InterestAP();
			}
		} else {
			if (m_details.getLBR_InterestCode() != null && !m_details.getLBR_InterestCode().trim().equals("")) {
				LBR_InterestCode = Integer.parseInt(m_details.getLBR_InterestCode());
				LBR_InterestDate = m_details.getLBR_InterestDate();
				LBR_InterestAP = m_details.getLBR_InterestAP();
			}
		}

		segP.setCodigoJurosMora(LBR_InterestCode);

		if (LBR_InterestDate!=null)
			segP.setDataJurosMora(new java.util.Date(LBR_InterestDate.getTime()));

		double jurosValue = LBR_InterestAP.doubleValue();
		segP.setJurosMora(jurosValue , LBR_InterestCode == 2 );
		
		//----------------------------------Desconto 1-----------------------------------
		
		int LBR_DiscountCode = 0;
		if (mov.getLBR_CNABDiscount1Code() != null) {
			LBR_DiscountCode = Integer.parseInt( mov.getLBR_CNABDiscount1Code() );
			segP.setCodigoDesconto( LBR_DiscountCode );
			segP.setDataDesconto(mov.getLBR_CNABDiscount1Date());
			segP.setDesconto(mov.getLBR_CNABDiscount1AP().doubleValue() , LBR_DiscountCode == 2 || LBR_DiscountCode == 5 || LBR_DiscountCode == 6  );
		} else if (m_details.getLBR_CNABDiscount1Code() != null) {
			LBR_DiscountCode = Integer.parseInt( m_details.getLBR_CNABDiscount1Code() );
			segP.setCodigoDesconto( LBR_DiscountCode );
			segP.setDataDesconto(m_details.getLBR_CNABDiscount1Date());
			segP.setDesconto(m_details.getLBR_CNABDiscount1AP().doubleValue() , LBR_DiscountCode == 2 || LBR_DiscountCode == 5 || LBR_DiscountCode == 6  );
		}

		//----------------------------Informações Diversas-------------------------------
		if (m_boleto.getLBR_IOFAmt() != null)
			segP.setValorIOF(m_boleto.getLBR_IOFAmt().doubleValue());
		
		segP.setValorAbatimento(0.00);
		
		if (m_movementCode.equals("04") && mov.getWriteOffAmt() != null)
			segP.setValorAbatimento(mov.getWriteOffAmt().doubleValue());
		else if (m_boleto.getWriteOffAmt() != null)
			segP.setValorAbatimento(m_boleto.getWriteOffAmt().doubleValue());
		
		segP.setIdentificacaoTituloEmpresa(m_boleto.getDocumentNo());
		
		if (m_movementCode.equals("22") && mov.getLBR_DocumentNo() != null)
			segP.setNumeroDocumento(mov.getLBR_DocumentNo());
		
		segP.setCodigoProtesto(3);
		segP.setPrazoProtesto(1);
		
		if (m_details.getLBR_ProtestCode() != null) {
			segP.setCodigoProtesto(Integer.parseInt(m_details.getLBR_ProtestCode()));
			segP.setPrazoProtesto(m_details.getLBR_ProtestDays());
		}
			
		segP.setCodigoBaixaDevolucao(2);
		segP.setPrazoBaixaDevolucao(1);
		
		if (m_details.getLBR_CollectionReturnCode() != null) {
			segP.setCodigoBaixaDevolucao(Integer.parseInt(m_details.getLBR_CollectionReturnCode()));
			segP.setPrazoBaixaDevolucao(m_details.getLBR_CollectionReturnDays());
		}		

		// por enquanto, apenas Real
		segP.setCodigoMoeda(9);

		
		return segP;
	}

	
	private File generateFile(CNABRecords arquivoBanco) throws IOException {
		String now = new SimpleDateFormat("ddMMyyHHmmss").format(new Date());
		File file = new File(System.getProperty("java.io.tmpdir") +
				System.getProperty("file.separator") + now + ".REM");
		FileWriter arq = new FileWriter(file);
		arq.append(arquivoBanco.toString());
		arq.close();
	
		return file;
	}



}
