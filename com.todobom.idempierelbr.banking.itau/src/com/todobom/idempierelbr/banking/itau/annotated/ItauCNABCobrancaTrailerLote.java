package com.todobom.idempierelbr.banking.itau.annotated;

import org.idempierelbr.cnab240.annotated.CNABCobrancaTrailerLoteRecord;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class ItauCNABCobrancaTrailerLote extends CNABCobrancaTrailerLoteRecord {


	// Registros não utilizados
	@Override
	public int getQuantidadeCobrancaCaucionada() {
		// TODO Auto-generated method stub
		return super.getQuantidadeCobrancaCaucionada();
	}

	@Override
	public Double getTotalCobrancaCaucionada() {
		// TODO Auto-generated method stub
		return super.getTotalCobrancaCaucionada();
	}

	@Override
	public int getQuantidadeCobrancaDescontada() {
		// TODO Auto-generated method stub
		return super.getQuantidadeCobrancaDescontada();
	}

	@Override
	public Double getTotalCobrancaDescontada() {
		// TODO Auto-generated method stub
		return super.getTotalCobrancaDescontada();
	}

	// seguem Zeros do arquivo
	@Field(offset=70, length=46, paddingChar='0', align=Align.RIGHT)
	public int getZeros1() {
		return 0;
	}
	
	public void setZeros1 ( int Zeros ) {
	}

}
