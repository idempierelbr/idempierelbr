package org.idempierelbr.cnab240febraban.model.pojo;

import java.util.Date;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;



public class Pagamento {
	private static final int TAMANHO_PAGAMENTO = 83;
	
	private Date dataVencimento;
	private Double valorNominalDocumento;
	private Double valorAbatimento;
	private Double valorDesconto;
	private Double valorMora;
	private Double valorMulta;

	public Pagamento(){
		setDataVencimento(null);
		setValorNominalDocumento(0D);
		setValorAbatimento(0D);
		setValorDesconto(0D);
		setValorMora(0D);
		setValorMulta(0D);
	}
	
	public Date getDataVencimento() {
		return dataVencimento;
	}

	public void setDataVencimento(Date dataVencimento) {
		this.dataVencimento = dataVencimento;
	}

	public Double getValorNominalDocumento() {
		return valorNominalDocumento;
	}

	public void setValorNominalDocumento(Double valorNominalDocumento) {
		this.valorNominalDocumento = valorNominalDocumento;
	}

	public Double getValorAbatimento() {
		return valorAbatimento;
	}

	public void setValorAbatimento(Double valorAbatimento) {
		this.valorAbatimento = valorAbatimento;
	}

	public Double getValorDesconto() {
		return valorDesconto;
	}

	public void setValorDesconto(Double valorDesconto) {
		this.valorDesconto = valorDesconto;
	}

	public Double getValorMora() {
		return valorMora;
	}

	public void setValorMora(Double valorMora) {
		this.valorMora = valorMora;
	}

	public Double getValorMulta() {
		return valorMulta;
	}

	public void setValorMulta(Double valorMulta) {
		this.valorMulta = valorMulta;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_PAGAMENTO);
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataVencimento())); // 8
		sb.append(ArquivoUtils.getCampoDecimal(getValorNominalDocumento(), 13,2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorAbatimento(), 13,2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorDesconto(), 13,2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorMora(), 13,2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorMulta(), 13,2));
		
		return sb.toString();
	}
}
