package org.idempierelbr.cnab240febraban.model.pojo;

import java.util.Date;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;



public class Saldo2 {
	private static final int TAMANHO_SALDO2 = 28;
	
	private Date data;
	private Double valor;
	private String situacao;
	private String status;

	public Saldo2() {
		setSituacao(ArquivoUtils.BRANCO);
		setStatus(ArquivoUtils.BRANCO);
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

	public String getSituacao() {
		return situacao;
	}

	public void setSituacao(String situacao) {
		this.situacao = situacao;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_SALDO2);
		sb.append(ArquivoUtils.getCampoDataFormatada(getData()));
		sb.append(ArquivoUtils.getCampoDecimal(getValor(), 16,2));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getSituacao(), 1));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getStatus(), 1));
		
		return sb.toString();
	}
}
