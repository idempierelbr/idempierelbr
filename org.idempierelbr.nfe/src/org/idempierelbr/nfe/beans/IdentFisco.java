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

public class IdentFisco {

	// Identificação do Fisco Emitente da NFE
	
	private String avulsa;
	private String CNPJ;
	private String xOrgao;
	private String matr;
	private String xAgente;
	private String fone;
	private String UF;
	private String nDAR;
	private String dEmi;
	private String vDAR;
	private String repEmi;
	private String dPag;
	
	public String getAvulsa() {
		return avulsa;
	}
	public void setAvulsa(String avulsa) {
		if (avulsa != null)
			avulsa = avulsa.trim();
	
		this.avulsa = avulsa;
	}
	public String getCNPJ() {
		return CNPJ;
	}
	public void setCNPJ(String cNPJ) {
		if (cNPJ != null)
			cNPJ = cNPJ.trim();
	
		CNPJ = cNPJ;
	}
	public String getxOrgao() {
		return xOrgao;
	}
	public void setxOrgao(String xOrgao) {
		if (xOrgao != null)
			xOrgao = xOrgao.trim();
	
		this.xOrgao = xOrgao;
	}
	public String getMatr() {
		return matr;
	}
	public void setMatr(String matr) {
		if (matr != null)
			matr = matr.trim();
	
		this.matr = matr;
	}
	public String getxAgente() {
		return xAgente;
	}
	public void setxAgente(String xAgente) {
		if (xAgente != null)
			xAgente = xAgente.trim();
	
		this.xAgente = xAgente;
	}
	public String getFone() {
		return fone;
	}
	public void setFone(String fone) {
		if (fone != null)
			fone = fone.trim();
	
		this.fone = fone;
	}
	public String getUF() {
		return UF;
	}
	public void setUF(String uF) {
		if (uF != null)
			uF = uF.trim();
	
		UF = uF;
	}
	public String getnDAR() {
		return nDAR;
	}
	public void setnDAR(String nDAR) {
		if (nDAR != null)
			nDAR = nDAR.trim();
	
		this.nDAR = nDAR;
	}
	public String getdEmi() {
		return dEmi;
	}
	public void setdEmi(String dEmi) {
		if (dEmi != null)
			dEmi = dEmi.trim();
	
		this.dEmi = dEmi;
	}
	public String getvDAR() {
		return vDAR;
	}
	public void setvDAR(String vDAR) {
		if (vDAR != null)
			vDAR = vDAR.trim();
	
		this.vDAR = vDAR;
	}
	public String getRepEmi() {
		return repEmi;
	}
	public void setRepEmi(String repEmi) {
		if (repEmi != null)
			repEmi = repEmi.trim();
	
		this.repEmi = repEmi;
	}
	public String getdPag() {
		return dPag;
	}
	public void setdPag(String dPag) {
		if (dPag != null)
			dPag = dPag.trim();
	
		this.dPag = dPag;
	}
	
}