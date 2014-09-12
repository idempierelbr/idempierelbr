package org.idempierelbr.cnab240febraban.model.pojo;

import java.util.Date;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;



public class SomatoriaSaldosIniciais {
	private static final int TAMANHO_SALDOS_INICIAIS = 28;
	private Date dataSaldoInicial;
	private double valorSDS;
	private String situacaoSaldoInicial;
	private String statusSaldoInicial;

	public SomatoriaSaldosIniciais() {
		setSituacaoSaldoInicial(ArquivoUtils.BRANCO);
		setStatusSaldoInicial(ArquivoUtils.BRANCO);
	}

	public Date getDataSaldoInicial() {
		return dataSaldoInicial;
	}

	public void setDataSaldoInicial(Date dataSaldoInicial) {
		this.dataSaldoInicial = dataSaldoInicial;
	}

	public double getValorSDS() {
		return valorSDS;
	}

	public void setValorSDS(double valorSDS) {
		this.valorSDS = valorSDS;
	}

	public String getSituacaoSaldoInicial() {
		return situacaoSaldoInicial;
	}

	public void setSituacaoSaldoInicial(String situacaoSaldoInicial) {
		this.situacaoSaldoInicial = situacaoSaldoInicial;
	}

	public String getStatusSaldoInicial() {
		return statusSaldoInicial;
	}

	public void setStatusSaldoInicial(String statusSaldoInicial) {
		this.statusSaldoInicial = statusSaldoInicial;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_SALDOS_INICIAIS);
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataSaldoInicial()));
		sb.append(ArquivoUtils.getCampoDecimal(getValorSDS(), 16, 2));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getSituacaoSaldoInicial(), 1));
		sb.append(ArquivoUtils.getCampoNumerico(getStatusSaldoInicial(), 1));
		sb.append(ArquivoUtils.getCampoNumerico(getStatusSaldoInicial(), 1));
		
		return sb.toString();
	}
}
