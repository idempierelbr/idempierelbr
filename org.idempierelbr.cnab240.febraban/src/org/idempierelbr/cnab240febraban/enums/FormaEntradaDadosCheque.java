package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * C�digo adotado pela FEBRABAN para identificar a finalidade como foi feita a captura de dados do cheque
 * @author Richard Mendes Madureira
 * @see K004
 *
 */
public enum FormaEntradaDadosCheque {
	CMC7(1, "Captura de informações da banda magnética"),
	LINHA_1(2, "Digitação dos dados pré-impressos naprimeira linha do cheque");
	
	public static final int TAMANHO_FORMA_ENTRADA_DADOS_CHEQUE = 1;
	private int codigo;
	private String descricao;
	
	private FormaEntradaDadosCheque(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_FORMA_ENTRADA_DADOS_CHEQUE);
	}
}
