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

public class EnderDest {
	private String xLgr;
	private String nro;
	private String xCpl;
	private String xBairro;
	private String cMun;
	private String xMun;
	private String UF;
	private String CEP;
	private String cPais;
	private String xPais;
	private String fone;
	private String email;

	public String getXLgr() {
		return xLgr;
	}
	public void setXLgr(String lgr) {
		xLgr = lgr;
	}
	public String getNro() {
		return nro;
	}
	public void setNro(String nro) {
		this.nro = nro;
	}
	public String getXCpl() {
		return xCpl;
	}
	public void setXCpl(String cpl) {
		xCpl = cpl;
	}
	public String getXBairro() {
		return xBairro;
	}
	public void setXBairro(String bairro) {
		xBairro = bairro;
	}
	public String getCMun() {
		return cMun;
	}
	public void setCMun(String mun) {
		if (mun != null)
			mun = mun.trim();

		cMun = mun;
	}
	public String getXMun() {
		return xMun;
	}
	public void setXMun(String mun) {
		if (mun != null)
			mun = mun.trim();

		xMun = mun;
	}
	public String getUF() {
		return UF;
	}
	public void setUF(String uf) {
		if (uf != null)
			uf = uf.trim();

		UF = uf;
	}
	public String getCEP() {
		return CEP;
	}
	public void setCEP(String cep) {
		if (cep != null)
			cep = cep.trim();

		CEP = cep;
	}
	public String getCPais() {
		return cPais;
	}
	public void setCPais(String pais) {
		if (pais != null)
			pais = pais.trim();

		cPais = pais;
	}
	public String getXPais() {
		return xPais;
	}
	public void setXPais(String pais) {
		if (pais != null)
			pais = pais.trim();

		xPais = pais;
	}
	
	public String getFone() {
		return fone;
	}
	public void setFone(String fone) {
		if (fone != null)
			fone = fone.trim();

		this.fone = fone;
	}

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		if (email != null)
			email = email.trim();

		this.email = email;
	}
}
