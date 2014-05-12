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

public class InformacoesNFEReferenciadaBean {

	private String cUF;
	private String AAMM;
	private String CNPJ;
	private String mod;
	private String serie;
	private String nNF;
	
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
	
}