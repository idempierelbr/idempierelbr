package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * C�digo adotado pela FEBRABAN para identificar a finalidade do movimento de cheques (Cust�tia/Dep�sito à Vista)
 * @author Richard Mendes Madureira
 * @see K003
 *
 */
public enum FinalidadeMovimento {
	CHEQUE_A_VISTA(0, "Cheque à Vista"),
	CUSTODIA_SIMPLES(1, "Cust�dia Simples"),
	CARTEIRA_DESCONTADA(2, "Carteira Descontada"),
	CARTEIRA_CAUCIONADA(3, "Carteira Caucionada"),
	CARTEIRA_VINCULADA(4, "Carteira Vinculada");
	
	public static final int TAMANHO_FINALIDADE_MOVIMENTO = 2;
	private int codigo;
	private String descricao;
	
	private FinalidadeMovimento(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_FINALIDADE_MOVIMENTO);
	}
}
