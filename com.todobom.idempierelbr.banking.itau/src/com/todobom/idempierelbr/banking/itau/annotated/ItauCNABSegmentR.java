package com.todobom.idempierelbr.banking.itau.annotated;

import org.idempierelbr.cnab240.annotated.CNABSegmentRRecord;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class ItauCNABSegmentR extends CNABSegmentRRecord {

	// registros removidos
	@Override
	public int getCodigoDesconto2() {
		// TODO Auto-generated method stub
		return super.getCodigoDesconto2();
	}

	@Override
	public int getCodigoDesconto3() {
		// TODO Auto-generated method stub
		return super.getCodigoDesconto3();
	}

	@Override
	public String getInformacoesSacado() {
		// TODO Auto-generated method stub
		return super.getInformacoesSacado();
	}

	@Override
	public String getMensagem4() {
		// TODO Auto-generated method stub
		return super.getMensagem4();
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

	// seguem Zeros do arquivo
	@Field(offset=18, length=1, paddingChar='0', align=Align.RIGHT)
	public int getZeros1() {
		return 0;
	}
	
	public void setZeros1 ( int Zeros ) {
	}
	
	@Field(offset=42, length=1, paddingChar='0', align=Align.RIGHT)
	public int getZeros2() {
		return 0;
	}
	
	public void setZeros2 ( int Zeros ) {
	}
	
	@Field(offset=208, length=8, paddingChar='0', align=Align.RIGHT)
	public int getZeros3() {
		return 0;
	}
	
	public void setZeros3 ( int Zeros ) {
	}
	
	@Field(offset=217, length=12, paddingChar='0', align=Align.RIGHT)
	public int getZeros4() {
		return 0;
	}
	
	public void setZeros4 ( int Zeros ) {
	}

	@Field(offset=231, length=1, paddingChar='0', align=Align.RIGHT)
	public int getZeros5() {
		return 0;
	}
	
	public void setZeros5 ( int Zeros ) {
	}

	public ItauCNABSegmentR() {
		super();
		super.setDecimaisPercentualMulta(2);
	}

}
