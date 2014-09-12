package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * Código adotado pela FEBRABAN para identificar o tipo de movimentação enviada no arquivo
 * @author Richard Mendes Madureira
 * @see G060
 *
 */
public enum TipodeMovimento {
	INCLUSAO(0, "Inclusão"),
	CONSULTA(1, "Consulta"),
	ESTORNO(2, "Estorno"),
	ALTERACAO(3, "Alteração"),
	LIQUIDACAO(4, "Liquidação"),
	EXCLUSAO(5, "Exclusão");
	
	public static final int TAMANHO_TIPO_MOVIMENTO = 1;
	private int codigo;
	private String descricao;
	
	private TipodeMovimento(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_TIPO_MOVIMENTO);
	}
}
