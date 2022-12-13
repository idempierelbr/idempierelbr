package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

public class Servico3 {
	private static final int TAMANHO_SERVICO = 6;
	private int numeroRegistro;
	private String codigoSegmento;

	public Servico3() {
		setNumeroRegistro(0);
		setCodigoSegmento(ArquivoUtils.BRANCO);
	}

	public int getNumeroRegistro() {
		return numeroRegistro;
	}

	public void setNumeroRegistro(int numeroRegistro) {
		this.numeroRegistro = numeroRegistro;
	}

	public String getCodigoSegmento() {
		return codigoSegmento;
	}

	public void setCodigoSegmento(String codigoSegmento) {
		this.codigoSegmento = codigoSegmento;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_SERVICO);
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoSegmento(), 5));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCodigoSegmento(), 1));
		return super.toString();
	}
}
