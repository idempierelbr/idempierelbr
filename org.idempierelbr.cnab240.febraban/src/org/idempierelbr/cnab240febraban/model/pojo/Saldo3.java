package org.idempierelbr.cnab240febraban.model.pojo;

import java.util.Date;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;



public class Saldo3 {
	private static final int TAMANHO_SALDO3 = 27;
	private Date dataSaldo;
	private double valor;
	private String situacao;

	public Saldo3() {
		
	}

	public Date getDataSaldo() {
		return dataSaldo;
	}

	public void setDataSaldo(Date dataSaldo) {
		this.dataSaldo = dataSaldo;
	}

	public double getValor() {
		return valor;
	}

	public void setValor(double valor) {
		this.valor = valor;
	}

	public String getSituacao() {
		return situacao;
	}

	public void setSituacao(String situacao) {
		this.situacao = situacao;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_SALDO3);
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataSaldo()));
		sb.append(ArquivoUtils.getCampoDecimal(getValor(), 16, 2));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getSituacao(), 1));
		
		return sb.toString();
	}
}
