package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * C�digo adotado pela FEBRABAN para identificação de Lançamentos desobrigados de recolhimento de CPMF
 * @author Richard Mendes Madureira
 * @see G086
 *
 */
public enum IdentificacaoDeIsencaoDoCPMF {
	ISENTO("I", "Isento"),
	NAO_ISENTO("N", "Não Isento");
	
	public static final int TAMANHO_IDENTIFICACAO_DE_ISENCAO_DO_CPMF = 1;
	private String codigo;
	private String descricao;
	
	private IdentificacaoDeIsencaoDoCPMF(String codigo, String descricao){
		this.codigo = codigo;
		this.descricao = descricao;
	}
	
	public String getCodigo(){
		return codigo;
	}
	
	public String getDescricao(){
		return descricao;
	}
	
	@Override
	public String toString() {
		return ArquivoUtils.getCampoAlfaNumerico(getCodigo(), TAMANHO_IDENTIFICACAO_DE_ISENCAO_DO_CPMF);
	}
	
}
