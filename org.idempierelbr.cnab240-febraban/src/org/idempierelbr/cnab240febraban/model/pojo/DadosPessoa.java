package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

public class DadosPessoa {
	private static final int TAMANHO_DADOS_PESSOA = 56;

	private Inscricao2 inscricao;
	private String nome;

	public DadosPessoa() {
		setInscricao(new Inscricao2());
		setNome(ArquivoUtils.BRANCO);
	}

	public Inscricao2 getInscricao() {
		return inscricao;
	}

	public void setInscricao(Inscricao2 inscricao) {
		this.inscricao = inscricao;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_DADOS_PESSOA);
		sb.append(getInscricao().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getNome(), 40));
		
		return sb.toString();
	}
}
