package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * Código adotado pela FEBRABAN para identificar a transação que será realizada com os registros detalhe do lote
 * @author Richard Mendes Madureira
 * @see G028
 *
 */
public enum TipoOperacao {
	LANCAMENTO_A_CREDITO("C", "Lançamento a Crédito"),
	LANCAMENTO_A_DEBITO("D", "Lançamento a Débito"),
	EXTRATO_PARA_CONCILIACAO("E", "Extrato para Conciliação"),
	EXTRATO_PARA_GESTAO_DE_CAIXA("G", "Extrato para gestão de caixa"),
	INFORMACOES_DE_TITULOS_CAPTURADOS_DO_PROPRIO_BANCO("I", "Informações de Títulos capturados do prório banco"),
	ARQUIVO_REMESSA("R", "Arquivo de Remessa"),
	ARQUIVO_RETORNO("T", "Arquivo de Retorno");
	
	public static final int TAMANHO_TIPO_OPERACAO = 1;
	private String codigo;
	private String descricao;

	private TipoOperacao(String codigo, String descricao) {
		this.codigo = codigo;
		this.descricao = descricao;
	}

	public String getCodigo() {
		return codigo;
	}

	public String getDescricao() {
		return descricao;
	}
	
	@Override
	public String toString() {
		return ArquivoUtils.getCampoAlfaNumerico(getCodigo(), TAMANHO_TIPO_OPERACAO);
	}
}
