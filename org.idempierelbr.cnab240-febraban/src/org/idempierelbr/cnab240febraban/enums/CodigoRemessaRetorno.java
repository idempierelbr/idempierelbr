package org.idempierelbr.cnab240febraban.enums;

public enum CodigoRemessaRetorno {
	CODIGO_REMESSA(1),
	CODIGO_RETORNO(2);
	
	private int codigo;
	
	private CodigoRemessaRetorno(int codigo){
		this.codigo = codigo;
	}
	
	public int getCodigo(){
		return codigo;
	}
}
