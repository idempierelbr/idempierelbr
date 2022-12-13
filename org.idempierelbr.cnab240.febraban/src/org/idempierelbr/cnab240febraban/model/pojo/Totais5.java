package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

public class Totais5 {
	private static final int TAMANHO_TOTAIS5 = 30;
	
	private int quantidadeRegistros;
	private double valorCheques;
	private int quantidadeCheques;
	
	public Totais5() {
	
	}

	public int getQuantidadeRegistros() {
		return quantidadeRegistros;
	}

	public void setQuantidadeRegistros(int quantidadeRegistros) {
		this.quantidadeRegistros = quantidadeRegistros;
	}

	public double getValorCheques() {
		return valorCheques;
	}

	public void setValorCheques(double valorCheques) {
		this.valorCheques = valorCheques;
	}

	public int getQuantidadeCheques() {
		return quantidadeCheques;
	}

	public void setQuantidadeCheques(int quantidadeCheques) {
		this.quantidadeCheques = quantidadeCheques;
	}
	
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_TOTAIS5);
		sb.append(ArquivoUtils.getCampoNumerico(getQuantidadeRegistros(), 6));
		sb.append(ArquivoUtils.getCampoDecimal(getValorCheques(), 16, 2));
		sb.append(ArquivoUtils.getCampoNumerico(getQuantidadeCheques(), 6));
		
		return sb.toString();
	}
}
