package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * C�digo adotado pela FEBRABAN para identificação do critério de pagamento de pena pecuniária, a ser aplicada pelo atraso do pagamento do Título
 * @author Richard Mendes Madureira
 * @see G073
 *
 */
public enum CriterioPagamentoMulta {
	VALOR_FIXO(1, "Valor Fixo"),
	PERCENTUAL(2, "Percentual");
	
	public static final int TAMANHO_CRITERIO_PAGAMENTO_MULTA = 1;
	private int codigo;
	private String descricao;
	
	private CriterioPagamentoMulta(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_CRITERIO_PAGAMENTO_MULTA);
	}
}
