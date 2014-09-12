package org.idempierelbr.cnab240febraban.model.registro.detalhe.segmento;

import java.util.Date;

import org.idempierelbr.cnab240febraban.enums.TipoRegistro;
import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.DadosTitulo;
import org.idempierelbr.cnab240febraban.model.pojo.OcorrenciaSacado;
import org.idempierelbr.cnab240febraban.model.pojo.Servico4;
import org.idempierelbr.cnab240febraban.model.registro.detalhe.RegistroDeDetalhe;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;



public class TitulosEmCobrancaSegmentoU extends RegistroDeDetalhe {
	private Controle controle;
	private Servico4 servico;
	private DadosTitulo dadosTitulo;
	private Double valorOutrasDespesas;
	private Double valorOutrosCreditos;
	private Date dataOcorrencia;
	private Date dataCredito;
	private OcorrenciaSacado ocorrenciaSacado;
	private int codigoBancoCorrespondenteCompensacao;
	private long nossoNumero;
	private String campoExclusivoCNAB;

	public TitulosEmCobrancaSegmentoU() {
		setControle(new Controle());
		getControle().setTipoRegistro(TipoRegistro.DETALHE);
		setServico(new Servico4());
		getServico().setCodigoSegmento("U");
		setDadosTitulo(new DadosTitulo());
		setOcorrenciaSacado(new OcorrenciaSacado());
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

	public DadosTitulo getDadosTitulo() {
		return dadosTitulo;
	}

	public void setDadosTitulo(DadosTitulo dadosTitulo) {
		this.dadosTitulo = dadosTitulo;
	}

	public Double getValorOutrasDespesas() {
		return valorOutrasDespesas;
	}

	public void setValorOutrasDespesas(Double valorOutrasDespesas) {
		this.valorOutrasDespesas = valorOutrasDespesas;
	}

	public Double getValorOutrosCreditos() {
		return valorOutrosCreditos;
	}

	public void setValorOutrosCreditos(Double valorOutrosCreditos) {
		this.valorOutrosCreditos = valorOutrosCreditos;
	}

	public Date getDataOcorrencia() {
		return dataOcorrencia;
	}

	public void setDataOcorrencia(Date dataOcorrencia) {
		this.dataOcorrencia = dataOcorrencia;
	}

	public Date getDataCredito() {
		return dataCredito;
	}

	public void setDataCredito(Date dataCredito) {
		this.dataCredito = dataCredito;
	}

	public OcorrenciaSacado getOcorrenciaSacado() {
		return ocorrenciaSacado;
	}

	public void setOcorrenciaSacado(OcorrenciaSacado ocorrenciaSacado) {
		this.ocorrenciaSacado = ocorrenciaSacado;
	}

	public int getCodigoBancoCorrespondenteCompensacao() {
		return codigoBancoCorrespondenteCompensacao;
	}

	public void setCodigoBancoCorrespondenteCompensacao(
			int codigoBancoCorrespondenteCompensacao) {
		this.codigoBancoCorrespondenteCompensacao = codigoBancoCorrespondenteCompensacao;
	}

	public long getNossoNumero() {
		return nossoNumero;
	}

	public void setNossoNumero(long nossoNumero) {
		this.nossoNumero = nossoNumero;
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
		sb.append(getDadosTitulo().toString());
		sb.append(ArquivoUtils.getCampoDecimal(getValorOutrasDespesas(), 13, 2));
		sb.append(ArquivoUtils.getCampoDecimal(getValorOutrosCreditos(), 13, 2));
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataOcorrencia()));
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataCredito()));
		sb.append(getOcorrenciaSacado().toString());
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoBancoCorrespondenteCompensacao(), 3));
		sb.append(ArquivoUtils.getCampoNumerico(getNossoNumero(), 20));
		sb.append(ArquivoUtils.getCampoNumerico(getCampoExclusivoCNAB(), 7));
		
		return sb.toString();
	}


}
