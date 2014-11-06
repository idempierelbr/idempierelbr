package com.todobom.idempierelbr.banking.santander.annotated;

import java.util.Date;

import org.idempierelbr.cnab240.annotated.CNABHeaderArquivoRecord;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.FixedFormatPattern;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class SantanderCNABHeaderArquivo extends CNABHeaderArquivoRecord {

	public SantanderCNABHeaderArquivo() {
		super();
		super.setBanco(33);
		super.setNomeBanco("BANCO SANTANDER");
		super.setVersaoLayout(40);
	}

	@Override
	@Field( offset = 17, length = 1 , paddingChar = '0' , align = Align.RIGHT )
	public int getTipoInscricaoEmpresa() {
		// TODO Auto-generated method stub
		return super.getTipoInscricaoEmpresa();
	}

	@Override
	@Field( offset = 18, length = 15 , paddingChar = '0' , align = Align.RIGHT )
	public String getInscricaoEmpresa() {
		// TODO Auto-generated method stub
		return super.getInscricaoEmpresa();
	}

	// Agencia e convenio estão unificados na documentação do santander
	// normalmente o código de transmissão é a agencia seguido do nr. do convenio

	@Override
	@Field( offset = 33, length = 4 , paddingChar = '0' , align = Align.RIGHT )
	public int getAgencia() {
		// TODO Auto-generated method stub
		return super.getAgencia();
	}

	@Override
	@Field( offset = 37, length = 11 , paddingChar = '0' , align = Align.RIGHT )
	public String getConvenio() {
		// TODO Auto-generated method stub
		return super.getConvenio();
	}


	@Override
	@Field( offset=144 , length=8 , paddingChar = '0' , align = Align.LEFT )
	@FixedFormatPattern("ddMMyyyy")
	public Date getDataHoraGeracao() {
		// TODO Auto-generated method stub
		return super.getDataHoraGeracao();
	}
	

	// campos seguintes não são utilizados pelo Santander
	@Override
	public String getDvAgencia() {
		// TODO Auto-generated method stub
		return super.getDvAgencia();
	}

	@Override
	public long getConta() {
		// TODO Auto-generated method stub
		return super.getConta();
	}

	@Override
	public String getDvConta() {
		// TODO Auto-generated method stub
		return super.getDvConta();
	}

	@Override
	public String getDvAgenciaConta() {
		// TODO Auto-generated method stub
		return super.getDvAgenciaConta();
	}
	
}
