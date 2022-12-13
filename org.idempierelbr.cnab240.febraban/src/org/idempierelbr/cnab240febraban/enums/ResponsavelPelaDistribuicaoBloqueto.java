package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * Código adotato pela FEBRABAN para identificar o responsável pela distribuição do bloqueto.
 * Ver: C010
 * @author Richard Mendes Madureira
 * @version 1.0
 */
public enum ResponsavelPelaDistribuicaoBloqueto {
	BANCO_DISTRIBUI(1, "Banco Distribui"),
	CLIENTE_DISTRIBUI(2, "Cliente Distribui"),
	BANCO_ENVIA_EMAIL(3, "Banco Envia Email"),
	BANCO_ENVIA_SMS(4, "Banco Envia SMS");
	
	public static final int TAMANHO_RESPONSAVEL_PELA_DISTRIBUICAO_BLOQUETO = 1;
	private int codigo;
	private String descricao;
	
	private ResponsavelPelaDistribuicaoBloqueto(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(),  TAMANHO_RESPONSAVEL_PELA_DISTRIBUICAO_BLOQUETO);
	}
}
