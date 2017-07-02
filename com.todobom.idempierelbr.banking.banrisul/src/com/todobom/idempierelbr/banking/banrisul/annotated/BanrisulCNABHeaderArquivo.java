package com.todobom.idempierelbr.banking.banrisul.annotated;

import org.idempierelbr.cnab240.annotated.CNABHeaderArquivoRecord;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class BanrisulCNABHeaderArquivo extends CNABHeaderArquivoRecord {

	private int agenciaConvenio;
	
	public BanrisulCNABHeaderArquivo() {
		super();
		this.setBanco(41);
		this.setNomeBanco("BANRISUL");
		this.setVersaoLayout(40);
	}

	@Override
	@Field(offset=37, length=9, paddingChar='0', align=Align.RIGHT)
	public String getConvenio() {
		// TODO Auto-generated method stub
		return super.getConvenio();
	}

	@Override
	public void setConvenio( String convenio ) {
		super.setConvenio( convenio.trim().replaceAll("[^0-9]*", "") );
	}

	@Field(offset=33, length=4, paddingChar='0', align=Align.RIGHT)
	public int getAgenciaConvenio() {
		return agenciaConvenio;
	}

	public void setAgenciaConvenio(int agenciaConvenio) {
		this.agenciaConvenio = agenciaConvenio;
	}

	@Override
	public void setAgencia(int agencia) {
		// TODO Auto-generated method stub
		this.agenciaConvenio = agencia;
		super.setAgencia(agencia);
	}
	
}
