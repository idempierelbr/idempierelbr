package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * C�digo utilizado para identificar a central sindical
 * @author Richard Mendes Madureira
 * @see H014
 */
public enum CentralSindical {
	CUT(1, "CUT"),
	CGT(2, "CGT"),
	FORCA_SINDICAL(3, "Força Sindical"),
	OUTROS(4, "Outros");
	
	public static final int TAMANHO_CENTRAL_SINDICAL = 1;
	private int codigo;
	private String descricao;
	
	private CentralSindical(int codigo, String descricao){
		this.codigo = codigo;
		this.descricao = descricao;
	}
	
	public int getCodigo(){
		return codigo;
	}
	
	public String getDecricao(){
		return descricao;
	}
	
	@Override
	public String toString() {
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_CENTRAL_SINDICAL);
	}
}
