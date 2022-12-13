package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * Código adotado pela FEBRABAN para qualificar se o envio ou devolução de arquivo entre a Empresa Cliente e o Banco Prestador de Serviços
 * @author Richard Mendes Madureira
 * @see G015
 *
 */
public enum TipoEnvio {
	REMESSA(1, "Remessa (Cliente -> Banco)"),
	RETORNO(2, "Retorno (Banco -> Cliente"),
	REMESSA_OU_RETORNO(3, "Remessa ou Retorno");
	
	public static final int TAMANHO_TIPO_ENVIO = 1;
	private int codigo;
	private String descricao;
	
	private TipoEnvio(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_TIPO_ENVIO);
	}
}
