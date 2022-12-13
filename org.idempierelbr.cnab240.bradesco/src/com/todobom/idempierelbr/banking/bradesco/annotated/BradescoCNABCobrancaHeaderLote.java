package com.todobom.idempierelbr.banking.bradesco.annotated;

import org.idempierelbr.cnab240.annotated.CNABCobrancaHeaderLoteRecord;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class BradescoCNABCobrancaHeaderLote extends
		CNABCobrancaHeaderLoteRecord {

	public BradescoCNABCobrancaHeaderLote() {
		super();
		super.setVersaoLeiaute(42);
	}

	@Override
	@Field( offset = 34, length = 20 , paddingChar = '0' , align = Align.RIGHT )
	public String getConvenio() {
		// TODO Auto-generated method stub
		return super.getConvenio();
	}

	@Override
	public String getDvAgenciaConta() {
		// TODO Auto-generated method stub
		return super.getDvAgenciaConta();
	}

}
