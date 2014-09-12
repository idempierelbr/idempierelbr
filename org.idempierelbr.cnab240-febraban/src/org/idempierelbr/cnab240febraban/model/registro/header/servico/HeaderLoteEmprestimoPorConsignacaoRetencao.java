package org.idempierelbr.cnab240febraban.model.registro.header.servico;

import org.idempierelbr.cnab240febraban.model.pojo.Controle2;
import org.idempierelbr.cnab240febraban.model.pojo.Empresa;
import org.idempierelbr.cnab240febraban.model.registro.header.HeaderLote;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;


public class HeaderLoteEmprestimoPorConsignacaoRetencao extends HeaderLote {
	private Controle2 controle;
	private Empresa empresaOrgao;
	private int statusGrupoMutuarios;
	private String campoExclusivoCNAB;
	private String ocorrencias;

	public HeaderLoteEmprestimoPorConsignacaoRetencao() {
		setControle(new Controle2());
		setEmpresaOrgao(new Empresa());
		setCampoExclusivoCNAB(ArquivoUtils.BRANCO);
		setOcorrencias(ArquivoUtils.BRANCO);
	}
	
	public Controle2 getControle() {
		return controle;
	}

	public void setControle(Controle2 controle) {
		this.controle = controle;
	}

	public Empresa getEmpresaOrgao() {
		return empresaOrgao;
	}

	public void setEmpresaOrgao(Empresa empresaOrgao) {
		this.empresaOrgao = empresaOrgao;
	}

	public int getStatusGrupoMutuarios() {
		return statusGrupoMutuarios;
	}

	public void setStatusGrupoMutuarios(int statusGrupoMutuarios) {
		this.statusGrupoMutuarios = statusGrupoMutuarios;
	}

	public String getCampoExclusivoCNAB() {
		return campoExclusivoCNAB;
	}

	public void setCampoExclusivoCNAB(String campoExclusivoCNAB) {
		this.campoExclusivoCNAB = campoExclusivoCNAB;
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
		sb.append(getEmpresaOrgao().toString());
		sb.append(ArquivoUtils.getCampoNumerico(getStatusGrupoMutuarios(), 2));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB(), 106));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getOcorrencias(), 10));
		
		return sb.toString();
	}

}
