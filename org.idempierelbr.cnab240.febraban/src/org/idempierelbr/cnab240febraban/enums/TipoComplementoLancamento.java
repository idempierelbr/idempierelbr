package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * Código adotado pela FEBRABAN para identificar a padronização a ser utilizada no complemento
 * @author Richard Mendes Madureira
 * @see G085
 *
 */
public enum TipoComplementoLancamento {
	SEM_INFORMACAO_DO_COMPLEMENTO_DO_LANCAMENTO(0, "Sem informação do Complemento do Lançamento"),
	IDENTIFICACAO_DA_ORIGEM_DO_LANCAMENTO(1, "Identificação da Origem do Lançamento");
	
	public static final int TAMANHO_TIPO_COMPLEMENTO_LANCAMENTO = 1;
	private int codigo;
	private String descricao;
	
	private TipoComplementoLancamento(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_TIPO_COMPLEMENTO_LANCAMENTO);
	}
}
