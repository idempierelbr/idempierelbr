package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * C�digo adotato pela FEBRABAN para identificar o motivo ocorrido para a rejeição do registro de rateio de crédito
 * @author Richard Mendes Madureira
 * @see C065
 *
 */
public enum MotivoRejeicaoRegistroDeRateioDeCredito {
	CONTA_BENEFICIARIIO_INVALIDA(1, "Conta Beneficiário Inválida"),
	CONTA_CORRENTE_INATIVA_PARA_RATEIO(2, "Conta Corrente Inativa para Rateio"),
	CODIGO_DE_CALCULO_DO_RATEIO_DIFERENTE_DE_1_2_OU_3(3, "C�digo de Calculo do Rateio diferente de 1,2 ou 3"),
	BANCO_AGENCIA_CONTA_DO_BENEFICIARIO_NAO_NUMERICO(4, "Banco/Agência/Conta do Beneficiário Não Numérico"),
	VALOR_DO_RATEIO_INFORMADO_NAO_NUMERICO(5, "Valor do Rateio Informado não Numérico"),
	PERCENTUAL_PARA_RATEIO_NAO_NUMERICO(6, "Percentual para Rateio não Numérico"),
	TIPO_DE_VALOR_INFORMADO_DIFERENTE_DE_1_OU_2(7, "Tipo de Valor Informado Diferente de 1 ou 2"),
	BANCO_NAO_PARTICIPANTE_DO_RATEIO(8, "Banco não Participante do Rateio"),
	DIGITO_AGENCIA_BENEFICIARIO_NAO_CONFERE(9, "Dígito Agência Beneficiário Não Confere"),
	DIGITO_CONTA_BENEFICIARIO_NAO_CONFERE(10, "Dígito Conta do Beneficiário Não Confere");
	//TODO Incluir items restantes conforme página 154, C066
	
	
	public static final int TAMANHO_MOTIVO_REJEICAO_REGISTRO_DE_RATEIO_DE_CREDITO = 2;
	private int codigo;
	private String descricao;
	
	private MotivoRejeicaoRegistroDeRateioDeCredito(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_MOTIVO_REJEICAO_REGISTRO_DE_RATEIO_DE_CREDITO);
	}
}
