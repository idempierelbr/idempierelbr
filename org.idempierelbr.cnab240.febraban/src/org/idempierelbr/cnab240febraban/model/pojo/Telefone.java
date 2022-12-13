package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

public class Telefone {
	private static final int TAMANHO_TELEFONE = 10;
	private int ddd;
	private long numero;

	public Telefone() {
	}

	public Telefone(int ddd, long numero) {
		this.ddd = ddd;
		this.numero = numero;
	}

	public int getDdd() {
		return ddd;
	}

	public void setDdd(int ddd) {
		this.ddd = ddd;
	}

	public long getNumero() {
		return numero;
	}

	public void setNumero(long numero) {
		this.numero = numero;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_TELEFONE);
		sb.append(ArquivoUtils.getCampoNumerico(getDdd(), 2));
		sb.append(ArquivoUtils.getCampoNumerico(getNumero(), 8));
		
		return sb.toString();
	}
}
