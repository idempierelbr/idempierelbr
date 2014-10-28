package org.idempierelbr.cnab240febraban.process;

import java.io.File;
import java.math.BigDecimal;
import java.math.MathContext;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MBank;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.idempierelbr.cnab240febraban.model.pojo.ArquivoBanco;
import org.idempierelbr.cnab240febraban.model.pojo.Lote;
import org.idempierelbr.cnab240febraban.model.registro.Registro;
import org.idempierelbr.cnab240febraban.model.registro.detalhe.RegistroDeDetalhe;
import org.idempierelbr.cnab240febraban.model.registro.detalhe.segmento.TitulosEmCobrancaSegmentoT;
import org.idempierelbr.cnab240febraban.model.registro.detalhe.segmento.TitulosEmCobrancaSegmentoU;
import org.idempierelbr.cnab240febraban.model.registro.header.HeaderArquivo;
import org.idempierelbr.cnab240febraban.model.registro.header.HeaderLote;
import org.idempierelbr.cnab240febraban.model.registro.trailer.TrailerLote;
import org.idempierelbr.core.util.TextUtil;
import org.idempierelbr.openitems.model.MLBRBankAccountCarteira;
import org.idempierelbr.openitems.model.MLBRBankAccountConvenio;
import org.idempierelbr.openitems.model.MLBRBoleto;
import org.idempierelbr.openitems.model.MLBRBoletoMovement;
import org.idempierelbr.openitems.model.MLBRCobGrupoOcorrencia;
import org.idempierelbr.openitems.model.MLBRCobMovimento;
import org.idempierelbr.openitems.model.MLBRCobOcorrencia;

/**
 *	Return CNAB
 */
public class FebrabanReturn extends SvrProcess
{
	private String p_CNABFile = null;
	private ArrayList<BankCollection> m_BankCollectionList;
	
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
			else if (name.equals("CNABFile"))
				p_CNABFile = (String) para[i].getParameter();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		
		m_BankCollectionList = new ArrayList<BankCollection>();
	}	//	prepare

	/**
	 * 	Return CNAB
	 *	@return info
	 *	@throws Exception
	 */
	protected String doIt () throws Exception
	{
		// Validate Mandatory parameter
		if (p_CNABFile == null || p_CNABFile.length() == 0)
			throw new IllegalArgumentException("Missing required parameters");
		
		File CNABFile = new File(p_CNABFile);
		if (!CNABFile.exists())
			throw new AdempiereException("CNABFile " + p_CNABFile + " does not exist");
		if (!CNABFile.canRead())
			throw new AdempiereException("Cannot read CNABFile " + p_CNABFile);
		if (!CNABFile.isFile())
			throw new AdempiereException("CNABFile " + p_CNABFile + " is not a file");
		if (CNABFile.length() <= 0L)
			throw new AdempiereException("CNABFile " + p_CNABFile + " is empty");
		
		ArquivoBanco arquivoBanco = new ArquivoBanco(CNABFile);
		
		if (!arquivoBanco.isFileRead())
			throw new AdempiereException("CNAB Return failed");
				
		return process(arquivoBanco);	
	}	//	doIt

	private String process(ArquivoBanco arquivoBanco) {
		// HeaderArquivo
		HeaderArquivo headerArquivo = arquivoBanco.getHeader();
		
		// Lista de Lotes
		List<Lote<? extends HeaderLote, ? extends Registro, ? extends TrailerLote>> listaLotes = arquivoBanco.getListaLotes();
		
		for (Lote<? extends HeaderLote, ? extends Registro, ? extends TrailerLote> lote : listaLotes) {
			List<? extends RegistroDeDetalhe> registrosDeDetalhe = (List<? extends RegistroDeDetalhe>) lote.getRegistrosDeDetalhe();
			
			BankCollection bC = null;
			
			for (RegistroDeDetalhe registroDeDetalhe : registrosDeDetalhe) {
				if (registroDeDetalhe instanceof TitulosEmCobrancaSegmentoT) {
					if (bC != null)
						m_BankCollectionList.add(bC);
					
					bC= new BankCollection();
					
					TitulosEmCobrancaSegmentoT segT = (TitulosEmCobrancaSegmentoT)registroDeDetalhe;
					bC.setSegT(segT);
				} else if (registroDeDetalhe instanceof TitulosEmCobrancaSegmentoU) {
					TitulosEmCobrancaSegmentoU segU = (TitulosEmCobrancaSegmentoU)registroDeDetalhe;
					bC.setSegU(segU);
				}
			}
		}
		
		// Check entries and updated Boleto
		for (BankCollection bC : m_BankCollectionList) {
			MLBRBoleto boleto = MLBRBoleto.getByDocumentNo(getCtx(), bC.getSegT().getCampoUsoEmpresa().trim(), get_TrxName());
			
			if (boleto == null) {
				StringBuilder log = new StringBuilder(Msg.getMsg(getCtx(), "SearchError"))
					.append(Msg.getElement(getCtx(), "LBR_Boleto_ID"))
					.append(", ")
					.append(Msg.getElement(getCtx(), "DocumentNo"))
					.append(" ")
					.append(bC.getSegT().getCampoUsoEmpresa().trim());

				addLog(log.toString());
				continue;
			}
			
			// Prepare movement
			MLBRBoletoMovement mov = new MLBRBoletoMovement(getCtx(), 0, get_TrxName());
			mov.setAD_Org_ID(boleto.getAD_Org_ID());
			mov.setLBR_Boleto_ID(boleto.get_ID());
			mov.setSeqNo(boleto.getNewMovementSeqNo());
			mov.setLBR_CNAB240MovementType(MLBRCobMovimento.LBR_CNAB240MOVEMENTTYPE_2_RetornoBanco_GtCliente);
			
			MLBRCobMovimento cobMov = getCobMovimento(boleto, bC.getSegT().getServico().getCodigoMovimentoRemessa());
			
			if (cobMov == null) {
				StringBuilder log = new StringBuilder(Msg.getMsg(getCtx(), "SearchError"))
					.append(Msg.getElement(getCtx(), "LBR_Cob_Movimento_ID"))
					.append(" ")
					.append(bC.getSegT().getServico().getCodigoMovimentoRemessa())
					.append(", ")
					.append(Msg.getElement(getCtx(), "LBR_Boleto_ID"))
					.append(" ")
					.append(Msg.getElement(getCtx(), "DocumentNo"))
					.append(" ")
					.append(bC.getSegT().getCampoUsoEmpresa().trim());
			
				addLog(log.toString());
				continue;
			}
			
			mov.setLBR_Cob_Movimento_ID(cobMov.get_ID());
			
			// Update Number In Bank
			if (boleto.getLBR_NumberInBank() == null || !boleto.getLBR_NumberInBank().equals(bC.getSegT().getNossoNumero().trim())) {
				if (!bC.getSegT().getNossoNumero().trim().equals("")) {
					mov.setLBR_NumberInBank(bC.getSegT().getNossoNumero().trim());
					boleto.setLBR_NumberInBank(bC.getSegT().getNossoNumero().trim());
				}
			}
			
			// Update Carteira
			if (bC.getSegT().getCodigoCarteira() > 0) {
				MLBRBankAccountConvenio convenio = null;
				MLBRBankAccountCarteira carteira = null;
				
				MLBRBankAccountConvenio[] convenios = MLBRBankAccountConvenio.getConvenios(getCtx(),
						boleto.getC_BankAccount_ID(), get_TrxName());
				
				for (MLBRBankAccountConvenio conv : convenios) {
					MLBRBankAccountCarteira cart = conv.getCarteiraByType(String.valueOf(bC.getSegT().getCodigoCarteira()));
					
					if (cart != null) {
						convenio = conv;
						carteira = cart;
					}
				}
				
				if (carteira == null) {
					StringBuilder log = new StringBuilder(Msg.getMsg(getCtx(), "SearchError"))
						.append(Msg.getElement(getCtx(), "LBR_BankAccount_Carteira_ID"))
						.append(" ")
						.append(bC.getSegT().getCodigoCarteira())
						.append(", ")
						.append(Msg.getElement(getCtx(), "LBR_Boleto_ID"))
						.append(" ")
						.append(Msg.getElement(getCtx(), "DocumentNo"))
						.append(" ")
						.append(bC.getSegT().getCampoUsoEmpresa().trim());

					addLog(log.toString());
					continue;
				}
				
				if (!boleto.getLBR_CarteiraType().equals(String.valueOf(bC.getSegT().getCodigoCarteira())) ||
						boleto.getLBR_BankAccount_Convenio_ID() != convenio.get_ID() ||
						boleto.getLBR_BankAccount_Carteira_ID() != carteira.get_ID()) {
					
					mov.setLBR_CarteiraType(String.valueOf(bC.getSegT().getCodigoCarteira()));
					boleto.setLBR_CarteiraType(String.valueOf(bC.getSegT().getCodigoCarteira()));
					boleto.setLBR_BankAccount_Convenio_ID(convenio.get_ID());
					boleto.setLBR_BankAccount_Carteira_ID(carteira.get_ID());
				}
			}
			
			// Updated Number In Org
			if (!boleto.getLBR_NumberInOrg().equals(bC.getSegT().getNumeroDocumento().trim())) {
				if (!bC.getSegT().getNumeroDocumento().trim().equals("")) {
					mov.setLBR_DocumentNo(bC.getSegT().getNumeroDocumento().trim());
					boleto.setDocumentNo(bC.getSegT().getNumeroDocumento().trim());
				}
			}
			
			// Update Due Date
			if (bC.getSegT().getDataVencimentoTitulo() != null) {
				if (!isSameDate(bC.getSegT().getDataVencimentoTitulo(), boleto.getDueDate())) {
					mov.setDueDate(new Timestamp(bC.getSegT().getDataVencimentoTitulo().getTime()));
					boleto.setDueDate(new Timestamp(bC.getSegT().getDataVencimentoTitulo().getTime()));
				}
			}
			
			// Paid related fields
			BigDecimal paidAmt = new BigDecimal(bC.getSegU().getDadosTitulo().getValorPago(), MathContext.DECIMAL64);
			
			if (paidAmt.compareTo(Env.ZERO) == 1) {
				// Update Collect Bank / Agency
				mov.setLBR_CollectBankNo(bC.getSegT().getNumeroBanco());
				mov.setLBR_CollectBankAgencyNo(bC.getSegT().getAgencia().toString());
			}
			
			// Updated Document No
			if (!boleto.getDocumentNo().equals(bC.getSegT().getCampoUsoEmpresa().trim())) {
				if (!bC.getSegT().getCampoUsoEmpresa().trim().equals("")) {
					mov.setLBR_DocumentNo(bC.getSegT().getCampoUsoEmpresa().trim());
					boleto.setDocumentNo(bC.getSegT().getCampoUsoEmpresa().trim());
				}
			}
			
			// Update Contract Number
			if (bC.getSegT().getNumeroContrato() > 0) {
				mov.setLBR_LoanContractNo(String.valueOf(bC.getSegT().getNumeroContrato()));
				boleto.setLBR_LoanContractNo(String.valueOf(bC.getSegT().getNumeroContrato()));
			}
			
			// Update FeeAmt (Valor da Tarifa/Custas)
			BigDecimal feeAmt = new BigDecimal(bC.getSegT().getValorTarifaCustas(), MathContext.DECIMAL64);
			
			if (feeAmt.compareTo(Env.ZERO) == 1) {
				mov.setFeeAmt(feeAmt);
			}
			
			// Update Motivo da Ocorrência
			String motivoOcorrencia = bC.getSegT().getMotivoOcorrencia();
			
			if (motivoOcorrencia.trim().length() > 0 && cobMov.getLBR_Cob_GO_ID() > 0) {
				MLBRCobGrupoOcorrencia gO = new MLBRCobGrupoOcorrencia(getCtx(), cobMov.getLBR_Cob_GO_ID(), get_TrxName());
				
				if (motivoOcorrencia.length() != 10)
					motivoOcorrencia = TextUtil.lPad(motivoOcorrencia, ' ', 10);
				
				String[] ocorrencias = motivoOcorrencia.split("(?<=\\G.{2})");
				
				for (int i = 0; i < ocorrencias.length; i++) {
					if (ocorrencias[i].trim().equals(""))
						continue;
					
					MLBRCobOcorrencia oc = gO.getOcorrenciaByValue(getCtx(), ocorrencias[i].trim(), get_TrxName());
					
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
			BigDecimal interestAmt = new BigDecimal(bC.getSegU().getDadosTitulo().getAcrescimos(), MathContext.DECIMAL64);
			
			if (interestAmt.compareTo(Env.ZERO) == 1) {
				mov.setInterestAmt(interestAmt);
			}
			
			// Update Discount Amt (Valor do Desconto)
			BigDecimal discountAmt = new BigDecimal(bC.getSegU().getDadosTitulo().getValorDesconto(), MathContext.DECIMAL64);
			
			if (discountAmt.compareTo(Env.ZERO) == 1) {
				mov.setDiscountAmt(discountAmt);
			}
			
			// Update WriteOff Amt (Valor do Abatimento)
			BigDecimal writeOffAmt = new BigDecimal(bC.getSegU().getDadosTitulo().getValorAbatimento(), MathContext.DECIMAL64);
			
			if (writeOffAmt.compareTo(Env.ZERO) == 1) {
				mov.setWriteOffAmt(writeOffAmt);
			}
			
			// Update IOF Amt (Valor do IOF)
			BigDecimal iofAmt = new BigDecimal(bC.getSegU().getDadosTitulo().getValorIOF(), MathContext.DECIMAL64);
			
			if (iofAmt.compareTo(Env.ZERO) == 1) {
				mov.setLBR_IOFAmt(iofAmt);
			}
			
			// Update Available Amt (Valor Líquido)
			BigDecimal availableAmt = new BigDecimal(bC.getSegU().getDadosTitulo().getValorLiquido(), MathContext.DECIMAL64);
			
			if (availableAmt.compareTo(Env.ZERO) == 1) {
				mov.setAvailableAmt(availableAmt);
			}
			
			// Update Other Expenses Amt (Outras Despesas)
			BigDecimal otherExpensesAmt = new BigDecimal(bC.getSegU().getValorOutrasDespesas(), MathContext.DECIMAL64);
			
			if (otherExpensesAmt.compareTo(Env.ZERO) == 1) {
				mov.setLBR_OtherExpensesAmt(otherExpensesAmt);
			}
			
			// Update Other Incomes Amt (Outros Créditos)
			BigDecimal otherIncomesAmt = new BigDecimal(bC.getSegU().getValorOutrosCreditos(), MathContext.DECIMAL64);
			
			if (otherIncomesAmt.compareTo(Env.ZERO) == 1) {
				mov.setLBR_OtherIncomesAmt(otherIncomesAmt);
			}
			
			// Data da Ocorrência
			if (bC.getSegU().getDataOcorrencia() != null) {
				mov.setLBR_Cob_OcorrenciaDate(new Timestamp(bC.getSegU().getDataOcorrencia().getTime()));
			}
			
			// Data do Crédito
			if (bC.getSegU().getDataCredito() != null) {
				mov.setLBR_CreditDate(new Timestamp(bC.getSegU().getDataCredito().getTime()));
			}
			
			// Update Corresp Bank / Number In Corresp Bank
			mov.setLBR_CorrespBankNo(bC.getSegU().getCodigoBancoCorrespondenteCompensacao());
			mov.setLBR_NumberInCorrespBank(Long.toString(bC.getSegU().getNossoNumero()));
			
			mov.saveEx();
			boleto.saveEx();
			
			StringBuilder log = new StringBuilder(Msg.getMsg(getCtx(), "DocProcessed"))
				.append(": ")
				.append(Msg.getElement(getCtx(), "LBR_Boleto_ID"))
				.append(" ")
				.append(boleto.getDocumentNo());
			
			addLog(log.toString());
		}
		
		return "Ok";
	}
	
	private MLBRCobMovimento getCobMovimento(MLBRBoleto boleto, int codMovimento) {
		if (boleto == null || codMovimento < 1)
			return null;
		
		String cM = String.valueOf(codMovimento);
		
		if (cM.length() == 1)
			cM = TextUtil.lPad(cM, '0', 2);
		
		MBank bank = new MBank(getCtx(), boleto.getC_Bank_ID(), get_TrxName());
		
		return MLBRCobMovimento.getMovimento(getCtx(), cM,
				MLBRCobMovimento.LBR_CNAB240MOVEMENTTYPE_2_RetornoBanco_GtCliente, bank, get_TrxName());
	}
	
	private boolean isSameDate(Date date, Timestamp timestamp) {
		String dateFormated = new SimpleDateFormat("ddMMyy").format(date);
		String timestampFormated = new SimpleDateFormat("ddMMyy").format(new Date(timestamp.getTime()));
		
		if (dateFormated.equals(timestampFormated))
			return true;
			
		return false;
	}

	public class BankCollection {
		private TitulosEmCobrancaSegmentoT segT;
		private TitulosEmCobrancaSegmentoU segU;
		public TitulosEmCobrancaSegmentoT getSegT() {
			return segT;
		}
		public void setSegT(TitulosEmCobrancaSegmentoT segT) {
			this.segT = segT;
		}
		public TitulosEmCobrancaSegmentoU getSegU() {
			return segU;
		}
		public void setSegU(TitulosEmCobrancaSegmentoU segU) {
			this.segU = segU;
		}		
	}
}	//	CNABReturn
