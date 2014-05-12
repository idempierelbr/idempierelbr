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

public class TransporteGrupo {
	
	private String transporta;
	private String CNPJ;
	private String CPF;
	private String xNome;
	private String IE;
	private String xEnder;
	private String xMun;
	private String UF;
	
	public String getTransporta() {
		return transporta;
	}
	public void setTransporta(String transporta) {
		if (transporta != null)
			transporta = transporta.trim();
	
		this.transporta = transporta;
	}
	public String getCNPJ() {
		return CNPJ;
	}
	public void setCNPJ(String cNPJ) {
		if (cNPJ != null)
			cNPJ = cNPJ.trim();
	
		CNPJ = cNPJ;
	}
	public String getCPF() {
		return CPF;
	}
	public void setCPF(String cPF) {
		if (cPF != null)
			cPF = cPF.trim();
	
		CPF = cPF;
	}
	public String getxNome() {
		return xNome;
	}
	public void setxNome(String xNome) {
		if (xNome != null)
			xNome = xNome.trim();
	
		this.xNome = xNome;
	}
	public String getIE() {
		return IE;
	}
	public void setIE(String iE) {
		if (iE != null)
			iE = iE.trim();
	
		IE = iE;
	}
	public String getxEnder() {
		return xEnder;
	}
	public void setxEnder(String xEnder) {
		if (xEnder != null)
			xEnder = xEnder.trim();
	
		this.xEnder = xEnder;
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
	
}