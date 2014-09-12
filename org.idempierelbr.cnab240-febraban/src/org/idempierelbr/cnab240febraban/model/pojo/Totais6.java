package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

public class Totais6 {
	private static final int TAMANHO_TOTAIS6 = 86;
	private int quantidadeRegistros;
	private int quantidadeParcelas;
	private double valorTotalDasParcelas;
	private int quantidadeParcelasConsignadas;
	private double valorTotalParcelasConsignadas;
	private int quantidadeParcelasNaoConsignadas;
	private double valorTotalParcelasNaoConsignadas;
	private int quantidadeMargensConsultadasAverbadas;
	private double valorTotalMargensConsultadasAverbadas;

	public int getQuantidadeRegistros() {
		return quantidadeRegistros;
	}

	public void setQuantidadeRegistros(int quantidadeRegistros) {
		this.quantidadeRegistros = quantidadeRegistros;
	}

	public int getQuantidadeParcelas() {
		return quantidadeParcelas;
	}

	public void setQuantidadeParcelas(int quantidadeParcelas) {
		this.quantidadeParcelas = quantidadeParcelas;
	}

	public double getValorTotalDasParcelas() {
		return valorTotalDasParcelas;
	}

	public void setValorTotalDasParcelas(double valorTotalDasParcelas) {
		this.valorTotalDasParcelas = valorTotalDasParcelas;
	}

	public int getQuantidadeParcelasConsignadas() {
		return quantidadeParcelasConsignadas;
	}

	public void setQuantidadeParcelasConsignadas(
			int quantidadeParcelasConsignadas) {
		this.quantidadeParcelasConsignadas = quantidadeParcelasConsignadas;
	}

	public double getValorTotalParcelasConsignadas() {
		return valorTotalParcelasConsignadas;
	}

	public void setValorTotalParcelasConsignadas(
			double valorTotalParcelasConsignadas) {
		this.valorTotalParcelasConsignadas = valorTotalParcelasConsignadas;
	}

	public int getQuantidadeParcelasNaoConsignadas() {
		return quantidadeParcelasNaoConsignadas;
	}

	public void setQuantidadeParcelasNaoConsignadas(
			int quantidadeParcelasNaoConsignadas) {
		this.quantidadeParcelasNaoConsignadas = quantidadeParcelasNaoConsignadas;
	}

	public double getValorTotalParcelasNaoConsignadas() {
		return valorTotalParcelasNaoConsignadas;
	}

	public void setValorTotalParcelasNaoConsignadas(
			double valorTotalParcelasNaoConsignadas) {
		this.valorTotalParcelasNaoConsignadas = valorTotalParcelasNaoConsignadas;
	}

	public int getQuantidadeMargensConsultadasAverbadas() {
		return quantidadeMargensConsultadasAverbadas;
	}

	public void setQuantidadeMargensConsultadasAverbadas(
			int quantidadeMargensConsultadasAverbadas) {
		this.quantidadeMargensConsultadasAverbadas = quantidadeMargensConsultadasAverbadas;
	}

	public double getValorTotalMargensConsultadasAverbadas() {
		return valorTotalMargensConsultadasAverbadas;
	}

	public void setValorTotalMargensConsultadasAverbadas(
			double valorTotalMargensConsultadasAverbadas) {
		this.valorTotalMargensConsultadasAverbadas = valorTotalMargensConsultadasAverbadas;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_TOTAIS6);
		sb.append(ArquivoUtils.getCampoNumerico(getQuantidadeRegistros(), 6));
		sb.append(ArquivoUtils.getCampoNumerico(getQuantidadeParcelas(), 5));
		sb.append(ArquivoUtils.getCampoDecimal(getValorTotalDasParcelas(), 13, 2));
		sb.append(ArquivoUtils.getCampoNumerico(getQuantidadeParcelasConsignadas(), 5));
		sb.append(ArquivoUtils.getCampoDecimal(getValorTotalParcelasConsignadas(), 13, 2));
		sb.append(ArquivoUtils.getCampoNumerico(getQuantidadeParcelasNaoConsignadas(), 5));
		sb.append(ArquivoUtils.getCampoDecimal(getValorTotalParcelasNaoConsignadas(), 13, 2));
		sb.append(ArquivoUtils.getCampoNumerico(getQuantidadeMargensConsultadasAverbadas(), 5));
		sb.append(ArquivoUtils.getCampoDecimal(getValorTotalMargensConsultadasAverbadas(), 13, 2));
		
		return sb.toString();
	}
}
