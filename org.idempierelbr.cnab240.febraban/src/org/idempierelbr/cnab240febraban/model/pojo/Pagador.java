package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

public class Pagador {
	private static final int TAMANHO_PAGADOR = 53;
	private int banco;
	private ContaCorrente contaCorrente;
	private String nome;
	
	public Pagador() {
		setContaCorrente(new ContaCorrente());
		setNome(ArquivoUtils.BRANCO);
	}

	public int getBanco() {
		return banco;
	}

	public void setBanco(int banco) {
		this.banco = banco;
	}

	public ContaCorrente getContaCorrente() {
		return contaCorrente;
	}

	public void setContaCorrente(ContaCorrente contaCorrente) {
		this.contaCorrente = contaCorrente;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}
	
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_PAGADOR);
		sb.append(ArquivoUtils.getCampoNumerico(getBanco(), 3));
		sb.append(getContaCorrente().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getNome(), 30));
		
		return sb.toString();
	}
}
