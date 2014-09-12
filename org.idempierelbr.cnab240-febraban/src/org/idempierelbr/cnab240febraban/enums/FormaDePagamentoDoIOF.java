package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * C�digo adotado que identifica a forma de pagamento de IOF
 * @author Richard Mendes Madureira
 * @see I017
 *
 */
public enum FormaDePagamentoDoIOF {
	DEBITADO_NO_ATO (0, "Debitado no Ato"),
	FINANCIADO(1, "Financiado");
	
	public static final int TAMANHO_FORMA_DE_PAGAMENTO_DO_IOF = 1;
	private int codigo;
	private String descricao;
	
	private FormaDePagamentoDoIOF(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_FORMA_DE_PAGAMENTO_DO_IOF);
	}
}
