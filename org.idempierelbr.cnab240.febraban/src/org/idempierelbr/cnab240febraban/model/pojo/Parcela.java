package org.idempierelbr.cnab240febraban.model.pojo;

import java.util.Date;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;



public class Parcela {
	private static final int TAMANHO_PARCELA = 45;
	private int numeroParcela;
	private double valorParcela;
	private Date dataVencimento;
	private int nossoNumero;

	public Parcela() {
		
	}

	public int getNumeroParcela() {
		return numeroParcela;
	}

	public void setNumeroParcela(int numeroParcela) {
		this.numeroParcela = numeroParcela;
	}

	public double getValorParcela() {
		return valorParcela;
	}

	public void setValorParcela(double valorParcela) {
		this.valorParcela = valorParcela;
	}

	public Date getDataVencimento() {
		return dataVencimento;
	}

	public void setDataVencimento(Date dataVencimento) {
		this.dataVencimento = dataVencimento;
	}

	public int getNossoNumero() {
		return nossoNumero;
	}

	public void setNossoNumero(int nossoNumero) {
		this.nossoNumero = nossoNumero;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_PARCELA);
		sb.append(ArquivoUtils.getCampoNumerico(getNumeroParcela(), 2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorParcela(), 13, 2));
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataVencimento()));
		sb.append(ArquivoUtils.getCampoNumerico(getNossoNumero(), 20));
		
		return sb.toString();
	}
}
