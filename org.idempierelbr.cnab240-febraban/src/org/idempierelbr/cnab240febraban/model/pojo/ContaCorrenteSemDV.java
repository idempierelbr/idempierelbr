package org.idempierelbr.cnab240febraban.model.pojo;

public class ContaCorrenteSemDV {
	private static final int TAMANHO_CONTA_CORRENTE_SEM_DV = 19;
	private Agencia agencia;
	private Conta conta;
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
	
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_CONTA_CORRENTE_SEM_DV);
		sb.append(getAgencia().toString());
		sb.append(getConta().toString());
		return sb.toString();
	}
}
