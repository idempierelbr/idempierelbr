package org.idempierelbr.openitems.processcnab240;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.MathContext;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.compiere.model.MBank;
import org.compiere.model.MNote;
import org.compiere.model.MPInstance;
import org.compiere.model.MSysConfig;
import org.compiere.process.SvrProcess;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.idempierelbr.cnab240.annotated.CNABBaseRecord;
import org.idempierelbr.cnab240.annotated.CNABCobrancaHeaderLoteRecord;
import org.idempierelbr.cnab240.annotated.CNABCobrancaSegmentBaseRecord;
import org.idempierelbr.cnab240.annotated.CNABRecords;
import org.idempierelbr.cnab240.annotated.CNABSegmentTRecord;
import org.idempierelbr.cnab240.annotated.CNABSegmentURecord;
import org.idempierelbr.cnab240.annotated.CNABSegmentGroup;
import org.idempierelbr.core.util.TextUtil;
import org.idempierelbr.openitems.model.MLBRBankAccountCarteira;
import org.idempierelbr.openitems.model.MLBRBankAccountConvenio;
import org.idempierelbr.openitems.model.MLBRBoleto;
import org.idempierelbr.openitems.model.MLBRBoletoMovement;
import org.idempierelbr.openitems.model.MLBRCobGrupoOcorrencia;
import org.idempierelbr.openitems.model.MLBRCobMovimento;
import org.idempierelbr.openitems.model.MLBRCobOcorrencia;
import org.idempierelbr.openitems.process.IBankCollection;

/*
 * Processa registros CNAB
 * 
 * Os segmentos do lote de cobrança são agrupados pelo movimento de que
 * fazem parte, os valores analisados e colocados em registros na
 * tabela LBR_BoletoMovement.
 * 
 * Após concluída a leitura destes valores, para cada grupo de
 * segmentos é executado o método postProcessReturn() do objeto
 * fornecido no parâmetro bankCollectio,  fornecendo no parâmetro
 * returned um objeto da classe CNABSegmentGroup, permitindo personalização
 * posterior ao processamento mas ainda assim anterior à criação dos
 * documentos de pagamentos.
 * 
 * @author: Alan Lescano (Baseado em FebrabanReturn.java)
 * @author: Claudemir Todo Bom <claudemir@todobom.com>
 */
public class CNABRecordsProcess {

	public static String process(CNABRecords returnRecords , SvrProcess svrP, IBankCollection bankCollection ) throws IOException {
		// TODO Auto-generated method stub
		
		List<CNABBaseRecord> records = returnRecords.getListaRegistros();

		CNABCobrancaHeaderLoteRecord lote = null;
		CNABSegmentGroup currentGroup = null;
		
		ArrayList<CNABSegmentGroup> m_SegmentGroupList = new ArrayList<CNABSegmentGroup>();

		for (CNABBaseRecord currentRecord : records ) {
			if ( CNABCobrancaHeaderLoteRecord.class.isAssignableFrom(currentRecord.getClass())) {
				lote = (CNABCobrancaHeaderLoteRecord) currentRecord;
			} else if ( CNABSegmentTRecord.class.isAssignableFrom(currentRecord.getClass()))  {
				currentGroup = new CNABSegmentGroup();
				CNABSegmentTRecord segT = (CNABSegmentTRecord) currentRecord;
				m_SegmentGroupList.add(currentGroup);
				currentGroup.setSegT(segT);
			} else if ( CNABSegmentURecord.class.isAssignableFrom(currentRecord.getClass())) {
				CNABSegmentURecord segU = (CNABSegmentURecord)currentRecord;
				currentGroup.setSegU(segU);
			} else if ( CNABCobrancaSegmentBaseRecord.class.isAssignableFrom(currentRecord.getClass())) {
				currentGroup.addRecord((CNABCobrancaSegmentBaseRecord) currentRecord);
			}
		}

		int AD_Client_ID = 0;
		int AD_Org_ID = 0;
		
		// Check entries and updated Boleto
		for (CNABSegmentGroup segmentGroup : m_SegmentGroupList) {
			String docNo = segmentGroup.getSegT().getIdentificacaoTituloNaEmpresa().trim();
			String nossoNumero = segmentGroup.getSegT().getNossoNumero();
			MLBRBoleto boleto = null;
			if ( docNo != null && !docNo.isEmpty() ) {
				boleto = MLBRBoleto.getByDocumentNo( svrP.getCtx(), docNo , svrP.get_TrxName());

			}

			if ( boleto == null && !nossoNumero.isEmpty()) {
				boleto = MLBRBoleto.getByNumberInBank(svrP.getCtx(), nossoNumero, svrP.get_TrxName());
			}
				
			
			if ( boleto == null ) {
				StringBuilder log = new StringBuilder(Msg.getMsg(svrP.getCtx(), "SearchError"))
					.append(Msg.getElement(svrP.getCtx(), "LBR_Boleto_ID"))
					.append(": ")
					.append(Msg.getElement(svrP.getCtx(), "DocumentNo"))
					.append(" ")
					.append(docNo)
					.append(", ")
					.append(Msg.getElement(svrP.getCtx(), "LBR_NumberInBank"))
					.append(" ")
					.append(nossoNumero);

				svrP.addLog(log.toString());
				continue;
			}
			
			if (AD_Client_ID <= 0) {
				AD_Client_ID = boleto.getAD_Client_ID();
				AD_Org_ID = boleto.getAD_Org_ID();
			}
			
			// Prepare movement
			MLBRBoletoMovement mov = new MLBRBoletoMovement(svrP.getCtx(), 0, svrP.get_TrxName());
			mov.setAD_Org_ID(boleto.getAD_Org_ID());
			mov.setLBR_Boleto_ID(boleto.get_ID());
			mov.setSeqNo(boleto.getNewMovementSeqNo());
			mov.setLBR_CNAB240MovementType(MLBRCobMovimento.LBR_CNAB240MOVEMENTTYPE_2_RetornoBanco_GtCliente);
			
			MLBRCobMovimento cobMov = getCobMovimento(boleto, segmentGroup.getSegT().getCodigoMovimento() , svrP );
			
			if (cobMov == null) {
				StringBuilder log = new StringBuilder(Msg.getMsg(svrP.getCtx(), "SearchError"))
					.append(Msg.getElement(svrP.getCtx(), "LBR_Cob_Movimento_ID"))
					.append(" ")
					.append(segmentGroup.getSegT().getCodigoMovimento())
					.append(", ")
					.append(Msg.getElement(svrP.getCtx(), "LBR_Boleto_ID"))
					.append(": ")
					.append(Msg.getElement(svrP.getCtx(), "DocumentNo"))
					.append(" ")
					.append(segmentGroup.getSegT().getIdentificacaoTituloNaEmpresa().trim());
				
				svrP.addLog(log.toString());
				continue;
			}
			
			mov.setLBR_Cob_Movimento_ID(cobMov.get_ID());

			// Obtain parent movement code
			String returnMovCode;
			if (cobMov.getLBR_ParentCob_Movimento_ID() != 0 ) {
				returnMovCode = cobMov.getLBR_ParentCob_Movimento().getValue(); 
			} else {
				returnMovCode = cobMov.getValue();
			}
			
			// Update Number In Bank
			mov.setLBR_NumberInBank(segmentGroup.getSegT().getNossoNumero().trim());
			if (boleto.getLBR_NumberInBank() == null || !boleto.getLBR_NumberInBank().equals(segmentGroup.getSegT().getNossoNumero().trim())) {
				if (!segmentGroup.getSegT().getNossoNumero().trim().equals("")) {
					boleto.setLBR_NumberInBank(segmentGroup.getSegT().getNossoNumero().trim());
				}
			}
			
			// Update Carteira
			MLBRBankAccountConvenio convenio = null;
			MLBRBankAccountCarteira carteira = null;
			String tipoCarteira = segmentGroup.getSegT().getCodigoCarteira();
			if ( ! tipoCarteira.equals("0") ) {
				mov.setLBR_CarteiraType(tipoCarteira);
				
				MLBRBankAccountConvenio[] convenios = MLBRBankAccountConvenio.getConvenios(svrP.getCtx(),
						boleto.getC_BankAccount_ID(), svrP.get_TrxName());
				
				for (MLBRBankAccountConvenio conv : convenios) {
					MLBRBankAccountCarteira cart = conv.getCarteiraByType(tipoCarteira);
					
					if (cart != null) {
						convenio = conv;
						carteira = cart;
					}
				}
			}
				
			// Se carteira do retorno não existir, utiliza a mesma carteira e convenios
			// do cadastro do boleto
			if (carteira == null) {
				carteira = (MLBRBankAccountCarteira) boleto.getLBR_BankAccount_Carteira();
				tipoCarteira = carteira.getLBR_CarteiraType();
			}
			
			if (convenio == null) {
				convenio = (MLBRBankAccountConvenio) boleto.getLBR_BankAccount_Convenio();
			}

			if (!boleto.getLBR_CarteiraType().equals(tipoCarteira) ||
					boleto.getLBR_BankAccount_Carteira_ID() != carteira.get_ID()) {

				boleto.setLBR_CarteiraType(tipoCarteira);
				boleto.setLBR_BankAccount_Carteira_ID(carteira.get_ID());
			}

			if ( convenio != null && boleto.getLBR_BankAccount_Convenio_ID() != convenio.get_ID() ) {
				boleto.setLBR_BankAccount_Convenio_ID(convenio.get_ID());
			}
			
			// Updated Document No
			mov.setLBR_DocumentNo(segmentGroup.getSegT().getIdentificacaoTituloNaEmpresa().trim());
			if (!boleto.getDocumentNo().equals(segmentGroup.getSegT().getIdentificacaoTituloNaEmpresa().trim())) {
				if (!segmentGroup.getSegT().getIdentificacaoTituloNaEmpresa().trim().equals("")) {
					boleto.setDocumentNo(segmentGroup.getSegT().getIdentificacaoTituloNaEmpresa().trim());
				}
			}
			
			// Update Due Date
			mov.setDueDate(new Timestamp(segmentGroup.getSegT().getVencimento().getTime()));
			if (segmentGroup.getSegT().getVencimento() != null) {
				if (!isSameDate(segmentGroup.getSegT().getVencimento(), boleto.getDueDate())) {
					boleto.setDueDate(new Timestamp(segmentGroup.getSegT().getVencimento().getTime()));
				}
			}
			
			// Paid related fields
			BigDecimal paidAmt = new BigDecimal(segmentGroup.getSegU().getValorPago(), MathContext.DECIMAL64);
			
			if (paidAmt.compareTo(Env.ZERO) == 1) {
				// Update Collect Bank / Agency
				mov.setLBR_CollectBankNo( segmentGroup.getSegT().getBanco());
				mov.setLBR_CollectBankAgencyNo(Integer.toString(segmentGroup.getSegT().getAgenciaCobradora()));
			}

			mov.setPayAmt(paidAmt);
			
			// Updated Number In Org
			mov.setLBR_NumberInOrg(segmentGroup.getSegT().getNumeroDocumento().trim());
			if (!boleto.getLBR_NumberInOrg().equals(segmentGroup.getSegT().getNumeroDocumento().trim())) {
				if (!segmentGroup.getSegT().getNumeroDocumento().trim().equals("")) {
					boleto.setLBR_NumberInOrg(segmentGroup.getSegT().getNumeroDocumento().trim());
				}
			}

			// Update Contract Number
			if (segmentGroup.getSegT().getNumeroContrato() > 0) {
				mov.setLBR_LoanContractNo(String.valueOf(segmentGroup.getSegT().getNumeroContrato()));
				boleto.setLBR_LoanContractNo(String.valueOf(segmentGroup.getSegT().getNumeroContrato()));
			}
			
			// Update FeeAmt (Valor da Tarifa/Custas)
			BigDecimal feeAmt = new BigDecimal(segmentGroup.getSegT().getValorTarifas(), MathContext.DECIMAL64);
			
			if (feeAmt.compareTo(Env.ZERO) == 1) {
				mov.setFeeAmt(feeAmt);
			}
			
			// Update Motivo da Ocorrência
			String motivoOcorrencia = segmentGroup.getSegT().getMotivoOcorrencia();
			
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
			BigDecimal interestAmt = new BigDecimal(segmentGroup.getSegU().getValorAcrescimos(), MathContext.DECIMAL64);
			
			if (interestAmt.compareTo(Env.ZERO) == 1) {
				mov.setInterestAmt(interestAmt);
			}
			
			// Update Discount Amt (Valor do Desconto)
			BigDecimal discountAmt = new BigDecimal(segmentGroup.getSegU().getValorDesconto(), MathContext.DECIMAL64);
			
			if (discountAmt.compareTo(Env.ZERO) == 1) {
				mov.setDiscountAmt(discountAmt);
			}
			
			// Update WriteOff Amt (Valor do Abatimento)
			BigDecimal writeOffAmt = new BigDecimal(segmentGroup.getSegU().getValorAbatimento(), MathContext.DECIMAL64);
			
			if (writeOffAmt.compareTo(Env.ZERO) == 1) {
				mov.setWriteOffAmt(writeOffAmt);
			}
			
			// Update IOF Amt (Valor do IOF)
			BigDecimal iofAmt = new BigDecimal(segmentGroup.getSegU().getValorIOF(), MathContext.DECIMAL64);
			
			if (iofAmt.compareTo(Env.ZERO) == 1) {
				mov.setLBR_IOFAmt(iofAmt);
			}
			
			// Update Available Amt (Valor Líquido)
			BigDecimal availableAmt = new BigDecimal(segmentGroup.getSegU().getValorLiquido(), MathContext.DECIMAL64);
			
			if (availableAmt.compareTo(Env.ZERO) == 1) {
				mov.setAvailableAmt(availableAmt);
			}
			
			// Update Other Expenses Amt (Outras Despesas)
			BigDecimal otherExpensesAmt = new BigDecimal(segmentGroup.getSegU().getOutrasDespesas(), MathContext.DECIMAL64);
			
			if (otherExpensesAmt.compareTo(Env.ZERO) == 1) {
				mov.setLBR_OtherExpensesAmt(otherExpensesAmt);
			}
			
			// Update Other Incomes Amt (Outros Créditos)
			BigDecimal otherIncomesAmt = new BigDecimal(segmentGroup.getSegU().getOutrosCreditos(), MathContext.DECIMAL64);
			
			if (otherIncomesAmt.compareTo(Env.ZERO) == 1) {
				mov.setLBR_OtherIncomesAmt(otherIncomesAmt);
			}
			
			// Data da Ocorrência
			if (segmentGroup.getSegU().getDataOcorrencia() != null) {
				mov.setLBR_Cob_OcorrenciaDate(new Timestamp(segmentGroup.getSegU().getDataOcorrencia().getTime()));
			}
			
			// Data do Crédito
			if (segmentGroup.getSegU().getDataCredito() != null) {
				mov.setLBR_CreditDate(new Timestamp(segmentGroup.getSegU().getDataCredito().getTime()));
			}
			
			/*
			 //  FIXME: Suporte a banco correspondente

			// Update Corresp Bank / Number In Corresp Bank
			mov.setLBR_CorrespBankNo(bC.getSegU().getCodigoBancoCorrespondenteCompensacao());
			mov.setLBR_NumberInCorrespBank(Long.toString(bC.getSegU().getNossoNumero()));
			/* */

			
			// seta flags do boleto
			setBoletoFlags( boleto , returnMovCode );
			
			// Executa código customizado do retorno
			bankCollection.postProcessReturn(segmentGroup, mov, boleto);
			
			mov.saveEx();
			boleto.saveEx();
			
			StringBuilder log = new StringBuilder(Msg.getMsg(svrP.getCtx(), "DocProcessed"))
				.append(": ")
				.append(Msg.getElement(svrP.getCtx(), "LBR_Boleto_ID"))
				.append(" ")
				.append(boleto.getDocumentNo())
				.append(", ")
				.append(Msg.getElement(svrP.getCtx(), "LBR_Cob_Movimento_ID"))
				.append(" ")
				.append(cobMov.getName());
		
			svrP.addLog(log.toString());
			
			if (mov.getPayAmt().compareTo(Env.ZERO) == 1 
					&& ( returnMovCode.equals("06") || returnMovCode.equals("17") ) )  {
				log = new StringBuilder(Msg.getMsg(svrP.getCtx(), "DocProcessed"))
					.append(": ")
					.append(Msg.getElement(svrP.getCtx(), "LBR_Boleto_ID"))
					.append(" ")
					.append(boleto.getDocumentNo())
					.append(", ")
					.append(Msg.getElement(svrP.getCtx(), "PayAmt"))
					.append(" ")
					.append(TextUtil.toNumeric(mov.getPayAmt()))
					.append(", ")
					.append(mov.createPayment());
				
				svrP.addLog(log.toString());
			}
		
		}
		
		// Create Notice
		if (MSysConfig.getBooleanValue("LBR_CNAB_CREATE_NOTICE", true, AD_Client_ID, AD_Org_ID)) {
			MNote note = new MNote(svrP.getCtx(), "LBR_CNABGenerated", Env.getAD_User_ID(svrP.getCtx()), svrP.get_TrxName());
			
			StringBuilder noteMsg = new StringBuilder("Retorno CNAB: ")
				.append(Msg.getElement(svrP.getCtx(), "C_Bank_ID"))
				.append(" ")
				.append(lote.getBanco())
				.append(", ")
				.append(Msg.getElement(svrP.getCtx(), "LBR_BankAccount_Convenio_ID"))
				.append(" ")
				.append(lote.getConvenio());
			
			note.setTextMsg(noteMsg.toString());
			note.setRecord(MPInstance.Table_ID, svrP.getProcessInfo().getAD_PInstance_ID());
			note.saveEx();
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
	
	private static void setBoletoFlags( MLBRBoleto boleto , String returnMovCode ) {
		
		// 06 - Liquidação
		// 17 - Liquidação Após Baixa
		if (returnMovCode.equals("06") || returnMovCode.equals("17")) 
			boleto.setIsPaid(true);
		
		// 09 - Baixa
		// 54 - Confirmação da Instrução de Baixa de Título Negativado
		else if (returnMovCode.equals("09") || returnMovCode.equals("54"))
			boleto.setLBR_IsBaixado(true);
		
		// 19 - Confirmação Instrução de Protesto
		// 23 - Remessa a Cartório
		// 47 - Instrução Protesto fins Falimentares
		else if (returnMovCode.equals("19") || returnMovCode.equals("23") || returnMovCode.equals("47"))
			boleto.setLBR_IsProtested(true);
		
		// 20 - Confirmação Instrução de Sustação
		// 24 - Retirada de Cartório
		else if (returnMovCode.equals("20") || returnMovCode.equals("24"))
			boleto.setLBR_IsSustado(true);
		
		// 25 - Protestado e Baixado
		else if (returnMovCode.equals("25")) {
			boleto.setLBR_IsProtested(true);
			boleto.setLBR_IsBaixado(true);
		}

	}


}
