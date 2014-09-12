package org.idempierelbr.cnab240febraban.model.pojo;

import java.util.Date;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;



public class Multa {
	private static final int TAMANHO_JUROS = 24;
	private int codigoMulta;
	private Date dataMulta;
	private Double valorPercentualMulta;
	public int getCodigoMulta() {
		return codigoMulta;
	}
	public void setCodigoMulta(int codigoJurosMora) {
		this.codigoMulta = codigoJurosMora;
	}
	public Date getDataMulta() {
		return dataMulta;
	}
	public void setDataMulta(Date dataJurosMora) {
		this.dataMulta = dataJurosMora;
	}
	public Double getValorPercentualMulta() {
		return valorPercentualMulta;
	}
	public void setValorPercentualMulta(Double jurosMora) {
		this.valorPercentualMulta = jurosMora;
	}
	
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_JUROS);
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoMulta(), 1));
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataMulta()));
		sb.append(ArquivoUtils.getCampoDecimal(getValorPercentualMulta(), 13, 2));
		
		return sb.toString();
	}
}
