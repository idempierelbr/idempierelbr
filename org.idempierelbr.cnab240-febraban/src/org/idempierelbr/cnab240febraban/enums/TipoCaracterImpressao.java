package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * Código adotado pela FEBRABAN para identificação do tipo de fonte a ser utilizada na impressão de mensagens no título de cobrança
 * @author Richard Mendes Madureira
 * @see C034
 *
 */
public enum TipoCaracterImpressao {
	NORMAL(1, "Normal"),
	ITALICO(2, "Itálico"),
	NORMAL_NEGRITO(3, "Normal Negrito"),
	ITALICO_NEGRITO(4, "Itálico Negrito");
	
	public static final int TAMANHO_TIPO_CARACTER_IMPRESSAO = 2;
	private int codigo;
	private String descricao;
	
	private TipoCaracterImpressao(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_TIPO_CARACTER_IMPRESSAO);
	}
	
}
