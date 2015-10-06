package org.idempierelbr.nfe.process;
import java.math.BigDecimal;

import org.compiere.model.MPayment;

public class BeanPgtoNFCe {
	private String pgtoNome;
	private BigDecimal pgtoValor;
	
	public BeanPgtoNFCe() {
	}
	
	public BeanPgtoNFCe(String pgtoNome, BigDecimal pgtoValor) {
		super();
		this.pgtoNome = pgtoNome;
		this.pgtoValor = pgtoValor;
	}
	
	public BeanPgtoNFCe(MPayment mPayment){
		// Valor pagamento
		
		this.pgtoValor = mPayment.getPayAmt();
		
		// Determina forma de pagamento:
		String tenderType = mPayment.getTenderType();
		if(tenderType.equals(MPayment.TENDERTYPE_Check)){
			this.pgtoNome = "Cheque";
		}else if(tenderType.equals(MPayment.TENDERTYPE_DirectDebit) || tenderType.equals(MPayment.TENDERTYPE_Cash)){
			this.pgtoNome = "Dinheiro";
		}else if(tenderType.equals(MPayment.TENDERTYPE_CreditCard)){
			
			
			/*
			 * Lançar cartão crédito ou débito de acordo com a informação proveniente do TEF
			 * Se o dado não estiver disponível, considera "Cartão de crédito", já que é a opção mais genérica
			 */
			
//			if(wMPayment.getFRK_ModalidadeCartao() == null || wMPayment.getFRK_ModalidadeCartao().isEmpty() ){
//				this.pgtoNome = "Cartão de Crédito/Débito";
//			}else{
//				if(wMPayment.getFRK_ModalidadeCartao().equals("01")){
//					this.pgtoNome = "Cartão de Débito";
//				} else {
					this.pgtoNome = "Cartão de Crédito";
//				}
//			}

		} else {
			this.pgtoNome = "Outros";
		}
	}

	public String getPgtoNome() {
		return pgtoNome;
	}
	public void setPgtoNome(String pgtoNome) {
		this.pgtoNome = pgtoNome;
	}
	public BigDecimal getPgtoValor() {
		return pgtoValor;
	}
	public void setPgtoValor(BigDecimal pgtoValor) {
		this.pgtoValor = pgtoValor;
	}
	
	
}
