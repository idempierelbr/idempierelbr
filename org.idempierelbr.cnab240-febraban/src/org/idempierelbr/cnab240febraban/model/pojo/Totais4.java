package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

public class Totais4 {
	private static final int TAMANHO_TOTAIS_4 = 42; 
	private int quantidadeRegistros;
	private Double valorDebitos;
	private Double valorCreditos;
	
	public Totais4() {
	
	}

	public int getQuantidadeRegistros() {
		return quantidadeRegistros;
	}

	public void setQuantidadeRegistros(int quantidadeRegistros) {
		this.quantidadeRegistros = quantidadeRegistros;
	}

	public Double getValorDebitos() {
		return valorDebitos;
	}

	public void setValorDebitos(Double valorDebitos) {
		this.valorDebitos = valorDebitos;
	}

	public Double getValorCreditos() {
		return valorCreditos;
	}

	public void setValorCreditos(Double valorCreditos) {
		this.valorCreditos = valorCreditos;
	}
	
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_TOTAIS_4);
		sb.append(ArquivoUtils.getCampoNumerico(getQuantidadeRegistros(), 6));
		sb.append(ArquivoUtils.getCampoDecimal(getValorDebitos(), 16, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorCreditos(), 16, 2));
		
		return sb.toString();
	}
}
