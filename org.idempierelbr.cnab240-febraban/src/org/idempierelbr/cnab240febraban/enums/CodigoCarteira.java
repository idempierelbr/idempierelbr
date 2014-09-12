package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * Codigo adotado pela FEBRABAN, para identificar a caracter�tica dos t�tulos dentro das modalidades de Cobran�a existentes no banco 
 * @author Richard Mendes Madureira
 * @version 1.0
 */
public enum CodigoCarteira {
	COBRANCA_SIMPLES(1, "Cobran�a Simples"),
	COBRANCA_VINCULADA(2, "Cobran�a Vinculada"),
	COBRANCA_CAUCIONADA(3, "Cobran�a Caucionada"),
	COBRANCA_DESCONTADA(4, "Cobran�a Descontada"),
	COBRANCA_VENDOR(5, "Cobran�a Vendor");
	
	private int codigo;
	private String descricao;
	private static final int TAMANHO_CODIGO_CARTEIRA = 2;

	private CodigoCarteira(int codigo, String descricao) {
		this.codigo = codigo;
		this.descricao = descricao;
	}

	public int getCodigo() {
		return codigo;
	}

	public String getDescricao() {
		return descricao;
	}

	@Override
	public String toString() {
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_CODIGO_CARTEIRA);
	}

}