package org.idempierelbr.cnab240.annotated;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class CNABTrailerArquivoRecord extends CNABBaseRecord {

	private int quantidadeLotes;
	private int quantidadeRegistros;
	private int quantidadeContasConciliacao;

	public CNABTrailerArquivoRecord() {
		super();
		this.setLote(9999);
		this.setTipoRegistro(9);
	}
	
	@Field(offset = 18, length = 6, paddingChar = '0' , align = Align.RIGHT )
	public int getQuantidadeLotes() {
		return quantidadeLotes;
	}
	public void setQuantidadeLotes(int quantidadeLotes) {
		this.quantidadeLotes = quantidadeLotes;
	}
	
	@Field(offset = 24, length = 6, paddingChar = '0' , align = Align.RIGHT )
	public int getQuantidadeRegistros() {
		return quantidadeRegistros;
	}
	public void setQuantidadeRegistros(int quantidadeRegistros) {
		this.quantidadeRegistros = quantidadeRegistros;
	}

	@Field(offset = 30, length = 6, paddingChar = '0' , align = Align.RIGHT )
	public int getQuantidadeContasConciliacao() {
		return quantidadeContasConciliacao;
	}

	public void setQuantidadeContasConciliacao(int quantidadeContasConciliacao) {
		this.quantidadeContasConciliacao = quantidadeContasConciliacao;
	}
	
}
