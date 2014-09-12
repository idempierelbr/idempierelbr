package org.idempierelbr.cnab240febraban.enums;

public enum TipoRegistro {
	HEADER_DE_ARQUIVO(0, "Header de Arquivo"),
	HEADER_DE_LOTE(1, "Header de Lote"),
	REGISTROS_INICIAIS_DO_LOTE(2, "Registros Iniciais de Lote"),
	DETALHE(3, "Registros de Detalhe de Lote"),
	REGISTROS_FINAIS_DO_LOTE(4, "Registros Finais de Lote"),
	TRAILER_DE_LOTE(5, "Trailer de Lote"),
	TRAILER_DE_ARQUIVO(9, "Trailer de Arquivo");
	
	private int codigoTipo;
	private String descricao;
	
	private TipoRegistro(int codigoTipo, String descricao){
		this.codigoTipo = codigoTipo;
		this.descricao = descricao;
	}
	
	public int getCodigoTipo(){
		return codigoTipo;
	}
	
	public String getDescricao(){
		return descricao;
	}
}
