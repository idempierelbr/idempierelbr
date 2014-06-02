package org.idempierelbr.nfe.beans;

public class COFINSSTBean {
	private String vBC;
	private String pCOFINS;
	private String qBCProd;
	private String vAliqProd;
	private String vCOFINS;

	public String getvBC() {
		return vBC;
	}
	public void setvBC(String vBC) {
		if (vBC != null)
			vBC = vBC.trim();
		
		this.vBC = vBC;
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
	public String getpCOFINS() {
		return pCOFINS;
	}
	public void setpCOFINS(String pCOFINS) {
		if (pCOFINS != null)
			pCOFINS = pCOFINS.trim();
		
		this.pCOFINS = pCOFINS;
	}
	public String getvCOFINS() {
		return vCOFINS;
	}
	public void setvCOFINS(String vCOFINS) {
		if (vCOFINS != null)
			vCOFINS = vCOFINS.trim();
		
		this.vCOFINS = vCOFINS;
	}

}