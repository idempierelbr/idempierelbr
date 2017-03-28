package com.todobom.idempierelbr.banking.sicoob.annotated;

import org.idempierelbr.cnab240.annotated.CNABCobrancaHeaderLoteRecord;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class SicoobCNABCobrancaHeaderLote extends CNABCobrancaHeaderLoteRecord {

		
	@Override
	@Field ( offset = 14 , length = 3 , paddingChar = '0' , align = Align.RIGHT )
	public int getVersaoLeiaute() {
		return 40;
	}
}
