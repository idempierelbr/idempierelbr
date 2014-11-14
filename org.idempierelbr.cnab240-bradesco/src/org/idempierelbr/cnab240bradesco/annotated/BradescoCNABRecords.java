package org.idempierelbr.cnab240bradesco.annotated;

import org.idempierelbr.cnab240.annotated.CNABRecords;

public class BradescoCNABRecords extends CNABRecords {

	public BradescoCNABRecords() {
		super();
		this.setHeaderLoteRetornoCobrancaClass(BradescoCNABCobrancaRetornoHeaderLote.class);
		this.setSegmentTClass(BradescoCNABSegmentT.class);
		this.setSegmentUClass(BradescoCNABSegmentU.class);
	}

}
