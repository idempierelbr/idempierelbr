package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * C�digo adotato pela FEBRABAN para identificar o tipo de saldo informado
 * @author Richard Mendes Madureira
 * @see G084 
 *
 */
public enum NaturezaDoLancamento {
	DPV("DPV", "Tipo Disponível"),
	SCR("SCR", "Tipo Vinculado"),
	SSR("SSR", "Tipo Bloqueado"),
	CDS("CDS", "Composição de diversos Saldos");
	
	public static final int TAMANHO_NATUREZA_FORMA_LANCAMENTO = 3;
	private String sigla;
	private String descricao;
	
	private NaturezaDoLancamento(String sigla, String descricao){
		this.sigla = sigla;
		this.descricao = descricao;
	}
	
	public String getSigla(){
		return sigla;
	}
	
	public String getDescricao(){
		return descricao;
	}
	
	@Override
	public String toString() {
		return ArquivoUtils.getCampoAlfaNumerico(getSigla(), TAMANHO_NATUREZA_FORMA_LANCAMENTO);
	}
}