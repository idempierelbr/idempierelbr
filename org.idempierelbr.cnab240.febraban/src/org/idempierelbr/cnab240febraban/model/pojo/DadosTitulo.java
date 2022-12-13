package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

public class DadosTitulo {
	private static final int TAMANHO_DADOS_TITULO = 90;
	private Double acrescimos;
	private Double valorDesconto;
	private Double valorAbatimento;
	private Double valorIOF;
	private Double valorPago;
	private Double valorLiquido;

	public DadosTitulo() {
		// TODO Auto-generated constructor stub
	}

	public Double getAcrescimos() {
		return acrescimos;
	}

	public void setAcrescimos(Double acrescimos) {
		this.acrescimos = acrescimos;
	}

	public Double getValorDesconto() {
		return valorDesconto;
	}

	public void setValorDesconto(Double valorDesconto) {
		this.valorDesconto = valorDesconto;
	}

	public Double getValorAbatimento() {
		return valorAbatimento;
	}

	public void setValorAbatimento(Double valorAbatimento) {
		this.valorAbatimento = valorAbatimento;
	}

	public Double getValorIOF() {
		return valorIOF;
	}

	public void setValorIOF(Double valorIOF) {
		this.valorIOF = valorIOF;
	}

	public Double getValorPago() {
		return valorPago;
	}

	public void setValorPago(Double valorPago) {
		this.valorPago = valorPago;
	}

	public Double getValorLiquido() {
		return valorLiquido;
	}

	public void setValorLiquido(Double valorLiquido) {
		this.valorLiquido = valorLiquido;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_DADOS_TITULO);
		sb.append(ArquivoUtils.getCampoDecimal(getAcrescimos(), 13,2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorDesconto(), 13,2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorAbatimento(), 13,2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorIOF(), 13,2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorPago(), 13,2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorLiquido(), 13,2));

		return sb.toString();
	}
}
