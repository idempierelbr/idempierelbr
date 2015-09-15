package org.idempierelbr.cnab240.annotated;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class CNABSegmentBaseRecord extends CNABBaseRecord {

	private Integer sequencia;
	private String tipoSegmento;
	private CNABSegmentGroup group;

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

	public CNABSegmentGroup getGroup() {
		return group;
	}

	public void setGroup(CNABSegmentGroup group) {
		this.group = group;
	}

	// codigo opcional utilizado principalmente nos registros Y.
	public String getCodigoOpcional() {
		return "";
	}

	public void setCodigoOpcional(String codigoOpcional) {
		return;
	}
	
}
