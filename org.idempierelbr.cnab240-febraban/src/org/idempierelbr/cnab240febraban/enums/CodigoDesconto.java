package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * C�digo adotado pela FEBRABAN para identificação do tipo de desconto que deverá ser concedido.
 * @author Richard Mendes Madureira
 * @see C021
 *
 */
public enum CodigoDesconto {
	VALOR_FIXO_ATE_DATA_INFORMADA(1, "Valor Fixo Até a Data Informada"),
	PERCENTUAL_ATE_DATA_INFORMADA(2, "Percentual Até a Data Informada"),
	VALOR_POR_ANTECIPACAO_DIA_CORRIDO(3, "Valor por Antecipação Dia Corrido"),
	VALOR_ANTECIPACAO_DIA_UTIL(4, "Valor por Antecipação Dia Útil"),
	PERCENTUAL_SOBRE_VALOR_NOMINAL_DIA_CORRIDO(5, "Percentual Sobre o Valor Nominal Dia Corrido"),
	PERCENTUAL_SOBRE_VALOR_NOMINAL_DIA_UTIL(6, "Percentual Sobre o Valor Nominal Dia Útil"),
	CANCELAMENTO_DE_DESCONTO(7, "Cancelamento de Desconto");

	public static final int TAMAHHO_CODIGO_DESCONTO = 1;
	private int codigo;
	private String descricao;

	private CodigoDesconto(int codigo, String descricao) {
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMAHHO_CODIGO_DESCONTO);
	}

}
