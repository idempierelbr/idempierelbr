package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * Considerar todos os tipos de Identificação possíveis
 * @author Richard Mendes Madureira
 * @see N003
 *
 */
public enum TipoDeIdentificacaoDoContribuinte {
	CNPJ(1, "CNPJ"),
	CPF(2, "CPF"),
	NIT_PIS_PASEP(3, "NIT/PIS/PASEP"),
	CEI(4, "CEI"),
	NB(5, "NB"),
	NUMERO_DO_TITULO(7, "Número do Título"),
	DEBCAD(8, "DEBCAD"),
	REFERENCIA(9, "Referência");
	
	public static final int TAMANHO_TIPO_DE_IDENTIFICACAO_DO_CONTRIBUINTE = 1;
	private int codigo;
	private String descricao;
	
	private TipoDeIdentificacaoDoContribuinte(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_TIPO_DE_IDENTIFICACAO_DO_CONTRIBUINTE);
	}
}
