package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * 
 * @author richard
 * @see N019
 * 
 */
public enum OpcaoDePagamento {
	PARCELA_UNICA_COM_DESCONTO(1, "Parcela Única com Desconto"),
	PARCELA_UNICA_SEM_DESCONTO(2, "Parcela Única sem Desconto"),
	PARCELA_N1(3, "Parcela Número 1"),
	PARCELA_N2(4, "Parcela Número 2"),
	PARCELA_N3(5, "Parcela Número 3"),
	PARCELA_N4(6, "Parcela Número 4"),
	PARCELA_N5(7, "Parcela Número 5"),
	PARCELA_N6(8, "Parcela Número 6");
	
	private static final int TAMANHO_OPCAO_DE_PAGAMENTO = 1;
	private int codigo;
	private String descricao;
	
	private OpcaoDePagamento(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_OPCAO_DE_PAGAMENTO);
	}
}
