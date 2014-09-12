package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

public class Comprador {
	private static final int TAMANHO_COMPRADOR = 158;
	private Inscricao inscricao;
	private String nome;
	private String endereco;
	private String bairro;
	private String CEP;
	private String sufixoCEP;
	private String cidade;
	private String uf;
	private DadosParaDebito dadosParaDebito;

	public Inscricao getInscricao() {
		return inscricao;
	}

	public void setInscricao(Inscricao inscricao) {
		this.inscricao = inscricao;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	public String getCEP() {
		return CEP;
	}

	public void setCEP(String cEP) {
		CEP = cEP;
	}

	public String getSufixoCEP() {
		return sufixoCEP;
	}

	public void setSufixoCEP(String sufixoCEP) {
		this.sufixoCEP = sufixoCEP;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getUf() {
		return uf;
	}

	public void setUf(String uf) {
		this.uf = uf;
	}

	public DadosParaDebito getDadosParaDebito() {
		return dadosParaDebito;
	}

	public void setDadosParaDebito(DadosParaDebito dadosParaDebito) {
		this.dadosParaDebito = dadosParaDebito;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_COMPRADOR);
		sb.append(getInscricao().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getNome(), 40));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getEndereco(), 40));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getBairro(), 15));
		sb.append(ArquivoUtils.getCampoNumerico(getCEP(), 5));
		sb.append(ArquivoUtils.getCampoNumerico(getSufixoCEP(), 3));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCidade(), 15));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getUf(), 2));
		sb.append(getDadosParaDebito().toString());
		
		return sb.toString();
	}
}
