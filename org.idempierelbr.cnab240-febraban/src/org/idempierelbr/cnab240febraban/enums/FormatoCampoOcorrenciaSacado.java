package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * C�digo adotado pela FEBRABAN para identificar o formato do campo de ocorrência do Sacado
 * @author Richard Mendes Madureira
 * @see G062
 *
 */
public enum FormatoCampoOcorrenciaSacado {
	FORMATO_LIVRE(1, "Formato Livre"),
	FORMATO_OCORRENCIA(2, "Formato Ocorrência");
	
	public static final int TAMANHO_FORMATO_CAMPO_OCORRENCIA_SACADO = 2;
	private int codigo;
	private String descricao;
	
	private FormatoCampoOcorrenciaSacado(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_FORMATO_CAMPO_OCORRENCIA_SACADO);
	}
}
