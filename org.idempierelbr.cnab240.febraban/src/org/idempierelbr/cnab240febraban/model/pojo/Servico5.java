package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.enums.TipoOperacao;
import org.idempierelbr.cnab240febraban.enums.TipoServico;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;


public class Servico5 {
	private static final int TAMANHO_SERVICO_5 = 8;

	private TipoOperacao tipoOperacao;
	private TipoServico tipoServico;
	private String campoExcluivoCNAB;
	private int numeroVersaoLayoutLote;

	public Servico5() {
		setTipoOperacao(null);
		setTipoServico(null);
		setCampoExcluivoCNAB(ArquivoUtils.BRANCO);
		setNumeroVersaoLayoutLote(0);
	}

	public TipoOperacao getTipoOperacao() {
		return tipoOperacao;
	}

	public void setTipoOperacao(TipoOperacao tipoOperacao) {
		this.tipoOperacao = tipoOperacao;
	}

	public TipoServico getTipoServico() {
		return tipoServico;
	}

	public void setTipoServico(TipoServico tipoServico) {
		this.tipoServico = tipoServico;
	}

	public String getCampoExcluivoCNAB() {
		return campoExcluivoCNAB;
	}

	public void setCampoExcluivoCNAB(String campoExcluivoCNAB) {
		this.campoExcluivoCNAB = campoExcluivoCNAB;
	}

	public int getNumeroVersaoLayoutLote() {
		return numeroVersaoLayoutLote;
	}

	public void setNumeroVersaoLayoutLote(int numeroVersaoLayoutLote) {
		this.numeroVersaoLayoutLote = numeroVersaoLayoutLote;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_SERVICO_5);
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getTipoOperacao().getCodigo(), 1));
		sb.append(ArquivoUtils.getCampoNumerico(getTipoServico().getCodigo(), 2));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExcluivoCNAB(), 2));
		sb.append(ArquivoUtils.getCampoNumerico(getNumeroVersaoLayoutLote(), 3));
		
		return sb.toString();
	}
}
