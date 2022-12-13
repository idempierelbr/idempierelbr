package org.idempierelbr.cnab240febraban.model.pojo;

import java.util.Date;

import org.idempierelbr.cnab240febraban.enums.CodigoRemessaRetorno;
import org.idempierelbr.cnab240febraban.util.ArquivoUtils;



/**
 * Classe de suporte para a criação de registros.
 * @author Richard Mendes Madureira
 * @version 1.0
 *
 */
public class Arquivo {
	private static final int TAMANHO_REGISTRO = 29;
	
	private CodigoRemessaRetorno codigoRemessaRetorno;
	private Date dataHoraGeracao;
	private int numeroSequencial;
	private int numeroVersaoLayout;
	private int densidadeGravacaoArquivo;

	public Arquivo() {
		setCodigoRemessaRetorno(null);
		setDataHoraGeracao(null);
		setNumeroSequencial(0);
		setNumeroVersaoLayout(85);
		setDensidadeGravacaoArquivo(0);//em DPIs (1600 a 6250)
	}

	public CodigoRemessaRetorno getCodigoRemessaRetorno() {
		return codigoRemessaRetorno;
	}

	public void setCodigoRemessaRetorno(CodigoRemessaRetorno codigoRemessaRetorno) {
		this.codigoRemessaRetorno = codigoRemessaRetorno;
	}

	public Date getDataHoraGeracao() {
		return dataHoraGeracao;
	}

	public void setDataHoraGeracao(Date dataHoraGeracao) {
		this.dataHoraGeracao = dataHoraGeracao;
	}

	public int getNumeroSequencial() {
		return numeroSequencial;
	}

	public void setNumeroSequencial(int numeroSequencial) {
		this.numeroSequencial = numeroSequencial;
	}

	public int getNumeroVersaoLayout() {
		return numeroVersaoLayout;
	}

	public void setNumeroVersaoLayout(int numeroVersaoLayout) {
		this.numeroVersaoLayout = numeroVersaoLayout;
	}

	public int getDensidadeGravacaoArquivo() {
		return densidadeGravacaoArquivo;
	}

	public void setDensidadeGravacaoArquivo(int densidadeGravacaoArquivo) {
		this.densidadeGravacaoArquivo = densidadeGravacaoArquivo;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_REGISTRO);
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoRemessaRetorno().getCodigo(), 1));
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataHoraGeracao()));//8
		sb.append(ArquivoUtils.getCampoHoraFormatada(getDataHoraGeracao()));//6
		sb.append(ArquivoUtils.getCampoNumerico(getNumeroSequencial(), 6));
		sb.append(ArquivoUtils.getCampoNumerico(getNumeroVersaoLayout(), 3));
		sb.append(ArquivoUtils.getCampoNumerico(getDensidadeGravacaoArquivo(), 5));
		
		return sb.toString();
	}
}
