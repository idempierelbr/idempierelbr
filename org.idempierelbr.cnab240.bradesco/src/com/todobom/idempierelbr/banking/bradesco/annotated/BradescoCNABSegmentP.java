package com.todobom.idempierelbr.banking.bradesco.annotated;

import org.idempierelbr.cnab240.annotated.CNABSegmentPRecord;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class BradescoCNABSegmentP extends CNABSegmentPRecord {

	private int numeroCarteira;
	
	@Field( offset=38 , length=3, paddingChar = '0' , align = Align.RIGHT)
	public int getNumeroCarteira() {
		return numeroCarteira;
	}

	public void setNumeroCarteira(int numeroCarteira) {
		this.numeroCarteira = numeroCarteira;
	}

	@Override
	@Field( offset=41 , length=17, paddingChar = '0' , align = Align.RIGHT)
	public String getNossoNumero() {
		// TODO Auto-generated method stub
		return super.getNossoNumero();
	}

}
