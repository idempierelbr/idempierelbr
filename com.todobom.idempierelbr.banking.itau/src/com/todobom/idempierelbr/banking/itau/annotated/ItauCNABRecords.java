package com.todobom.idempierelbr.banking.itau.annotated;

import org.idempierelbr.cnab240.annotated.CNABRecords;

public class ItauCNABRecords extends CNABRecords {

	public ItauCNABRecords() {
		super();

		super.setHeaderArquivoClass(ItauCNABHeaderArquivo.class);
		super.setHeaderLoteClass(ItauCNABCobrancaHeaderLote.class);
		super.setHeaderLoteCobrancaClass(ItauCNABCobrancaHeaderLote.class);
		super.setTrailerLoteCobrancaClass(ItauCNABCobrancaTrailerLote.class);
		
		super.setSegmentPClass(ItauCNABSegmentP.class);
		super.setSegmentRClass(ItauCNABSegmentR.class);
		super.setSegmentTClass(ItauCNABSegmentT.class);
		super.setSegmentUClass(ItauCNABSegmentU.class);
	}

}
