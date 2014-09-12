package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * Código adotado pela FEBRABAN para identificar o prazo ou a data de vencimento da parcela
 * @author richard
 *
 */
public enum TipoDeVencimentoDasParcelas {
	FIXO(1, "Fixo: Pela quantidade de parcelas e o vencimento inicial e final, define-se o prazo de cada vencimento"),
	VARIAVEL(2, "Variável: A data de vencimento deverá ser informada parcela a parcela");
	
	public static final int TAMANHO_TIPO_DE_VENCIMENTO_DAS_PARCELAS = 1;
	private int codigo;
	private String descricao;
	
	private TipoDeVencimentoDasParcelas(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_TIPO_DE_VENCIMENTO_DAS_PARCELAS);
	}
}
