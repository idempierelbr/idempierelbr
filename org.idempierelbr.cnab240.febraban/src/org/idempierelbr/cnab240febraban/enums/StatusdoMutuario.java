package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * Código adotado pela FEBRABAN para identificar o status de informações sobre o mutuário
 * @author Richard Mendes Madureira
 * @see H008 pagina 181
 *
 */
public enum StatusdoMutuario {
	ATIVO(1, "Ativo"),
	INATIVO(2, "Inativo"),
	PENSIONISTA(3, "Pensionista");
	
	public static final int TAMANHO_STATUS_DO_MUTUARIO = 1;
	private int codigo;
	private String descricao;
	
	private StatusdoMutuario(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_STATUS_DO_MUTUARIO);
	}
}
