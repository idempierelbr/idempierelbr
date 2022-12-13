package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

public class Pagamento2 {
	private static final int TAMANHO_PAGAMENTO2 = 75;
	private Double valorIR;
	private Double valorISS;
	private Double valorIOF;
	private Double outrasDeDucoes;
	private Double outrosAcrescimos;

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

	public Double getOutrasDeDucoes() {
		return outrasDeDucoes;
	}

	public void setOutrasDeDucoes(Double outrasDeDucoes) {
		this.outrasDeDucoes = outrasDeDucoes;
	}

	public Double getOutrosAcrescimos() {
		return outrosAcrescimos;
	}

	public void setOutrosAcrescimos(Double outrosAcrescimos) {
		this.outrosAcrescimos = outrosAcrescimos;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_PAGAMENTO2);
		sb.append(ArquivoUtils.getCampoDecimal(getValorIR(), 13, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorISS(), 13, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorIOF(), 13, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getOutrasDeDucoes(), 13, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getOutrosAcrescimos(), 13, 2));
		
		return sb.toString();
	}
}
