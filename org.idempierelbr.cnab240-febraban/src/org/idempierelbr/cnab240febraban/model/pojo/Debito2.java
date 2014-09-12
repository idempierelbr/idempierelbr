package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

public class Debito2 {
	private static final int TAMANHO_DEBITO2 = 75;

	private Double valorIR;
	private Double valorISS;
	private Double valorIOF;
	private Double valorOUtrasDeducoes;
	private Double valorOutrosAcrescimos;

	public Debito2() {
	}

	public Double getValorIR() {
		return valorIR;
	}

	public void setValorIR(Double valorIR) {
		this.valorIR = valorIR;
	}

	public Double getValorISS() {
		return valorISS;
	}

	public void setValorISS(Double valorISS) {
		this.valorISS = valorISS;
	}

	public Double getValorIOF() {
		return valorIOF;
	}

	public void setValorIOF(Double valorIOF) {
		this.valorIOF = valorIOF;
	}

	public Double getValorOUtrasDeducoes() {
		return valorOUtrasDeducoes;
	}

	public void setValorOUtrasDeducoes(Double valorOUtrasDeducoes) {
		this.valorOUtrasDeducoes = valorOUtrasDeducoes;
	}

	public Double getValorOutrosAcrescimos() {
		return valorOutrosAcrescimos;
	}

	public void setValorOutrosAcrescimos(Double valorOutrosAcrescimos) {
		this.valorOutrosAcrescimos = valorOutrosAcrescimos;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_DEBITO2);
		sb.append(ArquivoUtils.getCampoDecimal(getValorIR(), 13, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorISS(), 13, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorIOF(), 13, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorOUtrasDeducoes(), 13, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorOutrosAcrescimos(), 13, 2));

		return sb.toString();
	}
}
