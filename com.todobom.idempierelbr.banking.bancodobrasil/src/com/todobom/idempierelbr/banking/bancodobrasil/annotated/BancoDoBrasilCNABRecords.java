package com.todobom.idempierelbr.banking.bancodobrasil.annotated;

import org.idempierelbr.cnab240.annotated.CNABHeaderLoteRecord;
import org.idempierelbr.cnab240.annotated.CNABRecords;

public class BancoDoBrasilCNABRecords extends CNABRecords {

	public BancoDoBrasilCNABRecords() {
		super();
		this.setHeaderArquivoClass(BancoDoBrasilCNABHeaderArquivo.class);
		this.setHeaderLoteCobrancaClass(BancoDoBrasilCNABCobrancaHeaderLote.class);
	}

	@Override
	public CNABHeaderLoteRecord addHeaderLote(int tipoServico, int lote)
			throws InstantiationException, IllegalAccessException {
		// TODO Auto-generated method stub
		
		super.addHeaderLote(tipoServico, lote);
		
		BancoDoBrasilCNABHeaderArquivo header = (BancoDoBrasilCNABHeaderArquivo) this.getFileHeader();
		String adendo = header.getAdendoConvenioBB();
		
		BancoDoBrasilCNABCobrancaHeaderLote loteAdded = (BancoDoBrasilCNABCobrancaHeaderLote) super.addHeaderLote(tipoServico, lote);
		loteAdded.setAdendoConvenioBB( adendo );
		
		return loteAdded;
	}
	
	

}
