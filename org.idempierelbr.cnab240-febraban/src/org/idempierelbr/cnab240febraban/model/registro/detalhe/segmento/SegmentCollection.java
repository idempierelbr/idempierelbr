package org.idempierelbr.cnab240febraban.model.registro.detalhe.segmento;

import org.idempierelbr.cnab240febraban.annotated.CNABSegmentTRecord;
import org.idempierelbr.cnab240febraban.annotated.CNABSegmentURecord;

public class SegmentCollection {
	private CNABSegmentTRecord segT;
	private CNABSegmentURecord segU;
	public CNABSegmentTRecord getSegT() {
		return segT;
	}
	public void setSegT(CNABSegmentTRecord segT) {
		this.segT = segT;
	}
	public CNABSegmentURecord getSegU() {
		return segU;
	}
	public void setSegU(CNABSegmentURecord segU) {
		this.segU = segU;
	}		
}
