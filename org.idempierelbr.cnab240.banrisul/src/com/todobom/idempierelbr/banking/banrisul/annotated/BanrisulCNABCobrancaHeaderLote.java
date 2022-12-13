package com.todobom.idempierelbr.banking.banrisul.annotated;

import org.idempierelbr.cnab240.annotated.CNABCobrancaHeaderLoteRecord;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class BanrisulCNABCobrancaHeaderLote extends CNABCobrancaHeaderLoteRecord {

	private int agenciaConvenio;

	public BanrisulCNABCobrancaHeaderLote() {
		super();
		super.setVersaoLeiaute(20);
	}

	@Override
	@Field(offset=38, length=9, paddingChar='0', align=Align.RIGHT)
	public String getConvenio() {
		// TODO Auto-generated method stub
		return super.getConvenio();
	}

	@Override
	public void setConvenio( String convenio ) {
		super.setConvenio( convenio.trim().replaceAll("[^0-9]*", "") );
	}

	@Field(offset=34, length=4, paddingChar='0', align=Align.RIGHT)
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
