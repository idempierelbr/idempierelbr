package org.idempierelbr.cnab240febraban.model.pojo;

import java.util.Date;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;



public class Desconto {
	private static final int TAMANHO_JUROS = 24;
	private int codigoDesconto;
	private Date dataDesconto;
	private Double valorPercentualDesconto;
	
	public int getCodigoDesconto() {
		return codigoDesconto;
	}
	public void setCodigoDesconto(int codigoJurosMora) {
		this.codigoDesconto = codigoJurosMora;
	}
	public Date getDataDesconto() {
		return dataDesconto;
	}
	public void setDataDesconto(Date dataJurosMora) {
		this.dataDesconto = dataJurosMora;
	}
	public Double getValorPercentualDesconto() {
		return valorPercentualDesconto;
	}
	public void setValorPercentualDesconto(Double jurosMora) {
		this.valorPercentualDesconto = jurosMora;
	}
	
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_JUROS);
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoDesconto(), 1));
		
		if (getDataDesconto() == null)
			sb.append(ArquivoUtils.getCampoNumerico(0, 8));
		else
			sb.append(ArquivoUtils.getCampoDataFormatada(getDataDesconto()));
		
		sb.append(ArquivoUtils.getCampoDecimal(getValorPercentualDesconto(), 13, 2));
		
		return sb.toString();
	}
}
