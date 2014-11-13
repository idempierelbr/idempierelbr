package com.todobom.idempierelbr.banking.itau.annotated;

import org.idempierelbr.cnab240.annotated.CNABSegmentTRecord;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class ItauCNABSegmentT extends CNABSegmentTRecord {

	private int numeroCarteira;
	private String codigoLiquidacao;
	
	// campo vazio neste registro
	@Override
	public String getDvAgenciaCedente() {
		// TODO Auto-generated method stub
		return super.getDvAgenciaCedente();
	}

	@Override
	@Field(offset=37, length=1, paddingChar=' ', align=Align.LEFT)
	public String getDvContaCedente() {
		// TODO Auto-generated method stub
		return super.getDvContaCedente();
	}

	@Override
	public String getDvAgenciaContaCedente() {
		// TODO Auto-generated method stub
		return super.getDvAgenciaContaCedente();
	}

	@Field(offset=38, length=3, paddingChar='0', align=Align.RIGHT)
	public int getNumeroCarteira() {
		return numeroCarteira;
	}

	public void setNumeroCarteira(int numeroCarteira) {
		this.numeroCarteira = numeroCarteira;
	}

	@Override
	@Field(offset=41, length=9, paddingChar='0', align=Align.RIGHT)
	public String getNossoNumero() {
		// TODO Auto-generated method stub
		return super.getNossoNumero();
	}

	// campo vazio neste registro
	@Override
	public int getCodigoCarteira() {
		return 0;
	}

	@Override
	@Field(offset=59, length=10, paddingChar=' ', align=Align.LEFT)
	public String getNumeroDocumento() {
		// TODO Auto-generated method stub
		return super.getNumeroDocumento();
	}

	// campo vazio neste registro
	@Override
	public int getBancoCobrador() {
		// TODO Auto-generated method stub
		return super.getBancoCobrador();
	}

	// campo vazio neste registro
	@Override
	public int getCodigoMoeda() {
		// TODO Auto-generated method stub
		return super.getCodigoMoeda();
	}

	@Override
	@Field(offset=149, length=30, paddingChar=' ', align=Align.RIGHT)
	public String getNomeSacado() {
		// TODO Auto-generated method stub
		return super.getNomeSacado();
	}

	// campo vazio neste registro
	@Override
	public long getNumeroContrato() {
		// TODO Auto-generated method stub
		return super.getNumeroContrato();
	}

	@Override
	@Field(offset=214, length=8, paddingChar=' ', align=Align.LEFT)
	public String getMotivoOcorrencia() {
		// TODO Auto-generated method stub
		return super.getMotivoOcorrencia();
	}

	@Field(offset=222, length=2, paddingChar='0', align=Align.RIGHT)
	public String getCodigoLiquidacao() {
		return codigoLiquidacao;
	}

	public void setCodigoLiquidacao(String codigoLiquidacao) {
		this.codigoLiquidacao = codigoLiquidacao;
	}

	// seguem zeros deste registro
	@Field(offset=23, length=1, paddingChar='0', align=Align.RIGHT)
	public int getZeros1() {
		return 0;
	}
	
	@Field(offset=36, length=1, paddingChar='0', align=Align.RIGHT)
	public int getZeros2() {
		return 0;
	}

	@Field(offset=58, length=1, paddingChar='0', align=Align.RIGHT)
	public int getZeros3() {
		return 0;
	}

	@Field(offset=97, length=3, paddingChar='0', align=Align.RIGHT)
	public int getZeros4() {
		return 0;
	}

	@Field(offset=131, length=2, paddingChar='0', align=Align.RIGHT)
	public int getZeros5() {
		return 0;
	}

	@Field(offset=189, length=10, paddingChar='0', align=Align.RIGHT)
	public int getZeros6() {
		return 0;
	}

	public void setZeros1( int zeros ) {}
	public void setZeros2( int zeros ) {}
	public void setZeros3( int zeros ) {}
	public void setZeros4( int zeros ) {}
	public void setZeros5( int zeros ) {}
	public void setZeros6( int zeros ) {}
	
}
