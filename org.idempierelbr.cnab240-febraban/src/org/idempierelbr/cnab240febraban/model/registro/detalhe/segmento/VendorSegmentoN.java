package org.idempierelbr.cnab240febraban.model.registro.detalhe.segmento;

import java.util.Date;

import org.idempierelbr.cnab240febraban.annotation.Registro;
import org.idempierelbr.cnab240febraban.enums.TipoEnvio;
import org.idempierelbr.cnab240febraban.enums.TipoRegistro;
import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.Desconto;
import org.idempierelbr.cnab240febraban.model.pojo.Prorrogacao;
import org.idempierelbr.cnab240febraban.model.pojo.Servico;
import org.idempierelbr.cnab240febraban.model.registro.detalhe.RegistroDeDetalhe;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;



@Registro(obrigatorio = true, tipoEnvio = TipoEnvio.RETORNO, tipoRegistro=TipoRegistro.DETALHE)
public class VendorSegmentoN extends RegistroDeDetalhe {
	private Controle controle;
	private Servico servico;
	private int motivoOcorrencia;
	private Double valorParcelaNoVencimento;
	private Date dataBaixaLiquidacao;
	private Double valorParcelaPaga;
	private Double valorJurosMoraComissaoPermanencia;
	private Double valorIOFSobreAtraso;
	private Double valorMulta;
	private Double valorDesconto;
	private Double valorEqualizacao;
	private int situacaoContrato;
	private int situacaoParcela;
	private Prorrogacao prorrogacao;
	private Desconto desconto;
	private int codigoProtesto;
	private String prazoProtesto;
	private Double valorAbatimento;
	private Double valorConcentrado;
	private Double valorPercentualConcentracao;
	private Double descricaoValorEncargosComprador;
	private String campoExclusivoCNAB;

	public VendorSegmentoN() {
		setControle(new Controle());
		getControle().setTipoRegistro(TipoRegistro.DETALHE);
		setServico(new Servico());
		getServico().setCodigoSegmento("N");
		setProrrogacao(new Prorrogacao());
		setDesconto(new Desconto());
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

	public Double getValorParcelaNoVencimento() {
		return valorParcelaNoVencimento;
	}

	public void setValorParcelaNoVencimento(Double valorParcelaNoVencimento) {
		this.valorParcelaNoVencimento = valorParcelaNoVencimento;
	}

	public Date getDataBaixaLiquidacao() {
		return dataBaixaLiquidacao;
	}

	public void setDataBaixaLiquidacao(Date dataBaixaLiquidacao) {
		this.dataBaixaLiquidacao = dataBaixaLiquidacao;
	}

	public Double getValorParcelaPaga() {
		return valorParcelaPaga;
	}

	public void setValorParcelaPaga(Double valorParcelaPaga) {
		this.valorParcelaPaga = valorParcelaPaga;
	}

	public Double getValorJurosMoraComissaoPermanencia() {
		return valorJurosMoraComissaoPermanencia;
	}

	public void setValorJurosMoraComissaoPermanencia(
			Double valorJurosMoraComissaoPermanencia) {
		this.valorJurosMoraComissaoPermanencia = valorJurosMoraComissaoPermanencia;
	}

	public Double getValorIOFSobreAtraso() {
		return valorIOFSobreAtraso;
	}

	public void setValorIOFSobreAtraso(Double valorIOFSobreAtraso) {
		this.valorIOFSobreAtraso = valorIOFSobreAtraso;
	}

	public Double getValorMulta() {
		return valorMulta;
	}

	public void setValorMulta(Double valorMulta) {
		this.valorMulta = valorMulta;
	}

	public Double getValorDesconto() {
		return valorDesconto;
	}

	public void setValorDesconto(Double valorDesconto) {
		this.valorDesconto = valorDesconto;
	}

	public Double getValorEqualizacao() {
		return valorEqualizacao;
	}

	public void setValorEqualizacao(Double valorEqualizacao) {
		this.valorEqualizacao = valorEqualizacao;
	}

	public int getSituacaoContrato() {
		return situacaoContrato;
	}

	public void setSituacaoContrato(int situacaoContrato) {
		this.situacaoContrato = situacaoContrato;
	}

	public int getSituacaoParcela() {
		return situacaoParcela;
	}

	public void setSituacaoParcela(int situacaoParcela) {
		this.situacaoParcela = situacaoParcela;
	}

	public Prorrogacao getProrrogacao() {
		return prorrogacao;
	}

	public void setProrrogacao(Prorrogacao prorrogacao) {
		this.prorrogacao = prorrogacao;
	}

	public Desconto getDesconto() {
		return desconto;
	}

	public void setDesconto(Desconto desconto) {
		this.desconto = desconto;
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

	public Double getValorConcentrado() {
		return valorConcentrado;
	}

	public void setValorConcentrado(Double valorConcentrado) {
		this.valorConcentrado = valorConcentrado;
	}

	public Double getValorPercentualConcentracao() {
		return valorPercentualConcentracao;
	}

	public void setValorPercentualConcentracao(Double valorPercentualConcentracao) {
		this.valorPercentualConcentracao = valorPercentualConcentracao;
	}

	public Double getDescricaoValorEncargosComprador() {
		return descricaoValorEncargosComprador;
	}

	public void setDescricaoValorEncargosComprador(Double descricaoValorEncargosComprador) {
		this.descricaoValorEncargosComprador = descricaoValorEncargosComprador;
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
		sb.append(ArquivoUtils.getCampoDecimal(getValorParcelaNoVencimento(), 13, 2));
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataBaixaLiquidacao()));
		sb.append(ArquivoUtils.getCampoDecimal(getValorParcelaPaga(), 13, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorJurosMoraComissaoPermanencia(), 13, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorIOFSobreAtraso(), 13, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorMulta(), 13, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorDesconto(), 13, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorEqualizacao(), 13, 2));
		sb.append(ArquivoUtils.getCampoNumerico(getSituacaoContrato(), 1));
		sb.append(ArquivoUtils.getCampoNumerico(getSituacaoParcela(), 1));
		sb.append(getProrrogacao().toString());
		sb.append(getDesconto().toString());
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoProtesto(), 1));
		sb.append(ArquivoUtils.getCampoNumerico(getPrazoProtesto(), 2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorAbatimento(), 13, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorConcentrado(), 13, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorPercentualConcentracao(), 3, 5));
		sb.append(ArquivoUtils.getCampoDecimal(getDescricaoValorEncargosComprador(), 13,2));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB(), 2));
		
		return sb.toString();
	}

}
