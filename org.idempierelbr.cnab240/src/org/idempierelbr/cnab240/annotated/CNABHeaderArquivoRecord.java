package org.idempierelbr.cnab240.annotated;

import java.util.Date;

import com.ancientprogramming.fixedformat4j.annotation.Align;
import com.ancientprogramming.fixedformat4j.annotation.Field;
import com.ancientprogramming.fixedformat4j.annotation.FixedFormatPattern;
import com.ancientprogramming.fixedformat4j.annotation.Record;

@Record
public class CNABHeaderArquivoRecord extends CNABBaseRecord {

	private int tipoInscricaoEmpresa;
	private String inscricaoEmpresa;
	private String convenio;
	private int agencia;
	private String dvAgencia;
	private long conta;
	private String dvConta;
	private String dvAgenciaConta;
	private String nomeEmpresa;
	private String nomeBanco;
	private int codigoRemessa;
	private Date dataHoraGeracao;
	private int sequenciaArquivo;
	private int versaoLayout;
	
	public CNABHeaderArquivoRecord() {
		super();
		this.setTipoRegistro(0);
	}


	@Field( offset = 18, length = 1 , paddingChar = '0' , align = Align.RIGHT )
	public int getTipoInscricaoEmpresa() {
		return tipoInscricaoEmpresa;
	}

	public void setTipoInscricaoEmpresa(int tipoInscricaoEmpresa) {
		this.tipoInscricaoEmpresa = tipoInscricaoEmpresa;
	}

	@Field( offset = 19, length = 14 , paddingChar = '0' , align = Align.RIGHT )
	public String getInscricaoEmpresa() {
		return inscricaoEmpresa;
	}

	public void setInscricaoEmpresa(String inscricaoEmpresa) {
		this.inscricaoEmpresa = inscricaoEmpresa;
	}

	@Field( offset = 33, length = 20 , paddingChar = ' ' , align = Align.LEFT )
	public String getConvenio() {
		return convenio;
	}


	public void setConvenio(String convenio) {
		this.convenio = convenio;
	}


	@Field( offset = 53, length = 5 , paddingChar = '0' , align = Align.RIGHT )
	public int getAgencia() {
		return agencia;
	}


	public void setAgencia(int agencia) {
		this.agencia = agencia;
	}


	@Field( offset = 58, length = 1 , paddingChar = '0' , align = Align.LEFT )
	public String getDvAgencia() {
		return dvAgencia;
	}


	public void setDvAgencia(String dvAgencia) {
		this.dvAgencia = dvAgencia;
	}


	@Field( offset = 59, length = 12 , paddingChar = '0' , align = Align.RIGHT )
	public long getConta() {
		return conta;
	}


	public void setConta(long conta) {
		this.conta = conta;
	}


	@Field( offset = 71, length = 1 , paddingChar = '0' , align = Align.RIGHT )
	public String getDvConta() {
		return dvConta;
	}


	public void setDvConta(String dvConta) {
		this.dvConta = dvConta;
	}


	@Field( offset = 72, length = 1 , paddingChar = '0' , align = Align.RIGHT )
	public String getDvAgenciaConta() {
		return dvAgenciaConta;
	}


	public void setDvAgenciaConta(String dvAgenciaConta) {
		this.dvAgenciaConta = dvAgenciaConta;
	}


	@Field( offset = 73, length = 30 , paddingChar = ' ' , align = Align.LEFT )
	public String getNomeEmpresa() {
		return nomeEmpresa;
	}

	public void setNomeEmpresa(String nomeEmpresa) {
		this.nomeEmpresa = nomeEmpresa;
	}

	@Field( offset = 103, length = 30 , paddingChar = ' ' , align = Align.LEFT )
	public String getNomeBanco() {
		return nomeBanco;
	}

	public void setNomeBanco(String nomeBanco) {
		this.nomeBanco = nomeBanco;
	}

	@Field( offset = 143, length = 1 , paddingChar = '0' , align = Align.RIGHT )
	public int getCodigoRemessa() {
		return codigoRemessa;
	}

	public void setCodigoRemessa(int codigoRemessa) {
		this.codigoRemessa = codigoRemessa;
	}

	@Field( offset=144 , length=14 , paddingChar = '0' , align = Align.LEFT )
	@FixedFormatPattern("ddMMyyyyHHmmss")
	public Date getDataHoraGeracao() {
		return dataHoraGeracao;
	}

	public void setDataHoraGeracao(Date dataHoraGeracao) {
		this.dataHoraGeracao = dataHoraGeracao;
	}

	@Field( offset = 158, length = 6 , paddingChar = '0' , align = Align.RIGHT )
	public int getSequenciaArquivo() {
		return sequenciaArquivo;
	}

	public void setSequenciaArquivo(int sequenciaArquivo2) {
		this.sequenciaArquivo = sequenciaArquivo2;
	}

	@Field( offset = 164, length = 3 , paddingChar = '0' , align = Align.RIGHT )
	public int getVersaoLayout() {
		return versaoLayout;
	}

	public void setVersaoLayout(int versaoLayout) {
		this.versaoLayout = versaoLayout;
	}

}
