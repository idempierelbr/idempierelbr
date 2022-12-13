package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

public class ContaCorrente {
	private static final int TAMANHO_REGISTRO = 20;
	private Agencia agencia;
	private Conta conta;
	private String digitoVerificador;

	public ContaCorrente() {
		setAgencia(new Agencia());
		setConta(new Conta());
		setDigitoVerificador("");
	}

	public ContaCorrente(Agencia agencia, Conta conta, String digitoVerificador) {
		setAgencia(agencia);
		setConta(conta);
		setDigitoVerificador(digitoVerificador);
	}

	public Agencia getAgencia() {
		return agencia;
	}

	public void setAgencia(Agencia agencia) {
		this.agencia = agencia;
	}

	public Conta getConta() {
		return conta;
	}

	public void setConta(Conta conta) {
		this.conta = conta;
	}

	public String getDigitoVerificador() {
		return digitoVerificador;
	}

	public void setDigitoVerificador(String digitoVerificador) {
		this.digitoVerificador = digitoVerificador;
	}
	
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_REGISTRO);
		sb.append(getAgencia().toString()); //6
		sb.append(getConta().toString()); // 13
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getDigitoVerificador(), 1));
		
		return sb.toString();
	}
}
