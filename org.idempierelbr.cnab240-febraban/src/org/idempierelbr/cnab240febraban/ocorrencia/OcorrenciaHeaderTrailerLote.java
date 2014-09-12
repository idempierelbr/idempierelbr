package org.idempierelbr.cnab240febraban.ocorrencia;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

/**
 * C�digo adotado pela FEBRABAN para identificar as ocorr�ncias relacionadas com o Header e Trailer de Lote.
 * Pode-se informar at� 5 ocorr�ncias simultaneamente, cada uma delas com dois d�gitos
 * @author Richard Mendes Madureira
 * @see K001 p�gina 188
 *
 */
public enum OcorrenciaHeaderTrailerLote {
	REMESSA_ACEITA(0, "Remessa Aceita"),
	BANCO_INVALIDO(1, "Banco Inv�lido"),
	LOTE_INVALIDO(2, "Lote Inv�lido");
	//TODO incluir itens restantes
	
	public static final int TAMANHO_OCORRENCIA_HEADER_TRAILER_LOTE = 2;
	private int codigo;
	private String descricao;
	
	private OcorrenciaHeaderTrailerLote(int codigo, String descricao){
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
		return ArquivoUtils.getCampoNumerico(getCodigo(), TAMANHO_OCORRENCIA_HEADER_TRAILER_LOTE);
	}
	
}
