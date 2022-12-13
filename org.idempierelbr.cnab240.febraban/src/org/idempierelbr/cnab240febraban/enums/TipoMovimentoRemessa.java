package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * Código adotado pela FEBRABAN para identificar o tipo de movimentação enviado nos registros do arquivo de remessa
 * @author Richard Mendes Madureira
 * @see XXXXXX
 */
public enum TipoMovimentoRemessa {
	ENTRADA_DE_TITULOS(1, "Entrada de Títulos"),
	PEDIDO_DE_BAIXA(2, "Pedido de Baixa"),
	PROTESTO_PARA_FINS_FAMILIARES(3, "Protesto para Fins Familiares"),
	CONCESSAO_DE_ABATIMENTO(4, "Concessão de Abatimento"),
	CANCELAMENTO_DE_ABATIMENTO(5, "Cancelamento de Abatimento"),
	ALTERACAO_DE_VENCIMENTO(6, "Alteração de Vencimento"),
	CONCESSAO_DE_DESCONT0(7, "Concessão de Desconto"),
	CANCELAMENTO_DE_DESCONTO(8, "Cancelamento de Desconto"),
	PROTESTAR(9, "Protestar"),
	SUSTAR_PROTESTO_E_BAIXAR_TITULO(10, "Sustar Protesto e Baixar Título"),
	SUSTAR_PROTESTO_E_MANTER_EM_CARTEIRA(11, "Sustar Protesto e Manter em Carteira"),
	ALTERACAO_DE_JUROS_DE_MORA(12, "Alteração de Juros de Mora"),
	DISPENSAR_COBRANCA_DE_JUROS_DE_MORA(13, "Dispensar Cobrança de Juros de Mora"),
	ALTERACAO_DE_VALOR_PERCENTUAL_DE_MULTA(14, "Alteração de Valor/Percentual de Multa"),
	DISPENSAR_COBRANCA_DE_MULTA(15, "Dispensar Cobrança de Multa"),
	ALTERACAO_DE_VALOR_DATA_DE_DESCONTO(16, "Alteração de Valor/Data de Desconto"),
	NAO_CONCEDER_DESCONTO(17, "Não Conceder Desconto"),
	ALTERACAO_DO_VALOR_DE_ABATIMENTO(18, "Alteração do Valor de Abatimento"),
	PRAZO_LIMITE_DE_RECEBIMENTO_ALTERAR(19, "Prazo Limite de Recebimento - Alterar"),
	PRAZO_LIMITE_DE_RECEBIMENTO_DISPENSAR(20, "Prazo Limite de Recebimento - Dispensar"),
	ALTERAR_NUMERO_DO_TITULO_DADO_PELO_CEDENTE(21, "Alterar Número de Título Dado Pelo Cedente"),
	ALTERAR_NUMERO_CONTROLE_DO_PARTICIPANTE(22, "Alterar Número Controle do Participante"),
	ALTERAR_DADOS_DO_SACADO(23, "Alterar Dados do Sacado"),
	ALTERAR_DADOS_DO_SACADOR_AVALISTA(24, "Alterar Dados do Sacador/Avalista"),
	RECUSA_DE_ALEGACAO_DO_SACADO(30, "Recusa de Alegação do Sacado"),
	ALTERACAO_DE_OUTROS_DADOS(31, "Alteração de Outros Dados"),
	ALTERACAO_DE_DADOS_DO_RATEIO_DE_CREDITO(33, "Alteração de Dados do Rateio de Crédito"),
	PEDIDO_DE_CANCELAMENTO_DOS_DADOS_DO_RATEIO_DE_CREDITO(34, "Pedido de Cancelamento dos Dados do Rateio de Crédito"),
	PEDIDO_DE_DESAGENDAMENTO_DO_DEBITO_AUTOMATICO(35, "Pedido de Desagendamento do Débito Automático"),
	ALTERACAO_DE_CARTEIRA(40, "Alteração de Carteira"),
	CANCELAR_PROTESTO(41, "Cancelar Protesto"),
	ALTERACAO_DE_ESPECIE_DE_TITULO(42, "Alteração de Espécie de Título"),
	TRANSFERENCIA_DE_CARTEIRA_MODALIDADE_DE_COBRANCA(43, "Transferência de carteira/modalidade de cobrança"),
	ALTERACAO_DE_CONTRATO_DE_COBRANCA(44, "Alteração de Contrato de Cobrança"),
	NEGATIVACAO_SEM_PROTESTO(45, "Negativação de Protesto"),
	SOLICITACAO_DE_BAIXA_DE_TITULO_NEGATIVADO_SEM_PROTESTO(46, "Solicitação de Baixa de Título Negativado Sem Protesto");
	
	
	private int codigo;
	private String descricao;
	private static final int TAMANHO_TIPO_MOVIMENTO_REMESSA = 2;
	
	private TipoMovimentoRemessa(int codigo, String descricao){
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
		StringBuilder sb = new StringBuilder(TAMANHO_TIPO_MOVIMENTO_REMESSA);
		sb.append(ArquivoUtils.getCampoNumerico(getCodigo(), 2));
		
		return sb.toString();
	}
}
