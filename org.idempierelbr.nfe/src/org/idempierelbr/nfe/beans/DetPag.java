package org.idempierelbr.nfe.beans;

public class DetPag {
	private String indPag;
	private String tPag;
	private String vPag;
	private Card card;
	
	public String gettPag() {
		return tPag;
	}
	public void settPag(String tPag) {
		this.tPag = tPag;
	}
	public String getvPag() {
		return vPag;
	}
	public void setvPag(String vPag) {
		this.vPag = vPag;
	}
	public Card getCard() {
		return card;
	}
	public void setCard(Card card) {
		this.card = card;
	}
	public String getIndPag() {
		return indPag;
	}
	public void setIndPag(String indPag) {
		this.indPag = indPag;
	}
}