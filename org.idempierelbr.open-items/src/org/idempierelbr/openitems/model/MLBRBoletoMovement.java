package org.idempierelbr.openitems.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MBank;
import org.compiere.model.MBankAccount;
import org.compiere.model.MInvoice;
import org.compiere.model.MPayment;
import org.compiere.process.DocAction;
import org.compiere.util.CLogger;
import org.compiere.util.CPreparedStatement;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.idempierelbr.cnab240.annotated.CNABSegmentTRecord;
import org.idempierelbr.core.util.AdempiereLBR;

public class MLBRBoletoMovement extends X_LBR_BoletoMovement {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2081329273070797159L;
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(MLBRBoletoMovement.class);
	private MBankAccount bankAccount = null;

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
		
		if ( (invoice != null) && (invoice.getDocStatus()).equals("CO")){
			if (!invoice.isPaid()){
	
				MPayment Payment = new MPayment(getCtx(), 0, get_TrxName());
				
				Integer C_BankAccount_ID;
				
				if (getBankAccount()!=null)
					C_BankAccount_ID = getBankAccount().getC_BankAccount_ID();
				else
					C_BankAccount_ID = boleto.getC_BankAccount_ID();
	
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
				
				// Valor de Acréscimos (juro e multa)
				if (getInterestAmt() == null)
					setInterestAmt(Env.ZERO);
				Payment.set_ValueOfColumn("InterestAmt", getInterestAmt());
				
				// Valor do Abatimento
				if (getWriteOffAmt() == null)
					setWriteOffAmt(Env.ZERO);					
				Payment.setWriteOffAmt(getWriteOffAmt());
				
				// Valor do Desconto
				if (getDiscountAmt() == null)
					setDiscountAmt(Env.ZERO);	
				Payment.setDiscountAmt(getDiscountAmt());
				
				// Valor do Pagamento
				Payment.setPayAmt(getPayAmt().subtract(getWriteOffAmt()).subtract(getDiscountAmt())); 	// Valor Pago
				//
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

	public MBankAccount getBankAccount() {
		return bankAccount;
	}

	private void setBankAccount(MBankAccount bankAccount) {
		this.bankAccount = bankAccount;
	}

	public void detectBankAccount(CNABSegmentTRecord segT, String routingNo) {
		String agencyDV = segT.getDvAgenciaCedente(); 
		String agencyWithDV = String.format( "%d-%s", segT.getAgenciaCedente(), agencyDV!=null?agencyDV:"0" );
		String agency = String.format("%d", segT.getAgenciaCedente());
		
		String accountDV = segT.getDvContaCedente();
		String accountWithDV = String.format( "%d-%s", segT.getContaCedente(), accountDV!=null?accountDV:"0" );
		String account = String.format("%d", segT.getContaCedente());
		
		String query = "SELECT ba.C_BankAccount_ID FROM C_BankAccount ba "
				+ " JOIN C_Bank b ON ba.C_Bank_ID=b.C_Bank_ID "
				+ " WHERE ba.AD_Client_ID=?" // #1
				+ "   AND b.isActive='Y' AND ba.isActive='Y'"
				+ "   AND b.RoutingNo=? " // # 2
				+ "   AND TRIM(LTRIM(LBR_BankAgencyNo,'0')) IN(?,?)" // #3 #4
				+ "   AND TRIM(LTRIM(AccountNo,'0')) IN (?,?)"; // #5 #6
		
		CPreparedStatement pstmt = DB.prepareStatement (query, null);

		ResultSet rs = null;
		Integer C_BankAccount_ID = null;
		
		try {
			pstmt.setInt(1, this.getAD_Client_ID());
			pstmt.setString(2, routingNo);
			pstmt.setString(3, agencyWithDV);
			pstmt.setString(4, agency);
			pstmt.setString(5, accountWithDV);
			pstmt.setString(6, account);
			rs = pstmt.executeQuery ();

			if (rs.next())
				C_BankAccount_ID = rs.getInt(1);
			
		} catch (SQLException e) {
			throw new AdempiereException("Erro ao tentar identificar conta bancária",e);
		} finally {
			DB.close(rs, pstmt);
			rs = null; pstmt = null;
		}
		
		if (C_BankAccount_ID != null)
			setBankAccount(new MBankAccount(getCtx(), C_BankAccount_ID, get_TrxName()));				
	}

	/**
	 * 
	 * Cria e inicializa um movimento de cobrança para um boleto
	 * 
	 * @param ctx Contexto
	 * @param boleto Boleto que receberá o movimento
	 * @param cobMovCode Código do movimento de remessa (Manual Febraban C004)
	 * @param trxName Nome da transação no banco
	 * @return
	 */
	public static MLBRBoletoMovement createNewMovement( Properties ctx, MLBRBoleto boleto, String cobMovCode, String trxName ) {
		MLBRBoletoMovement newMov = new MLBRBoletoMovement( ctx , 0 , trxName);
		newMov.setAD_Org_ID(boleto.getAD_Org_ID());
		newMov.setLBR_Boleto_ID(boleto.get_ID());
		newMov.setLBR_CNAB240MovementType(MLBRBoletoMovement.LBR_CNAB240MOVEMENTTYPE_1_RemessaCliente_GtBanco);
		MLBRCobMovimento cobMov = MLBRCobMovimento.getMovimento(ctx, cobMovCode, MLBRBoletoMovement.LBR_CNAB240MOVEMENTTYPE_1_RemessaCliente_GtBanco, (MBank) boleto.getC_Bank(), trxName);
		newMov.setLBR_Cob_Movimento_ID(cobMov.get_ID());
		return newMov;
	}

}
