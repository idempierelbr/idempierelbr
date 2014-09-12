package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

public class Desconto2 {
	private static final int TAMANHO_DESCONTO2 = 57;
	
	private double juros;
	private double iof;
	private double outrosEncargos;
	private long numerocontrato;
	private double taxaJuros;
	
	public Desconto2() {
	
	}

	public double getJuros() {
		return juros;
	}

	public void setJuros(double juros) {
		this.juros = juros;
	}

	public double getIof() {
		return iof;
	}

	public void setIof(double iof) {
		this.iof = iof;
	}

	public double getOutrosEncargos() {
		return outrosEncargos;
	}

	public void setOutrosEncargos(double outrosEncargos) {
		this.outrosEncargos = outrosEncargos;
	}

	public long getNumerocontrato() {
		return numerocontrato;
	}

	public void setNumerocontrato(long numerocontrato) {
		this.numerocontrato = numerocontrato;
	}

	public double getTaxaJuros() {
		return taxaJuros;
	}

	public void setTaxaJuros(double taxaJuros) {
		this.taxaJuros = taxaJuros;
	}
	
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_DESCONTO2);
		sb.append(ArquivoUtils.getCampoDecimal(getJuros(), 9, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getIof(), 9, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getOutrosEncargos(), 9, 2));
		sb.append(ArquivoUtils.getCampoNumerico(getNumerocontrato(), 17));
		sb.append(ArquivoUtils.getCampoDecimal(getTaxaJuros(), 3, 4));
		
		return sb.toString();
	}
}
