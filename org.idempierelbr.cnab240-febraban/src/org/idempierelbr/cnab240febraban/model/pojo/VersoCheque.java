package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

public class VersoCheque {
	private static final int TAMANHO_VERSO_CHEQUE = 17;
	private String agencia;
	private int contaDevolucao;
	
	public VersoCheque() {
		// TODO Auto-generated constructor stub
	}

	public String getAgencia() {
		return agencia;
	}

	public void setAgencia(String agencia) {
		this.agencia = agencia;
	}

	public int getContaDevolucao() {
		return contaDevolucao;
	}

	public void setContaDevolucao(int contaDevolucao) {
		this.contaDevolucao = contaDevolucao;
	}
	
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_VERSO_CHEQUE);
		sb.append(ArquivoUtils.getCampoNumerico(getAgencia(), 5));
		sb.append(ArquivoUtils.getCampoNumerico(getContaDevolucao(), 12));
		
		return sb.toString();
	}
}
