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

public class EnderEmit {

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
	
	public String getxLgr() {
		return xLgr;
	}
	public void setxLgr(String xLgr) {
		if (xLgr != null)
			xLgr = xLgr.trim();
	
		this.xLgr = xLgr;
	}
	public String getNro() {
		return nro;
	}
	public void setNro(String nro) {
		if (nro != null)
			nro = nro.trim();
	
		this.nro = nro;
	}
	public String getxCpl() {
		return xCpl;
	}
	public void setxCpl(String xCpl) {
		if (xCpl != null)
			xCpl = xCpl.trim();
	
		this.xCpl = xCpl;
	}
	public String getxBairro() {
		return xBairro;
	}
	public void setxBairro(String xBairro) {
		if (xBairro != null)
			xBairro = xBairro.trim();
	
		this.xBairro = xBairro;
	}
	public String getcMun() {
		return cMun;
	}
	public void setcMun(String cMun) {
		if (cMun != null)
			cMun = cMun.trim();
	
		this.cMun = cMun;
	}
	public String getxMun() {
		return xMun;
	}
	public void setxMun(String xMun) {
		if (xMun != null)
			xMun = xMun.trim();
	
		this.xMun = xMun;
	}
	public String getUF() {
		return UF;
	}
	public void setUF(String uF) {
		if (uF != null)
			uF = uF.trim();
	
		UF = uF;
	}
	public String getCEP() {
		return CEP;
	}
	public void setCEP(String cEP) {
		if (cEP != null)
			cEP = cEP.trim();
	
		CEP = cEP;
	}
	public String getcPais() {
		return cPais;
	}
	public void setcPais(String cPais) {
		if (cPais != null)
			cPais = cPais.trim();
	
		this.cPais = cPais;
	}
	public String getxPais() {
		return xPais;
	}
	public void setxPais(String xPais) {
		if (xPais != null)
			xPais = xPais.trim();
	
		this.xPais = xPais;
	}
	public String getFone() {
		return fone;
	}
	public void setFone(String fone) {
		if (fone != null)
			fone = fone.trim();
	
		this.fone = fone;
	}
	
}