package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

public class Desconto3 {
	private static final int TAMANHO_DESCONTO2 = 47;
	
	private double juros;
	private double iof;
	private double outrosEncargos;
	
	public Desconto3() {
	
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

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_DESCONTO2);
		sb.append(ArquivoUtils.getCampoDecimal(getJuros(), 16, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getIof(), 13, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getOutrosEncargos(), 13, 2));
		
		return sb.toString();
	}
}
