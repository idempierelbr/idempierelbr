package org.idempierelbr.cnab240febraban.model.pojo;

import java.util.Date;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;



public class Juros {
	private static final int TAMANHO_JUROS = 24;
	private int codigoJurosMora;
	private Date dataJurosMora;
	private Double valorJurosMoraPorDia;
	public int getCodigoJurosMora() {
		return codigoJurosMora;
	}
	public void setCodigoJurosMora(int codigoJurosMora) {
		this.codigoJurosMora = codigoJurosMora;
	}
	public Date getDataJurosMora() {
		return dataJurosMora;
	}
	public void setDataJurosMora(Date dataJurosMora) {
		this.dataJurosMora = dataJurosMora;
	}
	public Double getValorJurosMoraPorDia() {
		return valorJurosMoraPorDia;
	}
	public void setValorJurosMoraPorDia(Double jurosMora) {
		this.valorJurosMoraPorDia = jurosMora;
	}
	
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_JUROS);
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoJurosMora(), 1));
		
		if (getDataJurosMora() == null)
			sb.append(ArquivoUtils.getCampoNumerico(0, 8));
		else
			sb.append(ArquivoUtils.getCampoDataFormatada(getDataJurosMora()));

		sb.append(ArquivoUtils.getCampoDecimal(getValorJurosMoraPorDia(), 13, 2));
		
		return sb.toString();
	}
}
