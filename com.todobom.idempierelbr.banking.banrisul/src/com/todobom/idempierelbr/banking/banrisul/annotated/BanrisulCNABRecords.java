package com.todobom.idempierelbr.banking.banrisul.annotated;

import org.idempierelbr.cnab240.annotated.CNABRecords;

public class BanrisulCNABRecords extends CNABRecords {

	public BanrisulCNABRecords() {
		super();
		this.setHeaderArquivoClass(BanrisulCNABHeaderArquivo.class);
		this.setHeaderLoteCobrancaClass(BanrisulCNABCobrancaHeaderLote.class);
		this.setSegmentPClass(BanrisulCNABSegmentP.class);
		this.setSegmentRClass(BanrisulCNABSegmentR.class);
		this.setSegmentTClass(BanrisulCNABSegmentT.class);
	}

}
