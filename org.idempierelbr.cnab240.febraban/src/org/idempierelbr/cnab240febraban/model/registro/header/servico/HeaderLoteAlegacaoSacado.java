package org.idempierelbr.cnab240febraban.model.registro.header.servico;

import org.idempierelbr.cnab240febraban.enums.TipoOperacao;
import org.idempierelbr.cnab240febraban.enums.TipoRegistro;
import org.idempierelbr.cnab240febraban.enums.TipoServico;
import org.idempierelbr.cnab240febraban.model.pojo.Controle;
import org.idempierelbr.cnab240febraban.model.pojo.Empresa2;
import org.idempierelbr.cnab240febraban.model.pojo.Servico5;
import org.idempierelbr.cnab240febraban.model.registro.header.HeaderLote;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;


public class HeaderLoteAlegacaoSacado extends HeaderLote {
	private Controle controle;
	private Servico5 servico;
	private String campoExclusivoCNAB1;
	private Empresa2 empresa;
	private String campoExclusivoCNAB2;

	public HeaderLoteAlegacaoSacado() {
		setControle(new Controle());
		getControle().setTipoRegistro(TipoRegistro.HEADER_DE_LOTE);
		setServico(new Servico5());
		getServico().setTipoOperacao(TipoOperacao.LANCAMENTO_A_CREDITO);
		getServico().setTipoServico(TipoServico.ALEGACAO_DO_SACADO);
		getServico().setNumeroVersaoLayoutLote(10);
		setCampoExclusivoCNAB1(ArquivoUtils.BRANCO);
		setEmpresa(new Empresa2());
		setCampoExclusivoCNAB2(ArquivoUtils.BRANCO);
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

	public void setCampoExclusivoCNAB1(String campoExclusivoCNAB) {
		this.campoExclusivoCNAB1 = campoExclusivoCNAB;
	}

	public Empresa2 getEmpresa() {
		return empresa;
	}

	public void setEmpresa(Empresa2 empresa) {
		this.empresa = empresa;
	}

	public String getCampoExclusivoCNAB2() {
		return campoExclusivoCNAB2;
	}

	public void setCampoExclusivoCNAB2(String campoExclusivoCNAB2) {
		this.campoExclusivoCNAB2 = campoExclusivoCNAB2;
	}

	@Override
	public String getConteudoRegistro() {
		StringBuilder sb = new StringBuilder(TAMANHO_REGISTRO);
		sb.append(getControle().toString());
		sb.append(getServico().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB1(), 1));
		sb.append(getEmpresa().toString());
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB2(), 137));
		
		return sb.toString();
	}

}
