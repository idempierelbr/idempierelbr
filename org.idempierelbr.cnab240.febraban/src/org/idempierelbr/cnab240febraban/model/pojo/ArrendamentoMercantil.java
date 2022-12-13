package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

public class ArrendamentoMercantil {
	private static final int TAMANHO_ARRENDAMENTO_MERCANTIL = 19;
	private double valorContraprestacao;
	private double valorResidualGarantido;
	private String tipoResidualGarantido;
	
	public ArrendamentoMercantil() {
		setTipoResidualGarantido(ArquivoUtils.BRANCO);
	}
	
	public double getValorContraprestacao() {
		return valorContraprestacao;
	}
	public void setValorContraprestacao(double valorContraprestacao) {
		this.valorContraprestacao = valorContraprestacao;
	}
	public double getValorResidualGarantido() {
		return valorResidualGarantido;
	}
	public void setValorResidualGarantido(double valorResidualGarantido) {
		this.valorResidualGarantido = valorResidualGarantido;
	}
	public String getTipoResidualGarantido() {
		return tipoResidualGarantido;
	}
	public void setTipoResidualGarantido(String tipoResidualGarantido) {
		this.tipoResidualGarantido = tipoResidualGarantido;
	}
	
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_ARRENDAMENTO_MERCANTIL);
		sb.append(ArquivoUtils.getCampoDecimal(getValorContraprestacao(), 7, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorResidualGarantido(), 7, 2));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getTipoResidualGarantido(), 1));
		
		return sb.toString();
	}
}
