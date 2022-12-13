package com.todobom.idempierelbr.banking.bancodobrasil.annotated;

import org.idempierelbr.cnab240.annotated.CNABCobrancaHeaderLoteRecord;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class BancoDoBrasilCNABCobrancaHeaderLote extends CNABCobrancaHeaderLoteRecord {

	private String adendoConvenioBB;
	private String identificadorTestes;
	
	@Override
	@Field(offset=34, length = 9 , paddingChar = '0' , align = Align.RIGHT )
	public String getConvenio() {
		// TODO Auto-generated method stub
		return super.getConvenio();
	}

	@Field(offset=43, length = 11 , paddingChar = ' ' , align = Align.LEFT )
	public String getAdendoConvenioBB() {
		return adendoConvenioBB;
	}

	public void setAdendoConvenioBB(String adendoConvenioBB) {
		this.adendoConvenioBB = adendoConvenioBB;
	}

	@Field(offset=52, length = 2 , paddingChar = ' ' , align = Align.LEFT )
	public String getIdentificadorTestes() {
		return identificadorTestes;
	}

	public void setIdentificadorTestes(String identificadorTestes) {
		this.identificadorTestes = identificadorTestes;
	}

}
