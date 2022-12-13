package com.todobom.idempierelbr.banking.banrisul.annotated;

import org.idempierelbr.cnab240.annotated.CNABSegmentRRecord;

import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class BanrisulCNABSegmentR extends CNABSegmentRRecord {

	public BanrisulCNABSegmentR() {
		this.setDecimaisPercentualMulta(1);
	}

}
