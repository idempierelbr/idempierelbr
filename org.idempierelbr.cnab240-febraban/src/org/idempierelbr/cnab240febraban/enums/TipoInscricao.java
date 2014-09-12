package org.idempierelbr.cnab240febraban.enums;

public enum TipoInscricao {
	ISENTO(0, "Isento"),
	CPF(1, "CPF"),
	CGC_CNPJ(2, "CGC/CNPJ"),
	PIS_PASEP(3, "PIS/PASEP"),
	OUTROS(9, "OUTROS");
	
	private int codigo;
	private String descricao;
	
	private TipoInscricao(int codigo, String descricao){
		this.codigo = codigo;
		this.descricao = descricao;
	}
	
	public int getCodigo(){
		return codigo;
	}
	
	public String getDescricao(){
		return descricao;
	}
}
