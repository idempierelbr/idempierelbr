package com.todobom.idempierelbr.banking.santander.annotated;

import org.idempierelbr.cnab240.annotated.CNABSegmentQRecord;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class SantanderCNABSegmentQ extends CNABSegmentQRecord {

	private int identificadorCarne;
	private int sequencialParcela;
	private int totalParcelas;
	private int numeroPlano;
		
	@Override
	public int getBancoCorrespondente() {
		// TODO Auto-generated method stub
		return super.getBancoCorrespondente();
	}

	@Override
	public String getNossoNumeroCorrespondente() {
		// TODO Auto-generated method stub
		return super.getNossoNumeroCorrespondente();
	}

	@Field( offset=210 , length=3, paddingChar = '0' , align = Align.RIGHT)
	public int getIdentificadorCarne() {
		return identificadorCarne;
	}

	public void setIdentificadorCarne(int identificadorCarne) {
		this.identificadorCarne = identificadorCarne;
	}

	@Field( offset=213 , length=3, paddingChar = '0' , align = Align.RIGHT)
	public int getSequencialParcela() {
		return sequencialParcela;
	}

	public void setSequencialParcela(int sequencialParcela) {
		this.sequencialParcela = sequencialParcela;
	}

	@Field( offset=216 , length=3, paddingChar = '0' , align = Align.RIGHT)
	public int getTotalParcelas() {
		return totalParcelas;
	}

	public void setTotalParcelas(int totalParcelas) {
		this.totalParcelas = totalParcelas;
	}

	@Field( offset=219 , length=3, paddingChar = '0' , align = Align.RIGHT)
	public int getNumeroPlano() {
		return numeroPlano;
	}

	public void setNumeroPlano(int numeroPlano) {
		this.numeroPlano = numeroPlano;
	}

	
}
