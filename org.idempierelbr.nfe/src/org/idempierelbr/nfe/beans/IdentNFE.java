/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil                      *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.idempierelbr.nfe.beans;


public class IdentNFE {

	// Identificação da Nota Fiscal Eletronica
	
	private String cUF;
	private String cNF;
	private String natOp;
	private String indPag;
	private String mod;
	private String serie;
	private String nNF;
	private String dEmi;
	private String dSaiEnt;
	private String hSaiEnt;
	private String tpNF;
	private String cMunFG;
	private NFERefenciadaBean NFref;
	private String tpImp;
	private String tpEmis;
	private String cDV;
	private String tpAmb;
	private String finNFe;
	private String procEmi;
	private String verProc;
	

	public NFERefenciadaBean getNFref() {
		return NFref;
	}
	public void setNFref(NFERefenciadaBean fref) {
		NFref = fref;
	}
	public String getcUF() {
		return cUF;
	}
	public void setcUF(String cUF) {
		if (cUF != null)
			cUF = cUF.trim();
	
		this.cUF = cUF;
	}
	public String getcNF() {
		return cNF;
	}
	public void setcNF(String cNF) {
		if (cNF != null)
			cNF = cNF.trim();
	
		this.cNF = cNF;
	}
	public String getNatOp() {
		return natOp;
	}
	public void setNatOp(String natOp) {
		if (natOp != null)
			natOp = natOp.trim();
	
		this.natOp = natOp;
	}
	public String getIndPag() {
		return indPag;
	}
	public void setIndPag(String indPag) {
		if (indPag != null)
			indPag = indPag.trim();
	
		this.indPag = indPag;
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
	public String getdEmi() {
		return dEmi;
	}
	public void setdEmi(String dEmi) {
		if (dEmi != null)
			dEmi = dEmi.trim();
	
		this.dEmi = dEmi;
	}
	public String gethSaiEnt() {
		return hSaiEnt;
	}
	public void sethSaiEnt(String hSaiEnt) {
		this.hSaiEnt = hSaiEnt;
	}
	public String getdSaiEnt() {
		return dSaiEnt;
	}
	public void setdSaiEnt(String dSaiEnt) {
		if (dSaiEnt != null)
			dSaiEnt = dSaiEnt.trim();
	
		this.dSaiEnt = dSaiEnt;
	}
	public String getTpNF() {
		return tpNF;
	}
	public void setTpNF(String tpNF) {
		if (tpNF != null)
			tpNF = tpNF.trim();
	
		this.tpNF = tpNF;
	}
	public String getcMunFG() {
		return cMunFG;
	}
	public void setcMunFG(String cMunFG) {
		if (cMunFG != null)
			cMunFG = cMunFG.trim();
	
		this.cMunFG = cMunFG;
	}
	public String getTpImp() {
		return tpImp;
	}
	public void setTpImp(String tpImp) {
		if (tpImp != null)
			tpImp = tpImp.trim();
	
		this.tpImp = tpImp;
	}
	public String getTpEmis() {
		return tpEmis;
	}
	public void setTpEmis(String tpEmis) {
		if (tpEmis != null)
			tpEmis = tpEmis.trim();
	
		this.tpEmis = tpEmis;
	}
	public String getcDV() {
		return cDV;
	}
	public void setcDV(String cDV) {
		if (cDV != null)
			cDV = cDV.trim();
	
		this.cDV = cDV;
	}
	public String getTpAmb() {
		return tpAmb;
	}
	public void setTpAmb(String tpAmb) {
		if (tpAmb != null)
			tpAmb = tpAmb.trim();
	
		this.tpAmb = tpAmb;
	}
	public String getFinNFe() {
		return finNFe;
	}
	public void setFinNFe(String finNFe) {
		if (finNFe != null)
			finNFe = finNFe.trim();
	
		this.finNFe = finNFe;
	}
	public String getProcEmi() {
		return procEmi;
	}
	public void setProcEmi(String procEmi) {
		if (procEmi != null)
			procEmi = procEmi.trim();
	
		this.procEmi = procEmi;
	}
	public String getVerProc() {
		return verProc;
	}
	public void setVerProc(String verProc) {
		if (verProc != null)
			verProc = verProc.trim();
	
		this.verProc = verProc;
	}

}
