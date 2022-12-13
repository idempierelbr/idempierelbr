package com.todobom.idempierelbr.banking.santander.annotated;

import org.idempierelbr.cnab240.annotated.CNABCobrancaTrailerLoteRecord;

import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class SantanderCNABCobrancaRemessaTrailerLote extends
		CNABCobrancaTrailerLoteRecord {

	
	// APENAS exclui campos da remessa
	
	@Override
	public int getQuantidadeCobrancaSimples() {
		// TODO Auto-generated method stub
		return super.getQuantidadeCobrancaSimples();
	}

	@Override
	public Double getTotalCobrancaSimples() {
		// TODO Auto-generated method stub
		return super.getTotalCobrancaSimples();
	}

	@Override
	public int getQuantidadeCobrancaVinculada() {
		// TODO Auto-generated method stub
		return super.getQuantidadeCobrancaVinculada();
	}

	@Override
	public Double getTotalCobrancaVinculada() {
		// TODO Auto-generated method stub
		return super.getTotalCobrancaVinculada();
	}

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

	@Override
	public String getNumeroAvisoLancamento() {
		// TODO Auto-generated method stub
		return super.getNumeroAvisoLancamento();
	}

	
	
	
}
