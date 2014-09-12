package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

public class MutuarioNaEmpresaOrgao {
	private static final int TAMANHO_MUTUARIO_EMPRESA_ORGAO = 81;
	private String nomeMutuario;
	private String codigoUnidadeAdministrativa;
	private long cpfMutuario;
	private String idMutuarioEmpresaOrgao;
	private int statusMutuario;
	private String regimeDeContratacao;
	private String situacaoSindical;
	private String verbaRescisoria;
	private double valorMargem;
	private int idSindicato;
	private String centralSindical;
	
	public MutuarioNaEmpresaOrgao() {
	
	}

	public String getNomeMutuario() {
		return nomeMutuario;
	}

	public void setNomeMutuario(String nomeMutuario) {
		this.nomeMutuario = nomeMutuario;
	}

	public String getCodigoUnidadeAdministrativa() {
		return codigoUnidadeAdministrativa;
	}

	public void setCodigoUnidadeAdministrativa(String codigoUnidadeAdministrativa) {
		this.codigoUnidadeAdministrativa = codigoUnidadeAdministrativa;
	}

	public long getCpfMutuario() {
		return cpfMutuario;
	}

	public void setCpfMutuario(long cpfMutuario) {
		this.cpfMutuario = cpfMutuario;
	}

	public String getIdMutuarioEmpresaOrgao() {
		return idMutuarioEmpresaOrgao;
	}

	public void setIdMutuarioEmpresaOrgao(String idMutuarioEmpresaOrgao) {
		this.idMutuarioEmpresaOrgao = idMutuarioEmpresaOrgao;
	}

	public int getStatusMutuario() {
		return statusMutuario;
	}

	public void setStatusMutuario(int statusMutuario) {
		this.statusMutuario = statusMutuario;
	}

	public String getRegimeDeContratacao() {
		return regimeDeContratacao;
	}

	public void setRegimeDeContratacao(String regimeDeContratacao) {
		this.regimeDeContratacao = regimeDeContratacao;
	}

	public String getSituacaoSindical() {
		return situacaoSindical;
	}

	public void setSituacaoSindical(String situacaoSindical) {
		this.situacaoSindical = situacaoSindical;
	}

	public String getVerbaRescisoria() {
		return verbaRescisoria;
	}

	public void setVerbaRescisoria(String verbaRescisoria) {
		this.verbaRescisoria = verbaRescisoria;
	}

	public double getValorMargem() {
		return valorMargem;
	}

	public void setValorMargem(double valorMargem) {
		this.valorMargem = valorMargem;
	}

	public int getIdSindicato() {
		return idSindicato;
	}

	public void setIdSindicato(int idSindicato) {
		this.idSindicato = idSindicato;
	}

	public String getCentralSindical() {
		return centralSindical;
	}

	public void setCentralSindical(String centralSindical) {
		this.centralSindical = centralSindical;
	}
	
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_MUTUARIO_EMPRESA_ORGAO);
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getNomeMutuario(), 30));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCodigoUnidadeAdministrativa(), 6));
		sb.append(ArquivoUtils.getCampoNumerico(getCpfMutuario(), 11));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getIdMutuarioEmpresaOrgao(), 12));
		sb.append(ArquivoUtils.getCampoNumerico(getStatusMutuario(), 1));
		
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getRegimeDeContratacao(), 1));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getSituacaoSindical(), 1));
		sb.append(ArquivoUtils.getCampoNumerico(getVerbaRescisoria(), 1));
		sb.append(ArquivoUtils.getCampoDecimal(getValorMargem(), 7, 2));
		sb.append(ArquivoUtils.getCampoNumerico(getStatusMutuario(), 1));
		sb.append(ArquivoUtils.getCampoNumerico(getIdSindicato(), 8));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCentralSindical(), 1));
		
		return sb.toString();
	}
}