package com.todobom.idempierelbr.banking.bancodobrasil.annotated;

import org.idempierelbr.cnab240.annotated.CNABHeaderArquivoRecord;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class BancoDoBrasilCNABHeaderArquivo extends CNABHeaderArquivoRecord {

	private String adendoConvenioBB;
	
	public BancoDoBrasilCNABHeaderArquivo() {
		super();
		this.setBanco(1);
		this.setNomeBanco("BANCO DO BRASIL S.A.");
		this.setVersaoLayout(0);
		
	}

	@Override
	@Field( offset = 33, length = 9 , paddingChar = '0' , align = Align.RIGHT )
	public String getConvenio() {
		// TODO Auto-generated method stub
		return super.getConvenio();
	}

	@Field( offset = 42, length = 11 , paddingChar = ' ' , align = Align.LEFT )
	public String getAdendoConvenioBB() {
		return adendoConvenioBB;
	}

	public void setAdendoConvenioBB(String adendoConvenioBB) {
		this.adendoConvenioBB = adendoConvenioBB;
	}
	
}
