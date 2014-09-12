package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

public class Composicao {
	private static final int TAMANHO_COMPOSICAO = 54;
	private double valorDisponivelDoLancamento;
	private double valorVinculadoDoLancamento;
	private double valorBloqueadoLancamento;

	public Composicao() {
		// TODO Auto-generated constructor stub
	}

	public double getValorDisponivelDoLancamento() {
		return valorDisponivelDoLancamento;
	}

	public void setValorDisponivelDoLancamento(
			double valorDisponivelDoLancamento) {
		this.valorDisponivelDoLancamento = valorDisponivelDoLancamento;
	}

	public double getValorVinculadoDoLancamento() {
		return valorVinculadoDoLancamento;
	}

	public void setValorVinculadoDoLancamento(double valorVinculadoDoLancamento) {
		this.valorVinculadoDoLancamento = valorVinculadoDoLancamento;
	}

	public double getValorBloqueadoLancamento() {
		return valorBloqueadoLancamento;
	}

	public void setValorBloqueadoLancamento(double valorBloqueadoLancamento) {
		this.valorBloqueadoLancamento = valorBloqueadoLancamento;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_COMPOSICAO);
		sb.append(ArquivoUtils.getCampoDecimal(getValorDisponivelDoLancamento(), 16, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorVinculadoDoLancamento(), 16, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorBloqueadoLancamento(), 16, 2));

		return sb.toString();
	}
}
