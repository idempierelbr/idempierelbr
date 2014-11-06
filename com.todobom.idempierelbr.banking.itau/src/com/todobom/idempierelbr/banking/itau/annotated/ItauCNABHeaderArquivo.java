package com.todobom.idempierelbr.banking.itau.annotated;

import org.idempierelbr.cnab240.annotated.CNABHeaderArquivoRecord;
import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class ItauCNABHeaderArquivo extends CNABHeaderArquivoRecord {

	public ItauCNABHeaderArquivo() {
		super();
		super.setBanco(341);
		super.setNomeBanco("BANCO ITAU SA");
		super.setVersaoLayout(40);
	}

	// Convênio não é representado neste registro
	@Override
	public String getConvenio() {
		// TODO Auto-generated method stub
		return super.getConvenio();
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
	@Field(offset=72, length=1, paddingChar='0', align=Align.RIGHT)
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

	
	// Registros seguintes apenas para preencher os zeros do registro
	@Field(offset=167, length=5, paddingChar='0')
	public int getZeros1() {
		return 0;
	}

	public void setZeros1( int Zero ) {
		return;
	}
	
	@Field(offset=226, length=3, paddingChar='0')
	public int getZeros2() {
		return 0;
	}
	
	public void setZeros2( int Zero ) {
		return;
	}
	
}
