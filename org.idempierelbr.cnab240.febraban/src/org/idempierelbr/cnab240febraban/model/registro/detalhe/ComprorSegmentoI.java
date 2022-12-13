package org.idempierelbr.cnab240febraban.model.registro.detalhe;

import java.util.Date;

import org.idempierelbr.cnab240febraban.enums.TipoRegistro;
import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.Servico4;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;



public class ComprorSegmentoI extends RegistroDeDetalhe {
	private Controle controle;
	private Servico4 servico;
	private int numeroContrato;
	private String numeroDocumento;
	private Date dataCompra;
	private int regimeEncargosFinanceiros;
	private int modalidadeEncargosFinanceiros;
	private double taxaJuros;
	private int formaReposicao;
	private int metodologiaCalculoEncargos;
	private Date dataPrimeiroVencimento;
	private Date dataVencimentoFinal;
	private int tipoVencimentoParcela;
	private int periodicidadePrazoVencimento;
	private int quantidadeParcelas;
	private String nossoNumero;
	private int formaPagamento;
	private double valorEncargosOperacao;
	private int formaPagamentoIOF;
	private double valorIOF;
	private double valorResgate;
	private double valorJurosMora;
	private double valorIOFSobreAtraso;
	private double valorMulta;
	private String campoExclusivoCNAB;

	public ComprorSegmentoI() {
		setControle(new Controle());
		getControle().setTipoRegistro(TipoRegistro.DETALHE);
		setServico(new Servico4());
		getServico().setCodigoSegmento("I");
		setNumeroDocumento(ArquivoUtils.BRANCO);
		setNossoNumero(ArquivoUtils.BRANCO);
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

	public int getNumeroContrato() {
		return numeroContrato;
	}

	public void setNumeroContrato(int numeroContrato) {
		this.numeroContrato = numeroContrato;
	}

	public String getNumeroDocumento() {
		return numeroDocumento;
	}

	public void setNumeroDocumento(String numeroDocumento) {
		this.numeroDocumento = numeroDocumento;
	}

	public Date getDataCompra() {
		return dataCompra;
	}

	public void setDataCompra(Date dataCompra) {
		this.dataCompra = dataCompra;
	}

	public int getRegimeEncargosFinanceiros() {
		return regimeEncargosFinanceiros;
	}

	public void setRegimeEncargosFinanceiros(int regimeEncargosFinanceiros) {
		this.regimeEncargosFinanceiros = regimeEncargosFinanceiros;
	}

	public int getModalidadeEncargosFinanceiros() {
		return modalidadeEncargosFinanceiros;
	}

	public void setModalidadeEncargosFinanceiros(
			int modalidadeEncargosFinanceiros) {
		this.modalidadeEncargosFinanceiros = modalidadeEncargosFinanceiros;
	}

	public double getTaxaJuros() {
		return taxaJuros;
	}

	public void setTaxaJuros(double taxaJuros) {
		this.taxaJuros = taxaJuros;
	}

	public int getFormaReposicao() {
		return formaReposicao;
	}

	public void setFormaReposicao(int formaReposicao) {
		this.formaReposicao = formaReposicao;
	}

	public int getMetodologiaCalculoEncargos() {
		return metodologiaCalculoEncargos;
	}

	public void setMetodologiaCalculoEncargos(int metodologiaCalculoEncargos) {
		this.metodologiaCalculoEncargos = metodologiaCalculoEncargos;
	}

	public Date getDataPrimeiroVencimento() {
		return dataPrimeiroVencimento;
	}

	public void setDataPrimeiroVencimento(Date dataPrimeiroVencimento) {
		this.dataPrimeiroVencimento = dataPrimeiroVencimento;
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

	public String getNossoNumero() {
		return nossoNumero;
	}

	public void setNossoNumero(String nossoNumero) {
		this.nossoNumero = nossoNumero;
	}

	public int getFormaPagamento() {
		return formaPagamento;
	}

	public void setFormaPagamento(int formaPagamento) {
		this.formaPagamento = formaPagamento;
	}

	public double getValorEncargosOperacao() {
		return valorEncargosOperacao;
	}

	public void setValorEncargosOperacao(double valorEncargosOperacao) {
		this.valorEncargosOperacao = valorEncargosOperacao;
	}

	public int getFormaPagamentoIOF() {
		return formaPagamentoIOF;
	}

	public void setFormaPagamentoIOF(int formaPagamentoIOF) {
		this.formaPagamentoIOF = formaPagamentoIOF;
	}

	public double getValorIOF() {
		return valorIOF;
	}

	public void setValorIOF(double valorIOF) {
		this.valorIOF = valorIOF;
	}

	public double getValorResgate() {
		return valorResgate;
	}

	public void setValorResgate(double valorResgate) {
		this.valorResgate = valorResgate;
	}

	public double getValorJurosMora() {
		return valorJurosMora;
	}

	public void setValorJurosMora(double valorJurosMora) {
		this.valorJurosMora = valorJurosMora;
	}

	public double getValorIOFSobreAtraso() {
		return valorIOFSobreAtraso;
	}

	public void setValorIOFSobreAtraso(double valorIOFSobreAtraso) {
		this.valorIOFSobreAtraso = valorIOFSobreAtraso;
	}

	public double getValorMulta() {
		return valorMulta;
	}

	public void setValorMulta(double valorMulta) {
		this.valorMulta = valorMulta;
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
		sb.append(ArquivoUtils.getCampoNumerico(getNumeroContrato(), 10));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getNumeroDocumento(), 15));
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataCompra()));
		sb.append(ArquivoUtils.getCampoNumerico(getRegimeEncargosFinanceiros(), 1));
		sb.append(ArquivoUtils.getCampoNumerico(getModalidadeEncargosFinanceiros(), 2));
		sb.append(ArquivoUtils.getCampoDecimal(getTaxaJuros(), 3, 5));
		sb.append(ArquivoUtils.getCampoNumerico(getFormaReposicao(), 1));
		sb.append(ArquivoUtils.getCampoNumerico(getMetodologiaCalculoEncargos(), 1));
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataPrimeiroVencimento()));
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataVencimentoFinal()));
		sb.append(ArquivoUtils.getCampoNumerico(getTipoVencimentoParcela(), 1));
		sb.append(ArquivoUtils.getCampoNumerico(getPeriodicidadePrazoVencimento(), 2));
		sb.append(ArquivoUtils.getCampoNumerico(getQuantidadeParcelas(), 2));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getNossoNumero(), 20));
		sb.append(ArquivoUtils.getCampoNumerico(getFormaPagamento(), 1));
		sb.append(ArquivoUtils.getCampoDecimal(getValorEncargosOperacao(), 13, 2));
		sb.append(ArquivoUtils.getCampoNumerico(getFormaPagamentoIOF(), 1));
		sb.append(ArquivoUtils.getCampoDecimal(getValorIOF(), 13, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorResgate(), 13, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorJurosMora(), 13, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorIOFSobreAtraso(), 13, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorMulta(), 13, 2));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB(), 44));
		
		return sb.toString();
	}
}
