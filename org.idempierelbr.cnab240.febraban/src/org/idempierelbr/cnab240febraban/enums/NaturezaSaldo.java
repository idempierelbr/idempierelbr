package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * C�digo adotato pela FEBRABAN para identificar o tipo de saldo informado
 * @author Richard Mendes Madureira
 * @see F001
 *
 */
public enum NaturezaSaldo {
	DPV("DPV", "Disponível"),
	SCR("SCR", "Vinculado"),
	SSR("SSR", "Bloqueado"),
	SDS("SDS", "Somat�rio dos Saldos");
	
	public static final int TAMANHO_NATUREZA_SALDO_EM_CONTA_CORRENTE = 3;
	private String sigla;
	private String descricao;
	
	private NaturezaSaldo(String sigla, String descricao){
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
		return ArquivoUtils.getCampoAlfaNumerico(getSigla(), TAMANHO_NATUREZA_SALDO_EM_CONTA_CORRENTE);
	}
}
