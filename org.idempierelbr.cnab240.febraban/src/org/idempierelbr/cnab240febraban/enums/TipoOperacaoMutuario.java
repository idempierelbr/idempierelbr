package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

public enum TipoOperacaoMutuario {
	FINANCIAMENTO(1, "Financiamento"),
	EMPRESTIMO(2, "Empréstimo"),
	ARRENDAMENTO_MERCANTIL(3, "Arrendamento Mercantil"),
	OUTROS(4, "Outros"),
	EMPRESTIMO_VIAJE_MAIS(5, "Empréstimo Viaje Mais");
	
	public static final int TAMANHO_TIPO_OPERACAO_MUTUARIO = 1;
	private int codigo;
	private String descricao;

	private TipoOperacaoMutuario(int codigo, String descricao) {
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_TIPO_OPERACAO_MUTUARIO);
	}
}
