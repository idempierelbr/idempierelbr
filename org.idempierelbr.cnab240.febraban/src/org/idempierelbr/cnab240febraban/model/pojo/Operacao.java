package org.idempierelbr.cnab240febraban.model.pojo;

import java.util.Date;

import org.idempierelbr.cnab240febraban.enums.TipoOperacao;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;



public class Operacao {
	private static final int TAMANHO_OPERACAO = 89;
	
	private TipoOperacao tipoOperacao;
	private int diaVencimento;
	private int mesVencimento;
	private int anoVencimento;
	private int numeroParcela;
	private int quantidadeParcelas;
	private Date dataInicio;
	private Date dataFim;
	private double valorTotalLiberado;
	private double valorTotalOperacao;
	private double valorTotalParcela;
	private double valorTotalSaldoDevedor;
	private String idContrato;
	private String quantidadeContratos;
	
	public Operacao() {
		// TODO Auto-generated constructor stub
	}

	public TipoOperacao getTipoOperacao() {
		return tipoOperacao;
	}

	public void setTipoOperacao(TipoOperacao tipoOperacao) {
		this.tipoOperacao = tipoOperacao;
	}

	public int getDiaVencimento() {
		return diaVencimento;
	}

	public void setDiaVencimento(int diaVencimento) {
		this.diaVencimento = diaVencimento;
	}

	public int getMesVencimento() {
		return mesVencimento;
	}

	public void setMesVencimento(int mesVencimento) {
		this.mesVencimento = mesVencimento;
	}

	public int getAnoVencimento() {
		return anoVencimento;
	}

	public void setAnoVencimento(int anoVencimento) {
		this.anoVencimento = anoVencimento;
	}

	public int getNumeroParcela() {
		return numeroParcela;
	}

	public void setNumeroParcela(int numeroParcela) {
		this.numeroParcela = numeroParcela;
	}

	public int getQuantidadeParcelas() {
		return quantidadeParcelas;
	}

	public void setQuantidadeParcelas(int quantidadeParcelas) {
		this.quantidadeParcelas = quantidadeParcelas;
	}

	public Date getDataInicio() {
		return dataInicio;
	}

	public void setDataInicio(Date dataInicio) {
		this.dataInicio = dataInicio;
	}

	public Date getDataFim() {
		return dataFim;
	}

	public void setDataFim(Date dataFim) {
		this.dataFim = dataFim;
	}

	public double getValorTotalLiberado() {
		return valorTotalLiberado;
	}

	public void setValorTotalLiberado(double valorTotalLiberado) {
		this.valorTotalLiberado = valorTotalLiberado;
	}

	public double getValorTotalOperacao() {
		return valorTotalOperacao;
	}

	public void setValorTotalOperacao(double valorTotalOperacao) {
		this.valorTotalOperacao = valorTotalOperacao;
	}

	public double getValorTotalParcela() {
		return valorTotalParcela;
	}

	public void setValorTotalParcela(double valorTotalParcela) {
		this.valorTotalParcela = valorTotalParcela;
	}

	public double getValorTotalSaldoDevedor() {
		return valorTotalSaldoDevedor;
	}

	public void setValorTotalSaldoDevedor(double valorTotalSaldoDevedor) {
		this.valorTotalSaldoDevedor = valorTotalSaldoDevedor;
	}

	public String getIdContrato() {
		return idContrato;
	}

	public void setIdContrato(String idContrato) {
		this.idContrato = idContrato;
	}
	
	public String getQuantidadeContratos() {
		return quantidadeContratos;
	}
	
	public void setQuantidadeContratos(String quantidadeContratos) {
		this.quantidadeContratos = quantidadeContratos;
	}
	
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_OPERACAO);
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getTipoOperacao().getCodigo(), 2));
		sb.append(ArquivoUtils.getCampoNumerico(getDiaVencimento(), 2));
		sb.append(ArquivoUtils.getCampoNumerico(getMesVencimento(), 2));
		sb.append(ArquivoUtils.getCampoNumerico(getAnoVencimento(), 4));
		sb.append(ArquivoUtils.getCampoNumerico(getNumeroParcela(), 2));
		sb.append(ArquivoUtils.getCampoNumerico(getQuantidadeParcelas(), 2));
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataInicio()));
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataFim()));
		sb.append(ArquivoUtils.getCampoDecimal(getValorTotalLiberado(), 7, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorTotalOperacao(), 7, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorTotalParcela(), 7, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorTotalSaldoDevedor(), 7, 2));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getIdContrato(), 20));
		sb.append(ArquivoUtils.getCampoNumerico(getQuantidadeContratos(), 2));
		
		return sb.toString();
	}

}
