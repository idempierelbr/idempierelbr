package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

public class Pagador2 {
	private static final int TAMANHO_PAGADOR2 = 110;
	private Inscricao2 inscricao;
	private String logradouro;
	private int numero;
	private String complemento;
	private String bairro;
	private String cidade;
	private int CEP;
	private int complementoCEP;
	private String estado;
	
	public Pagador2(){
		setInscricao(new Inscricao2());
		setLogradouro(ArquivoUtils.BRANCO);
		setComplemento(ArquivoUtils.BRANCO);
		setBairro(ArquivoUtils.BRANCO);
		setCidade(ArquivoUtils.BRANCO);
		setEstado(ArquivoUtils.BRANCO);
	}

	public Inscricao2 getInscricao() {
		return inscricao;
	}

	public void setInscricao(Inscricao2 inscricao) {
		this.inscricao = inscricao;
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

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}
	
	public int getCEP() {
		return CEP;
	}

	public void setCEP(int cEP) {
		CEP = cEP;
	}

	public int getComplementoCEP() {
		return complementoCEP;
	}

	public void setComplementoCEP(int complementoCEP) {
		this.complementoCEP = complementoCEP;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public static int getTamanhoPagador2() {
		return TAMANHO_PAGADOR2;
	}
	
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_PAGADOR2);
		sb.append(getInscricao().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getLogradouro(), 30));
		sb.append(ArquivoUtils.getCampoNumerico(getNumero(), 5));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getComplemento(), 15));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getBairro(), 15));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCidade(), 20));
		sb.append(ArquivoUtils.getCampoNumerico(getCEP(), 5));
		sb.append(ArquivoUtils.getCampoNumerico(getComplementoCEP(), 3));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getEstado(), 2));
		
		return sb.toString();
	}
	
}