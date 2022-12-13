package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * C�digo adotado pela FEBRABAN para identificar a categoria padrão do Lançamento para conciliação entre Bancos
 * @author Richard Mendes Madureira
 * @see G092
 *
 */
public enum CategoriaLancamento {
	//DEBITOS
	DEBITO_CHEQUES(101, "Cheque"),
	DEBITO_ENCARGOS(102, "Encargos"),
	DEBITO_ESTORNOS(103, "Estornos"),
	DEBITO_LANCAMENTO_AVISADO(104, "Lançamento Avisado"),
	DEBITO_TARIFAS(105, "Tarifas"),
	DEBITO_APLICACAO(106, "Aplicação"),
	DEBITO_EMPRESTIMO_FINANCIAMENTO(107, "Empréstimo/Financiamento"),
	DEBITO_CAMBIO(108, "Câmbio"),
	DEBITO_CPMF(109, "CPMF"),
	DEBITO_IOF(110, "IOF"),
	DEBITO_IMPOSTO_DE_RENDA(111, "Imposto de REnda"),
	DEBITO_PAGAMENTO_FORNECEDORES(112, "Pagamento Fornecedores"),
	DEBITO_PAGAMENTOS_SALARIO(113, "Pagamento Salário"),
	DEBITO_SAQUE_ELETRONICO(114, "Saque Eletrônico"),
	DEBITO_ACOES(115, "Ações"),
	DEBITO_TRANSFERENCIA_ENTRE_CONTAS(116, "Transferência entre Contas"),
	DEBITO_DEVOLUCAO_DA_COMPENSACAO(117, "Devolução da Compensação"),
	DEBITO_DEVOLUCAO_DE_CHEQUE_DEPOSITADO(118, "Devolução de Cheque depositado"),
	DEBITO_TRANSFERENCIA_INTERBANCARIA(119, "Transferência Interbancâria (DOC, TED)"),
	DEBITO_ANTECIPACAO_A_FORNECEDORES(120, "Antecipação a Fornecedores"),
	DEBITO_OC_AEROPS(121, "OC/ AEROPS"),
	//CREDITOS
	CREDITO_DEPOSITOS(201, "Dep�sitos"),
	CREDITO_LIQUIDO_DE_COBRANCA(202, "Líquido de Cobrança"),
	CREDITO_DEVOLUCAO_DE_CHEQUES(203, "Devolução de Cheques"),
	CREDITO_ESTORNOS(204, "Estornos"),
	CREDITO_LANCAMENTO_AVISADO(205, "Lançamento Avisado"),
	CREDITO_RESGATE_DE_APLICACAO(206, "Resgate de Aplicação"),
	CREDITO_EMPRESTIMO_FINANCIAMENTO(207, "Empréstimo/Financiamento"),
	CREDITO_CAMBIO(208, "Câmbio"),
	CREDITO_TRANSFERENCIA_INTERBANCARIA(209, "Transferência Interbancária (DOC, TED)"),
	CREDITO_ACOES(210, "Ações"),
	CREDITO_DIVIDENDOS(211, "Dividendos"),
	CREDITO_SEGURO(212, "Seguro"),
	CREDITO_TRANSFERENCIA_ENTRE_CONTAS(213, "Transferência entre Contas"),
	CREDITO_DEPOSITOS_ESPECIAIS(214, "Dep�sitos Especiais"),
	CREDITO_DEVOLUCAO_DA_COMPENSACAO(215, "Devolução da Compensação"),
	CREDITO_OCT(216, "OCT"),
	CREDITO_PAGAMENTOS_FORNECEDORES(217, "Pagamentos Fornecedores"),
	CREDITO_PAGAMENTOS_DIVERSOS(218, "Pagamentos Diversos"),
	CREDITO_PAGAMENTOS_SALARIOS(219, "Pagamentos Salários");
	
	
	public static final int TAMANHO_CATEGORIA_LANCAMENTO = 3;
	private int codigo;
	private String descricao;
	
	private CategoriaLancamento(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_CATEGORIA_LANCAMENTO);
	}
}
