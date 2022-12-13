package org.idempierelbr.cnab240febraban.model.pojo;

import org.idempierelbr.cnab240febraban.util.ArquivoUtils;

public class Servico4 {
	private static final int TAMANHO_SERVICO4 = 9;

	private int numeroRegistro;
	private String codigoSegmento;
	private String campoExclusivoCNAB;
	private int codigoMovimentoRemessa;

	public Servico4(){
		setNumeroRegistro(0);
		setCodigoSegmento(ArquivoUtils.BRANCO);
		setCampoExclusivoCNAB(ArquivoUtils.BRANCO);
		setCodigoMovimentoRemessa(0);
	}
	
	public int getNumeroRegistro() {
		return numeroRegistro;
	}

	public void setNumeroRegistro(int numeroRegistro) {
		this.numeroRegistro = numeroRegistro;
	}

	public String getCodigoSegmento() {
		return codigoSegmento;
	}

	public void setCodigoSegmento(String codigoSegmento) {
		this.codigoSegmento = codigoSegmento;
	}

	public String getCampoExclusivoCNAB() {
		return campoExclusivoCNAB;
	}

	public void setCampoExclusivoCNAB(String campoExclusivoCNAB) {
		this.campoExclusivoCNAB = campoExclusivoCNAB;
	}

	public int getCodigoMovimentoRemessa() {
		return codigoMovimentoRemessa;
	}

	public void setCodigoMovimentoRemessa(int codigoMovimentoRemessa) {
		this.codigoMovimentoRemessa = codigoMovimentoRemessa;
	}

	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder(TAMANHO_SERVICO4);
		sb.append(ArquivoUtils.getCampoNumerico(getNumeroRegistro(), 5));
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoSegmento(), 1));
		sb.append(ArquivoUtils.getCampoAlfaNumerico(getCampoExclusivoCNAB(), 1));
		sb.append(ArquivoUtils.getCampoNumerico(getCodigoMovimentoRemessa(), 2));
		
		return sb.toString();
	}
}
