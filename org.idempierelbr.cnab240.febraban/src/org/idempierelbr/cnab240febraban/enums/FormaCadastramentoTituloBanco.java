package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

public enum FormaCadastramentoTituloBanco {
	COBRANCA_REGISTRADA(1, "Com Cadastramento (Cobrança Registrada"),
	COBRANCA_SEM_REGISTRO(2, "Sem Cadastramento (Cobrança sem Registro)"), /* somente para emissão de bloqueto pelo banco */
	RECUSA_DO_DEBITO_AUTOMATICO(3, "Com Cadastramento / Recusa do Débito Automático");
	
	private static final int TAMANHO_FORMA_CADASTRAMENTO_TITULO_BANCO = 1;
	private int codigo;
	private String descricao;
	
	private FormaCadastramentoTituloBanco(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_FORMA_CADASTRAMENTO_TITULO_BANCO);
	}
}
