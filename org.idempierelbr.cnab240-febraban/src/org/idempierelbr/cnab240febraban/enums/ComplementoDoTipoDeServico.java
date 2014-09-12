package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * C�digo adotado pela FEBRABAN para identificação da finalidade do DOC (Documento de Ordem de Crédito)
 * @author Richard Mendes Madureira
 * @see D006 e P005
 *
 */
public enum ComplementoDoTipoDeServico {
	CREDITO_EM_CONTA(1, "Crédito em Conta"),
	PAGAMENTO_DE_ALUGUEL_OU_CONDOMINIO(2, "Pagamento de Aluguel/Condomínio"),
	PAGAMENTO_DE_DUPLICATA_OU_TITULOS(3, "Pagamento de Duplicata/Títulos"),
	PAGAMENTO_DE_DIVIDENDOS(4, "Pagamento de Dividendos"),
	PAGAMENTO_DE_MENSALIDADE_ESCOLAR(5, "Pagamento de Mensalidade Escolar"),
	PAGAMENTO_DE_SALARIOS(6, "Pagamento de Salários"),
	PAGAMENTO_DE_FORNECEDORES_OU_HONORARIOS(7, "Pagamento de Fornecedores/Honrários"),
	OPERACOES_DE_CAMBIOS_FUNDOS_OU_BOLSA_DE_VALORES(8, "Operações de Cambios/Fundos/Bolsa de Valores"),
	REPASSE_DE_ARRECADACAO_OU_PAGAMENTO_DE_TRIBUTOS(9, "Repasse de Arrecadação/Pagamento de Tributos"),
	TRANSFERENCIA_INTERNACIONAL_EM_REAL(10, "Transferência Internacional em Real"),
	DOC_PARA_POUPANCA(11, "DOC para Poupança"),
	DOC_PARA_DEPOSITO_JUDICIAL(12, "DOC para Dep�sito Judicial"),
	OUTROS(13, "Outros"),
	PAGAMENTO_DE_BOLSA_AUXILIO(16, "Pagamento de Bolsa Auxílio"),
	REMUNERACAO_A_COOPERADO(17, "Remuneração a Cooperado"),
	PAGAMENTO_DE_HONORARIOS(18, "Pagamento de Honorários"),
	PAGAMENTO_DE_PREBENDA(19, "Pagamento de Prebenda (Remuneração a padres e sacerdotes)");
	
	public static final int TAMANHO_COMPLEMENTO_DO_TIPO_DE_SERVICO = 2;
	private int codigo;
	private String descricao;
	
	private ComplementoDoTipoDeServico(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_COMPLEMENTO_DO_TIPO_DE_SERVICO);
	}
}
