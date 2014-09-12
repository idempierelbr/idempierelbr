package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * C�digo adotado pela FEBRABAN para identificar qual Câmera de Centralizadora será responśavel pelo processamento dos pagamentos
 * @author Richard Mendes Madureira
 * @see P001
 *
 */
public enum CameraCentralizadora {
	TED(18, "TED(STR,CIP"),
	DOC(700, "DOC (COMPE)");
	
	public static final int TAMANHO_CAMERA_CENTRALIZADORA = 3;
	private int codigo;
	private String descricao;
	
	private CameraCentralizadora(int codigo, String descricao){
		this.codigo = codigo;
		this.descricao = descricao;
	}
	
	public int getcodigo(){
		return codigo;
	}
	
	public String getDescricao(){
		return descricao;
	}
	
	@Override
	public String toString() {
		return ArquivoUtils.getCampoNumerico(getcodigo(), TAMANHO_CAMERA_CENTRALIZADORA);
	}
}
