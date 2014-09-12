package org.idempierelbr.cnab240febraban.model.registro.detalhe.segmento;

import java.util.Date;

import org.idempierelbr.cnab240febraban.annotation.Registro;
import org.idempierelbr.cnab240febraban.enums.EspecieTitulo;
import org.idempierelbr.cnab240febraban.enums.TipoEnvio;
import org.idempierelbr.cnab240febraban.enums.TipoRegistro;
import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.Servico;
import org.idempierelbr.cnab240febraban.model.registro.detalhe.RegistroDeDetalhe;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;



@Registro(obrigatorio=true, tipoEnvio=TipoEnvio.RETORNO, tipoRegistro=TipoRegistro.DETALHE)
public class VendorSegmentoM extends RegistroDeDetalhe {
	private Controle controle;
	private Servico servico;
	private int motivoOcorrencia;
	private int numeroContrato;
	private String numeroDuplicata;
	private int formaPagamento;
	private int quantidadeParcelas;
	private int numeroParcela;
	private Date dataPrimeiroVencimentoTitulo;
	private Date dataVencimentoUltimaParcela;
	private Double taxaVendedor;
	private Double taxaComprador;
	private int codigoMoedaVendedor;
	private int codigoMoedaComprador;
	private Double taxaAnualVendedor;
	private Double taxaAnualComprador;
	private int tipoEqualizacao;
	private int modalidadeEqualizacao;
	private String tipoLancamentoEqualizacao;
	private int formaPagamentoIOF;
	private Double valorNominalTitulo;
	private Double valorFinanciado;
	private Double valorEQualizacao;
	private Double valorIOFRecolhido;
	private Double valorResgate;
	private Double valorTarifasCustas;
	private Double valorLiquidoASerCreditado;
	private String usoEmpresaCedente;
	private EspecieTitulo especieTitulo;
	private String campoExclusivoCNAB;

	public VendorSegmentoM() {
		setControle(new Controle());
		getControle().setTipoRegistro(TipoRegistro.DETALHE);
		setServico(new Servico());
		getServico().setCodigoSegmento("M");
		setNumeroDuplicata(ArquivoUtils.BRANCO);
		setTipoLancamentoEqualizacao(ArquivoUtils.BRANCO);
		setUsoEmpresaCedente(ArquivoUtils.BRANCO);
		setCampoExclusivoCNAB(ArquivoUtils.BRANCO);
	}

	public Controle getControle() {
		return controle;
	}

	public void setControle(Controle controle) {
		this.controle = controle;
	}

	public Servico getServico() {
		return servico;
	}

	public void setServico(Servico servico) {
		this.servico = servico;
	}

	public int getMotivoOcorrencia() {
		return motivoOcorrencia;
	}

	public void setMotivoOcorrencia(int motivoOcorrencia) {
		this.motivoOcorrencia = motivoOcorrencia;
	}

	public int getNumeroContrato() {
		return numeroContrato;
	}

	public void setNumeroContrato(int numeroContrato) {
		this.numeroContrato = numeroContrato;
	}

	public String getNumeroDuplicata() {
		return numeroDuplicata;
	}

	public void setNumeroDuplicata(String numeroDubplicata) {
		this.numeroDuplicata = numeroDubplicata;
	}

	public int getFormaPagamento() {
		return formaPagamento;
	}

	public void setFormaPagamento(int formaPagamento) {
		this.formaPagamento = formaPagamento;
	}

	public int getQuantidadeParcelas() {
		return quantidadeParcelas;
	}

	public void setQuantidadeParcelas(int quantidadeParcelas) {
		this.quantidadeParcelas = quantidadeParcelas;
	}

	public int getNumeroParcela() {
		return numeroParcela;
	}

	public void setNumeroParcela(int numeroParcela) {
		this.numeroParcela = numeroParcela;
	}

	public Date getDataPrimeiroVencimentoTitulo() {
		return dataPrimeiroVencimentoTitulo;
	}

	public void setDataPrimeiroVencimentoTitulo(
			Date dataPrimeiroVencimentoTitulo) {
		this.dataPrimeiroVencimentoTitulo = dataPrimeiroVencimentoTitulo;
	}

	public Date getDataVencimentoUltimaParcela() {
		return dataVencimentoUltimaParcela;
	}

	public void setDataVencimentoUltimaParcela(Date dataVencimentoUltimaParcela) {
		this.dataVencimentoUltimaParcela = dataVencimentoUltimaParcela;
	}

	public Double getTaxaVendedor() {
		return taxaVendedor;
	}

	public void setTaxaVendedor(Double taxaVendedor) {
		this.taxaVendedor = taxaVendedor;
	}

	public Double getTaxaComprador() {
		return taxaComprador;
	}

	public void setTaxaComprador(Double taxaComprador) {
		this.taxaComprador = taxaComprador;
	}

	public int getCodigoMoedaVendedor() {
		return codigoMoedaVendedor;
	}

	public void setCodigoMoedaVendedor(int codigoMoedaVendedor) {
		this.codigoMoedaVendedor = codigoMoedaVendedor;
	}

	public int getCodigoMoedaComprador() {
		return codigoMoedaComprador;
	}

	public void setCodigoMoedaComprador(int codigoMoedaComprador) {
		this.codigoMoedaComprador = codigoMoedaComprador;
	}

	public Double getTaxaAnualVendedor() {
		return taxaAnualVendedor;
	}

	public void setTaxaAnualVendedor(Double taxaAnualVendedor) {
		this.taxaAnualVendedor = taxaAnualVendedor;
	}

	public Double getTaxaAnualComprador() {
		return taxaAnualComprador;
	}

	public void setTaxaAnualComprador(Double taxaAnualComprador) {
		this.taxaAnualComprador = taxaAnualComprador;
	}

	public int getTipoEqualizacao() {
		return tipoEqualizacao;
	}

	public void setTipoEqualizacao(int tipoEqualizacao) {
		this.tipoEqualizacao = tipoEqualizacao;
	}

	public int getModalidadeEqualizacao() {
		return modalidadeEqualizacao;
	}

	public void setModalidadeEqualizacao(int modalidadeEqualizacao) {
		this.modalidadeEqualizacao = modalidadeEqualizacao;
	}

	public String getTipoLancamentoEqualizacao() {
		return tipoLancamentoEqualizacao;
	}

	public void setTipoLancamentoEqualizacao(String tipoLancamentoEqualizacao) {
		this.tipoLancamentoEqualizacao = tipoLancamentoEqualizacao;
	}

	public int getFormaPagamentoIOF() {
		return formaPagamentoIOF;
	}

	public void setFormaPagamentoIOF(int formaPagamentoIOF) {
		this.formaPagamentoIOF = formaPagamentoIOF;
	}

	public Double getValorNominalTitulo() {
		return valorNominalTitulo;
	}

	public void setValorNominalTitulo(Double valorNominalTitulo) {
		this.valorNominalTitulo = valorNominalTitulo;
	}

	public Double getValorFinanciado() {
		return valorFinanciado;
	}

	public void setValorFinanciado(Double valorFinanciado) {
		this.valorFinanciado = valorFinanciado;
	}

	public Double getValorEQualizacao() {
		return valorEQualizacao;
	}

	public void setValorEQualizacao(Double valorEQualizacao) {
		this.valorEQualizacao = valorEQualizacao;
	}

	public Double getValorIOFRecolhido() {
		return valorIOFRecolhido;
	}

	public void setValorIOFRecolhido(Double valorIOFRecolhido) {
		this.valorIOFRecolhido = valorIOFRecolhido;
	}

	public Double getValorResgate() {
		return valorResgate;
	}

	public void setValorResgate(Double valorResgate) {
		this.valorResgate = valorResgate;
	}

	public Double getValorTarifasCustas() {
		return valorTarifasCustas;
	}

	public void setValorTarifasCustas(Double valorTarifasCustas) {
		this.valorTarifasCustas = valorTarifasCustas;
	}

	public Double getValorLiquidoASerCreditado() {
		return valorLiquidoASerCreditado;
	}

	public void setValorLiquidoASerCreditado(Double valorLiquidoASerCreditado) {
		this.valorLiquidoASerCreditado = valorLiquidoASerCreditado;
	}

	public String getUsoEmpresaCedente() {
		return usoEmpresaCedente;
	}

	public void setUsoEmpresaCedente(String usoEmpresaCedente) {
		this.usoEmpresaCedente = usoEmpresaCedente;
	}

	public EspecieTitulo getEspecieTitulo() {
		return especieTitulo;
	}

	public void setEspecieTitulo(EspecieTitulo especieTitulo) {
		this.especieTitulo = especieTitulo;
	}

	public String getCampoExclusivoCNAB() {
		return campoExclusivoCNAB;
	}

	public void setCampoExclusivoCNAB(String campoExclusivoCNAB) {
		this.campoExclusivoCNAB = campoExclusivoCNAB;
	}

	@Override
	public String getConteudoRegistro() {
		StringBuilder sb = new StringBuilder(TAMANHO_REGISTRO);
		sb.append(getControle().toString());
		sb.append(getServico().toString());
		sb.append(ArquivoUtils.getCampoNumerico(getMotivoOcorrencia(), 3));
		sb.append(ArquivoUtils.getCampoNumerico(getNumeroContrato(), 10));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getNumeroDuplicata(), 15));
		sb.append(ArquivoUtils.getCampoNumerico(getFormaPagamento(), 1));
		sb.append(ArquivoUtils.getCampoNumerico(getQuantidadeParcelas(), 2));
		sb.append(ArquivoUtils.getCampoNumerico(getNumeroParcela(), 2));
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataPrimeiroVencimentoTitulo()));
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataVencimentoUltimaParcela()));
		sb.append(ArquivoUtils.getCampoDecimal(getTaxaVendedor(), 3, 5));
		sb.append(ArquivoUtils.getCampoDecimal(getTaxaComprador(), 3, 5));
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoMoedaVendedor(), 2));
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoMoedaComprador(), 2));
		sb.append(ArquivoUtils.getCampoDecimal(getTaxaAnualVendedor(), 3, 5));
		sb.append(ArquivoUtils.getCampoDecimal(getTaxaAnualComprador(), 3, 5));
		sb.append(ArquivoUtils.getCampoNumerico(getTipoEqualizacao(), 1));
		sb.append(ArquivoUtils.getCampoNumerico(getModalidadeEqualizacao(), 1));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getTipoLancamentoEqualizacao(), 1));
		sb.append(ArquivoUtils.getCampoNumerico(getFormaPagamentoIOF(), 1));
		sb.append(ArquivoUtils.getCampoDecimal(getValorNominalTitulo(), 13, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorFinanciado(), 13, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorEQualizacao(), 13, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorIOFRecolhido(), 13, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorResgate(), 13, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorTarifasCustas(), 13, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorLiquidoASerCreditado(), 13, 2));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getUsoEmpresaCedente(), 25));
		sb.append(ArquivoUtils.getCampoNumerico(getEspecieTitulo().getCodigo(), 2));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB(), 3));
		
		return sb.toString();
		
	}

}
