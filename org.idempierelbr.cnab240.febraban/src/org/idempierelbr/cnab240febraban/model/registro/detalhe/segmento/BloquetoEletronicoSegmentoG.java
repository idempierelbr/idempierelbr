package org.idempierelbr.cnab240febraban.model.registro.detalhe.segmento;

import java.util.Date;

import org.idempierelbr.cnab240febraban.enums.EspecieTitulo;
import org.idempierelbr.cnab240febraban.enums.TipoRegistro;
import org.idempierelbr.cnab240febraban.model.pojo.Agencia;
import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.DadosPessoa;
import org.idempierelbr.cnab240febraban.model.pojo.Desconto;
import org.idempierelbr.cnab240febraban.model.pojo.Servico4;
import org.idempierelbr.cnab240febraban.model.registro.detalhe.RegistroDeDetalhe;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;



public class BloquetoEletronicoSegmentoG extends RegistroDeDetalhe {
	private Controle controle;
	private Servico4 servico;
	private long codigoBarras;
	private DadosPessoa cedente;
	private Date dataVencimentoTitulo;
	private Double valorNominalTitulo;
	private Double quantidadeMoeda;
	private int codigoMoeda;
	private String numeroDocumentoCobranca;
	private Agencia agenciaCobradora;
	private String pracaCobradora;
	private String codigoCarteira;
	private EspecieTitulo especieTitulo;
	private Date dataEmissaoTitulo;
	private Double jurosMora;
	private Desconto desconto1;
	private int codigoProtesto;
	private int prazoDiasProtesto;
	private Date dataLimitePagamento;
	private String campoExclusivoCNAB;

	public BloquetoEletronicoSegmentoG() {
		setControle(new Controle());
		getControle().setTipoRegistro(TipoRegistro.DETALHE);
		setServico(new Servico4());
		getServico().setCodigoSegmento("G");
		setCedente(new DadosPessoa());
		setNumeroDocumentoCobranca(ArquivoUtils.BRANCO);
		setPracaCobradora(ArquivoUtils.BRANCO);
		setAgenciaCobradora(new Agencia());
		setCodigoCarteira(ArquivoUtils.BRANCO);
		setDesconto1(new Desconto());
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

	public long getCodigoBarras() {
		return codigoBarras;
	}

	public void setCodigoBarras(long codigoBarras) {
		this.codigoBarras = codigoBarras;
	}

	public DadosPessoa getCedente() {
		return cedente;
	}

	public void setCedente(DadosPessoa cedente) {
		this.cedente = cedente;
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

	public Double getQuantidadeMoeda() {
		return quantidadeMoeda;
	}

	public void setQuantidadeMoeda(Double quantidadeMoeda) {
		this.quantidadeMoeda = quantidadeMoeda;
	}

	public int getCodigoMoeda() {
		return codigoMoeda;
	}

	public void setCodigoMoeda(int codigoMoeda) {
		this.codigoMoeda = codigoMoeda;
	}

	public String getNumeroDocumentoCobranca() {
		return numeroDocumentoCobranca;
	}

	public void setNumeroDocumentoCobranca(String numeroDocumentoCobranca) {
		this.numeroDocumentoCobranca = numeroDocumentoCobranca;
	}

	public Agencia getAgenciaCobradora() {
		return agenciaCobradora;
	}

	public void setAgenciaCobradora(Agencia agenciaCobradora) {
		this.agenciaCobradora = agenciaCobradora;
	}

	public String getPracaCobradora() {
		return pracaCobradora;
	}

	public void setPracaCobradora(String pracaCobradora) {
		this.pracaCobradora = pracaCobradora;
	}

	public String getCodigoCarteira() {
		return codigoCarteira;
	}

	public void setCodigoCarteira(String codigoCarteira) {
		this.codigoCarteira = codigoCarteira;
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

	public Double getJurosMora() {
		return jurosMora;
	}

	public void setJurosMora(Double jurosMora) {
		this.jurosMora = jurosMora;
	}

	public Desconto getDesconto1() {
		return desconto1;
	}

	public void setDesconto1(Desconto desconto1) {
		this.desconto1 = desconto1;
	}

	public int getCodigoProtesto() {
		return codigoProtesto;
	}

	public void setCodigoProtesto(int codigoProtesto) {
		this.codigoProtesto = codigoProtesto;
	}

	public int getPrazoDiasProtesto() {
		return prazoDiasProtesto;
	}

	public void setPrazoDiasProtesto(int prazoDiasProtesto) {
		this.prazoDiasProtesto = prazoDiasProtesto;
	}

	public Date getDataLimitePagamento() {
		return dataLimitePagamento;
	}

	public void setDataLimitePagamento(Date dataLimitePagamento) {
		this.dataLimitePagamento = dataLimitePagamento;
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
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoBarras(), 44));
		sb.append(getCedente().toString());
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataVencimentoTitulo()));
		sb.append(ArquivoUtils.getCampoDecimal(getValorNominalTitulo(), 13, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getQuantidadeMoeda(), 10, 2));
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoMoeda(), 2));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getNumeroDocumentoCobranca(), 15));
		sb.append(getAgenciaCobradora().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getPracaCobradora(), 10));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCodigoCarteira(), 1));
		sb.append(ArquivoUtils.getCampoNumerico(getEspecieTitulo().getCodigo(), 2));
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataEmissaoTitulo()));
		sb.append(ArquivoUtils.getCampoDecimal(getJurosMora(), 13, 2));
		sb.append(getDesconto1().toString());
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoProtesto(), 1));
		sb.append(ArquivoUtils.getCampoNumerico(getPrazoDiasProtesto(), 2));
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataLimitePagamento()));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB(), 1));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB(), 1));
		
		return sb.toString();
	}

}
