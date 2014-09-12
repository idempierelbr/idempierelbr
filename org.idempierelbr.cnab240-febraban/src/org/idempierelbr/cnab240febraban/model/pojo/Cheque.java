package org.idempierelbr.cnab240febraban.model.pojo;

import java.util.Date;

import org.idempierelbr.cnab240febraban.enums.FormaEntradaDadosCheque;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;



public class Cheque {
	private static final int TAMANHO_CHEQUE = 81;
	private FormaEntradaDadosCheque formaEntrada;
	//TODO ATENÇÃO ESPECIAL PARA ESTE CAMPO
	private String cmc7;
	private Inscricao emitente;
	private Double valor;
	private Date dataCaputoraChequeNoCliente;
	private Date dataParaDeposito;
	
	public Cheque() {
		setEmitente(new Inscricao());
	}

	public FormaEntradaDadosCheque getFormaEntrada() {
		return formaEntrada;
	}

	public void setFormaEntrada(FormaEntradaDadosCheque formaEntrada) {
		this.formaEntrada = formaEntrada;
	}

	public String getCmc7() {
		return cmc7;
	}

	public void setCmc7(String cmc7) {
		this.cmc7 = cmc7;
	}

	public Inscricao getEmitente() {
		return emitente;
	}

	public void setEmitente(Inscricao emitente) {
		this.emitente = emitente;
	}

	public Double getValor() {
		return valor;
	}

	public void setValor(Double valor) {
		this.valor = valor;
	}

	public Date getDataCaputoraChequeNoCliente() {
		return dataCaputoraChequeNoCliente;
	}

	public void setDataCaputoraChequeNoCliente(Date dataCaputoraChequeNoCliente) {
		this.dataCaputoraChequeNoCliente = dataCaputoraChequeNoCliente;
	}

	public Date getDataParaDeposito() {
		return dataParaDeposito;
	}

	public void setDataParaDeposito(Date dataParaDeposito) {
		this.dataParaDeposito = dataParaDeposito;
	}
	
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_CHEQUE);
		sb.append(ArquivoUtils.getCampoNumerico(getFormaEntrada().getCodigo(), 1));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCmc7(), 34));
		sb.append(getEmitente().toString());
		sb.append(ArquivoUtils.getCampoDecimal(getValor(), 13, 2));
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataCaputoraChequeNoCliente()));
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataParaDeposito()));
		
		return sb.toString();
	}
}
