package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * C�digo adotado pela FEBRABAN para identificar a maneira pela qual o financiamento será quitado
 * @author Richard Mendes Madureira
 * @see I015
 *
 */
public enum FormaDePagamento2 {
	DEBITO_CONTA_CORRENTE(1, "Débito em Conta Corrente"),
	DEBITO_EMPRESTIMO_FINANCIAMENTO(2, "Débito Empréstimo/Financiamento"),
	DEBITO_CARTAO_DE_CREDITO(3, "Débito Cartão de Crédito");
	
	public static final int TAMANHO_FORMA_DE_PAGAMENTO2 = 2;
	private int codigo;
	private String descricao;
	
	private FormaDePagamento2(int codigo, String descricao){
		this.codigo = codigo;
		this.descricao = descricao;
	}
	
	public int getCodigo(){
		return codigo;
	}
	
	public String getDescricao(){
		return descricao;
	}
	
	@Override
	public String toString() {
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_FORMA_DE_PAGAMENTO2);
	}
}
