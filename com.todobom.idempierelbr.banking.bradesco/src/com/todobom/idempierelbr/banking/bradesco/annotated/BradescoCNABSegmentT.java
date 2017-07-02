package com.todobom.idempierelbr.banking.bradesco.annotated;

import org.idempierelbr.cnab240.annotated.CNABSegmentTRecord;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class BradescoCNABSegmentT extends CNABSegmentTRecord {

	@Field( offset=46 , length=12, paddingChar='0' , align = Align.RIGHT)
	public String getNossoNumero() {
		return super.getNossoNumero();
		// return nossoNumero;
	}

}
