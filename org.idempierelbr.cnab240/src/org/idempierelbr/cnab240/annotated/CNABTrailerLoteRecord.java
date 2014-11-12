package org.idempierelbr.cnab240.annotated;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class CNABTrailerLoteRecord extends CNABBaseRecord {
	
	private int quantidadeRegistros;
	
	public CNABTrailerLoteRecord() {
		super();
		this.setTipoRegistro(5);
	}
	
	@Field(offset = 18, length = 6, paddingChar = '0' , align = Align.RIGHT )
	public int getQuantidadeRegistros() {
		return quantidadeRegistros;
	}
	public void setQuantidadeRegistros(int quantidadeRegistros) {
		this.quantidadeRegistros = quantidadeRegistros;
	}
	
}
