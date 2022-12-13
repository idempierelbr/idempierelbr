package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.enums.TipoRegistro;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;


public class Controle2 {
	private static final int TAMANHO_CONTROLE2 = 31;
	private int codigoBanco;
	private int codigoAverbacao;
	private TipoRegistro tipoRegistro;
	private int modalidadeAverbacao;
	private int numeroLayoutLote;
	private int mesCompetencia;
	private int anoCompetencia;
	private int loteServico;
	private int numeroSequencialLote;

	public int getCodigoBanco() {
		return codigoBanco;
	}

	public void setCodigoBanco(int codigoBanco) {
		this.codigoBanco = codigoBanco;
	}

	public int getCodigoAverbacao() {
		return codigoAverbacao;
	}

	public void setCodigoAverbacao(int codigoAverbacao) {
		this.codigoAverbacao = codigoAverbacao;
	}

	public TipoRegistro getTipoRegistro() {
		return tipoRegistro;
	}

	public void setTipoRegistro(TipoRegistro tipoRegistro) {
		this.tipoRegistro = tipoRegistro;
	}

	public int getModalidadeAverbacao() {
		return modalidadeAverbacao;
	}

	public void setModalidadeAverbacao(int modalidadeAverbacao) {
		this.modalidadeAverbacao = modalidadeAverbacao;
	}

	public int getNumeroLayoutLote() {
		return numeroLayoutLote;
	}

	public void setNumeroLayoutLote(int numeroLayoutLote) {
		this.numeroLayoutLote = numeroLayoutLote;
	}

	public int getMesCompetencia() {
		return mesCompetencia;
	}

	public void setMesCompetencia(int mesCompetencia) {
		this.mesCompetencia = mesCompetencia;
	}

	public int getAnoCompetencia() {
		return anoCompetencia;
	}

	public void setAnoCompetencia(int anoCompetencia) {
		this.anoCompetencia = anoCompetencia;
	}

	public int getLoteServico() {
		return loteServico;
	}

	public void setLoteServico(int loteServico) {
		this.loteServico = loteServico;
	}

	public int getNumeroSequencialLote() {
		return numeroSequencialLote;
	}

	public void setNumeroSequencialLote(int numeroSequencialLote) {
		this.numeroSequencialLote = numeroSequencialLote;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_CONTROLE2);
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoBanco(), 3));
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoAverbacao(), 4));
		sb.append(ArquivoUtils.getCampoNumerico(getTipoRegistro().getCodigoTipo(), 1));
		sb.append(ArquivoUtils.getCampoNumerico(getModalidadeAverbacao(), 1));
		sb.append(ArquivoUtils.getCampoNumerico(getNumeroLayoutLote(), 3));
		sb.append(ArquivoUtils.getCampoNumerico(getMesCompetencia(), 2));
		sb.append(ArquivoUtils.getCampoNumerico(getAnoCompetencia(), 4));
		sb.append(ArquivoUtils.getCampoNumerico(getLoteServico(), 4));
		sb.append(ArquivoUtils.getCampoNumerico(getNumeroSequencialLote(), 7));
		
		return sb.toString();
	}
}
