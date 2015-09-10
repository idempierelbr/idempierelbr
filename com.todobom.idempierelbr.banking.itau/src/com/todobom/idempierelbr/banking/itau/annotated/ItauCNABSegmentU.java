package com.todobom.idempierelbr.banking.itau.annotated;

import org.idempierelbr.cnab240.annotated.CNABSegmentURecord;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class ItauCNABSegmentU extends CNABSegmentURecord {

	// campos não presentes neste registro
	@Override
	public Double getOutrasDespesas() {
		// TODO Auto-generated method stub
		return new Double(0);
	}

	@Override
	public Double getOutrosCreditos() {
		// TODO Auto-generated method stub
		return new Double(0);
	}

	@Override
	public int getCodigoBancoCorrespondente() {
		// TODO Auto-generated method stub
		return super.getCodigoBancoCorrespondente();
	}

	@Override
	public Double getValorPago() {
		/*
		 * O banco Itaú não segue o padrão e retorna no campo ValorPago
		 * o valor sem incluir juros multas e descontos.
		 */
		
		return ( super.getValorPago()
				+ this.getValorAcrescimos()
				- this.getValorAbatimento()
				- this.getValorDesconto() );
	}
	
    // zeros deste registro
	@Field(offset=108, length=30, paddingChar='0', align=Align.RIGHT)
	public int getZeros1() {
		return 0;
	}

	@Field(offset=211, length=3, paddingChar='0', align=Align.RIGHT)
	public int getZeros2() {
		return 0;
	}

	public void setZeros1( int zeros ) {}
	public void setZeros2( int zeros ) {}


}
