package org.idempierelbr.cnab240febraban.ocorrencia;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * C�digo adotato pela FEBRABAN para identificar as ocorr�ncias detectadas no processamento.
 * Pode-se informar at� 5 ocorrencias simultaneamente, cada uma com dois d�gitos
 * @author Richard Mendes Madureira
 * version 1.0
 */
public enum OcorrenciaRetornoREmessa {
	CREDITO_OU_DEBITO_EFETIVADO("00", "Cr�dito ou D�bito Efetivado"), //indica que o pagamento foi confirmado
	INSUFICIENCIA_DE_FUNDOS_DEBITO_NAO_EFETUADO("01", "Insufici�ncia de Fundos - D�bito N�o Efetuado"),
	CREDITO_OU_DEBITO_CANCELADO_PELO_PAGADOR_OU_CREDOR("02", "Cr�dito ou D�bito Cancelado pelo Pagador/Credor"),
	DEBITO_AUTORIZADO_PELA_AGENCIA_EFETUADO("03", "D�bito Autorizado pela Ag�ncia - Efetuado"),
	CONTROLE_INVALIDO("AA", "Controle Inv�lido"),
	TIPO_DE_OPERACAO_INVALIDO("AB", "Tipo de Opera��o Inv�lido"),
	TIPO_DE_SERVICO_INVALIDO("AC", "Tipo de Servi�o Inv�lido"),
	FORMA_DE_LANCAMENTO_INVALIDA("AD", "Forma de Lanamento Inv�lida"),
	TIPO_NUMERO_INSCRICAO_INVALIDO("AE", "Tipo/N�mero de Inscri��o Inv�lido"),
	CODIGO_DE_CONVENIO_INVALIDO("AF", "C�digo de Conv�nio Inv�lido"),
	AGENCIA_OU_CONTA_CORRENTE_OU_DV_INVALIDO("AG", "Ag�ncia/Conta Corrente/DV Inv�lido(s)"),
	NUMERO_SEQUENCIAL_DO_REGISTRO_NO_LOTE_INVALIDO("AH", "N�mero Sequencial do Registro no Lote Inv�lido"),
	CODIGO_DE_SEGMENTO_DE_DETALHE_INVALIDO("AI", "C�digo de Segmento de Detalhe Inv�lido"),
	TIPO_DE_MOVIMENTO_INVALIDO("AJ", "Tipo de Movimento Inv�lido");
	//TODO incluir items restantes conforme p�gina 173
	
	public static final int TAMANHO_OCORRENCIA_RETORNO_REMESSA = 2;
	private String codigo;
	private String descricao;

	private OcorrenciaRetornoREmessa(String codigo, String descricao) {
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
		return ArquivoUtils.getCampoAlfaNumerico(getCodigo(), TAMANHO_OCORRENCIA_RETORNO_REMESSA);
	}

}
