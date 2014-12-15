package org.idempierelbr.cnab240bradesco.process;

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
import org.compiere.model.MNote;
import org.compiere.model.MOrg;
import org.compiere.model.MPInstance;
import org.compiere.model.MSequence;
import org.compiere.model.MSysConfig;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.idempierelbr.cnab240febraban.enums.Banco;
import org.idempierelbr.cnab240febraban.enums.CodigoRemessaRetorno;
import org.idempierelbr.cnab240febraban.enums.EspecieTitulo;
import org.idempierelbr.cnab240febraban.enums.FormaDistribuicaoBloqueto;
import org.idempierelbr.cnab240febraban.enums.FormaEmissaoBloqueto;
import org.idempierelbr.cnab240febraban.enums.TipoDocumento;
import org.idempierelbr.cnab240febraban.enums.TipoImpressao;
import org.idempierelbr.cnab240febraban.enums.TipoInscricao;
import org.idempierelbr.cnab240febraban.enums.TipoOperacao;
import org.idempierelbr.cnab240febraban.enums.TipoRegistro;
import org.idempierelbr.cnab240febraban.enums.TipoServico;
import org.idempierelbr.cnab240febraban.model.pojo.Agencia;
import org.idempierelbr.cnab240febraban.model.pojo.Arquivo;
import org.idempierelbr.cnab240febraban.model.pojo.ArquivoBanco;
import org.idempierelbr.cnab240febraban.model.pojo.CaracteristicaCobranca;
import org.idempierelbr.cnab240febraban.model.pojo.Conta;
import org.idempierelbr.cnab240febraban.model.pojo.ContaCorrente;
import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.ControleCobranca;
import org.idempierelbr.cnab240febraban.model.pojo.DadosDoSacado;
import org.idempierelbr.cnab240febraban.model.pojo.DadosPessoa;
import org.idempierelbr.cnab240febraban.model.pojo.Desconto;
import org.idempierelbr.cnab240febraban.model.pojo.Empresa;
import org.idempierelbr.cnab240febraban.model.pojo.Inscricao;
import org.idempierelbr.cnab240febraban.model.pojo.Inscricao2;
import org.idempierelbr.cnab240febraban.model.pojo.Juros;
import org.idempierelbr.cnab240febraban.model.pojo.Lote;
import org.idempierelbr.cnab240febraban.model.pojo.Servico4;
import org.idempierelbr.cnab240febraban.model.pojo.Servico5;
import org.idempierelbr.cnab240febraban.model.pojo.Totais;
import org.idempierelbr.cnab240febraban.model.pojo.TotalizacaoCobranca;
import org.idempierelbr.cnab240febraban.model.registro.detalhe.RegistroDeDetalhe;
import org.idempierelbr.cnab240febraban.model.registro.detalhe.segmento.TitulosEmCobrancaSegmentoP;
import org.idempierelbr.cnab240febraban.model.registro.detalhe.segmento.TitulosEmCobrancaSegmentoQ;
import org.idempierelbr.cnab240febraban.model.registro.detalhe.segmento.TitulosEmCobrancaSegmentoR;
import org.idempierelbr.cnab240febraban.model.registro.detalhe.segmento.TitulosEmCobrancaSegmentoS;
import org.idempierelbr.cnab240febraban.model.registro.detalhe.segmento.TitulosEmCobrancaSegmentoS.TipoImpressao3;
import org.idempierelbr.cnab240febraban.model.registro.detalhe.segmento.TitulosEmCobrancaSegmentoY01;
import org.idempierelbr.cnab240febraban.model.registro.header.HeaderArquivo;
import org.idempierelbr.cnab240febraban.model.registro.header.servico.HeaderTitulosEmCobranca;
import org.idempierelbr.cnab240febraban.model.registro.trailer.TrailerArquivo;
import org.idempierelbr.cnab240febraban.model.registro.trailer.servico.TrailerLoteTitulosEmCobranca;
import org.idempierelbr.core.util.RemoverAcentos;
import org.idempierelbr.core.util.TextUtil;
import org.idempierelbr.openitems.model.MLBRBankAccountCarteira;
import org.idempierelbr.openitems.model.MLBRBankAccountConvenio;
import org.idempierelbr.openitems.model.MLBRBoleto;
import org.idempierelbr.openitems.model.MLBRBoletoDetails;
import org.idempierelbr.openitems.model.MLBRBoletoMovement;
import org.idempierelbr.openitems.model.MLBRBoletoStaticData;
import org.idempierelbr.openitems.model.MLBRCobMovimento;
import org.idempierelbr.openitems.util.OpenItemsUtil;
import org.zkoss.zul.Filedownload;

/**
 *	Generate CNAB
 */
public class BradescoGenerate extends SvrProcess
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
	
	/** Lot Control Number		*/
	private int			m_lotServiceNumber = 1;
	/** Details Control Number	*/
	private int			m_DetailNumber = 1;
	/** Details List			*/
	List<RegistroDeDetalhe> m_RegistrosDeDetalhe;
	/** Movement Counter		*/
	private int m_movCounter = 0;
	
	/** Used by each movement; keeping here to speed up performance */	
	String m_movementCode = null;
	MLBRBoleto m_boleto = null;
	MBank m_bank = null;
	MLBRBoletoDetails m_details = null;
	MBPartner m_bpLinked2Org = null;
	
	/** Used by each file */
	Timestamp m_LBR_FileGeneratingDate = null;
	
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
		
		m_RegistrosDeDetalhe = new ArrayList<RegistroDeDetalhe>();
		m_LBR_FileGeneratingDate = new Timestamp(Calendar.getInstance().getTime().getTime());
	}	//	prepare

	/**
	 * 	Generate CNAB
	 *	@return info
	 *	@throws Exception
	 */
	protected String doIt () throws Exception
	{
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

		return generate(pstmt);
	
	}	//	doIt
	
	/**
	 * 	Generate CNAB
	 * 	@param pstmt boleto movement query 
	 *	@return info
	 */
	protected String generate (PreparedStatement pstmt)
	{
		ResultSet rs = null;
		try {
			rs = pstmt.executeQuery ();

			while (rs.next ()) {
				MLBRBoletoMovement mov = new MLBRBoletoMovement(getCtx(), rs, get_TrxName());
				StringBuilder msgsup = new StringBuilder(Msg.getMsg(getCtx(), "Processing")).append(" ").append(mov.getLBR_BoletoMovement_ID());
				statusUpdate(msgsup.toString());
				generateRegistroDeDetalhe(mov);
				// Set File Generating Date
				mov.setLBR_FileGeneratingDate(m_LBR_FileGeneratingDate);
				mov.saveEx();
				m_movCounter++;
			}	//	for all movements
			
			if (m_RegistrosDeDetalhe == null || m_RegistrosDeDetalhe.size() <= 0)
				return "Nothing to generate...";
			
			// Cria Header do Lote de Cobrança
			HeaderTitulosEmCobranca headerLote = generateHeaderTitulosEmCobranca();
			
			// Cria Trailer do Lote
			TrailerLoteTitulosEmCobranca trailerLote = generateTrailerLoteTitulosEmCobranca();

			// Monta o Lote
			Lote<HeaderTitulosEmCobranca, RegistroDeDetalhe, TrailerLoteTitulosEmCobranca> lote = null;
			
			try {
				lote = new Lote<HeaderTitulosEmCobranca, RegistroDeDetalhe, TrailerLoteTitulosEmCobranca>();
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			lote.setHeader(headerLote);
			lote.setRegistrosDeDetalhe(m_RegistrosDeDetalhe);
			lote.setTrailer(trailerLote);

			// Cria Header de Arquivo
			HeaderArquivo headerArquivo = generateHeaderArquivo();
			
			// Cria Lista de Lotes
			List listaLotes = new ArrayList<Lote>();
			listaLotes.add(lote);
			
			// Cria Trailer de Arquivo
			TrailerArquivo trailerArquivo = generateTrailerArquivo();
			
			// Monta o Arquivo
			ArquivoBanco arquivoBanco = new ArquivoBanco();
			arquivoBanco.setHeader(headerArquivo);
			arquivoBanco.setListaLotes(listaLotes);
			arquivoBanco.setTrailer(trailerArquivo);
			
			File file = generateFile(arquivoBanco);
			
			if (file != null) {
				if (this.processUI != null)
					this.processUI.download(file);
				else
					Filedownload.save(file, null);
				
				// Create Notice
				if (MSysConfig.getBooleanValue("LBR_CNAB_CREATE_NOTICE", true, getAD_Client_ID(), p_AD_Org_ID)) {
					MNote note = new MNote(getCtx(), "LBR_CNABGenerated", Env.getAD_User_ID(getCtx()), get_TrxName());
					note.setTextMsg(getName() + " (" + m_bank.getName() + ")\n" + getProcessInfo().getSummary());
					note.setRecord(MPInstance.Table_ID, getProcessInfo().getAD_PInstance_ID());
					note.saveEx();
					
					MAttachment attachment = note.createAttachment();
					attachment.addEntry(file);	
	
					String log = getProcessInfo().getLogInfo(true);
					if (log != null && log.trim().length() > 0)
						attachment.addEntry("ProcessLog.html", log.getBytes("UTF-8"));
	
					if (attachment != null)
						attachment.saveEx();
				}
			} else {
				throw new AdempiereException("Could not generate CNAB");
			}
		} catch (Exception e) {
			throw new AdempiereException(e);
		} finally {
			DB.close(rs, pstmt);
			rs = null;
			pstmt = null;
		}

		StringBuilder msgreturn = new StringBuilder("@Created@ = ").append(m_movCounter);
		return msgreturn.toString();
	}	//	generate
	
	protected void generateRegistroDeDetalhe(MLBRBoletoMovement mov) {
		// Reset variables
		m_movementCode = getMovementCode(mov);
		m_boleto = new MLBRBoleto(getCtx(), mov.getLBR_Boleto_ID(), get_TrxName());
		m_bank = new MBank(getCtx(), m_boleto.getC_Bank_ID(), get_TrxName());
		
		MLBRBoletoDetails[] detailsEntries = m_boleto.getDetails();
		m_details = new MLBRBoletoDetails(getCtx(), 0, get_TrxName());

		MOrg org = new MOrg(getCtx(), m_boleto.getAD_Org_ID(), get_TrxName());
		int linked2OrgC_BPartner_ID = org.getLinkedC_BPartner_ID(get_TrxName());
		
		if (linked2OrgC_BPartner_ID < 1)
			throw new AdempiereException("Nenhum Parceiro vinculado à Organização");
		
		m_bpLinked2Org = new MBPartner(getCtx(), linked2OrgC_BPartner_ID, get_TrxName());
		
		// Process Movement
		if (detailsEntries.length > 0)
			m_details = detailsEntries[0];	
		
		TitulosEmCobrancaSegmentoP segP = generateSegmentoP(mov);
		if (segP != null) {
			m_RegistrosDeDetalhe.add(segP);
			m_DetailNumber++;
		}
		
		TitulosEmCobrancaSegmentoQ segQ = generateSegmentoQ(mov);
		if (segQ != null) {
			m_RegistrosDeDetalhe.add(segQ);
			m_DetailNumber++;
		}
		
		TitulosEmCobrancaSegmentoR segR = generateSegmentoR(mov);
		if (segR != null) {
			m_RegistrosDeDetalhe.add(segR);
			m_DetailNumber++;
		}
		
		TitulosEmCobrancaSegmentoS segS = generateSegmentoS(mov);
		if (segS != null) {
			m_RegistrosDeDetalhe.add(segS);
			m_DetailNumber++;
		}
		
		TitulosEmCobrancaSegmentoY01 segY01 = generateSegmentoY01(mov);
		if (segY01 != null) {
			m_RegistrosDeDetalhe.add(segY01);
			m_DetailNumber++;
		}
	}
	
	protected String getMovementCode(MLBRBoletoMovement mov) {
		return new MLBRCobMovimento(getCtx(), mov.getLBR_Cob_Movimento_ID(), get_TrxName()).getValue();
	}

	protected TitulosEmCobrancaSegmentoP generateSegmentoP(MLBRBoletoMovement mov) {
		TitulosEmCobrancaSegmentoP segP = new TitulosEmCobrancaSegmentoP();
		
		//---------------------------------Controle-------------------------------------
		Controle controle = new Controle();
		controle.setBanco(null);
		
		for(Banco banco : Banco.values()) {
			if (banco.getCodigo() == Integer.parseInt(m_bank.getRoutingNo()))
				controle.setBanco(banco);
		}		
		
		controle.setLoteServico(m_lotServiceNumber);
		controle.setTipoRegistro(TipoRegistro.DETALHE);
		segP.setControle(controle);
		
		//----------------------------------Serviço--------------------------------------
		Servico4 servico = new Servico4();
		servico.setNumeroRegistro(m_DetailNumber);
		servico.setCodigoSegmento("P");
		
		MLBRCobMovimento cobMov = new MLBRCobMovimento(getCtx(), mov.getLBR_Cob_Movimento_ID(), get_TrxName());
		servico.setCodigoMovimentoRemessa(Integer.parseInt(cobMov.getValue()));
		
		segP.setServico(servico);
		
		//--------------------------------Conta-Corrente---------------------------------
		segP.setContaCorrente(getContaCorrente());
		
		//--------------------------------Nosso Número-----------------------------------
		String LBR_NumberInBank = "";
		int carteiraNo = 0;
				
		if (m_movementCode.equals("44")) {
			if (mov.getLBR_NumberInBank() != null && !mov.getLBR_NumberInBank().trim().equals(""))
				LBR_NumberInBank = mov.getLBR_NumberInBank();
		} else {
			if (m_boleto.getLBR_NumberInBank() != null && !m_boleto.getLBR_NumberInBank().trim().equals(""))
				LBR_NumberInBank = m_boleto.getLBR_NumberInBank();
		}
		
		MLBRBankAccountConvenio convenio = new MLBRBankAccountConvenio(getCtx(), p_LBR_BankAccount_Convenio_ID, get_TrxName());
		
		if (convenio != null) {
			MLBRBankAccountCarteira cart = convenio.getCarteiraByType(m_boleto.getLBR_CarteiraType());
			
			if (cart != null && cart.getLBR_CarteiraNo() != null)
				carteiraNo = Integer.parseInt(cart.getLBR_CarteiraNo());
		}
		
		String digitoNossoNumero = getModulo11(TextUtil.lPad(carteiraNo, 2) + TextUtil.lPad(LBR_NumberInBank, 11), 7);
		String nossoNumeroCompleto = TextUtil.lPad(carteiraNo, 3) + "00000" + TextUtil.lPad(LBR_NumberInBank, 11) + digitoNossoNumero;
		segP.setNossoNumero(nossoNumeroCompleto);
		
		//--------------------------Característica Cobrança------------------------------
		CaracteristicaCobranca caracteristicaCobranca = new CaracteristicaCobranca();
		
		int LBR_CarteiraType;
		
		if (m_movementCode.equals("40") || m_movementCode.equals("43")) {
			LBR_CarteiraType = Integer.parseInt(mov.getLBR_CarteiraType());
		} else {
			LBR_CarteiraType = Integer.parseInt(m_boleto.getLBR_CarteiraType());
		}

		caracteristicaCobranca.setCodigoCarteira(LBR_CarteiraType);
		caracteristicaCobranca.setFormaCadastramentoTituloNoBanco(
				Integer.parseInt(m_boleto.getLBR_CollectionRegType()));
		
		TipoDocumento tipoDocumento = TipoDocumento.TRADICIONAL;
		
		if (m_boleto.getLBR_CNAB240DocType().equals("1"))
			tipoDocumento = TipoDocumento.TRADICIONAL;
		else if (m_boleto.getLBR_CNAB240DocType().equals("2"))
			tipoDocumento = TipoDocumento.ESCRITURAL;
		
		caracteristicaCobranca.setTipoDocumento(tipoDocumento);
		
		FormaEmissaoBloqueto formaEmissaoBloqueto = FormaEmissaoBloqueto.BANCO_EMITE;
		
		for(FormaEmissaoBloqueto e : FormaEmissaoBloqueto.values()) {
			if (e.getCodigo() == Integer.parseInt(m_boleto.getLBR_IssueType()))
				formaEmissaoBloqueto = e;
		}
		
		caracteristicaCobranca.setFormaEmissaoBloqueto(formaEmissaoBloqueto);
		
		FormaDistribuicaoBloqueto formaDistribuicaoBloqueto = FormaDistribuicaoBloqueto.BANCO_DISTRIBUI;
		
		for(FormaDistribuicaoBloqueto e : FormaDistribuicaoBloqueto.values()) {
			if (e.getCodigo() == Integer.parseInt(m_boleto.getLBR_DistributionType()))
				formaDistribuicaoBloqueto = e;
		}
		
		caracteristicaCobranca.setDistribuicaoBloqueto(formaDistribuicaoBloqueto);
		segP.setCaracteristicaCobranca(caracteristicaCobranca);
		
		//----------------------------Informações Diversas-------------------------------
		String LBR_NumberInOrg;
		
		if (m_movementCode.equals("21")) {
			LBR_NumberInOrg = mov.getLBR_NumberInOrg();
		} else {
			LBR_NumberInOrg = m_boleto.getLBR_NumberInOrg();
		}
		
		segP.setNumeroDocumentoCobranca(LBR_NumberInOrg);
		
		Timestamp DueDate;
		
		if (m_movementCode.equals("06")) {
			DueDate = mov.getDueDate();
		} else {
			DueDate = m_boleto.getDueDate();
		}
		
		segP.setDataVencimentoTitulo(new java.util.Date(DueDate.getTime()));
		segP.setValorNominalTitulo(m_boleto.getGrandTotal().doubleValue());
		
		EspecieTitulo especieTitulo = EspecieTitulo.DUPLICATA_MERCANTIL;
		String especieTituloRegistro = "";
		
		if (m_movementCode.equals("42")) {
			especieTituloRegistro = mov.getLBR_CollectionType();
		} else {
			especieTituloRegistro = m_boleto.getLBR_CollectionType();
		}
		
		for(EspecieTitulo e : EspecieTitulo.values()) {
			if (e.getCodigo() == Integer.parseInt(especieTituloRegistro))
				especieTitulo = e;
		}

		segP.setEspecieTitulo(especieTitulo);
		segP.setTituloAceito(m_boleto.getLBR_Accepted());
		segP.setDataEmissaoTitulo(new java.util.Date(m_boleto.getDateDoc().getTime()));
		
		//------------------------------------Juros--------------------------------------
		Juros juros = new Juros();
		
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

		juros.setCodigoJurosMora(LBR_InterestCode);
		juros.setDataJurosMora(new java.util.Date(LBR_InterestDate.getTime()));
		juros.setValorJurosMoraPorDia(LBR_InterestAP.doubleValue());
		segP.setJuros(juros);
		
		//----------------------------------Desconto 1-----------------------------------
		Desconto desconto = new Desconto();
		desconto.setCodigoDesconto(0);
		desconto.setDataDesconto(null);
		desconto.setValorPercentualDesconto(0.00);
		
		if (mov.getLBR_CNABDiscount1Code() != null) {
			desconto.setCodigoDesconto(Integer.parseInt(mov.getLBR_CNABDiscount1Code()));
			desconto.setDataDesconto(mov.getLBR_CNABDiscount1Date());
			desconto.setValorPercentualDesconto(mov.getLBR_CNABDiscount1AP().doubleValue());
		} else if (m_details.getLBR_CNABDiscount1Code() != null) {
			desconto.setCodigoDesconto(Integer.parseInt(m_details.getLBR_CNABDiscount1Code()));
			desconto.setDataDesconto(m_details.getLBR_CNABDiscount1Date());
			desconto.setValorPercentualDesconto(m_details.getLBR_CNABDiscount1AP().doubleValue());
		}

		segP.setDesconto(desconto);
		
		//----------------------------Informações Diversas-------------------------------
		segP.setValorIOFASerRecolhido(0.00);
		
		if (m_boleto.getLBR_IOFAmt() != null)
			segP.setValorIOFASerRecolhido(m_boleto.getLBR_IOFAmt().doubleValue());
		
		segP.setValorAbatimento(0.00);
		
		if (m_movementCode.equals("04") && mov.getWriteOffAmt() != null)
			segP.setValorAbatimento(mov.getWriteOffAmt().doubleValue());
		else if (m_boleto.getWriteOffAmt() != null)
			segP.setValorAbatimento(m_boleto.getWriteOffAmt().doubleValue());
		
		segP.setIdentificacaoTituloNaEmpresa(m_boleto.getDocumentNo());
		
		if (m_movementCode.equals("22") && mov.getLBR_DocumentNo() != null)
			segP.setIdentificacaoTituloNaEmpresa(mov.getLBR_DocumentNo());
		
		segP.setCodigoParaProtesto(3);
		segP.setPrazoDiasParaProtesto(1);
		
		if (m_details.getLBR_ProtestCode() != null) {
			segP.setCodigoParaProtesto(Integer.parseInt(m_details.getLBR_ProtestCode()));
			segP.setPrazoDiasParaProtesto(m_details.getLBR_ProtestDays());
		}
			
		segP.setCodigoParaBaixaOuDevolucao(2);
		segP.setPrazoDiasParaBaixaOuDevolucao(1);
		
		if (m_details.getLBR_CollectionReturnCode() != null) {
			segP.setCodigoParaBaixaOuDevolucao(Integer.parseInt(m_details.getLBR_CollectionReturnCode()));
			segP.setPrazoDiasParaBaixaOuDevolucao(m_details.getLBR_CollectionReturnDays());
		}		
		
		segP.setCodigoMoeda(Integer.parseInt(m_boleto.getLBR_CNAB240Currency()));		
		return segP;
	}
	
	protected TitulosEmCobrancaSegmentoQ generateSegmentoQ(MLBRBoletoMovement mov) {
		TitulosEmCobrancaSegmentoQ segQ = new TitulosEmCobrancaSegmentoQ();
		
		MLBRBoletoStaticData[] boletoSDEntries = m_boleto.getStaticData();
		MLBRBoletoStaticData boletoSDSacado = null;
		MLBRBoletoStaticData boletoSDSacadorAvalista = null;
		
		for (MLBRBoletoStaticData e : boletoSDEntries) {
			if (e.getLBR_StaticDataType().equals(MLBRBoletoStaticData.LBR_STATICDATATYPE_PagadorSacado))
				boletoSDSacado = e;
			else if (e.getLBR_StaticDataType().equals(MLBRBoletoStaticData.LBR_STATICDATATYPE_SacadorAvalista))
				boletoSDSacadorAvalista = e;
		}
		
		//---------------------------------Controle-------------------------------------
		Controle controle = new Controle();
		controle.setBanco(null);
		
		for(Banco banco : Banco.values()) {
			if (banco.getCodigo() == Integer.parseInt(m_bank.getRoutingNo()))
				controle.setBanco(banco);
		}		
		
		controle.setLoteServico(m_lotServiceNumber);
		controle.setTipoRegistro(TipoRegistro.DETALHE);
		segQ.setControle(controle);
		
		//----------------------------------Serviço--------------------------------------
		Servico4 servico = new Servico4();
		servico.setNumeroRegistro(m_DetailNumber);
		servico.setCodigoSegmento("Q");
		
		MLBRCobMovimento cobMov = new MLBRCobMovimento(getCtx(), mov.getLBR_Cob_Movimento_ID(), get_TrxName());
		servico.setCodigoMovimentoRemessa(Integer.parseInt(cobMov.getValue()));
		
		segQ.setServico(servico);
		
		//------------------------------Dados do Sacado----------------------------------
		DadosDoSacado dadosDoSacado = new DadosDoSacado();
		
		if (boletoSDSacado != null) {		
			Inscricao2 inscricao = new Inscricao2();
			MBPartner bp = new MBPartner(getCtx(), m_boleto.getC_BPartner_ID(), get_TrxName());
			
			if (bp.get_ValueAsString("LBR_BPTypeBR").equals("PF")) {
				inscricao.setTipo(TipoInscricao.CPF);
				inscricao.setNumero(Long.parseLong(bp.get_ValueAsString("LBR_CPF")));
			} else if (bp.get_ValueAsString("LBR_BPTypeBR").equals("PJ")) {
				inscricao.setTipo(TipoInscricao.CGC_CNPJ);
				inscricao.setNumero(Long.parseLong(bp.get_ValueAsString("LBR_CNPJ")));
			}
			
			dadosDoSacado.setInscricao(inscricao);
			dadosDoSacado.setNome(RemoverAcentos.remover(bp.getName()));
		
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
			
			dadosDoSacado.setEndereco(RemoverAcentos.remover(endereco.toString()));
			dadosDoSacado.setBairro(RemoverAcentos.remover(boletoSDSacado.getAddress3()));
			
			String cepComposto = boletoSDSacado.getPostal();
			String prefixoDoCep = null;
			String sufixoDoCep = null;
			
			if (cepComposto != null) {
				cepComposto = TextUtil.checkSize(TextUtil.formatStringCodes(cepComposto), 8, 8, '0');
				prefixoDoCep = cepComposto.substring(0, 5);
				sufixoDoCep = cepComposto.substring(5);
			}
			
			dadosDoSacado.setCep(prefixoDoCep);
			dadosDoSacado.setSufixoCEP(sufixoDoCep);
			dadosDoSacado.setCidade(RemoverAcentos.remover(boletoSDSacado.getCity()));
			dadosDoSacado.setUf(RemoverAcentos.remover(boletoSDSacado.getRegionName()));
		}
		
		segQ.setDadosDoSacado(dadosDoSacado);
		
		//------------------------------Sacador / Avalista-------------------------------
		DadosPessoa sacadorAvalista = new DadosPessoa();
		Inscricao2 inscricao = new Inscricao2();
		String nome = "";
		
		if (boletoSDSacadorAvalista != null) {		
			MBPartner bp = new MBPartner(getCtx(), m_boleto.getLBR_Guarantor_ID(), get_TrxName());
			
			if (bp.get_ValueAsString("LBR_BPTypeBR").equals("PF")) {
				inscricao.setTipo(TipoInscricao.CPF);
				inscricao.setNumero(Long.parseLong(bp.get_ValueAsString("LBR_CPF")));
			} else if (bp.get_ValueAsString("LBR_BPTypeBR").equals("PJ")) {
				inscricao.setTipo(TipoInscricao.CGC_CNPJ);
				inscricao.setNumero(Long.parseLong(bp.get_ValueAsString("LBR_CNPJ")));
			}
			
			nome = RemoverAcentos.remover(bp.getName());
		} else {
			inscricao.setTipo(TipoInscricao.ISENTO);
			inscricao.setNumero(0);
		}
		
		sacadorAvalista.setInscricao(inscricao);
		sacadorAvalista.setNome(nome);
		segQ.setSacadorAvalista(sacadorAvalista);
		
		//----------------------------Informações Diversas-------------------------------
		if (m_boleto.getLBR_CorrespBank_ID() > 0)
			segQ.setCodigoBancoCorrespondenteNaCompensacao(m_boleto.getLBR_CorrespBank_ID());
		
		if (m_boleto.getLBR_NumberInCorrespBank() != null)
			segQ.setNossuNumeroBancoCorrespondente(m_boleto.getLBR_NumberInCorrespBank());
		else
			segQ.setNossuNumeroBancoCorrespondente("");
		
		return segQ;
	}
	
	protected TitulosEmCobrancaSegmentoR generateSegmentoR(MLBRBoletoMovement mov) {
		return null;
	}
	
	protected TitulosEmCobrancaSegmentoS generateSegmentoS(MLBRBoletoMovement mov) {
		TitulosEmCobrancaSegmentoS segS = new TitulosEmCobrancaSegmentoS(
				TipoImpressao.CORPO_INSTRUCOES_FICHA_COMPENSACAO_DO_BLOQUETO);
		
		//---------------------------------Controle-------------------------------------
		Controle controle = new Controle();
		controle.setBanco(null);
		
		for(Banco banco : Banco.values()) {
			if (banco.getCodigo() == Integer.parseInt(m_bank.getRoutingNo()))
				controle.setBanco(banco);
		}		
		
		controle.setLoteServico(m_lotServiceNumber);
		controle.setTipoRegistro(TipoRegistro.DETALHE);
		segS.setControle(controle);
		
		//----------------------------------Serviço--------------------------------------
		Servico4 servico = new Servico4();
		servico.setNumeroRegistro(m_DetailNumber);
		servico.setCodigoSegmento("S");
		
		MLBRCobMovimento cobMov = new MLBRCobMovimento(getCtx(), mov.getLBR_Cob_Movimento_ID(), get_TrxName());
		servico.setCodigoMovimentoRemessa(Integer.parseInt(cobMov.getValue()));
		
		segS.setServico(servico);
		
		//---------------------------Informações Adicionais------------------------------
		TipoImpressao3 tipoImpressao3 = segS.new TipoImpressao3();
		tipoImpressao3.tipoImpressao = TipoImpressao.CORPO_INSTRUCOES_FICHA_COMPENSACAO_DO_BLOQUETO;
		tipoImpressao3.informacao5 = m_details.getLBR_Message5();
		tipoImpressao3.informacao6 = m_details.getLBR_Message6();
		tipoImpressao3.informacao7 = m_details.getLBR_Message7();
		tipoImpressao3.informacao8 = m_details.getLBR_Message8();
		tipoImpressao3.informacao9 = m_details.getLBR_Message9();
		
		segS.setTipoImpressao3(tipoImpressao3);

		return segS;
	}
	
	protected TitulosEmCobrancaSegmentoY01 generateSegmentoY01(MLBRBoletoMovement mov) {
		TitulosEmCobrancaSegmentoY01 segY01 = new TitulosEmCobrancaSegmentoY01();
		
		MLBRBoletoStaticData[] boletoSDEntries = m_boleto.getStaticData();
		MLBRBoletoStaticData boletoSDSacadorAvalista = null;
		
		for (MLBRBoletoStaticData e : boletoSDEntries) {
			if (e.getLBR_StaticDataType().equals(MLBRBoletoStaticData.LBR_STATICDATATYPE_SacadorAvalista))
				boletoSDSacadorAvalista = e;
		}
		
		if (boletoSDSacadorAvalista == null)
			return null;
		
		//MBPartner sacadorAvalista = new MBPartner(getCtx(), m_boleto.getLBR_Guarantor_ID(), get_TrxName());
		
		//---------------------------------Controle-------------------------------------
		Controle controle = new Controle();
		controle.setBanco(null);
		
		for(Banco banco : Banco.values()) {
			if (banco.getCodigo() == Integer.parseInt(m_bank.getRoutingNo()))
				controle.setBanco(banco);
		}		
		
		controle.setLoteServico(m_lotServiceNumber);
		controle.setTipoRegistro(TipoRegistro.DETALHE);
		segY01.setControle(controle);
		
		//----------------------------------Serviço--------------------------------------
		Servico4 servico = new Servico4();
		servico.setNumeroRegistro(m_DetailNumber);
		servico.setCodigoSegmento("Y");
		
		MLBRCobMovimento cobMov = new MLBRCobMovimento(getCtx(), mov.getLBR_Cob_Movimento_ID(), get_TrxName());
		servico.setCodigoMovimentoRemessa(Integer.parseInt(cobMov.getValue()));
		
		segY01.setServico(servico);
		segY01.setCodigoRegistroOpcional(1);
		
		//----------------------------------Sacador--------------------------------------
		DadosDoSacado sacador = new DadosDoSacado();
				
		Inscricao2 inscricao = new Inscricao2();
		MBPartner bp = new MBPartner(getCtx(), m_boleto.getLBR_Guarantor_ID(), get_TrxName());
		
		if (bp.get_ValueAsString("LBR_BPTypeBR").equals("PF")) {
			inscricao.setTipo(TipoInscricao.CPF);
			inscricao.setNumero(Long.parseLong(bp.get_ValueAsString("LBR_CPF")));
		} else if (bp.get_ValueAsString("LBR_BPTypeBR").equals("PJ")) {
			inscricao.setTipo(TipoInscricao.CGC_CNPJ);
			inscricao.setNumero(Long.parseLong(bp.get_ValueAsString("LBR_CNPJ")));
		}
		
		sacador.setInscricao(inscricao);
		sacador.setNome(RemoverAcentos.remover(bp.getName()));
	
		StringBuilder endereco = new StringBuilder();
		endereco.append(boletoSDSacadorAvalista.getAddress1());
		
		if (boletoSDSacadorAvalista.getAddress2() != null && !boletoSDSacadorAvalista.getAddress2().trim().equals("")) {
			endereco.append(", ");
			endereco.append(boletoSDSacadorAvalista.getAddress2());
		}
		
		if (boletoSDSacadorAvalista.getAddress4() != null && !boletoSDSacadorAvalista.getAddress4().trim().equals("")) {
			endereco.append(", ");
			endereco.append(boletoSDSacadorAvalista.getAddress4());
		}
		
		sacador.setEndereco(RemoverAcentos.remover(endereco.toString()));
		sacador.setBairro(RemoverAcentos.remover(boletoSDSacadorAvalista.getAddress3()));
		
		String cepComposto = boletoSDSacadorAvalista.getPostal();
		String prefixoDoCep = null;
		String sufixoDoCep = null;
		
		if (cepComposto != null) {
			cepComposto = TextUtil.checkSize(TextUtil.formatStringCodes(cepComposto), 8, 8, '0');
			prefixoDoCep = cepComposto.substring(0, 5);
			sufixoDoCep = cepComposto.substring(5);
		}
		
		sacador.setCep(prefixoDoCep);
		sacador.setSufixoCEP(sufixoDoCep);
		sacador.setCidade(RemoverAcentos.remover(boletoSDSacadorAvalista.getCity()));
		sacador.setUf(RemoverAcentos.remover(boletoSDSacadorAvalista.getRegionName()));
		
		segY01.setSacador(sacador);

		return segY01;
	}
	
	private HeaderArquivo generateHeaderArquivo() {
		HeaderArquivo header = new HeaderArquivo();
		
		//---------------------------------Controle---------------------------------------
		Controle controle = new Controle();
		controle.setBanco(null);
		
		for(Banco banco : Banco.values()) {
			if (banco.getCodigo() == Integer.parseInt(m_bank.getRoutingNo()))
				controle.setBanco(banco);
		}		
		
		controle.setLoteServico(0000);
		controle.setTipoRegistro(TipoRegistro.HEADER_DE_ARQUIVO);
		header.setControle(controle);		
		
		//----------------------------------Empresa---------------------------------------
		header.setEmpresa(getEmpresa(15));
		
		//-------------------------------Nome do Banco-------------------------------------
		header.setNomeBanco("BRADESCO");
		
		//---------------------------------Arquivo----------------------------------------
		Arquivo arquivo = new Arquivo();
		
		// Código
		arquivo.setCodigoRemessaRetorno(CodigoRemessaRetorno.CODIGO_REMESSA);

		// Data/Hora de Geração
		arquivo.setDataHoraGeracao(new java.util.Date(m_LBR_FileGeneratingDate.getTime()));
		
		// Sequência (NSA)
		MLBRBankAccountConvenio bConvenio = new MLBRBankAccountConvenio(getCtx(), m_boleto.getLBR_BankAccount_Convenio_ID(), get_TrxName());
		int LBR_SeqCNAB240File_ID = bConvenio.getLBR_SeqCNAB240File_ID();
		
		if (LBR_SeqCNAB240File_ID > 0) {
			MSequence seq = new MSequence(getCtx(), LBR_SeqCNAB240File_ID, get_TrxName());
			arquivo.setNumeroSequencial(Integer.parseInt(
					MSequence.getDocumentNoFromSeq(seq, get_TrxName(), m_boleto)));			
		} else
			arquivo.setNumeroSequencial(0);		
		
		// Layout do Arquivo
		arquivo.setNumeroVersaoLayout(84);
		
		// Densidade
		arquivo.setDensidadeGravacaoArquivo(6250);
		
		header.setArquivo(arquivo);
		
		return header;
	}
	
	private TrailerArquivo generateTrailerArquivo() {
		TrailerArquivo trailer = new TrailerArquivo();
		
		//---------------------------------Controle-------------------------------------
		Controle controle = new Controle();
		controle.setBanco(null);
		
		for(Banco banco : Banco.values()) {
			if (banco.getCodigo() == Integer.parseInt(m_bank.getRoutingNo()))
				controle.setBanco(banco);
		}		
		
		controle.setLoteServico(9999);
		controle.setTipoRegistro(TipoRegistro.TRAILER_DE_ARQUIVO);
		trailer.setControle(controle);
		
		//----------------------------------Totais--------------------------------------
		Totais totais = new Totais();
		totais.setQuantidadeLotes(1);
		totais.setQuantidadeRegistros(m_RegistrosDeDetalhe.size()+4);
		totais.setQuantidadeContasParaConciliacao(0);
		trailer.setTotais(totais);		
		
		return trailer;
	}
	
	private HeaderTitulosEmCobranca generateHeaderTitulosEmCobranca() {
		HeaderTitulosEmCobranca header = new HeaderTitulosEmCobranca();
		
		//---------------------------------Controle-------------------------------------
		Controle controle = new Controle();
		
		for(Banco banco : Banco.values()) {
			if (banco.getCodigo() == Integer.parseInt(m_bank.getRoutingNo()))
				controle.setBanco(banco);
		}
		
		controle.setLoteServico(m_lotServiceNumber);
		controle.setTipoRegistro(TipoRegistro.HEADER_DE_LOTE);
		header.setControle(controle);
		
		//----------------------------------Serviço--------------------------------------
		Servico5 servico = new Servico5();
		servico.setTipoOperacao(TipoOperacao.ARQUIVO_REMESSA);
		servico.setTipoServico(TipoServico.COBRANCA);
		servico.setNumeroVersaoLayoutLote(42);
		header.setServico(servico);
		
		//---------------------------------Empresa---------------------------------------
		header.setEmpresa(getEmpresa(16));
		
		//---------------------------Controle da Cobrança--------------------------------
		ControleCobranca controleCobranca = new ControleCobranca();
		
		MLBRBankAccountConvenio bConvenio = new MLBRBankAccountConvenio(getCtx(), m_boleto.getLBR_BankAccount_Convenio_ID(), get_TrxName());
		int LBR_SeqCNAB240Lot_ID =  bConvenio.getLBR_SeqCNAB240Lot_ID();
		
		if (LBR_SeqCNAB240Lot_ID > 0) {
			MSequence seq = new MSequence(getCtx(), LBR_SeqCNAB240Lot_ID, get_TrxName());
			controleCobranca.setNumeroRemessaRetorno(Integer.parseInt(
					MSequence.getDocumentNoFromSeq(seq, get_TrxName(), m_boleto)));			
		} else
			controleCobranca.setNumeroRemessaRetorno(0);	

		controleCobranca.setDataGravacaoRemessaRetorno(m_LBR_FileGeneratingDate);
		header.setControleCobranca(controleCobranca);
		
		//-------------------------------Data do Crédito----------------------------------
		header.setDataCredito(null);
		
		return header;	
	}
	
	private TrailerLoteTitulosEmCobranca generateTrailerLoteTitulosEmCobranca() {
		TrailerLoteTitulosEmCobranca trailer = new TrailerLoteTitulosEmCobranca();
		
		//---------------------------------Controle-------------------------------------
		Controle controle = new Controle();
		
		for(Banco banco : Banco.values()) {
			if (banco.getCodigo() == Integer.parseInt(m_bank.getRoutingNo()))
				controle.setBanco(banco);
		}
		
		controle.setLoteServico(m_lotServiceNumber);
		controle.setTipoRegistro(TipoRegistro.TRAILER_DE_LOTE);
		trailer.setControle(controle);
		
		//----------------------------------Totais--------------------------------------
		trailer.setQuantidadeRegistros(m_RegistrosDeDetalhe.size()+2);
		
		TotalizacaoCobranca totalSimples = new TotalizacaoCobranca();
		totalSimples.setQuantidadeTitulos(0);
		totalSimples.setValotTotalTitulos(0.00);
		trailer.setTotalizacaoCobrancaSimples(totalSimples);
		
		TotalizacaoCobranca totalVinculada = new TotalizacaoCobranca();
		totalVinculada.setQuantidadeTitulos(0);
		totalVinculada.setValotTotalTitulos(0.00);
		trailer.setTotalizacaoCobrancaVinculada(totalVinculada);
		
		TotalizacaoCobranca totalCaucionada = new TotalizacaoCobranca();
		totalCaucionada.setQuantidadeTitulos(0);
		totalCaucionada.setValotTotalTitulos(0.00);
		trailer.setTotalizacaoCobrancaCaucionada(totalCaucionada);
		
		TotalizacaoCobranca totalDescontada = new TotalizacaoCobranca();
		totalDescontada.setQuantidadeTitulos(0);
		totalDescontada.setValotTotalTitulos(0.00);
		
		trailer.setTotalizacaoCobrancaDescontada(totalDescontada);
		
		//------------------------------Número do Aviso----------------------------------
		trailer.setNumeroAvisoLancamento("");
		
		return trailer;		
	}
	
	private Empresa getEmpresa(int tamanhoNumInscricao) {
		Empresa empresa = new Empresa();
		
		// Inscrição
		Inscricao inscricao = new Inscricao(tamanhoNumInscricao);
		
		if (m_bpLinked2Org.get_ValueAsString("LBR_BPTypeBR").equals("PF")) {
			inscricao.setTipoInscricao(TipoInscricao.CPF);
			inscricao.setNumeroInscricao(Long.parseLong(m_bpLinked2Org.get_ValueAsString("LBR_CPF")));
		} else if (m_bpLinked2Org.get_ValueAsString("LBR_BPTypeBR").equals("PJ")) {
			inscricao.setTipoInscricao(TipoInscricao.CGC_CNPJ);
			inscricao.setNumeroInscricao(Long.parseLong(m_bpLinked2Org.get_ValueAsString("LBR_CNPJ")));
		}
		
		empresa.setInscricao(inscricao);
		
		// Convênio
		MLBRBankAccountConvenio convenio = new MLBRBankAccountConvenio(getCtx(),
				m_boleto.getLBR_BankAccount_Convenio_ID(), get_TrxName());
		String convenioNo = TextUtil.lPad(convenio.getLBR_ConvenioNo(), 20);
		empresa.setCodigoConvenio(convenioNo);
		
		// Conta-Corrente
		empresa.setContaCorrente(getContaCorrente());
		
		// Nome
		empresa.setNome(m_bpLinked2Org.getName());
		
		return empresa;
	}
	
	private ContaCorrente getContaCorrente() {
		MBankAccount bA = new MBankAccount(getCtx(), m_boleto.getC_BankAccount_ID(), get_TrxName());
		String agencyNo = OpenItemsUtil.getPartialText(bA.get_ValueAsString("LBR_BankAgencyNo"), false);
		String agencyDigit = OpenItemsUtil.getPartialText(bA.get_ValueAsString("LBR_BankAgencyNo"), true);
		String accountNo = OpenItemsUtil.getPartialText(bA.get_ValueAsString("AccountNo"), false);
		String accountDigit = OpenItemsUtil.getPartialText(bA.get_ValueAsString("AccountNo"), true);
		int convAgencyNo = 0;
		int convAccountNo = 0;
		
		if (agencyNo != null)
			convAgencyNo = Integer.parseInt(agencyNo);
		
		if (agencyDigit.length() > 1)
			agencyDigit = agencyDigit.substring(0, 1);
		
		if (accountNo != null)
			convAccountNo = Integer.parseInt(accountNo);
		
		if (accountDigit.length() > 1)
			accountDigit = accountDigit.substring(0, 1);
		
		Agencia agencia = new Agencia();
		agencia.setCodigo(convAgencyNo);
		agencia.setDigitoVerificador(agencyDigit);
		
		Conta conta = new Conta();
		conta.setNumero(convAccountNo);
		conta.setDigitoVerificador(accountDigit);
		
		return new ContaCorrente(agencia, conta, "");				
	}
	
	private String quebrarEmLinhas(String text) {
		String insert = "\r\n";
		int period = 240;
		
		StringBuilder builder = new StringBuilder(
		         text.length() + insert.length() * (text.length()/period)+1);

	    int index = 0;
	    String prefix = "";
	    while (index < text.length())
	    {
	        // Don't put the insert in the very first iteration.
	        // This is easier than appending it *after* each substring
	        builder.append(prefix);
	        prefix = insert;
	        builder.append(text.substring(index, 
	            Math.min(index + period, text.length())));
	        index += period;
	    }
	    return builder.append("\r\n").toString();
	}
	
	private File generateFile(ArquivoBanco arquivoBanco) throws IOException {
		String now = new SimpleDateFormat("ddMMyyHHmmss").format(new Date());
		File file = new File(System.getProperty("java.io.tmpdir") + 
				System.getProperty("file.separator") + "BRA" + now + ".REM");
		FileWriter arq = new FileWriter(file);
		arq.append(quebrarEmLinhas(arquivoBanco.toString()));
		arq.close();
	
		return file;
	}
	
	/**************************************************************************
	 * 	getModulo11
	 *  @param String value
	 *  @param int type
	 * 	@return String dac
	 */
    private String getModulo11(String campo, int type) {
    	//Modulo 11 - 234567   (type = 7)
    	//Modulo 11 - 23456789 (type = 9)

    	int multiplicador = 2;
		int multiplicacao = 0;
		int soma_campo = 0;

		for (int i = campo.length(); i > 0; i--) {
			multiplicacao = Integer.parseInt(campo.substring(i-1,i)) * multiplicador;

			soma_campo = soma_campo + multiplicacao;

			multiplicador++;
			if (multiplicador > 7 && type == 7)
				multiplicador = 2;
			else if (multiplicador > 9 && type == 9)
				multiplicador = 2;
		}

		int dac = 11 - (soma_campo%11);

        if (dac == 10 && type == 7)
            return "P";
        else if (dac == 11 && type == 7)
        	return "0";
        else if ((dac == 0 || dac == 1 || dac > 9) && type == 9)
        	dac = 1;

        return ((Integer)dac).toString();
    }
}	//	CNABGenerate
