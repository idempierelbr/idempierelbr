package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * Codigo adotado pela FEBRABAN para identificar a situação funcional do cliente
 * @author Richard Mendes Madureira
 * @see G031
 *
 */
public enum SituacaoFuncional {
	ATIVO(1, "Ativo"),
	PENSAO_ALIMENTICIA_ATIVO(2, "Pensão Alimentícia Ativo"),
	APOSENTADO(3, "Aposentado"),
	PENSAO_ALIMENTICIA_APOSENTADO(4, "Pensão Alimentícia Aposentado"),
	PENSIONISTA(5, "Pensionista"),
	PENSAO_ALIMENTICIA_PENSIONISTA(6, "Pensão Alimentícia Pensionista");
	
	public static final int TAMANHO_SITUACAO_FUNCIONAL = 1;
	private int codigo;
	private String descricao;
	
	private SituacaoFuncional(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_SITUACAO_FUNCIONAL);
	}
}
