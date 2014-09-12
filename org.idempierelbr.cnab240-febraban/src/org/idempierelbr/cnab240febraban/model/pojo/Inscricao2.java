package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.enums.TipoInscricao;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;


public class Inscricao2 {
	private static final int TAMANHO_INSCRICAO2 = 16;

	private TipoInscricao tipo;
	private long numero;

	public Inscricao2() {
		setTipo(null);
		setNumero(0l);
	}

	public TipoInscricao getTipo() {
		return tipo;
	}

	public void setTipo(TipoInscricao tipo) {
		this.tipo = tipo;
	}

	public long getNumero() {
		return numero;
	}

	public void setNumero(long numero) {
		this.numero = numero;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_INSCRICAO2);
		sb.append(ArquivoUtils.getCampoNumerico(getTipo().getCodigo(), 1));
		sb.append(ArquivoUtils.getCampoNumerico(getNumero(), 15));
		return sb.toString();
	}
}
