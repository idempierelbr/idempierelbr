package org.idempierelbr.cnab240febraban.model.pojo;

import java.util.Date;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;



public class SomatoriaSaldosFinais {
	private static final int TAMANHO_SOMATORIO_SALDOS_FINAIS = 28;
	private Date dataSaldoFinal;
	private double valorSomatoriaSaldosFinais;
	private String situacaoSaldoFinal;
	private String statusSaldoFinal;

	public Date getDataSaldoFinal() {
		return dataSaldoFinal;
	}

	public void setDataSaldoFinal(Date dataSaldoFinal) {
		this.dataSaldoFinal = dataSaldoFinal;
	}

	public double getValorSomatoriaSaldosFinais() {
		return valorSomatoriaSaldosFinais;
	}

	public void setValorSomatoriaSaldosFinais(double valorSomatoriaSaldosFinais) {
		this.valorSomatoriaSaldosFinais = valorSomatoriaSaldosFinais;
	}

	public String getSituacaoSaldoFinal() {
		return situacaoSaldoFinal;
	}

	public void setSituacaoSaldoFinal(String situacaoSaldoFinal) {
		this.situacaoSaldoFinal = situacaoSaldoFinal;
	}

	public String getStatusSaldoFinal() {
		return statusSaldoFinal;
	}

	public void setStatusSaldoFinal(String statusSaldoFinal) {
		this.statusSaldoFinal = statusSaldoFinal;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_SOMATORIO_SALDOS_FINAIS);
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataSaldoFinal()));
		sb.append(ArquivoUtils.getCampoDecimal(getValorSomatoriaSaldosFinais(), 16, 2));
		sb.append(ArquivoUtils.getCampoNumerico(getSituacaoSaldoFinal(), 1));
		sb.append(ArquivoUtils.getCampoNumerico(getStatusSaldoFinal(), 1));
		
		return sb.toString();
	}
}
