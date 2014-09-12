package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

public class Valores {
	private static final int TAMANHO_VALORES = 54;
	
	private Double saldoBloqueadoAcima24Horas;
	private Double valorLimiteConta;
	private Double saldoBloqueadoAte24Horas;
	
	public Valores() {
	}

	public Double getSaldoBloqueadoAcima24Horas() {
		return saldoBloqueadoAcima24Horas;
	}

	public void setSaldoBloqueadoAcima24Horas(Double saldoBloqueadoAcima24Horas) {
		this.saldoBloqueadoAcima24Horas = saldoBloqueadoAcima24Horas;
	}

	public Double getValorLimiteConta() {
		return valorLimiteConta;
	}

	public void setValorLimiteConta(Double valorLimiteConta) {
		this.valorLimiteConta = valorLimiteConta;
	}

	public Double getSaldoBloqueadoAte24Horas() {
		return saldoBloqueadoAte24Horas;
	}

	public void setSaldoBloqueadoAte24Horas(Double saldoBloqueadoAte24Horas) {
		this.saldoBloqueadoAte24Horas = saldoBloqueadoAte24Horas;
	}
	
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_VALORES);
		sb.append(ArquivoUtils.getCampoDecimal(getSaldoBloqueadoAcima24Horas(), 16,2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorLimiteConta(), 16,2));
		sb.append(ArquivoUtils.getCampoDecimal(getSaldoBloqueadoAte24Horas(), 16,2));
		
		return sb.toString();
	}
}
