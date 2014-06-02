package org.idempierelbr.nfe.beans;

public class PISSTBean {
	private String vBC;
	private String pPIS;
	private String qBCProd;
	private String vAliqProd;
	private String vPIS;

	public String getvBC() {
		return vBC;
	}
	public void setvBC(String vBC) {
		if (vBC != null)
			vBC = vBC.trim();
		
		this.vBC = vBC;
	}
	public String getpPIS() {
		return pPIS;
	}
	public void setpPIS(String pPIS) {
		if (pPIS != null)
			pPIS = pPIS.trim();
		
		this.pPIS = pPIS;
	}
	public String getqBCProd() {
		return qBCProd;
	}
	public void setqBCProd(String qBCProd) {
		if (qBCProd != null)
			qBCProd = qBCProd.trim();
		
		this.qBCProd = qBCProd;
	}
	public String getvAliqProd() {
		return vAliqProd;
	}
	public void setvAliqProd(String vAliqProd) {
		if (vAliqProd != null)
			vAliqProd = vAliqProd.trim();
		
		this.vAliqProd = vAliqProd;
	}
	public String getvPIS() {
		return vPIS;
	}
	public void setvPIS(String vPIS) {
		if (vPIS != null)
			vPIS = vPIS.trim();
		
		this.vPIS = vPIS;
	}

}