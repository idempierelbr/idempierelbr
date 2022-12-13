package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

public class Endereco {
	private static int TAMANHO_ENDERECO = 80;
	
	private String logradouro;
	private int numero;
	private String complemento;
	private String cidade;
	private int cep;
	private String complementoCep;
	private String estado;

	public Endereco() {
		setLogradouro(ArquivoUtils.BRANCO);
		setNumero(0);
		setComplemento(ArquivoUtils.BRANCO);
		setCidade(ArquivoUtils.BRANCO);
		setCep(0);
		setComplementoCep(ArquivoUtils.BRANCO);
		setEstado(ArquivoUtils.BRANCO);
	}

	public String getLogradouro() {
		return logradouro;
	}

	public void setLogradouro(String logradouro) {
		this.logradouro = logradouro;
	}

	public int getNumero() {
		return numero;
	}

	public void setNumero(int numero) {
		this.numero = numero;
	}

	public String getComplemento() {
		return complemento;
	}

	public void setComplemento(String complemento) {
		this.complemento = complemento;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public int getCep() {
		return cep;
	}

	public void setCep(int cep) {
		this.cep = cep;
	}

	public String getComplementoCep() {
		return complementoCep;
	}

	public void setComplementoCep(String complementoCep) {
		this.complementoCep = complementoCep;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}
	
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_ENDERECO);
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getLogradouro(), 30));
		sb.append(ArquivoUtils.getCampoNumerico(getNumero(), 5));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getComplemento(), 15));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCidade(), 20));
		sb.append(ArquivoUtils.getCampoNumerico(getCep(), 5));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getComplementoCep(), 3));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getEstado(), 2));
		
		return sb.toString();
	}

}
