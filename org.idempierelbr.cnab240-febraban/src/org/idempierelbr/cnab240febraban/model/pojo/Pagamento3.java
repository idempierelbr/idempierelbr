package org.idempierelbr.cnab240febraban.model.pojo;

import java.util.Date;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;



public class Pagamento3 {
	private static final int TAMANHO_PAGAMENTO3 = 143;

	private String codigoDeBarras;
	private String nomeDaConcessionaria;
	private Date dataVencimento;
	private Date dataPagamento;
	private Double valorPagamento;
	private String seuNumero;
	private String nossoNumero;

	public String getCodigoDeBarras() {
		return codigoDeBarras;
	}

	public void setCodigoDeBarras(String codigoDeBarras) {
		this.codigoDeBarras = codigoDeBarras;
	}

	public String getNomeDaConcessionaria() {
		return nomeDaConcessionaria;
	}

	public void setNomeDaConcessionaria(String nomeDaConcessionaria) {
		this.nomeDaConcessionaria = nomeDaConcessionaria;
	}

	public Date getDataVencimento() {
		return dataVencimento;
	}

	public void setDataVencimento(Date dataVencimento) {
		this.dataVencimento = dataVencimento;
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
	
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_PAGAMENTO3);
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCodigoDeBarras(), 44));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getNomeDaConcessionaria(), 30));
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataVencimento()));
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataPagamento()));
		sb.append(ArquivoUtils.getCampoDecimal(getValorPagamento(), 13,2));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getSeuNumero(), 20));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getNossoNumero(), 20));
		return super.toString();
	}

}
