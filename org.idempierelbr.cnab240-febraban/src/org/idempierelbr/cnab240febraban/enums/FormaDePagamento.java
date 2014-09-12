package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * C�digo adotado pela FEBRABAN para identificar a maneira pela qual o financiamento será quitado
 * @author Richard Mendes Madureira
 * @see I015
 *
 */
public enum FormaDePagamento {
	BLOQUETO(0, "Bloqueto"),
	DEBITO_CONTA_CORRENTE_COMPRADOR(1, "Débito em C/C Comprador");
	
	public static final int TAMANHO_FORMA_DE_PAGAMENTO = 1;
	private int codigo;
	private String descricao;
	
	private FormaDePagamento(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_FORMA_DE_PAGAMENTO);
	}
}
