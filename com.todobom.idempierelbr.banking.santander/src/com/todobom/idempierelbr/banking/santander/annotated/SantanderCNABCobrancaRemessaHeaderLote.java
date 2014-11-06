package com.todobom.idempierelbr.banking.santander.annotated;

import java.util.Date;

import org.idempierelbr.cnab240.annotated.CNABCobrancaHeaderLoteRecord;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class SantanderCNABCobrancaRemessaHeaderLote extends
		CNABCobrancaHeaderLoteRecord {

	
	public SantanderCNABCobrancaRemessaHeaderLote() {
		super();
		super.setVersaoLeiaute(30);
	}

	@Override
	@Field ( offset = 54 , length = 4 , paddingChar = '0' , align = Align.RIGHT )
	public int getAgencia() {
		// TODO Auto-generated method stub
		return super.getAgencia();
	}

	@Override
	@Field ( offset = 58 , length = 11 , paddingChar = '0' , align = Align.RIGHT )
	public String getConvenio() {
		return super.getConvenio();
	}

	@Override
	public String getDvAgencia() {
		// TODO Auto-generated method stub
		return super.getDvAgencia();
	}

	@Override
	public long getConta() {
		// TODO Auto-generated method stub
		return super.getConta();
	}

	@Override
	public String getDvConta() {
		// TODO Auto-generated method stub
		return super.getDvConta();
	}

	@Override
	public String getDvAgenciaConta() {
		// TODO Auto-generated method stub
		return super.getDvAgenciaConta();
	}

	@Override
	public Date getDataCredito() {
		return super.getDataCredito();
	}

}
