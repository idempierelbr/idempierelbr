package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * Código adotado pela FEBRABAN para identificar a existência material do documento no processo (C008)
 * @author Richard Mendes Madureira
 * @version 1.0
 *
 */
public enum TipoDocumento {
	TRADICIONAL (1, "Tradicional"),
	ESCRITURAL (2, "Escritural");
	
	public static final int TAMANHO_TIPO_DOCUMENTO = 1;
	private int codigo;
	private String descricao;
	
	private TipoDocumento(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_TIPO_DOCUMENTO);
	}
}
