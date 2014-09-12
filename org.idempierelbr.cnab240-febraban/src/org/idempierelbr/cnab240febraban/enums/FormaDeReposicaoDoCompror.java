package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * Define a forma de reposição do compror
 * @author Richard Mendes Madureira
 * @see i007
 *
 */
public enum FormaDeReposicaoDoCompror {
	PARCELA_UNICA(1, "Parcela Única"),
	REPOSICAO_EM_PARCELAS(2, "Reposição em Parcelas"),
	ENCARGOS_ANTECIPADOS(3, "Encargos Antecipados"),
	CREDITO_ROTATIVO(4, "Crédito Rotativo");
	
	public static final int TAMANHO_FORMA_DE_REPOSICAO_DO_COMPROR = 1;
	private int codigo;
	private String descricao;
	
	private FormaDeReposicaoDoCompror(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_FORMA_DE_REPOSICAO_DO_COMPROR);
	}
}
