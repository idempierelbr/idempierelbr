package org.idempierelbr.cnab240febraban.model.registro.detalhe.segmento;

import java.util.Date;

import org.idempierelbr.cnab240febraban.enums.TipoRegistro;
import org.idempierelbr.cnab240febraban.model.pojo.ContaCorrente;
import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.Servico4;
import org.idempierelbr.cnab240febraban.model.registro.detalhe.RegistroDeDetalhe;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;



public class TitulosEmCobrancaSegmentoY50 extends RegistroDeDetalhe {
	public static final int COD_VALOR_COBRADO = 1;
	public static final int COD_VALOR_REGISTRO = 2;
	public static final int COD_RATEIO_POR_MENOR_VALOR = 3;

	public static final int TIPO_PERCENTUAL = 1;
	public static final int TIPO_VALOR_OU_QUANTIDADE = 2;

	private Controle controle;
	private Servico4 servico;
	private int codigoRegistroOpcional;
	private ContaCorrente contaCorrente;
	private String nossoNumero;
	private int codigoCalculoRateioPorBeneficiario;
	private int tipoValorInformado;
	private int codigoBanco;
	private ContaCorrente contaCorrenteCreditoBeneficiario;
	private String nomeBeneficiario;
	private String parcela;
	private int floating;
	private Date dataCredito;
	private long motivoOcorrido;
	private String campoExclusivoCNAB;

	public TitulosEmCobrancaSegmentoY50() {
		setControle(new Controle());
		getControle().setTipoRegistro(TipoRegistro.DETALHE);
		setServico(new Servico4());
		getServico().setCodigoSegmento("Y");
		setCodigoRegistroOpcional(50);
		setContaCorrente(new ContaCorrente());
		setNossoNumero(ArquivoUtils.BRANCO);
		setContaCorrenteCreditoBeneficiario(new ContaCorrente());
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

	public int getCodigoRegistroOpcional() {
		return codigoRegistroOpcional;
	}

	public void setCodigoRegistroOpcional(int codigoRegistroOpcional) {
		this.codigoRegistroOpcional = codigoRegistroOpcional;
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

	public int getCodigoCalculoRateioPorBeneficiario() {
		return codigoCalculoRateioPorBeneficiario;
	}

	public void setCodigoCalculoRateioPorBeneficiario(
			int codigoCalculoRateioPorBeneficiario) {
		this.codigoCalculoRateioPorBeneficiario = codigoCalculoRateioPorBeneficiario;
	}

	public int getTipoValorInformado() {
		return tipoValorInformado;
	}

	public void setTipoValorInformado(int tipoValorInformado) {
		this.tipoValorInformado = tipoValorInformado;
	}

	public int getCodigoBanco() {
		return codigoBanco;
	}

	public void setCodigoBanco(int codigoBanco) {
		this.codigoBanco = codigoBanco;
	}

	public ContaCorrente getContaCorrenteCreditoBeneficiario() {
		return contaCorrenteCreditoBeneficiario;
	}

	public void setContaCorrenteCreditoBeneficiario(
			ContaCorrente contaCorrenteCreditoBeneficiario) {
		this.contaCorrenteCreditoBeneficiario = contaCorrenteCreditoBeneficiario;
	}

	public String getNomeBeneficiario() {
		return nomeBeneficiario;
	}

	public void setNomeBeneficiario(String nomeBeneficiario) {
		this.nomeBeneficiario = nomeBeneficiario;
	}

	public String getParcela() {
		return parcela;
	}

	public void setParcela(String parcela) {
		this.parcela = parcela;
	}

	public int getFloating() {
		return floating;
	}

	public void setFloating(int floating) {
		this.floating = floating;
	}

	public Date getDataCredito() {
		return dataCredito;
	}

	public void setDataCredito(Date dataCredito) {
		this.dataCredito = dataCredito;
	}

	public long getMotivoOcorrido() {
		return motivoOcorrido;
	}

	public void setMotivoOcorrido(long mOTIVOoCORRIDO) {
		motivoOcorrido = mOTIVOoCORRIDO;
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
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoRegistroOpcional(), 2));
		sb.append(getContaCorrente().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getNossoNumero(), 20));
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoCalculoRateioPorBeneficiario(), 1));
		sb.append(ArquivoUtils.getCampoNumerico(getTipoValorInformado(), 1));
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoBanco(), 3));
		sb.append(getContaCorrenteCreditoBeneficiario().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getNomeBeneficiario(), 40));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getParcela(), 6));
		sb.append(ArquivoUtils.getCampoNumerico(getFloating(), 3));
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataCredito()));
		sb.append(ArquivoUtils.getCampoNumerico(getMotivoOcorrido(), 10));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB(), 74));
		
		return sb.toString();
	}
	

}
