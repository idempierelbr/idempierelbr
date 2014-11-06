package com.todobom.idempierelbr.banking.santander.annotated;

import org.idempierelbr.cnab240.annotated.CNABSegmentPRecord;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class SantanderCNABSegmentP extends CNABSegmentPRecord {

	/* exclusivo santander */
	private long contaCobranca;
	private String dvContaCobranca;
	
	@Override
	@Field( offset=18 , length=4, paddingChar = '0' , align = Align.RIGHT)
	public int getAgenciaCedente() {
		// TODO Auto-generated method stub
		return super.getAgenciaCedente();
	}

	@Override
	@Field( offset=22 , length=1, paddingChar = '0' , align = Align.RIGHT)
	public String getDvAgenciaCedente() {
		// TODO Auto-generated method stub
		return super.getDvAgenciaCedente();
	}

	@Override
	@Field( offset=23 , length=9, paddingChar = '0' , align = Align.RIGHT)
	public long getContaCedente() {
		// TODO Auto-generated method stub
		return super.getContaCedente();
	}

	@Override
	@Field( offset=32 , length=1, paddingChar = '0' , align = Align.RIGHT)
	public String getDvContaCedente() {
		// TODO Auto-generated method stub
		return super.getDvContaCedente();
	}

	// conta cobrança é definida pela conta cedente
	@Override
	public void setContaCedente(long contaCedente) {
		super.setContaCedente(contaCedente);
		this.setContaCobranca(contaCedente);
	}

	@Override
	public void setDvContaCedente(String dvContaCedente) {
		super.setDvContaCedente(dvContaCedente);
		this.setDvContaCobranca(dvContaCedente);
	}

	@Override
	public String getDvAgenciaContaCedente() {
		// TODO Auto-generated method stub
		return super.getDvAgenciaContaCedente();
	}

	@Field( offset=33 , length=9, paddingChar = '0' , align = Align.RIGHT)
	public long getContaCobranca() {
		return contaCobranca;
	}

	public void setContaCobranca(long contaCobranca) {
		this.contaCobranca = contaCobranca;
	}

	@Field( offset=42 , length=1, paddingChar = '0' , align = Align.RIGHT)
	public String getDvContaCobranca() {
		return dvContaCobranca;
	}

	public void setDvContaCobranca(String dvContaCobranca) {
		this.dvContaCobranca = dvContaCobranca;
	}

	
	@Override
	@Field( offset=45 , length=13, paddingChar = '0' , align = Align.RIGHT)
	public String getNossoNumero() {
		// TODO Auto-generated method stub
		return super.getNossoNumero();
	}

	@Override
	public int getEmissaoBloqueto() {
		// TODO Auto-generated method stub
		return super.getEmissaoBloqueto();
	}

	@Override
	public String getDistribuicaoBloqueto() {
		// TODO Auto-generated method stub
		return super.getDistribuicaoBloqueto();
	}

	@Override
	@Field( offset=101 , length=4, paddingChar = '0' , align = Align.RIGHT)
	public int getAgenciaCobradora() {
		// TODO Auto-generated method stub
		return super.getAgenciaCobradora();
	}

	@Override
	@Field( offset=105 , length=1, paddingChar = '0' , align = Align.RIGHT)
	public String getDvAgenciaCobradora() {
		// TODO Auto-generated method stub
		return super.getDvAgenciaCobradora();
	}

	@Override
	public long getNumeroContrato() {
		// TODO Auto-generated method stub
		return super.getNumeroContrato();
	}

	@Override
	public void setCodigoMoeda(int codigoMoeda) {
		// santander usa código 0 para moeda REAL
		if ( codigoMoeda == 9 ) {
			super.setCodigoMoeda(0);
		} else {
			// FIXME: possivelmente gerará erros utilizar outras moedas
			super.setCodigoMoeda(codigoMoeda);
		}
	}
	
	
	
}
