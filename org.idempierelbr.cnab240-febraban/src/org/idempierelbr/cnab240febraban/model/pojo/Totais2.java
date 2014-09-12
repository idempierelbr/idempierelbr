package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

public class Totais2 {
	private static final int TAMANHO_TOTAIS2 = 42;

	private int quantidadeRegistros;
	private Double somaTotalValores;
	private Double somatorioQuantidadeMoedas;

	public Totais2(){
		setQuantidadeRegistros(0);
		setSomatorioQuantidadeMoedas(0d);
		setSomaTotalValores(0d);
	}
	
	public int getQuantidadeRegistros() {
		return quantidadeRegistros;
	}

	public void setQuantidadeRegistros(int quantidadeRegistros) {
		this.quantidadeRegistros = quantidadeRegistros;
	}

	public Double getSomaTotalValores() {
		return somaTotalValores;
	}

	public void setSomaTotalValores(Double somaTotalValores) {
		this.somaTotalValores = somaTotalValores;
	}

	public Double getSomatorioQuantidadeMoedas() {
		return somatorioQuantidadeMoedas;
	}

	public void setSomatorioQuantidadeMoedas(Double somatorioQuantidadeMoedas) {
		this.somatorioQuantidadeMoedas = somatorioQuantidadeMoedas;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_TOTAIS2);
		sb.append(ArquivoUtils.getCampoNumerico(getQuantidadeRegistros(), 6));
		sb.append(ArquivoUtils.getCampoDecimal(getSomaTotalValores(), 16, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getSomatorioQuantidadeMoedas(), 13, 5));
		
		return sb.toString();
	}
}
