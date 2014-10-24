package org.idempierelbr.cnab240febraban.annotated;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class CNABSegmentBaseRecord extends CNABBaseRecord {

	private Integer sequencia;
	private String tipoSegmento;

	public CNABSegmentBaseRecord() {
		super();
		this.setTipoRegistro(3);
	}
	
	@Field( offset=9 , length=5, paddingChar = '0' , align = Align.RIGHT)
	public Integer getSequencia() {
		return sequencia;
	}
	public void setSequencia(Integer sequencia) {
		this.sequencia = sequencia;
	}
	
	@Field( offset=14  , length=1 )
	public String getTipoSegmento() {
		return tipoSegmento;
	}
	public void setTipoSegmento(String tipoSegmento) {
		this.tipoSegmento = tipoSegmento;
	}
	
}
