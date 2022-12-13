package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * C�digo adotado pela FEBRABAN para identificar a forma de lançamento do documento???
 * @author Richard Mendes Madureira
 * @see ?????
 *
 */
public enum FormaDeLancamento {
	CREDITO_EM_CONTA_CORRENTE(1, "Crédito em Conta Corrente"),
	CHEQUE_PAGAMENTO(2, "Cheque Pagamento / Administrativo"),
	DOC_TED(3, "DOC/TED (1) (2)"),
	CARTAO_SALARIO(4, "Cartão Salário      (somente para Tipo de Serviço = \'30\')"),
	CREDITO_EM_CONTA_POUPANCA(5, "Crédito em Conta Poupança"),
	OP_A_DISPOSICAO(10, "OP à Disposição"),
	PAGAMENTO_DE_CONTAS_E_TRIBUTOS_COM_CODIGOS_DE_BARRAS(11, "Pagamento de Contas e Tributos com C�digo de Barras"),
	TRIBUTO_DARF_NORMAL(16, "Tributo - DARF Normal"),
	TRIBUTO_GPS(17, "Tributo - GPS (Guia da Previdência Social)"),
	TRIBUTO_DARF_SIMPLES(18, "Tributo - DARF Simples"),
	TRIBUTO__IPTU(19, "Tributo - IPTU – Prefeituras"),
	PAGAMENTOS_COM_AUTENTICACAO(20, "Pagamento com Autenticação"),
	DARJ(21, "Tributo – DARJ"),
	GARE_SP_ICMS(22, "Tributo - GARE-SP ICMS"),
	GARE_SP_DR(23, "Tributo - GARE-SP DR"),
	TRIBUTO_GARE_SP_ITCMD(24, "Tributo - GARE-SP ITCMD"),
	IPVA(25, "Tributo - IPVA"),
	TRIBUTO_LICENCIAMENTO(26, "Tributo - Licenciamento"),
	TRIBUTO_DPVAT(27, "Tributo – DPVAT"),
	LIQUIDACAO_DE_TITULOS_DO_PROPRIO_BANCO(30, "Liquidação de Títulos do Pr�prio Banco"),
	PAGAMENTO_DE_TITULOS_DE_OUTROS_BANCOS(31, "Pagamento de Títulos de Outros Bancos"),
	EXTRATO_DE_CONTA_CORRENTE(40, "Extrato de Conta Corrente"),
	TED_OUTRA_TITULARIDADE(41, "TED – Outra Titularidade (1)"), 
	TED_MESMA_TITULARIDADE(43, "TED – Mesma Titularidade (1)"),
	TED_PARA_TRANSFERENCIA_DE_CONTA_INVESTIMENTO(44, "TED para Transferência de Conta Investimento"), 
	DEBITO_EM_CONTA_CORRENTE(50, "Débito em Conta Corrente"),
	EXTRATO_PARA_GESTAO_DE_CAIXA(70, "Extrato para Gestão de Caixa"),
	DEPOSITO_JUDICIAL_EM_CONTA_CORRENTE(71, "Dep�sito Judicial em Conta Corrente"),
	DEPOSITO_JUDICIAL_EM_POUPANCA(72, "Dep�sito Judicial em Poupança"),
	EXTRADO_DE_CONTA_INVESTIMENTO(73, "Extrato de Conta Investimento");
	
	public static final int TAMANHO_FORMA_DE_LANCAMENTO = 2;
	private int codigo;
	private String descricao;
	
	private FormaDeLancamento(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_FORMA_DE_LANCAMENTO);
	}
}

