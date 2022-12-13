package org.idempierelbr.cnab240febraban.model.pojo;

import java.util.Date;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;



public class Credito {
	private static final int TAMANHO_CREDITO = 104;
	
	private String numeroDocumentoAtribuidoEmpresa;
	private Date dataPagamento;
	private Moeda moeda;
	private Double valorPagamento;
	private String numeroDocumentoAbribuidoPeloBanco;
	private Date dataRealPagamento;
	private Double valorRealPagamento;

	public Credito(){
		setNumeroDocumentoAtribuidoEmpresa(ArquivoUtils.BRANCO);
		setDataPagamento(null);
		setMoeda(new Moeda());
		setValorPagamento(0D);
		setNumeroDocumentoAbribuidoPeloBanco(ArquivoUtils.BRANCO);
		setDataRealPagamento(null);
		setValorRealPagamento(0D);
	}
	
	public String getNumeroDocumentoAtribuidoEmpresa() {
		return numeroDocumentoAtribuidoEmpresa;
	}

	public void setNumeroDocumentoAtribuidoEmpresa(String numeroDocumentoAtribuidoEmpresa) {
		this.numeroDocumentoAtribuidoEmpresa = numeroDocumentoAtribuidoEmpresa;
	}

	public Date getDataPagamento() {
		return dataPagamento;
	}

	public void setDataPagamento(Date dataPagamento) {
		this.dataPagamento = dataPagamento;
	}

	public Moeda getMoeda() {
		return moeda;
	}

	public void setMoeda(Moeda moeda) {
		this.moeda = moeda;
	}

	public Double getValorPagamento() {
		return valorPagamento;
	}

	public void setValorPagamento(Double valorPagamento) {
		this.valorPagamento = valorPagamento;
	}

	public String getNumeroDocumentoAbribuidoPeloBanco() {
		return numeroDocumentoAbribuidoPeloBanco;
	}

	public void setNumeroDocumentoAbribuidoPeloBanco(String numeroDocumentoAbribuidoPeloBanco) {
		this.numeroDocumentoAbribuidoPeloBanco = numeroDocumentoAbribuidoPeloBanco;
	}

	public Date getDataRealPagamento() {
		return dataRealPagamento;
	}

	public void setDataRealPagamento(Date dataRealPagamento) {
		this.dataRealPagamento = dataRealPagamento;
	}

	public Double getValorRealPagamento() {
		return valorRealPagamento;
	}

	public void setValorRealPagamento(Double valorReal) {
		this.valorRealPagamento = valorReal;
	}

	
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_CREDITO);
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getNumeroDocumentoAtribuidoEmpresa(), 20));
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataPagamento())); //8
		sb.append(getMoeda().toString()); //18
		sb.append(ArquivoUtils.getCampoDecimal(getValorPagamento(), 13, 2));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getNumeroDocumentoAbribuidoPeloBanco(), 20));
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataRealPagamento())); //8
		sb.append(ArquivoUtils.getCampoDecimal(getValorRealPagamento(), 13, 2));
		
		return sb.toString();
	}
}
