package org.idempierelbr.cnab240febraban.model.registro.detalhe.segmento;

import java.util.Date;

import org.idempierelbr.cnab240febraban.enums.EspecieTitulo;
import org.idempierelbr.cnab240febraban.enums.TipoRegistro;
import org.idempierelbr.cnab240febraban.model.pojo.Agencia;
import org.idempierelbr.cnab240febraban.model.pojo.CaracteristicaCobranca;
import org.idempierelbr.cnab240febraban.model.pojo.ContaCorrente;
import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.Desconto;
import org.idempierelbr.cnab240febraban.model.pojo.Juros;
import org.idempierelbr.cnab240febraban.model.pojo.Servico4;
import org.idempierelbr.cnab240febraban.model.registro.detalhe.RegistroDeDetalhe;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;



public class TitulosEmCobrancaSegmentoP extends RegistroDeDetalhe {
	private Controle controle;
	private Servico4 servico;
	private ContaCorrente contaCorrente;
	private String nossoNumero;
	private CaracteristicaCobranca caracteristicaCobranca;
	private String numeroDocumentoCobranca;
	private Date dataVencimentoTitulo;
	private Double valorNominalTitulo;
	private Agencia agenciaCobradora; // agencia + DV
	private EspecieTitulo especieTitulo;
	private String tituloAceito;
	private Date dataEmissaoTitulo;
	private Juros juros;
	private Desconto desconto;
	private Double valorIOFASerRecolhido;
	private Double valorAbatimento;
	private String identificacaoTituloNaEmpresa;
	private int codigoParaProtesto;
	private int prazoDiasParaProtesto;
	private int codigoParaBaixaOuDevolucao;
	private int prazoDiasParaBaixaOuDevolucao;
	private int codigoMoeda;
	private long numeroContratoOperacao;
	private String campoExclusivoCNAB;

	public TitulosEmCobrancaSegmentoP() {
		setControle(new Controle());
		getControle().setTipoRegistro(TipoRegistro.DETALHE);
		setServico(new Servico4());
		getServico().setCodigoSegmento("P");
		setContaCorrente(new ContaCorrente());
		setNossoNumero(ArquivoUtils.BRANCO);
		setCaracteristicaCobranca(new CaracteristicaCobranca());
		setNumeroDocumentoCobranca(ArquivoUtils.BRANCO);
		setDataVencimentoTitulo(null);
		setValorNominalTitulo(null);
		setAgenciaCobradora(new Agencia());
		setJuros(new Juros());
		setDesconto(new Desconto());
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

	public ContaCorrente getContaCorrente() {
		return contaCorrente;
	}

	public void setContaCorrente(ContaCorrente contaCorrente) {
		this.contaCorrente = contaCorrente;
	}

	public String getNossoNumero() {
		return nossoNumero;
	}

	public void setNossoNumero(String nossoNumero) {
		this.nossoNumero = nossoNumero;
	}

	public CaracteristicaCobranca getCaracteristicaCobranca() {
		return caracteristicaCobranca;
	}

	public void setCaracteristicaCobranca(
			CaracteristicaCobranca caracteristicaCobranca) {
		this.caracteristicaCobranca = caracteristicaCobranca;
	}

	public String getNumeroDocumentoCobranca() {
		return numeroDocumentoCobranca;
	}

	public void setNumeroDocumentoCobranca(String numeroDocumentoCobranca) {
		this.numeroDocumentoCobranca = numeroDocumentoCobranca;
	}

	public Date getDataVencimentoTitulo() {
		return dataVencimentoTitulo;
	}

	public void setDataVencimentoTitulo(Date dataVencimentoTitulo) {
		this.dataVencimentoTitulo = dataVencimentoTitulo;
	}

	public Double getValorNominalTitulo() {
		return valorNominalTitulo;
	}

	public void setValorNominalTitulo(Double valorNominalTitulo) {
		this.valorNominalTitulo = valorNominalTitulo;
	}

	public Agencia getAgenciaCobradora() {
		return agenciaCobradora;
	}

	public void setAgenciaCobradora(Agencia agenciaCobradora) {
		this.agenciaCobradora = agenciaCobradora;
	}

	public EspecieTitulo getEspecieTitulo() {
		return especieTitulo;
	}

	public void setEspecieTitulo(EspecieTitulo especieTitulo) {
		this.especieTitulo = especieTitulo;
	}

	public Date getDataEmissaoTitulo() {
		return dataEmissaoTitulo;
	}

	public void setDataEmissaoTitulo(Date dataEmissaoTitulo) {
		this.dataEmissaoTitulo = dataEmissaoTitulo;
	}

	public Juros getJuros() {
		return juros;
	}

	public void setJuros(Juros juros) {
		this.juros = juros;
	}

	public Desconto getDesconto() {
		return desconto;
	}

	public void setDesconto(Desconto desconto) {
		this.desconto = desconto;
	}

	public Double getValorIOFASerRecolhido() {
		return valorIOFASerRecolhido;
	}

	public void setValorIOFASerRecolhido(Double valorIOFASerRecolhido) {
		this.valorIOFASerRecolhido = valorIOFASerRecolhido;
	}

	public Double getValorAbatimento() {
		return valorAbatimento;
	}

	public void setValorAbatimento(Double valorAbatimento) {
		this.valorAbatimento = valorAbatimento;
	}

	public String getIdentificacaoTituloNaEmpresa() {
		return identificacaoTituloNaEmpresa;
	}

	public void setIdentificacaoTituloNaEmpresa(
			String identificacaoTituloNaEmpresa) {
		this.identificacaoTituloNaEmpresa = identificacaoTituloNaEmpresa;
	}

	public int getCodigoParaProtesto() {
		return codigoParaProtesto;
	}

	public void setCodigoParaProtesto(int codigoParaProtesto) {
		this.codigoParaProtesto = codigoParaProtesto;
	}

	public int getPrazoDiasParaProtesto() {
		return prazoDiasParaProtesto;
	}

	public void setPrazoDiasParaProtesto(int prazoDiasParaProtesto) {
		this.prazoDiasParaProtesto = prazoDiasParaProtesto;
	}

	public int getCodigoParaBaixaOuDevolucao() {
		return codigoParaBaixaOuDevolucao;
	}

	public void setCodigoParaBaixaOuDevolucao(int codigoParaBaixaOuDevolucao) {
		this.codigoParaBaixaOuDevolucao = codigoParaBaixaOuDevolucao;
	}

	public int getPrazoDiasParaBaixaOuDevolucao() {
		return prazoDiasParaBaixaOuDevolucao;
	}

	public void setPrazoDiasParaBaixaOuDevolucao(
			int prazoDiasParaBaixaOuDevolucao) {
		this.prazoDiasParaBaixaOuDevolucao = prazoDiasParaBaixaOuDevolucao;
	}

	public int getCodigoMoeda() {
		return codigoMoeda;
	}

	public void setCodigoMoeda(int codigoMoeda) {
		this.codigoMoeda = codigoMoeda;
	}

	public long getNumeroContratoOperacao() {
		return numeroContratoOperacao;
	}

	public void setNumeroContratoOperacao(long numeroContratoOperacao) {
		this.numeroContratoOperacao = numeroContratoOperacao;
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
		sb.append(getContaCorrente().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getNossoNumero(), 20));
		sb.append(getCaracteristicaCobranca().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getNumeroDocumentoCobranca(), 15));
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataVencimentoTitulo()));
		sb.append(ArquivoUtils.getCampoDecimal(getValorNominalTitulo(), 13, 2));
		sb.append(getAgenciaCobradora().toString());
		sb.append(ArquivoUtils.getCampoNumerico(getEspecieTitulo().getCodigo(), 2));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getTituloAceito(), 1));
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataEmissaoTitulo()));
		sb.append(getJuros().toString());
		sb.append(getDesconto().toString());
		sb.append(ArquivoUtils.getCampoDecimal(getValorIOFASerRecolhido(), 13, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorAbatimento(), 13, 2));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getIdentificacaoTituloNaEmpresa(), 25));
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoParaProtesto(), 1));
		sb.append(ArquivoUtils.getCampoNumerico(getPrazoDiasParaProtesto(), 2));
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoParaBaixaOuDevolucao(), 1));
		sb.append(ArquivoUtils.getCampoNumerico(getPrazoDiasParaBaixaOuDevolucao(), 3));
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoMoeda(), 2));
		sb.append(ArquivoUtils.getCampoNumerico(getNumeroContratoOperacao(), 10));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB(), 1));

		return sb.toString();
	}

	public String getTituloAceito() {
		return tituloAceito;
	}

	public void setTituloAceito(String tituloAceito) {
		this.tituloAceito = tituloAceito;
	}

}
