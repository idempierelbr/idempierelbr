package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * Código que indica a situação sindical do Mutuário
 * @author Richard Mendes Madureira
 * @see H010
 *
 */
public enum SituacaoSindicalDoMutuario {
	SINDICALIZADO(1, "Sindicalizado"),
	NAO_SINDICALIZADO(2, "No Sindicalizado");
	
	public static final int TAMANHO_SITUACAO_SINDICAL_DO_MUTUARIO = 1;
	private int codigo;
	private String descricao;
	
	private SituacaoSindicalDoMutuario(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_SITUACAO_SINDICAL_DO_MUTUARIO);
	}
}
