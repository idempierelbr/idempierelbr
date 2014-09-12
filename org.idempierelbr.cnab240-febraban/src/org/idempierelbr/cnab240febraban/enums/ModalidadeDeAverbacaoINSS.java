package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * Indica a modalidade de averbação
 * @author Richard Mendes Madureira
 * @see H041
 *
 */
public enum ModalidadeDeAverbacaoINSS {
	CONSIGNADO(1, "Consignado (Descontado pelo INSS"),
	VINCULADO(2, "Vinculado (retenção pela Instituição Financeira"),
	CAMPO_EXCLUSIVO_INSS(3, "Obs.: Campo exclusivo para o INSS");
	
	public static final int TAMANHO_MODALIDADE_DE_AVERBACAO_INSS = 1;
	private int codigo;
	private String descricao;
	
	private ModalidadeDeAverbacaoINSS(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_MODALIDADE_DE_AVERBACAO_INSS);
	}
}
