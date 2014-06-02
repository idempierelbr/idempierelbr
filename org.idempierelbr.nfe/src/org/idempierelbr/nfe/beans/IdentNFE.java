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

import java.util.ArrayList;
import java.util.List;


public class IdentNFE {

	// Identificação da Nota Fiscal Eletronica
	
	private String cUF;
	private String cNF;
	private String natOp;
	private String indPag;
	private String mod;
	private String serie;
	private String nNF;
	private String dhEmi;
	private String dhSaiEnt;
	private String tpNF;
	private String idDest;
	private String cMunFG;
	private String tpImp;
	private String tpEmis;
	private String cDV;
	private String tpAmb;
	private String finNFe;
	private String indFinal;
	private String indPres;
	private String procEmi;
	private String verProc;
	private List<NFERefBean> NFrefs = null;

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
	public String getdhEmi() {
		return dhEmi;
	}
	public void setdhEmi(String dhEmi) {
		if (dhEmi != null)
			dhEmi = dhEmi.trim();
	
		this.dhEmi = dhEmi;
	}
	public String getdhSaiEnt() {
		return dhSaiEnt;
	}
	public void setdhSaiEnt(String dhSaiEnt) {
		if (dhSaiEnt != null)
			dhSaiEnt = dhSaiEnt.trim();
	
		this.dhSaiEnt = dhSaiEnt;
	}
	public String getTpNF() {
		return tpNF;
	}
	public void setTpNF(String tpNF) {
		if (tpNF != null)
			tpNF = tpNF.trim();
	
		this.tpNF = tpNF;
	}
	public String getIdDest() {
		return idDest;
	}
	public void setIdDest(String idDest) {
		if (idDest != null)
			idDest = idDest.trim();
	
		this.idDest = idDest;
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
	public String getIndFinal() {
		return indFinal;
	}
	public void setIndFinal(String indFinal) {
		if (indFinal != null)
			indFinal = indFinal.trim();
		
		this.indFinal = indFinal;
	}
	public String getIndPres() {
		return indPres;
	}
	public void setIndPres(String indPres) {
		if (indPres != null)
			indPres = indPres.trim();
		
		this.indPres = indPres;
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
	public List<NFERefBean> getNFrefs() {
		return NFrefs;
	}
	public void setNFrefs(List<NFERefBean> nFrefs) {
		NFrefs = nFrefs;
	}
	public boolean addNFref(NFERefBean e) {
		if (NFrefs == null)
			NFrefs = new ArrayList<NFERefBean>();
		return NFrefs.add(e);
	}
}
