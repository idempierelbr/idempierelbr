package org.idempierelbr.cnab240febraban.process;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.MathContext;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.compiere.model.MAttachment;
import org.compiere.model.MBank;
import org.compiere.model.MNote;
import org.compiere.model.MPInstance;
import org.compiere.model.MSysConfig;
import org.compiere.process.SvrProcess;
import org.compiere.util.Env;
import org.idempierelbr.cnab240febraban.annotated.CNABBaseRecord;
import org.idempierelbr.cnab240febraban.annotated.CNABCobrancaHeaderLoteRecord;
import org.idempierelbr.cnab240febraban.annotated.CNABRecords;
import org.idempierelbr.cnab240febraban.annotated.CNABSegmentTRecord;
import org.idempierelbr.cnab240febraban.annotated.CNABSegmentURecord;
import org.idempierelbr.cnab240febraban.model.registro.detalhe.segmento.SegmentCollection;
import org.idempierelbr.core.util.TextUtil;
import org.idempierelbr.openitems.model.MLBRBankAccountCarteira;
import org.idempierelbr.openitems.model.MLBRBankAccountConvenio;
import org.idempierelbr.openitems.model.MLBRBoleto;
import org.idempierelbr.openitems.model.MLBRBoletoMovement;
import org.idempierelbr.openitems.model.MLBRCobGrupoOcorrencia;
import org.idempierelbr.openitems.model.MLBRCobMovimento;
import org.idempierelbr.openitems.model.MLBRCobOcorrencia;
import org.idempierelbr.openitems.util.OpenItemsUtil;

/*
 * Processa registros CNAB
 * 
 * @author: Alan Lescano (Baseado em FebrabanReturn.java)
 * @author: Claudemir Todo Bom <claudemir@todobom.com>
 */
public class CNABRecordsProcess {

	public static String process(CNABRecords returnRecords , SvrProcess svrP ) throws IOException {
		// TODO Auto-generated method stub
		
		List<CNABBaseRecord> records = returnRecords.getListaRegistros();

		CNABCobrancaHeaderLoteRecord lote = null;
		SegmentCollection currentC = null;

		ArrayList<SegmentCollection> m_BankCollectionList = new ArrayList<SegmentCollection>();

		for (CNABBaseRecord registroDeDetalhe : records ) {
			if ( CNABCobrancaHeaderLoteRecord.class.isAssignableFrom(registroDeDetalhe.getClass())) {
				lote = (CNABCobrancaHeaderLoteRecord) registroDeDetalhe;
			} else if ( CNABSegmentTRecord.class.isAssignableFrom(registroDeDetalhe.getClass()))  {
				currentC = new SegmentCollection();
				CNABSegmentTRecord segT = (CNABSegmentTRecord) registroDeDetalhe;
				m_BankCollectionList.add(currentC);
				currentC.setSegT(segT);
			} else if ( CNABSegmentURecord.class.isAssignableFrom(registroDeDetalhe.getClass())) {
				CNABSegmentURecord segU = (CNABSegmentURecord)registroDeDetalhe;
				currentC.setSegU(segU);
			}
		}
		
		File messageFile = OpenItemsUtil.createFile();
		FileWriter fw = new FileWriter(messageFile);
		
		// Check entries and updated Boleto
		for (SegmentCollection bC : m_BankCollectionList) {
			String docNo = bC.getSegT().getNumeroTituloNaEmpresa().trim();
			String nossoNumero = bC.getSegT().getNossoNumero();
			MLBRBoleto boleto = null;
			if ( docNo != null && !docNo.isEmpty() ) {
				boleto = MLBRBoleto.getByDocumentNo( svrP.getCtx(), docNo , svrP.get_TrxName());

			}

			if ( boleto == null && !nossoNumero.isEmpty()) {
				boleto = MLBRBoleto.getByNumberInBank(svrP.getCtx(), nossoNumero, svrP.get_TrxName());
			}
				
			
			if ( boleto == null ) {
				svrP.addLog("Não foi possível localizar Boleto com o Núm. de Documento: " + docNo + " / " + nossoNumero );
				continue;
			}
			
			// Prepare movement
			MLBRBoletoMovement mov = new MLBRBoletoMovement(svrP.getCtx(), 0, svrP.get_TrxName());
			mov.setAD_Org_ID(boleto.getAD_Org_ID());
			mov.setLBR_Boleto_ID(boleto.get_ID());
			mov.setSeqNo(boleto.getNewMovementSeqNo());
			mov.setLBR_CNAB240MovementType(MLBRCobMovimento.LBR_CNAB240MOVEMENTTYPE_2_RetornoBanco_GtCliente);
			
			MLBRCobMovimento cobMov = getCobMovimento(boleto, bC.getSegT().getCodigoMovimento() , svrP );
			
			if (cobMov == null) {
				svrP.addLog("Não foi possível localizar Cód. de Movimento informado ("
						+ bC.getSegT().getCodigoMovimento()
						+ ") no arquivo retorno, para Boleto com o Núm. de Documento: "
						+ bC.getSegT().getNumeroTituloNaEmpresa().trim());
				continue;
			}
			
			mov.setLBR_Cob_Movimento_ID(cobMov.get_ID());
			
			// Update Number In Bank
			if (boleto.getLBR_NumberInBank() == null || !boleto.getLBR_NumberInBank().equals(bC.getSegT().getNossoNumero().trim())) {
				if (!bC.getSegT().getNossoNumero().trim().equals("")) {
					boleto.setLBR_NumberInBank(bC.getSegT().getNossoNumero().trim());
					mov.setLBR_NumberInBank(bC.getSegT().getNossoNumero().trim());
				}
			}
			
			// Update Carteira
			mov.setLBR_CarteiraType(String.valueOf(bC.getSegT().getCarteira()));
			if (bC.getSegT().getCarteira() > 0) {
				MLBRBankAccountConvenio convenio = null;
				MLBRBankAccountCarteira carteira = null;
				
				MLBRBankAccountConvenio[] convenios = MLBRBankAccountConvenio.getConvenios(svrP.getCtx(),
						boleto.getC_BankAccount_ID(), svrP.get_TrxName());
				
				for (MLBRBankAccountConvenio conv : convenios) {
					MLBRBankAccountCarteira cart = conv.getCarteiraByType(String.valueOf(bC.getSegT().getCarteira()));
					
					if (cart != null) {
						convenio = conv;
						carteira = cart;
					}
				}
				
				if (carteira == null) {
					// Se carteira do retorno não existir, utiliza a do cadastro do boleto
					svrP.addLog("Não foi possível localizar Carteira informada ("
							+ bC.getSegT().getCarteira()
							+ ") no arquivo retorno, para Boleto com o Núm. de Documento: "
							+ bC.getSegT().getNumeroTituloNaEmpresa().trim());
					carteira = (MLBRBankAccountCarteira) boleto.getLBR_BankAccount_Carteira();
				}
				
				if (!boleto.getLBR_CarteiraType().equals(String.valueOf(bC.getSegT().getCarteira())) ||
						boleto.getLBR_BankAccount_Carteira_ID() != carteira.get_ID()) {
					
					boleto.setLBR_CarteiraType(String.valueOf(bC.getSegT().getCarteira()));
					boleto.setLBR_BankAccount_Carteira_ID(carteira.get_ID());
				}
				
				if ( convenio != null && boleto.getLBR_BankAccount_Convenio_ID() != convenio.get_ID() ) {
					boleto.setLBR_BankAccount_Convenio_ID(convenio.get_ID());
				}
				
			}

			
			// Updated Number In Org
			if (!boleto.getLBR_NumberInOrg().equals(bC.getSegT().getNumeroDocumento().trim())) {
				if (!bC.getSegT().getNumeroDocumento().trim().equals("")) {
					boleto.setDocumentNo(bC.getSegT().getNumeroDocumento().trim());
					mov.setLBR_DocumentNo(bC.getSegT().getNumeroDocumento().trim());
				}
			}
			
			// Update Due Date
			if (bC.getSegT().getVencimento() != null) {
				if (!isSameDate(bC.getSegT().getVencimento(), boleto.getDueDate())) {
					boleto.setDueDate(new Timestamp(bC.getSegT().getVencimento().getTime()));
					mov.setDueDate(new Timestamp(bC.getSegT().getVencimento().getTime()));
				}
			}
			
			// Paid related fields
			BigDecimal paidAmt = new BigDecimal(bC.getSegU().getValorPago(), MathContext.DECIMAL64);
			
			if (paidAmt.compareTo(Env.ZERO) == 1) {
				// Update Collect Bank / Agency
				mov.setLBR_CollectBankNo( Integer.parseInt(bC.getSegT().getBanco()));
				mov.setLBR_CollectBankAgencyNo(bC.getSegT().getAgenciaCobradora());
				mov.setPayAmt(paidAmt);
			}
			
			// Updated Document No
			if (!boleto.getDocumentNo().equals(bC.getSegT().getNumeroTituloNaEmpresa().trim())) {
				if (!bC.getSegT().getNumeroTituloNaEmpresa().trim().equals("")) {
					boleto.setDocumentNo(bC.getSegT().getNumeroTituloNaEmpresa().trim());
					mov.setLBR_DocumentNo(bC.getSegT().getNumeroTituloNaEmpresa().trim());
				}
			}

			// Update Contract Number
			/*
			if (bC.getSegT().getNumeroContrato() > 0) {
				mov.setLBR_LoanContractNo(String.valueOf(bC.getSegT().getNumeroContrato()));
				boleto.setLBR_LoanContractNo(String.valueOf(bC.getSegT().getNumeroContrato()));
			}
			/* */
			
			// Update FeeAmt (Valor da Tarifa/Custas)
			BigDecimal feeAmt = new BigDecimal(bC.getSegT().getValorTarifas(), MathContext.DECIMAL64);
			
			if (feeAmt.compareTo(Env.ZERO) == 1) {
				mov.setFeeAmt(feeAmt);
			}
			
			// Update Motivo da Ocorrência
			String motivoOcorrencia = bC.getSegT().getMotivoOcorrencia();
			
			if (motivoOcorrencia.trim().length() > 0 && cobMov.getLBR_Cob_GO_ID() > 0) {
				MLBRCobGrupoOcorrencia gO = new MLBRCobGrupoOcorrencia(svrP.getCtx(), cobMov.getLBR_Cob_GO_ID(), svrP.get_TrxName());
				
				if (motivoOcorrencia.length() != 10)
					motivoOcorrencia = TextUtil.lPad(motivoOcorrencia, ' ', 10);
				
				String[] ocorrencias = motivoOcorrencia.split("(?<=\\G.{2})");
				
				for (int i = 0; i < ocorrencias.length; i++) {
					if (ocorrencias[i].trim().equals(""))
						continue;
					
					MLBRCobOcorrencia oc = gO.getOcorrenciaByValue(svrP.getCtx(), ocorrencias[i].trim(), svrP.get_TrxName());
					
					if (oc != null) {
						if (i == 0)
							mov.setLBR_Cob_Ocorrencia1_ID(oc.get_ID());
						else if (i == 1)
							mov.setLBR_Cob_Ocorrencia2_ID(oc.get_ID());
						else if (i == 2)
							mov.setLBR_Cob_Ocorrencia3_ID(oc.get_ID());
						else if (i == 3)
							mov.setLBR_Cob_Ocorrencia4_ID(oc.get_ID());
						else if (i == 4)
							mov.setLBR_Cob_Ocorrencia5_ID(oc.get_ID());
					}						
				}				
			}
			
			// Update Interest Amt (Valor dos Acréscimos)
			BigDecimal interestAmt = new BigDecimal(bC.getSegU().getValorAcrescimos(), MathContext.DECIMAL64);
			
			if (interestAmt.compareTo(Env.ZERO) == 1) {
				mov.setInterestAmt(interestAmt);
			}
			
			// Update Discount Amt (Valor do Desconto)
			BigDecimal discountAmt = new BigDecimal(bC.getSegU().getValorDesconto(), MathContext.DECIMAL64);
			
			if (discountAmt.compareTo(Env.ZERO) == 1) {
				mov.setDiscountAmt(discountAmt);
			}
			
			// Update WriteOff Amt (Valor do Abatimento)
			BigDecimal writeOffAmt = new BigDecimal(bC.getSegU().getValorAbatimento(), MathContext.DECIMAL64);
			
			if (writeOffAmt.compareTo(Env.ZERO) == 1) {
				mov.setWriteOffAmt(writeOffAmt);
			}
			
			// Update IOF Amt (Valor do IOF)
			BigDecimal iofAmt = new BigDecimal(bC.getSegU().getValorIOF(), MathContext.DECIMAL64);
			
			if (iofAmt.compareTo(Env.ZERO) == 1) {
				mov.setLBR_IOFAmt(iofAmt);
			}
			
			// Update Available Amt (Valor Líquido)
			BigDecimal availableAmt = new BigDecimal(bC.getSegU().getValorLiquido(), MathContext.DECIMAL64);
			
			if (availableAmt.compareTo(Env.ZERO) == 1) {
				mov.setAvailableAmt(availableAmt);
			}
			
			// Update Other Expenses Amt (Outras Despesas)
			BigDecimal otherExpensesAmt = new BigDecimal(bC.getSegU().getOutrasDespesas(), MathContext.DECIMAL64);
			
			if (otherExpensesAmt.compareTo(Env.ZERO) == 1) {
				mov.setLBR_OtherExpensesAmt(otherExpensesAmt);
			}
			
			// Update Other Incomes Amt (Outros Créditos)
			BigDecimal otherIncomesAmt = new BigDecimal(bC.getSegU().getOutrosCreditos(), MathContext.DECIMAL64);
			
			if (otherIncomesAmt.compareTo(Env.ZERO) == 1) {
				mov.setLBR_OtherIncomesAmt(otherIncomesAmt);
			}
			
			// Data da Ocorrência
			if (bC.getSegU().getDataOcorrencia() != null &&
					bC.getSegU().getDataOcorrencia().getTime() >= boleto.getDateDoc().getTime()) {
				mov.setLBR_Cob_OcorrenciaDate(new Timestamp(bC.getSegU().getDataOcorrencia().getTime()));
			}
			
			// Data do Crédito
			if (bC.getSegU().getDataCredito() != null &&
					bC.getSegU().getDataCredito().getTime() >= boleto.getDateDoc().getTime()) {
				mov.setLBR_CreditDate(new Timestamp(bC.getSegU().getDataCredito().getTime()));
			}
			
			/*
			 //  FIXME: Suporte a banco correspondente

			// Update Corresp Bank / Number In Corresp Bank
			mov.setLBR_CorrespBankNo(bC.getSegU().getCodigoBancoCorrespondenteCompensacao());
			mov.setLBR_NumberInCorrespBank(Long.toString(bC.getSegU().getNossoNumero()));
			/* */
			
			mov.saveEx();
			boleto.saveEx();
			
			if ( mov.getPayAmt().compareTo(Env.ZERO) == 1)  {
				String returnMsg = mov.createPayment();
				TextUtil.addText(fw, returnMsg);
				TextUtil.addEOL(fw);
			}
		
		}

		fw.close();
		
		// Create Notice
		if (MSysConfig.getBooleanValue("LBR_CNAB_CREATE_NOTICE", true, Env.getAD_Client_ID(svrP.getCtx()), Env.getAD_Org_ID(svrP.getCtx()))) {
			MNote note = new MNote(svrP.getCtx(), "LBR_CNABGenerated", Env.getAD_User_ID(svrP.getCtx()), svrP.get_TrxName());
			note.setTextMsg("Retorno CNAB (Banco " + lote.getBanco() + ", Convênio " + lote.getConvenio() + ")\n" );
			note.setRecord(MPInstance.Table_ID, svrP.getProcessInfo().getAD_PInstance_ID());
			note.saveEx();

			MAttachment attachment = note.createAttachment();
			//attachment.addEntry(messageFile);	

			String log = svrP.getProcessInfo().getLogInfo(true);
			if (log != null && log.trim().length() > 0)
				attachment.addEntry("ProcessLog.html", log.getBytes("UTF-8"));

			if (attachment != null)
				attachment.saveEx();
			}

		
		return "Ok";
				
	}
	
	
	private static MLBRCobMovimento getCobMovimento(MLBRBoleto boleto, int codMovimento , SvrProcess svrP ) {
		if (boleto == null || codMovimento < 1)
			return null;
		
		String cM = String.valueOf(codMovimento);
		
		if (cM.length() == 1)
			cM = TextUtil.lPad(cM, '0', 2);
		
		MBank bank = new MBank( svrP.getCtx(), boleto.getC_Bank_ID(), svrP.get_TrxName() );
		
		return MLBRCobMovimento.getMovimento( svrP.getCtx(), cM,
				MLBRCobMovimento.LBR_CNAB240MOVEMENTTYPE_2_RetornoBanco_GtCliente, bank, svrP.get_TrxName() );
	}
	
	private static boolean isSameDate(Date date, Timestamp timestamp) {
		String dateFormated = new SimpleDateFormat("ddMMyy").format(date);
		String timestampFormated = new SimpleDateFormat("ddMMyy").format(new Date(timestamp.getTime()));
		
		if (dateFormated.equals(timestampFormated))
			return true;
			
		return false;
	}


}
