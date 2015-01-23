package com.todobom.idempierelbr.banking.bradesco.annotated;

import org.idempierelbr.cnab240.annotated.CNABHeaderArquivoRecord;

import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class BradescoCNABHeaderArquivo extends CNABHeaderArquivoRecord {
	public BradescoCNABHeaderArquivo() {
		super();
		this.setBanco(237);
		this.setNomeBanco("BRADESCO");
		this.setVersaoLayout(84);
	}

}
