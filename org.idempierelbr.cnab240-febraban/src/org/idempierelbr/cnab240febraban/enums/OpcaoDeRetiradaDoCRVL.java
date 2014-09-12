package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

public enum OpcaoDeRetiradaDoCRVL {
	CORREIO(1, "Correio"),
	DETRAN_CIRETRAN(2, "DETRAN/CIRETRAN");
	
	private static final int TAMANHO_OPCAO_DE_RETIRADA_DO_CRVL = 1;
	private int codigo;
	private String descricao;
	
	private OpcaoDeRetiradaDoCRVL(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_OPCAO_DE_RETIRADA_DO_CRVL);
	}
}
