package org.idempierelbr.nfe.beans;

/**
 * Bean for tag comb: "Informações específicas para CG I90 1-1 combustíveis líquidos e lubrificantes"
 * @author talesruan
 */
public class Comb {
	private String cProdANP;
	private String pMixGN;
	private String CODIF;
	private String qTemp;
	private String UFCons;
	
	public String getcProdANP() {
		return cProdANP;
	}
	public void setcProdANP(String cProdANP) {
		this.cProdANP = cProdANP;
	}
	public String getpMixGN() {
		return pMixGN;
	}
	public void setpMixGN(String pMixGN) {
		this.pMixGN = pMixGN;
	}
	public String getCODIF() {
		return CODIF;
	}
	public void setCODIF(String cODIF) {
		CODIF = cODIF;
	}
	public String getqTemp() {
		return qTemp;
	}
	public void setqTemp(String qTemp) {
		this.qTemp = qTemp;
	}
	public String getUFCons() {
		return UFCons;
	}
	public void setUFCons(String uFCons) {
		UFCons = uFCons;
	}
	
}
