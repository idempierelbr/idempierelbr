package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

public class Totais3 {
	private static final int TAMANHO_TOTAIS3 = 24;
	
	private long quantidadeRegistros;
	private Double valor;
	
	public long getQuantidadeRegistros() {
		return quantidadeRegistros;
	}
	public void setQuantidadeRegistros(long quantidadeRegistros) {
		this.quantidadeRegistros = quantidadeRegistros;
	}
	public Double getValor() {
		return valor;
	}
	public void setValor(Double valor) {
		this.valor = valor;
	}
	
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_TOTAIS3);
		sb.append(ArquivoUtils.getCampoNumerico(getQuantidadeRegistros(), 6));
		sb.append(ArquivoUtils.getCampoDecimal(getValor(), 16,2));
		
		return sb.toString();
	}
}
