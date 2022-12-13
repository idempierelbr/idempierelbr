package org.idempierelbr.cnab240febraban.model.pojo;

import java.util.Date;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;



public class Pagamento4 {
	private static final int TAMANHO_PAGAMENTO4 = 91;

	private String seuNumero;
	private String nossoNumero;
	private String NomeContribuinte;
	private Date dataPagamento;
	private Double valorPagamento;

	public Pagamento4() {
	}

	public String getSeuNumero() {
		return seuNumero;
	}

	public void setSeuNumero(String seuNumero) {
		this.seuNumero = seuNumero;
	}

	public String getNossoNumero() {
		return nossoNumero;
	}

	public void setNossoNumero(String nossoNumero) {
		this.nossoNumero = nossoNumero;
	}

	public String getNomeContribuinte() {
		return NomeContribuinte;
	}

	public void setNomeContribuinte(String nomeContribuinte) {
		NomeContribuinte = nomeContribuinte;
	}

	public Date getDataPagamento() {
		return dataPagamento;
	}

	public void setDataPagamento(Date dataPagamento) {
		this.dataPagamento = dataPagamento;
	}

	public Double getValorPagamento() {
		return valorPagamento;
	}

	public void setValorPagamento(Double valorPagamento) {
		this.valorPagamento = valorPagamento;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_PAGAMENTO4);
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getSeuNumero(), 20));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getNossoNumero(), 20));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getNomeContribuinte(), 30));
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataPagamento()));
		sb.append(ArquivoUtils.getCampoDecimal(getValorPagamento(), 13, 2));
		
		return sb.toString();
	}
}
