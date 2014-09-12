package org.idempierelbr.cnab240febraban.model.pojo;

import java.util.Date;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;



public class OcorrenciaSacado {
	private static final int TAMANHO_OCORRENCIA_SACADO = 57;
	
	private String codigoOcorrencia;
	private Date dataOcorrencia;
	private Double valorOcorrencia;
	private String complementoOcorrencia;
	
	public OcorrenciaSacado() {
		// TODO Auto-generated constructor stub
	}

	public String getCodigoOcorrencia() {
		return codigoOcorrencia;
	}

	public void setCodigoOcorrencia(String codigoOcorrencia) {
		this.codigoOcorrencia = codigoOcorrencia;
	}

	public Date getDataOcorrencia() {
		return dataOcorrencia;
	}

	public void setDataOcorrencia(Date dataOcorrencia) {
		this.dataOcorrencia = dataOcorrencia;
	}

	public Double getValorOcorrencia() {
		return valorOcorrencia;
	}

	public void setValorOcorrencia(Double valorOcorrencia) {
		this.valorOcorrencia = valorOcorrencia;
	}

	public String getComplementoOcorrencia() {
		return complementoOcorrencia;
	}

	public void setComplementoOcorrencia(String complementoOcorrencia) {
		this.complementoOcorrencia = complementoOcorrencia;
	}
	
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_OCORRENCIA_SACADO);
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCodigoOcorrencia(), 4));
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataOcorrencia()));
		sb.append(ArquivoUtils.getCampoDecimal(getValorOcorrencia(), 13, 2));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getComplementoOcorrencia(), 30));
		
		return sb.toString();
	}
}
