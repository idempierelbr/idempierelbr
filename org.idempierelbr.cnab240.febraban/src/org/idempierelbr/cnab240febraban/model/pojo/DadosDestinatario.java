package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

public class DadosDestinatario {
	private static final int TAMANHO_DADOS_DESTINATARIO = 60;

	private String email;
	private Telefone celular;

	public DadosDestinatario() {
		setEmail(ArquivoUtils.BRANCO);
		setCelular(new Telefone());
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Telefone getCelular() {
		return celular;
	}

	public void setCelular(Telefone celular) {
		this.celular = celular;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_DADOS_DESTINATARIO);
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getEmail(), 50));
		sb.append(getCelular().toString());

		return sb.toString();
	}
}
