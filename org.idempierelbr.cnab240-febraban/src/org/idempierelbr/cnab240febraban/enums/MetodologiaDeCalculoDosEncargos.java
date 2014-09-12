package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * Define a metodologia de cálculo dos encargos financeiros
 * @author Richard Mendes Madureira
 * @see I008
 *
 */
public enum MetodologiaDeCalculoDosEncargos {
	PRICE(1, "PRICE"),
	SAC(2, "SAC"),
	AMERICANO(3, "Americano"),
	PARCELA_UNICA(4, "Parcela Única");
	
	public static final int TAMANHO_METODOLOGIA_DE_CALCULO_DOS_ENCARGOS = 1;
	private int codigo;
	private String descricao;
	
	private MetodologiaDeCalculoDosEncargos(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_METODOLOGIA_DE_CALCULO_DOS_ENCARGOS);
	}
}
