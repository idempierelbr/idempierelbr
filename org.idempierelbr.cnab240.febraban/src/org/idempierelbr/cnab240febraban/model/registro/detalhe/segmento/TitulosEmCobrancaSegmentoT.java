package org.idempierelbr.cnab240febraban.model.registro.detalhe.segmento;

import java.util.Date;

import org.idempierelbr.cnab240febraban.enums.TipoRegistro;
import org.idempierelbr.cnab240febraban.model.pojo.Agencia;
import org.idempierelbr.cnab240febraban.model.pojo.ContaCorrente;
import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.DadosPessoa;
import org.idempierelbr.cnab240febraban.model.pojo.Servico4;
import org.idempierelbr.cnab240febraban.model.registro.detalhe.RegistroDeDetalhe;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;



public class TitulosEmCobrancaSegmentoT extends RegistroDeDetalhe {
	private Controle controle;
	private Servico4 servico;
	private ContaCorrente contaCorrente;
	private String nossoNumero;
	private int codigoCarteira;
	private String numeroDocumento;
	private Date dataVencimentoTitulo;
	private Double valorNominalTitulo;
	private int numeroBanco;
	private Agencia agencia;
	private String campoUsoEmpresa;
	private int codigoMoeda;
	private DadosPessoa sacado;
	private int numeroContrato;
	private Double valorTarifaCustas;
	private String motivoOcorrencia;
	private String campoExclusivoCNAB;

	public TitulosEmCobrancaSegmentoT() {
		setControle(new Controle());
		getControle().setTipoRegistro(TipoRegistro.DETALHE);
		setServico(new Servico4());
		getServico().setCodigoSegmento("T");
		setContaCorrente(new ContaCorrente());
		setNossoNumero(ArquivoUtils.BRANCO);
		setNumeroDocumento(ArquivoUtils.BRANCO);
		setAgencia(new Agencia());
		setCampoUsoEmpresa(ArquivoUtils.BRANCO);
		setSacado(new DadosPessoa());
		setMotivoOcorrencia(ArquivoUtils.BRANCO);
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

	public int getCodigoCarteira() {
		return codigoCarteira;
	}

	public void setCodigoCarteira(int codigoCarteira) {
		this.codigoCarteira = codigoCarteira;
	}

	public String getNumeroDocumento() {
		return numeroDocumento;
	}

	public void setNumeroDocumento(String numeroDocumento) {
		this.numeroDocumento = numeroDocumento;
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

	public int getNumeroBanco() {
		return numeroBanco;
	}

	public void setNumeroBanco(int numeroBanco) {
		this.numeroBanco = numeroBanco;
	}

	public Agencia getAgencia() {
		return agencia;
	}

	public void setAgencia(Agencia agencia) {
		this.agencia = agencia;
	}

	public String getCampoUsoEmpresa() {
		return campoUsoEmpresa;
	}

	public void setCampoUsoEmpresa(String campoUsoEmpresa) {
		this.campoUsoEmpresa = campoUsoEmpresa;
	}

	public int getCodigoMoeda() {
		return codigoMoeda;
	}

	public void setCodigoMoeda(int codigoMoeda) {
		this.codigoMoeda = codigoMoeda;
	}

	public DadosPessoa getSacado() {
		return sacado;
	}

	public void setSacado(DadosPessoa sacado) {
		this.sacado = sacado;
	}

	public int getNumeroContrato() {
		return numeroContrato;
	}

	public void setNumeroContrato(int numeroContrato) {
		this.numeroContrato = numeroContrato;
	}

	public Double getValorTarifaCustas() {
		return valorTarifaCustas;
	}

	public void setValorTarifaCustas(Double valorTarifaCustas) {
		this.valorTarifaCustas = valorTarifaCustas;
	}

	public String getMotivoOcorrencia() {
		return motivoOcorrencia;
	}

	public void setMotivoOcorrencia(String motivoOcorrencia) {
		this.motivoOcorrencia = motivoOcorrencia;
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
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoCarteira(), 1));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getNumeroDocumento(), 15));
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataVencimentoTitulo()));
		sb.append(ArquivoUtils.getCampoDecimal(getValorNominalTitulo(), 13, 2));
		sb.append(ArquivoUtils.getCampoNumerico(getNumeroBanco(), 3));
		sb.append(getAgencia().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoUsoEmpresa(), 25));
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoMoeda(), 2));
		sb.append(getSacado().toString());
		sb.append(ArquivoUtils.getCampoNumerico(getNumeroContrato(), 10));
		sb.append(ArquivoUtils.getCampoDecimal(getValorTarifaCustas(), 13, 2));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getMotivoOcorrencia(), 10));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB(), 17));
		
		return sb.toString();
	}

}
