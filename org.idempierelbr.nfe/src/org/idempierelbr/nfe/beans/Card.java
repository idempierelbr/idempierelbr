package org.idempierelbr.nfe.beans;

public class Card {
	private String CNPJ;
	private String tBand;
	private String cAut;
	
	public String getCNPJ() {
		return CNPJ;
	}
	public void setCNPJ(String cNPJ) {
		CNPJ = cNPJ;
	}
	public String gettBand() {
		return tBand;
	}
	public void settBand(String tBand) {
		this.tBand = tBand;
	}
	public String getcAut() {
		return cAut;
	}
	public void setcAut(String cAut) {
		this.cAut = cAut;
	}
}
