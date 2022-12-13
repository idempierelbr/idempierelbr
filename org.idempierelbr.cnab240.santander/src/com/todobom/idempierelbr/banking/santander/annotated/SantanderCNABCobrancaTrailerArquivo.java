package com.todobom.idempierelbr.banking.santander.annotated;

import org.idempierelbr.cnab240.annotated.CNABTrailerArquivoRecord;

import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class SantanderCNABCobrancaTrailerArquivo extends CNABTrailerArquivoRecord {

	@Override
	public int getQuantidadeContasConciliacao() {
		// TODO Auto-generated method stub
		return super.getQuantidadeContasConciliacao();
	}

}
