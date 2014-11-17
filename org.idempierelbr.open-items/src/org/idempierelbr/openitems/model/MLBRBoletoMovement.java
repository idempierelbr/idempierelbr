package org.idempierelbr.openitems.model;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.model.MInvoice;
import org.compiere.model.MInvoicePaySchedule;
import org.compiere.model.MPayment;
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
					if(Payment.getDocStatus().equals(DocAction.STATUS_Completed) && boleto.save(get_TrxName()))
						returnMsg = "Pagamento Realizado";
					else 
						returnMsg = "Erro ao Efetuar o Pagamento";
	
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
		
		if (C_Invoice_ID != 0)
		{
			String sql = "SELECT C_BPartner_ID,C_Currency_ID," // 1..2
				+ " invoiceOpen(C_Invoice_ID,?)," // 3 #1
				+ " invoiceDiscount(C_Invoice_ID,?,?), IsSOTrx " // 4..5 #2/3
				+ "FROM C_Invoice WHERE C_Invoice_ID=?"; // #4
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try
			{
				pstmt = DB.prepareStatement (sql, null);
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
				
				payment.setDiscountAmt(InvoiceDiscountAmt);
				BigDecimal amtpay = payment.getPayAmt(true);
				
				if ( ! amtpay.add(InvoiceDiscountAmt).equals(InvoiceOpenAmt) ) {
					payment.setIsOverUnderPayment(true);
					payment.setOverUnderAmt(InvoiceOpenAmt.subtract(InvoiceDiscountAmt).subtract(amtpay));
				}
				
			}
			catch (SQLException e)
			{
				log.log (Level.SEVERE, sql, e);
				return;
			}
			finally
			{
				DB.close (rs, pstmt);
				rs = null;
				pstmt = null;
			}			
		} // get Invoice Info		
	}

}
