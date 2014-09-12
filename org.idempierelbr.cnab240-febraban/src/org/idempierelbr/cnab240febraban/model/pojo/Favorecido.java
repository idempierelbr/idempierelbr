package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

public class Favorecido {
	private static final int TAMANHO_FAVORECIDO = 56;
	
	private int codigoCameraCentralizadora;
	private int codigoBanco;
	private ContaCorrente contaCorrente;
	private String nome;

	public Favorecido(){
		setCodigoCameraCentralizadora(0);
		setCodigoBanco(0);
		setContaCorrente(new ContaCorrente());
		setNome(ArquivoUtils.BRANCO);
	}
	
	public Favorecido(int codigoCameraCentralizadora, int codigoBanco, ContaCorrente contaCorrente, String nome){
		setCodigoCameraCentralizadora(codigoCameraCentralizadora);
		setCodigoBanco(codigoBanco);
		setContaCorrente(contaCorrente);
		setNome(nome);
	}
	
	public int getCodigoCameraCentralizadora() {
		return codigoCameraCentralizadora;
	}

	public void setCodigoCameraCentralizadora(int codigoCameraCentralizadora) {
		this.codigoCameraCentralizadora = codigoCameraCentralizadora;
	}

	public int getCodigoBanco() {
		return codigoBanco;
	}

	public void setCodigoBanco(int codigoBanco) {
		this.codigoBanco = codigoBanco;
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
		StringBuilder sb = new StringBuilder(TAMANHO_FAVORECIDO);
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoCameraCentralizadora(), 3));
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoBanco(), 3));
		sb.append(getContaCorrente().toString()); // 20
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getNome(), 30));
		
		return sb.toString();
	}
}
