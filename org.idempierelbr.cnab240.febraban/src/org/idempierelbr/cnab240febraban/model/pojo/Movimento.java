package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

public class Movimento {
	private static final int TAMANHO_MOVIMENTO = 3;
	private int tipo;
	private int codigo;

	public Movimento() {
	}
	
	public Movimento(int tipo, int codigo){
		setTipo(tipo);
		setCodigo(codigo);
	}

	public int getTipo() {
		return tipo;
	}

	public void setTipo(int tipo) {
		this.tipo = tipo;
	}

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_MOVIMENTO);
		sb.append(ArquivoUtils.getCampoNumerico(getTipo(), 1));
		sb.append(ArquivoUtils.getCampoNumerico(getCodigo(), 2));
		return sb.toString();
	}
}
