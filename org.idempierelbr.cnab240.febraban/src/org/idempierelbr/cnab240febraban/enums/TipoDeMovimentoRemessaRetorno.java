package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * Código adotado para identificar o tipo de movimentação enviado nos registros do arquivo remessa/retorno
 * @author Richard Mendes Madureira
 * @see D002
 *
 */
public enum TipoDeMovimentoRemessaRetorno {
	//remessa
	INCLUSAO(1, "Inclusão"),
	ALTERACAO(2, "Alteração"),
	EXCLUSAO(3, "Exclusão"),
	SINISTRO(4, "Sinistro"),
	//retorno
	CHEQUE_EM_CARTEIRA(5, "Cheque em Carteira (em ser)"),
	CHEQUE_DEPOSITADO_ENVIADO_PARA_COMPENSACAO(6, "Cheque depositado enviado para compensação");
	//TODO Incluir itens restantes para retorno
	
	public static final int TAMANHO_TIPO_DE_MOVIMENTO_REMESSA_RETORNO = 2;
	private int codigo;
	private String descricao;
	
	private TipoDeMovimentoRemessaRetorno(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_TIPO_DE_MOVIMENTO_REMESSA_RETORNO);
	}
	
}
