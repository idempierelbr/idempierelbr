package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * Código adotado pela FEBRABAN para identificação do tipo de impressão da mensagem do título de cobrança
 * @author Richard Mendes Madureira
 * @see C040
 *
 */
public enum TipoImpressao {
	FRENTE_DO_BLOQUETO(1, "Frente do Bloqueto"),
	VERSO_DO_BLOQUETO(2, "Verso do Bloqueto"),
	CORPO_INSTRUCOES_FICHA_COMPENSACAO_DO_BLOQUETO(3, "Corpo de Instruções da Ficha de Compensação do Bloqueto");
	
	public static final int TAMANHO_TIPO_IMPRESSAO = 2;
	private int codigo;
	private String descricao;
	
	private TipoImpressao(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_TIPO_IMPRESSAO);
	}
}
