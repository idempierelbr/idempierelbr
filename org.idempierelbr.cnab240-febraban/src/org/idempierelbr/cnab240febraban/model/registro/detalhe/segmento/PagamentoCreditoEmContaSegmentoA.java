package org.idempierelbr.cnab240febraban.model.registro.detalhe.segmento;

import org.idempierelbr.cnab240febraban.enums.TipoRegistro;
import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.Credito;
import org.idempierelbr.cnab240febraban.model.pojo.Favorecido;
import org.idempierelbr.cnab240febraban.model.pojo.Servico;
import org.idempierelbr.cnab240febraban.model.registro.detalhe.RegistroDeDetalhe;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;


public class PagamentoCreditoEmContaSegmentoA extends RegistroDeDetalhe {
	private Controle controle;
	private Servico servico;
	private Favorecido favorecido;
	private Credito credito;
	private String informacao2;
	private String codigoFinalidadeDoc;
	private String codigoFinalidadeTED;
	private String codigoFinalidadeComplementar;
	private String campoExclusivoCNAB1;
	private int aviso;
	private String codigoOcorrencias;

	public PagamentoCreditoEmContaSegmentoA() {
		setControle(new Controle());
		getControle().setTipoRegistro(TipoRegistro.DETALHE);
		setServico(new Servico());
		getServico().setCodigoSegmento("A");
		setFavorecido(new Favorecido());
		setCredito(new Credito());
		setInformacao2(ArquivoUtils.BRANCO);
		setCodigoFinalidadeDoc(ArquivoUtils.BRANCO);
		setCodigoFinalidadeTED(ArquivoUtils.BRANCO);
		setCodigoFinalidadeComplementar(codigoFinalidadeComplementar);
		setCampoExclusivoCNAB1(ArquivoUtils.BRANCO);
		setAviso(0);
		setCodigoOcorrencias(ArquivoUtils.BRANCO);
	}

	@Override
	public String getConteudoRegistro() {
		StringBuilder sb = new StringBuilder(TAMANHO_REGISTRO);
		sb.append(getControle().toString()); //8
		sb.append(getServico().toString()); //9
		sb.append(getFavorecido().toString()); //56
		sb.append(getCredito().toString()); //104
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getInformacao2(), 40));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCodigoFinalidadeDoc(), 2));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCodigoFinalidadeTED(), 5));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCodigoFinalidadeComplementar(), 2));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB1(), 3));
		sb.append(ArquivoUtils.getCampoNumerico(getAviso(), 1));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCodigoOcorrencias(), 10));
		return sb.toString();
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

	public Favorecido getFavorecido() {
		return favorecido;
	}

	public void setFavorecido(Favorecido favorecido) {
		this.favorecido = favorecido;
	}

	public Credito getCredito() {
		return credito;
	}

	public void setCredito(Credito credito) {
		this.credito = credito;
	}

	public String getInformacao2() {
		return informacao2;
	}

	public void setInformacao2(String informacao2) {
		this.informacao2 = informacao2;
	}

	public String getCodigoFinalidadeDoc() {
		return codigoFinalidadeDoc;
	}

	public void setCodigoFinalidadeDoc(String codigoFinalidadeDoc) {
		this.codigoFinalidadeDoc = codigoFinalidadeDoc;
	}

	public String getCodigoFinalidadeTED() {
		return codigoFinalidadeTED;
	}

	public void setCodigoFinalidadeTED(String codigoFinalidadeTED) {
		this.codigoFinalidadeTED = codigoFinalidadeTED;
	}

	public String getCodigoFinalidadeComplementar() {
		return codigoFinalidadeComplementar;
	}

	public void setCodigoFinalidadeComplementar(
			String codigoFinalidadeComplementar) {
		this.codigoFinalidadeComplementar = codigoFinalidadeComplementar;
	}

	public String getCampoExclusivoCNAB1() {
		return campoExclusivoCNAB1;
	}

	public void setCampoExclusivoCNAB1(String campoExclusivoCNAB1) {
		this.campoExclusivoCNAB1 = campoExclusivoCNAB1;
	}

	public int getAviso() {
		return aviso;
	}

	public void setAviso(int aviso) {
		this.aviso = aviso;
	}

	public String getCodigoOcorrencias() {
		return codigoOcorrencias;
	}

	public void setCodigoOcorrencias(String codigoOcorrencias) {
		this.codigoOcorrencias = codigoOcorrencias;
	}

}
