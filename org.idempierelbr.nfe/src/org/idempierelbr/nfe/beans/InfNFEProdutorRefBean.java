package org.idempierelbr.nfe.beans;

public class InfNFEProdutorRefBean {

	private String cUF;
	private String AAMM;
	private String CNPJ;
	private String CPF;
	private String IE;
	private String mod;
	private String serie;
	private String nNF;
	private String refCTe;
	
	public String getcUF() {
		return cUF;
	}
	public void setcUF(String cUF) {
		if (cUF != null)
			cUF = cUF.trim();
	
		this.cUF = cUF;
	}
	public String getAAMM() {
		return AAMM;
	}
	public void setAAMM(String aAMM) {
		if (aAMM != null)
			aAMM = aAMM.trim();
	
		AAMM = aAMM;
	}
	public String getCNPJ() {
		return CNPJ;
	}
	public void setCNPJ(String cNPJ) {
		if (cNPJ != null)
			cNPJ = cNPJ.trim();
	
		CNPJ = cNPJ;
	}
	public String getMod() {
		return mod;
	}
	public void setMod(String mod) {
		if (mod != null)
			mod = mod.trim();
	
		this.mod = mod;
	}
	public String getSerie() {
		return serie;
	}
	public void setSerie(String serie) {
		if (serie != null)
			serie = serie.trim();
	
		this.serie = serie;
	}
	public String getnNF() {
		return nNF;
	}
	public void setnNF(String nNF) {
		if (nNF != null)
			nNF = nNF.trim();
	
		this.nNF = nNF;
	}
	public String getCPF() {
		return CPF;
	}
	public void setCPF(String cPF) {
		if (cPF != null)
			cPF = cPF.trim();
		
		CPF = cPF;
	}
	public String getIE() {
		return IE;
	}
	public void setIE(String iE) {
		if (iE != null)
			iE = iE.trim();
		
		IE = iE;
	}
	public String getRefCTe() {
		return refCTe;
	}
	public void setRefCTe(String refCTe) {
		if (refCTe != null)
			refCTe = refCTe.trim();
		
		this.refCTe = refCTe;
	}
	
}