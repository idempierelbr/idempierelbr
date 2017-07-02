package com.todobom.idempierelbr.banking.bradesco.annotated;

import org.idempierelbr.cnab240.annotated.CNABHeaderArquivoRecord;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class BradescoCNABHeaderArquivo extends CNABHeaderArquivoRecord {

	private int densidade;

	public BradescoCNABHeaderArquivo() {
		super();
		this.setBanco(237);
		this.setNomeBanco("BRADESCO");
		this.setVersaoLayout(84);
		this.setDensidade(6250);
	}

	@Field(offset=167, length=5, paddingChar='0', align=Align.RIGHT)
	public int getDensidade() {
		return densidade;
	}

	public void setDensidade(int densidade) {
		this.densidade = densidade;
	}

	@Override
	@Field(offset=33, length=20, paddingChar='0', align=Align.RIGHT)
	public String getConvenio() {
		// TODO Auto-generated method stub
		return super.getConvenio();
	}

	@Override
	public String getDvAgenciaConta() {
		// TODO Auto-generated method stub
		return super.getDvAgenciaConta();
	}

}
