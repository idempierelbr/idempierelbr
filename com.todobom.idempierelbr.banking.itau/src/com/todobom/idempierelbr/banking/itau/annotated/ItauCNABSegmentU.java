package com.todobom.idempierelbr.banking.itau.annotated;

import java.math.BigDecimal;

import org.idempierelbr.cnab240.annotated.CNABSegmentGroup;
import org.idempierelbr.cnab240.annotated.CNABSegmentTRecord;
import org.idempierelbr.cnab240.annotated.CNABSegmentURecord;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.FixedFormatDecimal;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class ItauCNABSegmentU extends CNABSegmentURecord {

	private Double valorCreditado;
	
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

	// Itaú possui o valor creditado no lugar do valor pago
	@Field( offset=78 , length=15, paddingChar='0' , align = Align.RIGHT)
	@FixedFormatDecimal( decimals = 2 , useDecimalDelimiter = false )
	public Double getValorCreditado() {
		return valorCreditado;
	}
	public void setValorCreditado(Double valorPago) {
		this.valorCreditado = valorPago;
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

	@Override
	public Double getValorPago() {
		CNABSegmentGroup group = getGroup();
		if (group == null) {
			throw new RuntimeException("Segmento não agrupado");
		}
		CNABSegmentTRecord segT = (CNABSegmentTRecord) group.getRecord("T");
		if (segT == null) {
			throw new RuntimeException("Segmento T não encontrado");
		}

		// soma tarifa utilizando BigDecimal para evitar dízimas
		return BigDecimal.valueOf(valorCreditado).
		add(BigDecimal.valueOf(segT.getValorTarifas())).doubleValue();
		
	}
	
	@Override
	public void setValorPago(Double valorPago) {
		CNABSegmentGroup group = getGroup();
		if (group == null) {
			throw new RuntimeException("Segmento não agrupado");
		}
		CNABSegmentTRecord segT = (CNABSegmentTRecord) group.getRecord("T");
		if (segT == null) {
			throw new RuntimeException("Segmento T não encontrado");
		}

		// subtrai tarifa utilizando BigDecimal para evitar dízimas
		this.valorCreditado = BigDecimal.valueOf(valorPago).
				subtract(BigDecimal.valueOf(segT.getValorTarifas())).doubleValue();
	}

	public void setZeros1( int zeros ) {}
	public void setZeros2( int zeros ) {}

}
