package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.enums.FormaDeLancamento;
import org.idempierelbr.cnab240febraban.enums.TipoOperacao;
import org.idempierelbr.cnab240febraban.enums.TipoServico;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;


public class Servico2 {
	private static final int TAMANHO_REGISTRO = 8;
	private TipoOperacao tipoOperacao;
	private TipoServico tipoServico;
	private FormaDeLancamento formaLancamento;
	private int numeroVersaoLayoutLote;

	public Servico2(){
		setTipoOperacao(null);
		setTipoServico(null);
		setFormaLancamento(null);
		setNumeroVersaoLayoutLote(44);
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
	public FormaDeLancamento getFormaLancamento() {
		return formaLancamento;
	}
	public void setFormaLancamento(FormaDeLancamento formaLancamento) {
		this.formaLancamento = formaLancamento;
	}
	public int getNumeroVersaoLayoutLote() {
		return numeroVersaoLayoutLote;
	}
	public void setNumeroVersaoLayoutLote(int numeroVersaoLayoutLote) {
		this.numeroVersaoLayoutLote = numeroVersaoLayoutLote;
	}
	
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_REGISTRO);
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getTipoOperacao().getCodigo(), 1));//1
		sb.append(ArquivoUtils.getCampoNumerico(getTipoServico().getCodigo(), 2)); //2
		sb.append(ArquivoUtils.getCampoNumerico(getFormaLancamento().getCodigo(), 2)); //2
		sb.append(ArquivoUtils.getCampoNumerico(getNumeroVersaoLayoutLote(), 3)); //3
		
		return sb.toString();
	}
	
}
