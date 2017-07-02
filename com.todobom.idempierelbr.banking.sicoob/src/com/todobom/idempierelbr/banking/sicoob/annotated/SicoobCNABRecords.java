package com.todobom.idempierelbr.banking.sicoob.annotated;

import org.idempierelbr.cnab240.annotated.CNABRecords;

public class SicoobCNABRecords extends CNABRecords {

	public SicoobCNABRecords() {
		super();
		this.setHeaderArquivoClass(SicoobCNABHeaderArquivo.class);
		this.setHeaderLoteCobrancaClass(SicoobCNABCobrancaHeaderLote.class);
		this.setSegmentTClass(SicoobCNABSegmentT.class);
		this.setSegmentPClass(SicoobCNABSegmentP.class);
		this.setSegmentRClass(SicoobCNABSegmentR.class);
	}	

}
