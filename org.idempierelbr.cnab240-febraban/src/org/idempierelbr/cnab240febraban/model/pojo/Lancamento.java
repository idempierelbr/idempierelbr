package org.idempierelbr.cnab240febraban.model.pojo;

import java.util.Date;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;



public class Lancamento {
	private static final int TAMANHO_LANCAMENTO = 98;
	private Date data;
	private Double valor;
	private String tipoLancamento;
	private String categoria;
	private String codigoHistorico;
	private String historico;
	private String numeroDocumento;
	
	public Lancamento() {
		
	}

	public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}

	public Double getValor() {
		return valor;
	}

	public void setValor(Double valor) {
		this.valor = valor;
	}

	public String getTipoLancamento() {
		return tipoLancamento;
	}

	public void setTipoLancamento(String tipoLancamento) {
		this.tipoLancamento = tipoLancamento;
	}

	public String getCategoria() {
		return categoria;
	}

	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}

	public String getCodigoHistorico() {
		return codigoHistorico;
	}

	public void setCodigoHistorico(String codigoHistorico) {
		this.codigoHistorico = codigoHistorico;
	}

	public String getHistorico() {
		return historico;
	}

	public void setHistorico(String historico) {
		this.historico = historico;
	}

	public String getNumeroDocumento() {
		return numeroDocumento;
	}

	public void setNumeroDocumento(String numeroDocumento) {
		this.numeroDocumento = numeroDocumento;
	}
	
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_LANCAMENTO);
		sb.append(ArquivoUtils.getCampoDataFormatada(getData()));
		sb.append(ArquivoUtils.getCampoDecimal(getValor(), 16, 2));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getTipoLancamento(), 1));
		sb.append(ArquivoUtils.getCampoNumerico(getCategoria(), 3));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCodigoHistorico(), 4));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getHistorico(), 25));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getNumeroDocumento(), 39));
		
		return sb.toString();
	}
}
