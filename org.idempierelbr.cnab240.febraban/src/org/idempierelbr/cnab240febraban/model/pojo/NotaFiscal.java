package org.idempierelbr.cnab240febraban.model.pojo;

import java.util.Date;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;



public class NotaFiscal {
	private static final int TAMANHO_NOTA_FISCAL = 38; 
	
	private String numero;
	private Double valor;
	private Date dataEmissao;
	
	public NotaFiscal() {
	
	}

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	public Double getValor() {
		return valor;
	}

	public void setValor(Double valor) {
		this.valor = valor;
	}

	public Date getDataEmissao() {
		return dataEmissao;
	}

	public void setDataEmissao(Date dataEmissao) {
		this.dataEmissao = dataEmissao;
	}
	
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_NOTA_FISCAL);
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getNumero(), 15));
		sb.append(ArquivoUtils.getCampoDecimal(getValor(), 13, 2));
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataEmissao()));
		
		return sb.toString();
	}
}