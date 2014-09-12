package org.idempierelbr.cnab240febraban.model.pojo;

import java.util.Date;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;



public class Repactuacao {
	private static final int TAMANHO_REPACTUACAO = 18;
	private Date dataPrimeiraRepactuacao;
	private Date dataUltimaRepactuacao;
	private int periodicidadeRepactuacao;

	public Repactuacao() {

	}

	public Date getDataPrimeiraRepactuacao() {
		return dataPrimeiraRepactuacao;
	}

	public void setDataPrimeiraRepactuacao(Date dataPrimeiraRepactuacao) {
		this.dataPrimeiraRepactuacao = dataPrimeiraRepactuacao;
	}

	public Date getDataUltimaRepactuacao() {
		return dataUltimaRepactuacao;
	}

	public void setDataUltimaRepactuacao(Date dataUltimaRepactuacao) {
		this.dataUltimaRepactuacao = dataUltimaRepactuacao;
	}

	public int getPeriodicidadeRepactuacao() {
		return periodicidadeRepactuacao;
	}

	public void setPeriodicidadeRepactuacao(int periodicidadeRepactuacao) {
		this.periodicidadeRepactuacao = periodicidadeRepactuacao;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_REPACTUACAO);
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataPrimeiraRepactuacao()));
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataUltimaRepactuacao()));
		sb.append(ArquivoUtils.getCampoNumerico(getPeriodicidadeRepactuacao(), 2));

		return sb.toString();
	}
}
