package org.idempierelbr.cnab240febraban.annotated;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;

public class CNABHeaderLoteRecord extends CNABBaseRecord {

	private String nomeEmpresa;
	private String tipoOperacao;
	private int tipoServico;
	private int versaoLeiaute;
	
	public CNABHeaderLoteRecord() {
		super();
		this.setTipoRegistro(1);
	}

	@Field ( offset = 74 , length = 30 , paddingChar = ' ' , align = Align.LEFT )
	public String getNomeEmpresa() {
		return nomeEmpresa;
	}

	public void setNomeEmpresa(String nomeEmpresa) {
		this.nomeEmpresa = nomeEmpresa;
	}

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

	@Field ( offset = 14 , length = 3 , paddingChar = '0' , align = Align.RIGHT )
	public int getVersaoLeiaute() {
		return versaoLeiaute;
	}

	public void setVersaoLeiaute(int versaoLeiaute) {
		this.versaoLeiaute = versaoLeiaute;
	}
	
}
