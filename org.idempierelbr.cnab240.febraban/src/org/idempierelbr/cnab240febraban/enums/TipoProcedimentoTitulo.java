package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * Código adotato pela FEBRABAN para identificar qual o procedimento a ser adotado com o Título
 * @author Richard Mendes Madureira
 * @see C028
 *
 */
public enum TipoProcedimentoTitulo {
	BAIXAR_DEVOLVER(1, "Baixar/Devolver"),
	NAO_BAIXAR_NAO_DEVOLVER(2, "Não Baixar/Não Devolver"),
	CANCELAR_PRAZO_BAIXA_DEVOLUCAO(3, "Cancelar Prazo para Baixa/Devolução");
	
	private static final int TAMANHO_TIPO_PROCEDIMENTO_TITULO = 1;
	private int codigo;
	private String descricao;
	
	private TipoProcedimentoTitulo(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_TIPO_PROCEDIMENTO_TITULO);
	}
	
}
