package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

public class Servico7 {
	private static final int TAMANHO_SERVICO = 9;
	private int numeroRegistro;
	private String codigoSegmento;
	private Movimento movimento;

	public Servico7() {
		setNumeroRegistro(0);
		setCodigoSegmento(ArquivoUtils.BRANCO);
		setMovimento(new Movimento());
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

	public Movimento getMovimento() {
		return movimento;
	}

	public void setMovimento(Movimento movimento) {
		this.movimento = movimento;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_SERVICO);
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoSegmento(), 5));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCodigoSegmento(), 1));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getMovimento().toString(), 1)); //3
		return super.toString();
	}
}
