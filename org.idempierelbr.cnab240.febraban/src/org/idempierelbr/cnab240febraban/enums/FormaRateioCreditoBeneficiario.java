package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * C�digo adotato pela FEBRABAN para identificar a maneira de calculo da divisão do valor do crédito entre os beneficiários do Título
 * @author Richard Mendes Madureira
 * @see C061
 *
 */
public enum FormaRateioCreditoBeneficiario {
	VALOR_COBRADO(1, "Valor Cobrado"),
	VALOR_REGISTRO(2, "Valor Registro"),
	RATEIO_PELO_MENOR_VALOR(3, "Rateio pelo Menor Valor");
	
	public static final int TAMANHO_FORMA_RATEIO_CREDITO_BENEFICIARIO = 1;
	private int codigo;
	private String descricao;
	
	private FormaRateioCreditoBeneficiario(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_FORMA_RATEIO_CREDITO_BENEFICIARIO);
	}
}
