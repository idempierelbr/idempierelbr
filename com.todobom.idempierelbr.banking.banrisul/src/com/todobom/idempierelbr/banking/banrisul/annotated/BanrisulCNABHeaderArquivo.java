package com.todobom.idempierelbr.banking.banrisul.annotated;

import org.idempierelbr.cnab240.annotated.CNABHeaderArquivoRecord;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class BanrisulCNABHeaderArquivo extends CNABHeaderArquivoRecord {

	public BanrisulCNABHeaderArquivo() {
		super();
		this.setBanco(41);
		this.setNomeBanco("BANRISUL");
		this.setVersaoLayout(40);
	}

	@Override
	@Field(offset=33, length=13, paddingChar=' ', align=Align.LEFT)
	public String getConvenio() {
		// TODO Auto-generated method stub
		return super.getConvenio();
	}

	
}
