package org.idempierelbr.cnab240.annotated;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record  
public class CNABBaseRecord {

	private Integer banco;  
	private Integer lote;
	private Integer tipoRegistro;

	@Field(offset = 1, length = 3, paddingChar = '0' , align = Align.RIGHT )
	public Integer getBanco() {
		return banco;
	}

	public void setBanco(Integer banco) {
		this.banco = banco;
	}

	@Field( offset = 4, length = 4 , paddingChar = '0' , align = Align.RIGHT )
	public Integer getLote() {
		return lote;
	}

	public void setLote(Integer lote) {
		this.lote = lote;
	}

	@Field( offset = 8, length = 1 , paddingChar = '0' , align = Align.RIGHT )
	public Integer getTipoRegistro() {
		return tipoRegistro;
	}

	public void setTipoRegistro(Integer tipoRegistro) {
		this.tipoRegistro = tipoRegistro;
	}

}
