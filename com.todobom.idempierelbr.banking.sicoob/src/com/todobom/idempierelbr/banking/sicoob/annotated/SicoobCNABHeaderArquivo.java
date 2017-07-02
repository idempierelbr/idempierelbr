package com.todobom.idempierelbr.banking.sicoob.annotated;

import org.idempierelbr.cnab240.annotated.CNABHeaderArquivoRecord;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class SicoobCNABHeaderArquivo extends CNABHeaderArquivoRecord {
	
	private int densidade;
	
	public SicoobCNABHeaderArquivo() {
		super();
		this.setBanco(756);
		this.setNomeBanco("BANCO COOPERATIVO DO BRASIL S.A");
		this.setVersaoLayout(0);
		
	}

	@Override
	@Field( offset = 33, length = 20 , paddingChar = ' ' , align = Align.RIGHT )
	public String getConvenio() {
		// TODO Auto-generated method stub
		return " ";
	}
	
	@Override
	@Field( offset = 72, length = 1 , paddingChar = ' ' , align = Align.RIGHT )
	public String getDvAgenciaConta() {
		return " ";
	}
	
	@Field( offset = 164, length = 3 , paddingChar = '0' , align = Align.RIGHT )
	public int getVersaoLayout() {
		return 81;
	}	
	
	@Field(offset=167, length=5, paddingChar='0', align=Align.RIGHT)
	public int getDensidade() {
		return densidade;
	}

	public void setDensidade(int densidade) {
		this.densidade = densidade;
	}

	
	
}
