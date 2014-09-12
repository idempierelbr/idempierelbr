package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * C�digo adotado pela FEBRABAN para identificar a a��o a ser realizada com o lan�amento enviado no arquivo.
 * @author Richard Mendes Madureira
 * @see G061 p�gina 173
 *
 */
public enum CodigoInstrucaoMovimento {
	INCLUSAO_REGISTRO_DETALHE_LIBERADO(0, "Inclus�o de Registro Detalhe Liberado"),
	INCLUSAO_REGISTRO_DETALHE_BLOQUEADO(9, "Inclus�o de Registro Detalhe Bloqueado"),
	ALTERACAO_DO_PAGAMENTO_LIBERADO_PARA_BLOQUEADO(10, "Altera��o do Pagamento Liberado para Bloqueado (Bloqueio)");
	//TODO incluir itens restantes;
	
	public static final int TAMANHO_CODIGO_INSTRUCAO_MOVIMENTO = 2;
	private int codigo;
	private String descricao;
	
	private CodigoInstrucaoMovimento(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_CODIGO_INSTRUCAO_MOVIMENTO);
	}
}
