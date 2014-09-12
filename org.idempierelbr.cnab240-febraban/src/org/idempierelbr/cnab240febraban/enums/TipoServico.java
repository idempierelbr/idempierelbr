package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * Código adotado pela FEBRABAN para indicar o tipo de serviço/produto (process) contido no arquivo/lote
 * @author richard
 * @see G027
 *
 */
public enum TipoServico {
	COBRANCA(1, "Cobrança"),
	BLOQUETO_ELETRONICO(3, "Bloqueto Eletrônico"),
	CONCILIACAO_BANCARIA(4, "Conciliação Bancária"),
	DEBITOS(5, "Débitos"),
	CUSTODIA_DE_CHEQUES(6, "Custódia de Cheques"),
	GESTAO_DE_CAIXA(7, "Gestão de Caixa"),
	CONSULTA_INFORMACAO_MARGEM(8, "Consulta/Informação Margem"),
	AVERBACAO_DA_CONSIGNACAO_RETENCAO(9, "Averbação da Consignação/Retenção"),
	PAGAMENTO_DIVIDENDOS(10, "Pagamento Dividendos"),
	MANUTENCAO_DA_CONSIGNACAO(11, "Manutenção da Consignação"),
	CONSIGNACAO_DE_PARCELAS(12, "Consignação de Parcelas"),
	GLOSA_DA_CONSIGNACAO_INSS(13, "Glosa da Consignação (INSS)"),
	CONSULTA_DE_TRIBUTOS_A_PAGAR(14, "Consulta de Tributos a Pagar"),
	PAGAMENTO_FORNECEDOR(20, "Pagamento Fornecedor"),
	PAGAMENTO_DE_CONTAS_TRIBUTOS_E_IMPOSTOS(22, "Pagamento de Contas, Tributos e Impostos"),
	COMPROR(25, "Compror"),
	COMPROR_ROTATIVO(26, "Compror Rotativo"),
	ALEGACAO_DO_SACADO(29, "Alegação do Sacado"),
	PAGAMENTO_SALARIOS(30, "Pagamento Salários"),
	PAGAMENTO_DE_HONORARIOS(32, "Pagamento de Honorários"),
	PAGAMENTO_DE_BOLSA_AUXILIO(3, "Pagamento de Bolsa Auxílio"),
	PAGAMENTO_DE_PREBENDA(34, "Pagamento de Prebenda (Remuneração a Padres e Sacerdotes)"),
	VENDOR(40, "Vendor"),
	VENDOR_A_TERMO(41, "Vendor a Termo"),
	PAGAMENTO_SINISTROS_SEGURADOS(50, "Pagamento Sinistros Segurados"),
	PAGAMENTO_DESPESAS_VIAJANTE_EM_TRANSITO(60, "Pagamento Despesas Viajante em Trânsito"),
	PAGAMENTO_AUTORIZADO(70, "Pagamento Autorizado"),
	PAGAMENTO_CREDENCIADOS(75, "Pagamento Credenciados"),
	PAGAMENTO_DE_REMUNERACAO(77, "Pagamento de Remuneração"),
	PAGAMENTO_REPRESENTANTES_VENDEDORES_AUTORIZADOS(80, "Pagamento Representantes/Vendedores Autorizados"),
	PAGAMENTO_BENEFICIOS(90, "Pagamento Benefícios"),
	PAGAMENTOS_DIVERSOS(98, "Pagamentos Diversos");
	
	public static final int TAMANHO_TIPO_SERVICO = 2;
	private int codigo;
	private String descricao;
	
	private TipoServico(int codigo, String descricao) {
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_TIPO_SERVICO);
	}
}
