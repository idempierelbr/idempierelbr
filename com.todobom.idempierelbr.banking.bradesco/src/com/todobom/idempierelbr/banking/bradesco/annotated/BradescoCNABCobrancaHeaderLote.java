package com.todobom.idempierelbr.banking.bradesco.annotated;

import org.idempierelbr.cnab240.annotated.CNABCobrancaHeaderLoteRecord;

import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class BradescoCNABCobrancaHeaderLote extends
		CNABCobrancaHeaderLoteRecord {

	public BradescoCNABCobrancaHeaderLote() {
		super();
		super.setVersaoLeiaute(42);
	}

}
