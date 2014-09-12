package org.idempierelbr.cnab240febraban.model.registro.header.servico;

import org.idempierelbr.cnab240febraban.enums.TipoRegistro;
import org.idempierelbr.cnab240febraban.enums.TipoServico;
import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.Empresa;
import org.idempierelbr.cnab240febraban.model.pojo.Servico5;
import org.idempierelbr.cnab240febraban.model.registro.header.HeaderLote;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;


public class HeaderLoteCustodiaDeCheques extends HeaderLote {
	private Controle controle;
	private Servico5 servico;
	private String campoExclusivoCNAB1;
	private Empresa empresa;
	private String usoBanco;
	private String campoExclusivoCNAB2;
	private String ocorrencias;

	public HeaderLoteCustodiaDeCheques() {
		setControle(new Controle());
		getControle().setTipoRegistro(TipoRegistro.HEADER_DE_LOTE);
		setServico(new Servico5());
		getServico().setNumeroVersaoLayoutLote(10);
		//getServico().setTipoOperacao(TipoOperacao.ARQUIVO_REMESSA || TipoOperacao.ARQUIVO_RETORNO;)
		getServico().setTipoServico(TipoServico.CUSTODIA_DE_CHEQUES);
		setCampoExclusivoCNAB1(ArquivoUtils.BRANCO);
		setEmpresa(new Empresa());
		setUsoBanco(ArquivoUtils.BRANCO);
		setCampoExclusivoCNAB2(ArquivoUtils.BRANCO);
		setOcorrencias(ArquivoUtils.BRANCO);
	}

	public Controle getControle() {
		return controle;
	}

	public void setControle(Controle controle) {
		this.controle = controle;
	}

	public Servico5 getServico() {
		return servico;
	}

	public void setServico(Servico5 servico) {
		this.servico = servico;
	}

	public String getCampoExclusivoCNAB1() {
		return campoExclusivoCNAB1;
	}

	public void setCampoExclusivoCNAB1(String campoExclusivoCNAB1) {
		this.campoExclusivoCNAB1 = campoExclusivoCNAB1;
	}

	public Empresa getEmpresa() {
		return empresa;
	}

	public void setEmpresa(Empresa empresa) {
		this.empresa = empresa;
	}

	public String getUsoBanco() {
		return usoBanco;
	}

	public void setUsoBanco(String usoBanco) {
		this.usoBanco = usoBanco;
	}

	public String getCampoExclusivoCNAB2() {
		return campoExclusivoCNAB2;
	}

	public void setCampoExclusivoCNAB2(String campoExclusivoCNAB2) {
		this.campoExclusivoCNAB2 = campoExclusivoCNAB2;
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
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB1(), 1));
		sb.append(getEmpresa().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getUsoBanco(), 20));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB2(), 108));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getOcorrencias(), 10));
		
		return sb.toString();
	}

}
