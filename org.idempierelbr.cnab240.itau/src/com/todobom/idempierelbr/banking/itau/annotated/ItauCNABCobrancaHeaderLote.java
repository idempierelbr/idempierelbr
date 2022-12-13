package com.todobom.idempierelbr.banking.itau.annotated;

import org.idempierelbr.cnab240.annotated.CNABCobrancaHeaderLoteRecord;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class ItauCNABCobrancaHeaderLote extends CNABCobrancaHeaderLoteRecord {

	public ItauCNABCobrancaHeaderLote() {
		super();
		super.setVersaoLeiaute(30);
	}

	@Field( offset=12 , length=2 , paddingChar='0')
	public int getZeros1() {
		return 0;
	}

	public void setZeros1( int Zeros ) {
	}

	// Convênio não é representado neste registro
	@Override
	public String getConvenio() {
		// TODO Auto-generated method stub
		return super.getConvenio();
	}

	// Mensagem1 não é representada neste registro
	@Override
	public String getMensagem1() {
		// TODO Auto-generated method stub
		return super.getMensagem1();
	}

	// Mensagem2 não é representada neste registro
	@Override
	public String getMensagem2() {
		// TODO Auto-generated method stub
		return super.getMensagem2();
	}

	// Agência não leva DAC neste registro
	@Override
	public String getDvAgencia() {
		// TODO Auto-generated method stub
		return super.getDvAgencia();
	}

	// DAC da conta do Itaú é calculado com base na agência e conta
	// é colocado na posição do DAC Agência e Conta do padrão FEBRABAN
	@Override
	@Field(offset=73, length=1, paddingChar='0', align=Align.RIGHT)
	public String getDvConta() {
		// TODO Auto-generated method stub
		return super.getDvConta();
	}

	// DAC Agência/Conta foi tratado no registro anterior
	@Override
	public String getDvAgenciaConta() {
		// TODO Auto-generated method stub
		return super.getDvAgenciaConta();
	}

}
