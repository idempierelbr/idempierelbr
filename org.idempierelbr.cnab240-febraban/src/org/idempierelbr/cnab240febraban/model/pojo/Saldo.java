package org.idempierelbr.cnab240febraban.model.pojo;

import java.util.Date;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;



public class Saldo {
	private static final int TAMANHO_SALDO = 36;
	private Date data;
	private Double valor;
	private String situacao;
	private String status;
	private String tipoMoeda;
	private int sequenciaExtrato;

	public Saldo() {
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

	public String getTipoMoeda() {
		return tipoMoeda;
	}

	public void setTipoMoeda(String tipoMoeda) {
		this.tipoMoeda = tipoMoeda;
	}

	public int getSequenciaExtrato() {
		return sequenciaExtrato;
	}

	public void setSequenciaExtrato(int sequenciaExtrato) {
		this.sequenciaExtrato = sequenciaExtrato;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_SALDO);
		sb.append(ArquivoUtils.getCampoDataFormatada(getData()));
		sb.append(ArquivoUtils.getCampoDecimal(getValor(), 15, 2));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getSituacao(), 1));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getStatus(), 1));
		sb.append(ArquivoUtils.getCampoNumerico(getTipoMoeda(), 3));
		sb.append(ArquivoUtils.getCampoNumerico(getSequenciaExtrato(), 5));

		return sb.toString();
	}
}
