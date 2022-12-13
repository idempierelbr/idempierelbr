package org.idempierelbr.cnab240febraban.model.pojo;

import java.util.Date;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;



public class Prorrogacao {
	private static final int TAMANHO_PRORROGACAO = 24;
	private Date novaDataVencimento;
	private Double novaTaxaJurosVendedor;
	private Double novaTaxaJurosComprador;

	public Prorrogacao() {
	}

	public Date getNovaDataVencimento() {
		return novaDataVencimento;
	}

	public void setNovaDataVencimento(Date novaDataVencimento) {
		this.novaDataVencimento = novaDataVencimento;
	}

	public Double getNovaTaxaJurosVendedor() {
		return novaTaxaJurosVendedor;
	}

	public void setNovaTaxaJurosVendedor(Double novaTaxaJurosVendedor) {
		this.novaTaxaJurosVendedor = novaTaxaJurosVendedor;
	}

	public Double getNovaTaxaJurosComprador() {
		return novaTaxaJurosComprador;
	}

	public void setNovaTaxaJurosComprador(Double novaTaxaJurosComprador) {
		this.novaTaxaJurosComprador = novaTaxaJurosComprador;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_PRORROGACAO);
		sb.append(ArquivoUtils.getCampoDataFormatada(getNovaDataVencimento()));
		sb.append(ArquivoUtils.getCampoDecimal(getNovaTaxaJurosVendedor(), 3, 5));
		sb.append(ArquivoUtils.getCampoDecimal(getNovaTaxaJurosComprador(), 3, 5));

		return sb.toString();
	}
}
