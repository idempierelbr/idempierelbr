package com.todobom.idempierelbr.banking.banrisul.annotated;

import org.idempierelbr.cnab240.annotated.CNABSegmentURecord;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.FixedFormatDecimal;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class BanrisulCNABSegmentU extends CNABSegmentURecord {

	private Double valorPrincipal;

	@Field( offset=78 , length=15, paddingChar='0' , align = Align.RIGHT)
	@FixedFormatDecimal( decimals = 2 , useDecimalDelimiter = false )
	public Double getValorPrincipal() {
		return valorPrincipal;
	}
	public void setValorPrincipal(Double valorPrincipal) {
		this.valorPrincipal = valorPrincipal;
	}


	@Override
	public Double getValorPago() {
		/*
		 * O Banrisul não segue o padrão e retorna no campo ValorPago
		 * o valor sem incluir juros multas e descontos.
		 */
		
		return ( getValorPrincipal()
				+ getValorAcrescimos()
				- getValorAbatimento()
				- getValorDesconto() );
	}
	
}
