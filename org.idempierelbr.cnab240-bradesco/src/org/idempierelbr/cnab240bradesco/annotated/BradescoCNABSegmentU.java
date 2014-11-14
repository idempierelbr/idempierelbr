package org.idempierelbr.cnab240bradesco.annotated;

import java.util.Date;

import org.idempierelbr.cnab240.annotated.CNABSegmentURecord;

import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class BradescoCNABSegmentU extends CNABSegmentURecord {

	public BradescoCNABSegmentU() {
		super();
		this.setTipoSegmento("U");
	}
	
	public Date getDataOcorrenciaSacado() {
		return super.getDataOcorrenciaSacado();
	}
}
