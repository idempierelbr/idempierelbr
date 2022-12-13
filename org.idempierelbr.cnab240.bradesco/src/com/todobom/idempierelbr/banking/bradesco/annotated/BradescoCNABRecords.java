package com.todobom.idempierelbr.banking.bradesco.annotated;

import org.idempierelbr.cnab240.annotated.CNABRecords;

public class BradescoCNABRecords extends CNABRecords {

	public BradescoCNABRecords() {
		super();
		this.setHeaderArquivoClass(BradescoCNABHeaderArquivo.class);
		this.setHeaderLoteCobrancaClass(BradescoCNABCobrancaHeaderLote.class);
		this.setSegmentPClass(BradescoCNABSegmentP.class);
		this.setSegmentTClass(BradescoCNABSegmentT.class);
	}

}
