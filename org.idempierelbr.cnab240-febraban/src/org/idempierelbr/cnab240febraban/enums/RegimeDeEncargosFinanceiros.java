package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * Define o regime de rencargos financeiros
 * @author Richard Mendes Madureira
 * @see I003
 *
 */
public enum RegimeDeEncargosFinanceiros {
	PRE_FIXADO(1, "Pré-Fixado"),
	POS_FIXADO(2, "Pós Fixado");
	
	public static final int TAMANHO_REGIME_DE_ENCARGOS_FINANCEIROS = 1;
	private int codigo;
	private String descricao;
	
	private RegimeDeEncargosFinanceiros(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_REGIME_DE_ENCARGOS_FINANCEIROS);
	}
	
}
