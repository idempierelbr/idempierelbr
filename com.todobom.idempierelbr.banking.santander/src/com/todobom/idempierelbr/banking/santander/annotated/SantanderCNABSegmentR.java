package com.todobom.idempierelbr.banking.santander.annotated;

import java.util.Date;

import org.idempierelbr.cnab240.annotated.CNABSegmentRRecord;

import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class SantanderCNABSegmentR extends CNABSegmentRRecord {
	
	public SantanderCNABSegmentR() {
		super();
		super.setDecimaisPercentualMulta(2);
		super.setDecimaisPercentualDesconto(5);
	}
	
	@Override
	public int getCodigoDesconto3() {
		// TODO Auto-generated method stub
		return super.getCodigoDesconto3();
	}
	@Override
	public Date getDataDesconto3() {
		// TODO Auto-generated method stub
		return super.getDataDesconto3();
	}
	@Override
	public String getDesconto3() {
		// TODO Auto-generated method stub
		return super.getDesconto3();
	}
	@Override
	public String getInformacoesSacado() {
		// TODO Auto-generated method stub
		return super.getInformacoesSacado();
	}
	@Override
	public int getCodOcorrenciaSacado() {
		// TODO Auto-generated method stub
		return super.getCodOcorrenciaSacado();
	}
	@Override
	public int getDebitoBanco() {
		// TODO Auto-generated method stub
		return super.getDebitoBanco();
	}
	@Override
	public int getDebitoAgencia() {
		// TODO Auto-generated method stub
		return super.getDebitoAgencia();
	}
	@Override
	public String getDebitoAgenciaDV() {
		// TODO Auto-generated method stub
		return super.getDebitoAgenciaDV();
	}
	@Override
	public long getDebitoConta() {
		// TODO Auto-generated method stub
		return super.getDebitoConta();
	}
	@Override
	public String getDebitoContaDV() {
		// TODO Auto-generated method stub
		return super.getDebitoContaDV();
	}
	@Override
	public String getDebitoAgContaDV() {
		// TODO Auto-generated method stub
		return super.getDebitoAgContaDV();
	}
	@Override
	public int getAvisoDebito() {
		// TODO Auto-generated method stub
		return super.getAvisoDebito();
	}

	
}
