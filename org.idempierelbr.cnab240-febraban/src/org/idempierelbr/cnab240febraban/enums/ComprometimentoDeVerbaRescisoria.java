package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

public enum ComprometimentoDeVerbaRescisoria {
	SIM(1, "Sim"),
	NAO(2, "Não");
	
	public static final int TAMANHO_COMPROMETIMENTO_DE_VERBA_RESCISORIA = 1;
	private int codigo;
	private String descricao;
	
	private ComprometimentoDeVerbaRescisoria(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_COMPROMETIMENTO_DE_VERBA_RESCISORIA);
	}
}
