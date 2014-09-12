package org.idempierelbr.cnab240febraban.model.pojo;

import java.util.Date;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;



public class PagamentoTitulosCobrancaSegmentoAux {
	private static final int TAMANHO_PAGAMENTO_TITULOS_COBRANCA_SEGMENTO_J_AUX = 185;

	private long codigoBarras;
	private String nomeCedente;
	private Date dataVencimentoNominal;
	private Double valorTituloNominal;
	private Double valorDescontoEAbatimento;
	private Double valorAcrestimosMoraEMulta;
	private Date dataPagamento;
	private Double valorPagamento;
	private Double quantidadeMoeda;
	private String referenciaSacado; // atribuído pela empresa

	public PagamentoTitulosCobrancaSegmentoAux() {
		setCodigoBarras(0l);
		setNomeCedente(ArquivoUtils.BRANCO);
		setDataVencimentoNominal(null);
		setValorTituloNominal(0D);
		setValorDescontoEAbatimento(0d);
		setValorAcrestimosMoraEMulta(0d);
		setDataPagamento(null);
		setValorPagamento(0d);
		setQuantidadeMoeda(0d);
		setReferenciaSacado(ArquivoUtils.BRANCO);
	}

	public long getCodigoBarras() {
		return codigoBarras;
	}

	public void setCodigoBarras(long codigoBarras) {
		this.codigoBarras = codigoBarras;
	}

	public String getNomeCedente() {
		return nomeCedente;
	}

	public void setNomeCedente(String nomeCedente) {
		this.nomeCedente = nomeCedente;
	}

	public Date getDataVencimentoNominal() {
		return dataVencimentoNominal;
	}

	public void setDataVencimentoNominal(Date dataVencimentoNominal) {
		this.dataVencimentoNominal = dataVencimentoNominal;
	}

	public Double getValorTituloNominal() {
		return valorTituloNominal;
	}

	public void setValorTituloNominal(Double valorTituloNominal) {
		this.valorTituloNominal = valorTituloNominal;
	}

	public Double getValorDescontoEAbatimento() {
		return valorDescontoEAbatimento;
	}

	public void setValorDescontoEAbatimento(Double valorDescontoEAbatimento) {
		this.valorDescontoEAbatimento = valorDescontoEAbatimento;
	}

	public Double getValorAcrestimosMoraEMulta() {
		return valorAcrestimosMoraEMulta;
	}

	public void setValorAcrestimosMoraEMulta(Double valorAcrestimosMoraEMulta) {
		this.valorAcrestimosMoraEMulta = valorAcrestimosMoraEMulta;
	}

	public Date getDataPagamento() {
		return dataPagamento;
	}

	public void setDataPagamento(Date dataPagamento) {
		this.dataPagamento = dataPagamento;
	}

	public Double getValorPagamento() {
		return valorPagamento;
	}

	public void setValorPagamento(Double valorPagamento) {
		this.valorPagamento = valorPagamento;
	}

	public Double getQuantidadeMoeda() {
		return quantidadeMoeda;
	}

	public void setQuantidadeMoeda(Double quantidadeMoeda) {
		this.quantidadeMoeda = quantidadeMoeda;
	}

	public String getReferenciaSacado() {
		return referenciaSacado;
	}

	public void setReferenciaSacado(String referenciaSacado) {
		this.referenciaSacado = referenciaSacado;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_PAGAMENTO_TITULOS_COBRANCA_SEGMENTO_J_AUX);
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoBarras(), 44));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getNomeCedente(), 30));
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataVencimentoNominal()));//8
		sb.append(ArquivoUtils.getCampoDecimal(getValorTituloNominal(), 13, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorDescontoEAbatimento(), 13, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorAcrestimosMoraEMulta(), 13, 2));
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataPagamento())); //8
		sb.append(ArquivoUtils.getCampoDecimal(getValorPagamento(), 13,2));
		sb.append(ArquivoUtils.getCampoDecimal(getQuantidadeMoeda(), 10, 5));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getReferenciaSacado(), 20));
		
		return sb.toString();
	}
}
