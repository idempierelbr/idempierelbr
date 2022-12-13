package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * Código adotado pela FEBRABAN para determinar a composição do saldo de uma conta corrente, ou seja,
 * se o saldo está sujeito a estornos (parcial) ou não (final), ou se é ainda um saldo intra-dia
 * @author Richard Mendes Madureira
 * @see G082
 *
 */
public enum PosicaoDoSaldo {
	PARCIAL("P", "Parcial"),
	FINAL("F", "Final"),
	INTRA_DIA("I", "Intra-Dia");
	
	public static final int TAMANHO_POSICAO_DO_SALDO = 1;
	private String codigo;
	private String descricao;
	
	private PosicaoDoSaldo(String codigo, String descricao){
		this.codigo = codigo;
		this.descricao = descricao;
	}
	
	public String getCodigo(){
		return codigo;
	}
	
	public String getDescricao(){
		return descricao;
	}
	
	@Override
	public String toString() {
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_POSICAO_DO_SALDO);
	}
}
