package org.idempierelbr.cnab240febraban.model.registro.detalhe.segmento;

import org.idempierelbr.cnab240febraban.enums.TipoRegistro;
import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.Pagador;
import org.idempierelbr.cnab240febraban.model.pojo.Servico;
import org.idempierelbr.cnab240febraban.model.registro.detalhe.RegistroDeDetalhe;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;


public class DebitoEmContaCorrenteSegumentoA extends RegistroDeDetalhe {
	private Controle controle;
	private Servico servico;
	private String campoExclusivoCNAB1;
	private Pagador pagador;
	private DebitoEmContaCorrenteSegumentoA debito;
	private String informacao2;
	private String codigoFinalidadeDoc;
	private String campoExclusivoCNAB2;
	private String avisoAoPagador;
	private String ocorrencias;

	public DebitoEmContaCorrenteSegumentoA() {
		setControle(new Controle());
		getControle().setTipoRegistro(TipoRegistro.DETALHE);
		setServico(new Servico());
		getServico().setCodigoSegmento("A");
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

	public String getCampoExclusivoCNAB1() {
		return campoExclusivoCNAB1;
	}

	public void setCampoExclusivoCNAB1(String campoExclusivoCNAB1) {
		this.campoExclusivoCNAB1 = campoExclusivoCNAB1;
	}

	public Pagador getPagador() {
		return pagador;
	}

	public void setPagador(Pagador pagador) {
		this.pagador = pagador;
	}

	public DebitoEmContaCorrenteSegumentoA getDebito() {
		return debito;
	}

	public void setDebito(DebitoEmContaCorrenteSegumentoA debito) {
		this.debito = debito;
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

	public String getCampoExclusivoCNAB2() {
		return campoExclusivoCNAB2;
	}

	public void setCampoExclusivoCNAB2(String campoExclusivoCNAB2) {
		this.campoExclusivoCNAB2 = campoExclusivoCNAB2;
	}

	public String getAvisoAoPagador() {
		return avisoAoPagador;
	}

	public void setAvisoAoPagador(String avisoAoPagador) {
		this.avisoAoPagador = avisoAoPagador;
	}

	public String getOcorrencias() {
		return ocorrencias;
	}

	public void setOcorrencias(String ocorrencias) {
		this.ocorrencias = ocorrencias;
	}

	@Override
	public String getConteudoRegistro() {
		StringBuilder sb = new StringBuilder(TAMANHO_REGISTRO);
		sb.append(getControle().toString());
		sb.append(getServico().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB1(), 3));
		sb.append(getPagador().toString());
		sb.append(getDebito().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getInformacao2(), 40));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCodigoFinalidadeDoc(), 2));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB2(), 10));
		sb.append(ArquivoUtils.getCampoNumerico(getAvisoAoPagador(), 1));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getOcorrencias(), 10));
		
		return sb.toString();
	}

}
