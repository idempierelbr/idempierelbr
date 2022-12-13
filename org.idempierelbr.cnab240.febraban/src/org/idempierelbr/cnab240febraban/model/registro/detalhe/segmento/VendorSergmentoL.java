package org.idempierelbr.cnab240febraban.model.registro.detalhe.segmento;

import java.util.Date;

import org.idempierelbr.cnab240febraban.annotation.Registro;
import org.idempierelbr.cnab240febraban.enums.EspecieTitulo;
import org.idempierelbr.cnab240febraban.enums.TipoEnvio;
import org.idempierelbr.cnab240febraban.enums.TipoRegistro;
import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.Desconto;
import org.idempierelbr.cnab240febraban.model.pojo.Multa;
import org.idempierelbr.cnab240febraban.model.pojo.Prorrogacao;
import org.idempierelbr.cnab240febraban.model.pojo.Repactuacao;
import org.idempierelbr.cnab240febraban.model.pojo.Servico4;
import org.idempierelbr.cnab240febraban.model.registro.detalhe.RegistroDeDetalhe;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;



@Registro(obrigatorio = true, tipoEnvio = TipoEnvio.REMESSA, tipoRegistro=TipoRegistro.DETALHE)
public class VendorSergmentoL extends RegistroDeDetalhe {
	private Controle controle;
	private Servico4 servico;
	private String numeroDuplicata;
	private int numeroContrato;
	private Date dataEmissaoTitulo;
	private Date dataFinanciamento;
	private Double valorNominalTitulo;
	private Double taxaJurosDoVendedor;
	private Double taxaJurosDoComprador;
	private int codigoMoedaDoVendedor;
	private int codigoMoedaComprador;
	private Date dataPrimeiroVencimentoTitulo;
	private Date dataVencimentoFinal;
	private int tipoVencimentoParcela;
	private int periodicidadePrazoVencimento;
	private int quantidadeParcelas;
	private int formaPagamento;
	private int tipoEqualizacao;
	private int modalidadeEqualizacao;
	private Repactuacao repactuacao;
	private Multa multa;
	private Desconto desconto;
	private Prorrogacao prorrogacao;
	private int pagamentoIOF;
	private int prazoDebitoETransferencia;
	private int codigoProtesto;
	private String prazoProtesto;
	private Double valorAbatimento;
	private EspecieTitulo especieTitulo;
	private String campoExclusivoCNAB;

	public VendorSergmentoL() {
		setControle(new Controle());
		getControle().setTipoRegistro(TipoRegistro.DETALHE);
		setServico(new Servico4());
		getServico().setCodigoSegmento("L");
		setNumeroDuplicata(ArquivoUtils.BRANCO);
		setRepactuacao(new Repactuacao());
		setMulta(new Multa());
		setDesconto(new Desconto());
		setProrrogacao(new Prorrogacao());
		setPrazoProtesto(ArquivoUtils.BRANCO);
		setCampoExclusivoCNAB(ArquivoUtils.BRANCO);
	}

	public Controle getControle() {
		return controle;
	}

	public void setControle(Controle controle) {
		this.controle = controle;
	}

	public Servico4 getServico() {
		return servico;
	}

	public void setServico(Servico4 servico) {
		this.servico = servico;
	}

	public String getNumeroDuplicata() {
		return numeroDuplicata;
	}

	public void setNumeroDuplicata(String numeroDuplicata) {
		this.numeroDuplicata = numeroDuplicata;
	}

	public int getNumeroContrato() {
		return numeroContrato;
	}

	public void setNumeroContrato(int numeroContrato) {
		this.numeroContrato = numeroContrato;
	}

	public Date getDataEmissaoTitulo() {
		return dataEmissaoTitulo;
	}

	public void setDataEmissaoTitulo(Date dataEmissaoTitulo) {
		this.dataEmissaoTitulo = dataEmissaoTitulo;
	}

	public Date getDataFinanciamento() {
		return dataFinanciamento;
	}

	public void setDataFinanciamento(Date dataFinanciamento) {
		this.dataFinanciamento = dataFinanciamento;
	}

	public Double getValorNominalTitulo() {
		return valorNominalTitulo;
	}

	public void setValorNominalTitulo(Double valorNominalTitulo) {
		this.valorNominalTitulo = valorNominalTitulo;
	}

	public Double getTaxaJurosDoVendedor() {
		return taxaJurosDoVendedor;
	}

	public void setTaxaJurosDoVendedor(Double taxaJurosDoVendedor) {
		this.taxaJurosDoVendedor = taxaJurosDoVendedor;
	}

	public Double getTaxaJurosDoComprador() {
		return taxaJurosDoComprador;
	}

	public void setTaxaJurosDoComprador(Double taxaJurosDoComprador) {
		this.taxaJurosDoComprador = taxaJurosDoComprador;
	}

	public int getCodigoMoedaDoVendedor() {
		return codigoMoedaDoVendedor;
	}

	public void setCodigoMoedaDoVendedor(int codigoMoedaDoVendedor) {
		this.codigoMoedaDoVendedor = codigoMoedaDoVendedor;
	}

	public int getCodigoMoedaComprador() {
		return codigoMoedaComprador;
	}

	public void setCodigoMoedaComprador(int codigoMoeda) {
		this.codigoMoedaComprador = codigoMoeda;
	}

	public Date getDataPrimeiroVencimentoTitulo() {
		return dataPrimeiroVencimentoTitulo;
	}

	public void setDataPrimeiroVencimentoTitulo(
			Date dataPrimeiroVencimentoTitulo) {
		this.dataPrimeiroVencimentoTitulo = dataPrimeiroVencimentoTitulo;
	}

	public Date getDataVencimentoFinal() {
		return dataVencimentoFinal;
	}

	public void setDataVencimentoFinal(Date dataVencimentoFinal) {
		this.dataVencimentoFinal = dataVencimentoFinal;
	}

	public int getTipoVencimentoParcela() {
		return tipoVencimentoParcela;
	}

	public void setTipoVencimentoParcela(int tipoVencimentoParcela) {
		this.tipoVencimentoParcela = tipoVencimentoParcela;
	}

	public int getPeriodicidadePrazoVencimento() {
		return periodicidadePrazoVencimento;
	}

	public void setPeriodicidadePrazoVencimento(int periodicidadePrazoVencimento) {
		this.periodicidadePrazoVencimento = periodicidadePrazoVencimento;
	}

	public int getQuantidadeParcelas() {
		return quantidadeParcelas;
	}

	public void setQuantidadeParcelas(int quantidadeParcelas) {
		this.quantidadeParcelas = quantidadeParcelas;
	}

	public int getFormaPagamento() {
		return formaPagamento;
	}

	public void setFormaPagamento(int formaPagamento) {
		this.formaPagamento = formaPagamento;
	}

	public int getTipoEqualizacao() {
		return tipoEqualizacao;
	}

	public void setTipoEqualizacao(int equalizacao) {
		this.tipoEqualizacao = equalizacao;
	}

	public int getModalidadeEqualizacao() {
		return modalidadeEqualizacao;
	}

	public void setModalidadeEqualizacao(int modalidadeEqualizacao) {
		this.modalidadeEqualizacao = modalidadeEqualizacao;
	}

	public Repactuacao getRepactuacao() {
		return repactuacao;
	}

	public void setRepactuacao(Repactuacao repactuacao) {
		this.repactuacao = repactuacao;
	}

	public Multa getMulta() {
		return multa;
	}

	public void setMulta(Multa multa) {
		this.multa = multa;
	}

	public Desconto getDesconto() {
		return desconto;
	}

	public void setDesconto(Desconto desconto) {
		this.desconto = desconto;
	}

	public Prorrogacao getProrrogacao() {
		return prorrogacao;
	}

	public void setProrrogacao(Prorrogacao prorrogacao) {
		this.prorrogacao = prorrogacao;
	}

	public int getPagamentoIOF() {
		return pagamentoIOF;
	}

	public void setPagamentoIOF(int pagamentoIOF) {
		this.pagamentoIOF = pagamentoIOF;
	}

	public int getPrazoDebitoETransferencia() {
		return prazoDebitoETransferencia;
	}

	public void setPrazoDebitoETransferencia(int prazoDebitoETransferencia) {
		this.prazoDebitoETransferencia = prazoDebitoETransferencia;
	}

	public int getCodigoProtesto() {
		return codigoProtesto;
	}

	public void setCodigoProtesto(int codigoProtesto) {
		this.codigoProtesto = codigoProtesto;
	}

	public String getPrazoProtesto() {
		return prazoProtesto;
	}

	public void setPrazoProtesto(String prazoProtesto) {
		this.prazoProtesto = prazoProtesto;
	}

	public Double getValorAbatimento() {
		return valorAbatimento;
	}

	public void setValorAbatimento(Double valorAbatimento) {
		this.valorAbatimento = valorAbatimento;
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
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getNumeroDuplicata(), 15));
		sb.append(ArquivoUtils.getCampoNumerico(getNumeroContrato(), 10));
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataEmissaoTitulo()));
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataFinanciamento()));
		sb.append(ArquivoUtils.getCampoDecimal(getValorNominalTitulo(), 13, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getTaxaJurosDoVendedor(), 3, 5));
		sb.append(ArquivoUtils.getCampoDecimal(getTaxaJurosDoComprador(), 3, 5));
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoMoedaDoVendedor(), 2));
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoMoedaComprador(), 2));
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataPrimeiroVencimentoTitulo()));
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataVencimentoFinal()));
		sb.append(ArquivoUtils.getCampoNumerico(getTipoVencimentoParcela(), 1));
		sb.append(ArquivoUtils.getCampoNumerico(getPeriodicidadePrazoVencimento(), 2));
		sb.append(ArquivoUtils.getCampoNumerico(getQuantidadeParcelas(), 2));
		sb.append(ArquivoUtils.getCampoNumerico(getFormaPagamento(), 1));
		sb.append(ArquivoUtils.getCampoNumerico(getTipoEqualizacao(), 1));
		sb.append(ArquivoUtils.getCampoNumerico(getModalidadeEqualizacao(), 1));
		sb.append(getRepactuacao().toString());
		sb.append(getMulta().toString());
		sb.append(getDesconto().toString());
		sb.append(getProrrogacao().toString());
		sb.append(ArquivoUtils.getCampoNumerico(getPrazoDebitoETransferencia(), 2));
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoProtesto(), 1));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getPrazoProtesto(), 2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorAbatimento(), 13, 2));
		sb.append(ArquivoUtils.getCampoNumerico(getEspecieTitulo().getCodigo(), 2));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB(), 10));
		
		return sb.toString();
	}

}