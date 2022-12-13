package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * Código adotado pela FEBRABAN para identificar qual o valor informado para rateio de crédito
 * @author Richard Mendes Madureira
 * @see C026
 *
 */
public enum TipoDeValor {
	PERCENTUAL(1, "Percentual (%)"),
	VALOR_OU_QUANTIDADE(2, "Valor ou Quantidade");
	
	public static final int TAMANHO_TIPO_VALOR = 1;
	private int codigo;
	private String descricao;
	
	private TipoDeValor(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_TIPO_VALOR);
	}
}
