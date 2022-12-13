package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

public enum IdentificadorDoTributo {
	FGTS(1, "FGTS");
	
	private static final int TAMANHO_IDENTIFICADOR_DO_TRIBUTO = 2;
	private int codigo;
	private String descricao;
	
	private IdentificadorDoTributo(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_IDENTIFICADOR_DO_TRIBUTO);
	}
}
