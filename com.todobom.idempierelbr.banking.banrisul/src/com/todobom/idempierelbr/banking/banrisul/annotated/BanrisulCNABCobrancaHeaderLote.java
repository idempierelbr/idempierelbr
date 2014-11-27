package com.todobom.idempierelbr.banking.banrisul.annotated;

import org.idempierelbr.cnab240.annotated.CNABCobrancaHeaderLoteRecord;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class BanrisulCNABCobrancaHeaderLote extends CNABCobrancaHeaderLoteRecord {
	public BanrisulCNABCobrancaHeaderLote() {
		super();
		super.setVersaoLeiaute(20);
	}

	@Override
	@Field(offset=34, length=13, paddingChar=' ', align=Align.LEFT)
	public String getConvenio() {
		// TODO Auto-generated method stub
		return super.getConvenio();
	}

}
