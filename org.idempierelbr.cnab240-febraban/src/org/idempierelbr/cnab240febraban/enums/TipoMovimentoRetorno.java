package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * Código adotado pela FEBRABAN para identificar o tipo de movimentação enviado nos registros do arquvo de retorno
 * @author Richard Mendes Madureira
 * @see C044
 *
 */
public enum TipoMovimentoRetorno {
	ENTRADA_CONFIRMADA(2, "Entrada Confirmada"),
	ENTRADA_REJEITADA(3, "Entrada Rejeitada"),
	TRANSFERENCIA_DE_CARTEIRA_ENTRADA(4, "Transferência de Carteira/Entrada"),
	TRANSFERENCIA_DE_CARTEIRA_BAIXA(5, "Transferência de Carteira/Baixa"),
	LIQUIDACAO(6, "Liquidação"),
	CONFIRMACAO_RECEBIMENTO_INSTRUCAO_DESCONTO(7, "Confirmação do Recebimento da Instrução de Desconto"),
	CONFIRMACAO_RECEBIMENTO_CANCELAMENTO_DESCONTO(8, "Confirmação do Recebimento do Cancelamento do Desconto"),
	BAIXA(9, "Baixa"),
	TITULOS_EM_CARTEIRA(11, "Títulos em Carteira (Em Ser"),
	CONFIRMACAO_RECEBIMENTO_INSTRUCAO_ABATIMENTO(12, "Confirmação Recebimento Instrução de Abatimento"),
	CONFIRMACAO_RECEBIMENTO_INSTRUCAO_CANCELAMENTO_ABATIMENTO(13, "Confirmação Recebimento Instrução de Cancelamento Abatimento"),
	CONFIRMACAO_RECEBIMENTO_INSTRUCAO_ALTERACAO_VENCIMENTO(14, "Confirmação Recebimento Instrução Alteração de Vencimento"),
	FRANCO_DE_PAGAMENTO(15, "Franco de Pagamento"),
	LIQUIDACAO_APOS_BAIXA_LIQUIDACAO_TITULO_NAO_REGISTRADO(17, "Liquidação após baixa ou liquidação Título não registrado"),
	CONFIRMACAO_RECEBIMENTO_INSTRUCAO_PROTESTO(19, "Confirmação Recebimento Instrução de Protesto"),
	CONFIRMACAO_RECEBIMENTO_INSTRUCAO_SUSTACAO_CANCELAMENTO_PROTESTO(20, "Confirmação REcebimento Instrução de Sustação/Cancelamento de Protesto"),
	REMESSA_A_CARTORIO(23, "Remessa a Cartório (Aponte em Cartório)"),
	RETIRADA_DE_CARTORIO_E_MANUTENCAO_EM_CARTEIRA(24, "Retirada de Cartório e Manutenção em Carteira"),
	PROTESTADO_E_BAIXADO(25, "Protestado e Baixado (Baixa por Ter Sido Protestado)"),
	INSTRUCAO_REJEITADA(26, "Instrução Rejeitada"),
	CONFIRMACAO_PEDIDO_ALTERACAO_OUTROS_DADOS(27, "Confirmação do Pedido de Alteração de Outros Dados"),
	DEBITO_TARIFAS_CUSTAS(28, "Débito de Tarifas/Custas"),
	OCORRENCIAS_DO_SACADO(29, "Ocorrências do Sacado"),
	ALTERACAO_DADOS_REJEITADA(30, "Alteração de Dados Rejeitada"),
	CONFIRMACAO_DA_ALTERACAO_DADOS_DO_RATEIDO_DE_CREDITO(33, "Confirmação da Alteração dos Dados do Rateio de Crédito"),
	CONFIRMACAO_DO_CANCELAMENTO_DADOS_DO_RATEIDO_DE_CREDITO(34, "Confirmação do Cancelamento dos Dados do Rateio de Crédito"),
	CONFIRMACAO_DESAGENDAMENTO_DEBITO_AUTOMATICO(35, "Confirmação do Desagendamento do Débito Automático"),
	CONFIRMACAO_ENVIO_EMAIL_SMS(36, "Confirmação de Envio de Email/SMS"),
	ENVIO_EMAIL_SMS_REJEITADO(37, "Confirmação de Envio de Email/SMS rejeitado"),
	CONFIRMACAO_ALTERACAO_PRAZO_LIMITE_RECEBIMENTO(38, "Confirmação de Alteração do Prazo Limite de Recebimento"),
	CONFIRMACAO_DE_DISPENSA_PRAZO_LIMITE_RECEBIMENTO(39, "Confirmação de Dispensa de Prazo Limite de Recebimento"),
	CONFIRMACAO_ALTERACAO_NUMERO_TITULO_DADO_PELO_CEDENTE(40, "Confirmação da alteração do número do título dado pelo cedente"),
	CONFIRMACAO_ALTERACAO_NUMERO_CONTROLE_PARTICIPANTE(41, "Confirmação da alteração do número controle do Participante"),
	CONFIRMACAO_ALTERACAO_DADOS_SACADO(42, "Confirmação da alteração dos dados do Sacado"),
	CONFIRMACAO_ALTERACAO_DADOS_SACADOR_AVALISTA(43, "Confirmação da alteração dos dados do Sacador/Avalista"),
	TITULO_PAGO_COM_CHEQUE_DEVOLVIDO(44, "Título pago com Cheque devolvido"),
	TITULO_PAGO_COM_CHEQUE_COMPENSADO(45, "Título pago com cheque compensado"),
	INSTRUCAO_PARA_CANCELAR_PROTESTO_CONFIRMADA(46, "Instrução para Cancelar protesto confirmada"),
	INSTRUCAO_PARA_PROTESTO_PARA_FINS_FALIMENTARES_CONFIRMADA(47, "Instrução para protesto para fins falimentares confirmada"),
	CONFIRMACAO_INSTRUCAO_DE_TRANSFERENCIA_CARTEIRA_MODALIDADE_COBRANCA(48, "Confirmação de Instrução de transferência de carteira/modalidade de cobrança"),
	ALTERACAO_CONTRATO_COBRANCA(49, "Alteração de contrato de cobrança"),
	TITULO_PAGO_COM_CHEQUE_PENDENTE_DE_LIQUIDACAO(50, "Título pago com cheque pendente de compensação"),
	TITULO_DDA_RECONHECIDO_PELO_SACADO(51, "Título DDA reconhecido pelo sacado"),
	TITULO_DDA_NAO_RECONHECIDO_PELO_SACADO(52, "Título DDA não reconhecido pelo sacado"),
	TITULO_DDA_RECUSADO_PELA_CIP(53, "Título DDA recusado pela CIP"),
	CONFIRMACAO_INSTRUCAO_BAIXA_TITULO_NEGATIVADO_SEM_PROTESTO(54, "Confirmação da Instrução de Baixa de Título Negativado sem Protesto"),
	CONFIRMACAO_PEDIDO_DISPENSA_DE_MULTA(55, "Confirmação de Pedido de Dispensa de Multa"),
	CONFIRMACAO_PEDIDO_COBRANCA_DE_MULTA(56, "Confirmação do Pedido de Cobrança de Multa"),
	CONFIRMACAO_PEDIDO_ALTERACAO_COBRANCA_DE_JUROS(57, "Confirmação do Pedido de Alteração de Cobrança de Juros"),
	CONFIRMACAO_PEDIDO_ALTERACAO_VALOR_OU_DATA_DESCONTO(58, "Confirmação do Pedido de Alteração do Valor/Data de Desconto"),
	CONFIRMACAO_PEDIDO_ALTERACAO_CEDENTE_DO_TITULO(59, "Confirmação do Pedido de Alteração do Cedente do Título"),
	CONFIRMACAO_PEDIDO_DISPENSA_JUROS_DE_MORA(60, "Confirmação do Pedido de Dispensa de Juros de Mora");
	
	private static final int TAMANHO_TIPO_MOVIMENTO_RETORNO = 2;
	private int codigo;
	private String descricao;
	
	private TipoMovimentoRetorno(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_TIPO_MOVIMENTO_RETORNO);
	}
}
