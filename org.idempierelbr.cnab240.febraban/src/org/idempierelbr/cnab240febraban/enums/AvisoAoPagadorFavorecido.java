package org.idempierelbr.cnab240febraban.enums;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * C�digo adotato pela FEBRABAN para dientificar a necessidade de emissão de Aviso de Débito ao Pagador
 * @author Richard Mendes Madureira
 * @see D007, P006
 *
 */
public enum AvisoAoPagadorFavorecido {
	NAO_EMITE_AVISO(0, "Não Emite Aviso"),
	EMITE_AVISO_SOMENTE_PARA_O_REMETENTE(2, "Emite Aviso Somente para o Remetente"),
	EMITE_AVISO_SOMENTE_PARA_O_PAGADOR_FAVORECIDO(5, "Emite Aviso Somente para o Pagador/Favorecido"),
	EMITE_AVISO_PARA_O_REMETENTE_E_PAGADOR_FAVORECIDO(6, "Emite Aviso para o Remetente e Pagador/Favorecido"),
	EMITE_AVISO_PARA_O_PAGADOR_FAVORECIDO_E_2_VIAS_PARA_O_REMETENTE(7, "Emite Aviso para o Pagador/Favorecido e 2 Vias para o Remetente");
	
	public static final int TAMANHO_AVISO_PAGADOR = 1;
	private int codigo;
	private String descricao;
	
	private AvisoAoPagadorFavorecido(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_AVISO_PAGADOR);
	}
}
