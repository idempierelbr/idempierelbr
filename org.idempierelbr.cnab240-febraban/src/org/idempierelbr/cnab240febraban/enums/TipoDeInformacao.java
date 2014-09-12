package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

public enum TipoDeInformacao {
	PARA_USO_DA_EMPRESA(1, "Para Uso da Empresa"),
	PARA_EMISSAO_NA_GUIDA_DO_TRIBUTO(2, "Para emissão na guia do Tributo "),
	PARA_USO_DA_INFORMACAO_COMPLEMENTAR_DO_TRIBUTO(9, "Para Uso da Informação Complementar do Tributo");
	
	private static final int TAMANHO_TIPO_DE_INFORMACAO = 1;
	private int codigo;
	private String descricao;
	
	private TipoDeInformacao(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_TIPO_DE_INFORMACAO);
	}
}
