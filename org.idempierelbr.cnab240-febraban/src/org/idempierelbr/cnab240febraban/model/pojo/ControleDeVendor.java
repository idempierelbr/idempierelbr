package org.idempierelbr.cnab240febraban.model.pojo;

import java.util.Date;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;



public class ControleDeVendor {
	private static final int TAMANHO_CONTROLE_DE_VENDOR = 16;
	private int numeroRemessaRetorno;
	private Date dataGravacaoRemessaRetorno;
	
	public ControleDeVendor() {
		// TODO Auto-generated constructor stub
	}

	public int getNumeroRemessaRetorno() {
		return numeroRemessaRetorno;
	}

	public void setNumeroRemessaRetorno(int numeroRemessaRetorno) {
		this.numeroRemessaRetorno = numeroRemessaRetorno;
	}

	public Date getDataGravacaoRemessaRetorno() {
		return dataGravacaoRemessaRetorno;
	}

	public void setDataGravacaoRemessaRetorno(Date dataGravacaoRemessaRetorno) {
		this.dataGravacaoRemessaRetorno = dataGravacaoRemessaRetorno;
	}
	
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_CONTROLE_DE_VENDOR);
		sb.append(ArquivoUtils.getCampoNumerico(getNumeroRemessaRetorno(), 8));
		sb.append(ArquivoUtils.getCampoDataFormatada(getDataGravacaoRemessaRetorno()));
		
		return sb.toString();
	}
}
