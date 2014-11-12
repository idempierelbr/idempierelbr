package org.idempierelbr.cnab240.annotated;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class CNABHeaderLoteRecord extends CNABHeaderLoteBaseRecord {

	private int versaoLeiaute;
	private int tipoInscricaoEmpresa;
	private String inscricaoEmpresa;
	private String convenio;
	private int agencia;
	private String dvAgencia;
	private long conta;
	private String dvConta;
	private String dvAgenciaConta;
	private String nomeEmpresa;
	
	public CNABHeaderLoteRecord() {
		super();
		this.setTipoRegistro(1);
	}

	@Field ( offset = 14 , length = 3 , paddingChar = '0' , align = Align.RIGHT )
	public int getVersaoLeiaute() {
		return versaoLeiaute;
	}

	public void setVersaoLeiaute(int versaoLeiaute) {
		this.versaoLeiaute = versaoLeiaute;
	}
	
	@Field( offset = 18, length = 1 , paddingChar = '0' , align = Align.RIGHT )
	public int getTipoInscricaoEmpresa() {
		return tipoInscricaoEmpresa;
	}



	public void setTipoInscricaoEmpresa(int tipoInscricaoEmpresa) {
		this.tipoInscricaoEmpresa = tipoInscricaoEmpresa;
	}



	@Field( offset = 19, length = 15 , paddingChar = '0' , align = Align.RIGHT )
	public String getInscricaoEmpresa() {
		return inscricaoEmpresa;
	}



	public void setInscricaoEmpresa(String inscricaoEmpresa) {
		this.inscricaoEmpresa = inscricaoEmpresa;
	}

	@Field( offset = 34, length = 20 , paddingChar = ' ' , align = Align.LEFT )
	public String getConvenio() {
		return convenio;
	}


	public void setConvenio(String convenio) {
		this.convenio = convenio;
	}


	@Field( offset = 54, length = 5 , paddingChar = '0' , align = Align.RIGHT )
	public int getAgencia() {
		return agencia;
	}


	public void setAgencia(int agencia) {
		this.agencia = agencia;
	}


	@Field( offset = 59, length = 1 , paddingChar = '0' , align = Align.LEFT )
	public String getDvAgencia() {
		return dvAgencia;
	}


	public void setDvAgencia(String dvAgencia) {
		this.dvAgencia = dvAgencia;
	}


	@Field( offset = 60, length = 12 , paddingChar = '0' , align = Align.RIGHT )
	public long getConta() {
		return conta;
	}


	public void setConta(long conta) {
		this.conta = conta;
	}


	@Field( offset = 72, length = 1 , paddingChar = '0' , align = Align.RIGHT )
	public String getDvConta() {
		return dvConta;
	}


	public void setDvConta(String dvConta) {
		this.dvConta = dvConta;
	}


	@Field( offset = 73, length = 1 , paddingChar = '0' , align = Align.RIGHT )
	public String getDvAgenciaConta() {
		return dvAgenciaConta;
	}


	public void setDvAgenciaConta(String dvAgenciaConta) {
		this.dvAgenciaConta = dvAgenciaConta;
	}


	@Field ( offset = 74 , length = 30 , paddingChar = ' ' , align = Align.LEFT )
	public String getNomeEmpresa() {
		return nomeEmpresa;
	}

	public void setNomeEmpresa(String nomeEmpresa) {
		this.nomeEmpresa = nomeEmpresa;
	}

}
