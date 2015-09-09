package org.idempierelbr.openitems.model;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.model.I_C_DocType;
import org.compiere.model.MAllocationHdr;
import org.compiere.model.MAllocationLine;
import org.compiere.model.MDocType;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoicePaySchedule;
import org.compiere.model.MPayment;
import org.compiere.model.MPaymentAllocate;
import org.compiere.process.DocAction;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.idempierelbr.core.util.AdempiereLBR;

public class MLBRBoletoMovement extends X_LBR_BoletoMovement {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2081329273070797159L;
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(MLBRBoletoMovement.class);
	private BigDecimal interestAmt;
	private BigDecimal penaltyAmt;

	public MLBRBoletoMovement(Properties ctx, int LBR_BoletoMovement_ID,
			String trxName) {
		super(ctx, LBR_BoletoMovement_ID, trxName);
	}

	public MLBRBoletoMovement(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	public String createPayment() {
		String returnMsg = null;		
		MLBRBoleto boleto = new MLBRBoleto(getCtx(), getLBR_Boleto_ID(), get_TrxName());
		
		// Invoice
		MInvoice invoice = (MInvoice) boleto.getC_Invoice();
	
		// Payschedule
		MInvoicePaySchedule paySchedule = (MInvoicePaySchedule) boleto.getC_InvoicePaySchedule();
		
		if ( (invoice != null) && (invoice.getDocStatus()).equals("CO")){
			if (!invoice.isPaid()){
	
				MPayment Payment = new MPayment(getCtx(), 0, get_TrxName());
				
				Integer C_BankAccount_ID = boleto.getC_BankAccount_ID();
				//
				if (C_BankAccount_ID == null)
					C_BankAccount_ID = (Integer)invoice.get_Value("C_BankAccount_ID");
				if (C_BankAccount_ID == null)
					log.log(Level.SEVERE, "Bank Account not valid");
	
				Payment.setAD_Org_ID(boleto.getAD_Org_ID());
				
				Payment.setC_BankAccount_ID(C_BankAccount_ID);
	
				Payment.setC_DocType_ID(AdempiereLBR.getARReceipt()); 		// Contas a Receber
				
				Payment.setC_Invoice_ID(invoice.get_ID());						// Fatura
				
				Payment.set_ValueOfColumn("LBR_Boleto_ID", boleto.get_ID());	// Boleto
				
				
				Payment.setC_BPartner_ID(invoice.getC_BPartner_ID());		// BP
				// FIXME: FORÇAR USO PARA MOEDA CORRETA - UTILIZA MESMA MOEDA DA FATURA
				Payment.setC_Currency_ID(invoice.getC_Currency_ID());
				Payment.setTenderType(MPayment.TENDERTYPE_DirectDebit); 	// Débito Direto
				Payment.setDescription("Documento gerado automaticamente - CNAB");
	
				Payment.setDateAcct(getLBR_Cob_OcorrenciaDate()); 		// Data da Conta
				Payment.setDateTrx(getLBR_Cob_OcorrenciaDate());		// Data da Transação

				// calcula valor pago pelo sacado
				/*BigDecimal payAmt = getPayAmt()								// valor principal
									.add(getInterestAmt()) 					// juros e multa
									.add(getLBR_OtherIncomesAmt())			// outros adicionais
									.subtract(getDiscountAmt())				// desconto
									.subtract(getWriteOffAmt())				// abatimento autorizado
									.subtract(getLBR_OtherExpensesAmt());	// outras deduções
*/	
				Payment.setPayAmt(getPayAmt()); 	// Valor Pago
				
				// atualiza valor do desconto conforme regras da payschedule
				// ajusta valor pago a maior/menor
				updateAmounts(Payment, invoice.get_ID(), paySchedule.get_ID());

				Payment.set_ValueOfColumn("LBR_Boleto_ID", boleto.get_ID());
				
				// Save and process
				if(Payment.save(get_TrxName())) 
				{
	
					Payment.setDocAction(DocAction.ACTION_Complete);
					if(Payment.processIt(DocAction.ACTION_Complete))
						Payment.save(get_TrxName());
	
					// mov.set_ValueOfColumn("C_Payment_ID", Payment.getC_Payment_ID());
					// mov.saveEx();
	
					// Colocar no log uma indicação do resultado
					if(Payment.getDocStatus().equals(DocAction.STATUS_Completed) && boleto.save(get_TrxName())) {
						returnMsg = "Pagamento Realizado";
						
						// Aloca Juros e Multa para as respectivas referências contábeis
						if (interestAmt.add(penaltyAmt).compareTo(Env.ZERO)>0) {
							allocateCharges(Payment);
						}

						
					} else { 
						returnMsg = "Erro ao Efetuar o Pagamento";
					}
				} 
				else 
				{
					returnMsg = "Erro ao Efetuar o Pagamento";
				}
				
			}//BAIXA
			else{
				returnMsg = "Documento já está Pago";
			}//JA LANCADO
	
		}//FATURA COMPLETADA
		else{
			// TODO: registrar pagamentos sem faturas
			returnMsg = "Fatura não Completada ou Inexistente";
		}
	
		return returnMsg;
	}

	private void allocateCharges(MPayment payment) {

		// obtém dados padrão de cobrança deste boleto
		MDocType dt = (MDocType) getLBR_Boleto().getC_DocType();
		MLBRCollectionDefault cd = new MLBRCollectionDefault(p_ctx, dt.get_ValueAsInt("LBR_Collection_Default_ID"), get_TrxName() );
		
		String allocationPriority = cd.getLBR_PaymentAllocationPriority();
		
		// valor não alocado pago a maior (atenção para a inversão de sinal)
		BigDecimal uAmt = payment.getOverUnderAmt().negate();
		BigDecimal tAmt = Env.ZERO;

		if ( uAmt.compareTo(Env.ZERO)>0 && interestAmt.add(penaltyAmt).compareTo(Env.ZERO)>0) {

			String boletoID = getLBR_Boleto().getDocumentNo();
			
			MAllocationHdr allocation = new MAllocationHdr(p_ctx, 0, get_TrxName());
			allocation.setAD_Org_ID(payment.getAD_Org_ID());
			allocation.setC_Currency_ID(payment.getC_Currency_ID());
			allocation.setDescription("Alocação automática de Juros e/ou Multa do boleto "+boletoID);
			allocation.setDateTrx(payment.getDateTrx());
			allocation.setDateAcct(payment.getDateAcct());
			allocation.saveEx(get_TrxName());
			
			// Distribui valor maior/menor na ordem definida nos padrões da cobrança
			for(char c : allocationPriority.toCharArray()) {

				// (re)inicializa valores
				BigDecimal value=Env.ZERO;
				int chargeID=0;
				
			    switch (c) {
			    case 'I':		// juros
			    	value = interestAmt;
					chargeID = cd.getLBR_InterestCharge_ID();
			    	break;
			    case 'P':		// multa
			    	value = penaltyAmt;
					chargeID = cd.getLBR_PenaltyCharge_ID();
			    	break;
			    default:
			    	break;
			    }

			    // se valor positivo e disponível, inclui linha de alocação
			    if (chargeID>0 && value.compareTo(Env.ZERO)>0 && uAmt.compareTo(Env.ZERO)>0) {
			    	// se valor for maior que o disponível, aloca apenas o disponível
			    	if (value.compareTo(uAmt)>0)
			    		// copia novo valor
			    		value = uAmt.add(Env.ZERO);

			    	// diminui valor disponível
			    	uAmt = uAmt.subtract(value);
			    	
			    	// incrementa valor total distribuído
			    	tAmt = tAmt.add(value);
			    	
			    	MAllocationLine al = new MAllocationLine( p_ctx , 0 , this.get_TrxName());
			    	
			    	al.setAD_Org_ID(payment.getAD_Org_ID());
			    	al.setDateTrx(payment.getDateTrx());
			    	al.setC_BPartner_ID(payment.getC_BPartner_ID());
			    	al.setAmount(value.negate());
			    	al.setC_AllocationHdr_ID(allocation.getC_AllocationHdr_ID());
			    	al.setC_Charge_ID(chargeID);
			    	
			    	al.saveEx(get_TrxName());
			    }
			    
			}

			// se houver distribuição, inclui contrapartida
		    if (tAmt.compareTo(Env.ZERO)>0) {
		    	MAllocationLine al = new MAllocationLine( p_ctx , 0 , this.get_TrxName());
		    	
		    	al.setAD_Org_ID(payment.getAD_Org_ID());
		    	al.setDateTrx(payment.getDateTrx());
		    	al.setC_BPartner_ID(payment.getC_BPartner_ID());
		    	al.setAmount(tAmt);
		    	al.setC_AllocationHdr_ID(allocation.getC_AllocationHdr_ID());
		    	al.setC_Payment_ID(payment.getC_Payment_ID());
		    	
		    	al.saveEx(get_TrxName());
		    }
			
			// completa alocação
			allocation.setDocAction(DocAction.ACTION_Complete);
			if(allocation.processIt(DocAction.ACTION_Complete))
				allocation.saveEx(get_TrxName());

		}
		
	}

	/**
	 * updateAmounts
	 * 
	 * Calcula e ajusta valores pagos a maior e a menor
	 * 
	 * @param payment Pagamento sendo inserido
	 * @param C_Invoice_ID Fatura relacionada a este pagamento
	 * @param C_InvoicePaySchedule_ID Parcela relacionada a este pagamento
	 */
	private void updateAmounts(MPayment payment, int C_Invoice_ID, int C_InvoicePaySchedule_ID) {
		// Get Open Amount & Invoice Currency
		BigDecimal InvoiceOpenAmt = Env.ZERO;
		BigDecimal InvoiceDiscountAmt = Env.ZERO;

		interestAmt = Env.ZERO;
		penaltyAmt = Env.ZERO;
		
		BigDecimal underOverAmt = Env.ZERO;
		
		if (C_Invoice_ID != 0)
		{
			String sqlDiscount = "SELECT C_BPartner_ID,C_Currency_ID," // 1..2
				+ " invoiceOpen(C_Invoice_ID,?)," // 3 #1
				+ " invoiceDiscount(C_Invoice_ID,?,?), IsSOTrx " // 4..5 #2/3
				+ "FROM C_Invoice WHERE C_Invoice_ID=?"; // #4
			
			String sqlCharges = "SELECT C_BPartner_ID," // 1
					+ " boletoJuros(LBR_Boleto_ID::integer,?)," // 2 #1
					+ " boletoMulta(LBR_Boleto_ID::integer,?) " // 3 #2
					+ "FROM LBR_Boleto WHERE LBR_Boleto_ID=?"; // #3

			PreparedStatement pstmt = null;
			ResultSet rs = null;

			// Juros e Multa
			try {
				pstmt = DB.prepareStatement (sqlCharges, null);
				pstmt.setTimestamp (1, payment.getDateTrx());
				pstmt.setTimestamp (2, payment.getDateTrx());
				pstmt.setInt (3, getLBR_Boleto_ID());
				rs = pstmt.executeQuery ();
				if (rs.next ())
				{
					interestAmt = rs.getBigDecimal (2); // Set interests
					if (interestAmt == null)
						interestAmt = Env.ZERO;
					
					penaltyAmt = rs.getBigDecimal (3); // Set interests
					if (penaltyAmt == null)
						penaltyAmt = Env.ZERO;
					
				}
			}
			catch (SQLException e)
			{
				log.log (Level.SEVERE, sqlCharges, e);
				return;
			}
			finally
			{
				DB.close (rs, pstmt);
				rs = null;
				pstmt = null;
			}
			
			// Desconto e Abatimento
			try
			{
				pstmt = DB.prepareStatement (sqlDiscount, null);
				pstmt.setInt (1, C_InvoicePaySchedule_ID);
				pstmt.setTimestamp (2, payment.getDateTrx());
				pstmt.setInt (3, C_InvoicePaySchedule_ID);
				pstmt.setInt (4, C_Invoice_ID);
				rs = pstmt.executeQuery ();
				if (rs.next ())
				{
					InvoiceOpenAmt = rs.getBigDecimal (3); // Set Invoice Open Amount
					if (InvoiceOpenAmt == null)
						InvoiceOpenAmt = Env.ZERO;
					
					InvoiceDiscountAmt = rs.getBigDecimal(4); // Set Invoice Discount Amount
					if (InvoiceOpenAmt == null)
						InvoiceOpenAmt = Env.ZERO;
					
				}
			}
			catch (SQLException e)
			{
				log.log (Level.SEVERE, sqlDiscount, e);
				return;
			}
			finally
			{
				DB.close (rs, pstmt);
				rs = null;
				pstmt = null;
			}

			payment.setDiscountAmt(InvoiceDiscountAmt);
			BigDecimal amtpay = payment.getPayAmt(true);
			
			if ( amtpay.add(InvoiceDiscountAmt).compareTo(InvoiceOpenAmt)!=0 ) {
				underOverAmt = InvoiceOpenAmt.subtract(InvoiceDiscountAmt).subtract(amtpay);
			}

			// IMPORTANTE: valores pagos a mais são negativos no campo underOverAmt
			//             por isso valor de multa e juros é invertido e
			//             também a lógica de comparação
			
			// soma juros e multa
			BigDecimal fineAndInterestAmt = penaltyAmt.add(interestAmt).negate();

			// obtém dados padrão de cobrança deste boleto
			MDocType dt = (MDocType) getLBR_Boleto().getC_DocType();
			MLBRCollectionDefault cd = new MLBRCollectionDefault(p_ctx, dt.get_ValueAsInt("LBR_Collection_Default_ID"), get_TrxName());

			// se foi escolhida prioridade para juros e multa
			// e o pagamento foi menor que o esperado
			// altera o valor maior/menor para fechar com
			// o total de juros e multa
			if ( underOverAmt.compareTo(fineAndInterestAmt)>0 
					&& cd.getLBR_PaymentAllocationPriority().endsWith("C")  ) {
				payment.setOverUnderAmt(fineAndInterestAmt);
				payment.setIsOverUnderPayment(true);

			} else if ( underOverAmt.compareTo(Env.ZERO)!=0 ){
				payment.setOverUnderAmt(underOverAmt);
				payment.setIsOverUnderPayment(true);
			}

		} // get Invoice Info		
	}

}
