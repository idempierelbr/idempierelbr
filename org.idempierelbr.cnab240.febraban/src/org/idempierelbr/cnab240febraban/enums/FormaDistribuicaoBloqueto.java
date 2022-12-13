package org.idempierelbr.cnab240febraban.enums;

public enum FormaDistribuicaoBloqueto {
	BANCO_DISTRIBUI (1, "Banco Distribui"),
	CLIENTE_DISTRIBUI (2, "Cliente Distribui"),
	BANCO_ENVIA_EMAIL (3, "Banco Envia e-mail"),
	BANCO_ENVIA_SMS (4, "Banco Envia SMS");
	
	private int codigo;
	private String descricao;

	private FormaDistribuicaoBloqueto(int codigo, String descricao) {
		this.codigo = codigo;
		this.descricao = descricao;
	}

	public int getCodigo() {
		return codigo;
	}

	public String getDescricao() {
		return descricao;
	}
}
