package org.idempierelbr.cnab240.annotated;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class CNABHeaderLoteBaseRecord extends CNABBaseRecord {

	private String tipoOperacao;
	private int tipoServico;

	@Field ( offset = 9 , length = 1 , paddingChar = ' ' , align = Align.LEFT )
	public String getTipoOperacao() {
		return tipoOperacao;
	}

	public void setTipoOperacao(String tipoOperacao) {
		this.tipoOperacao = tipoOperacao;
	}

	@Field ( offset = 10 , length = 2 , paddingChar = '0' , align = Align.RIGHT )
	public int getTipoServico() {
		return tipoServico;
	}

	public void setTipoServico(int tipoServico) {
		this.tipoServico = tipoServico;
	}


}
