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

public class TransporteVol {

	private String qVol;
	private String esp;
	private String marca;
	private String nVol;
	private String pesoL;
	private String pesoB;
	
	public String getqVol() {
		return qVol;
	}
	public void setqVol(String qVol) {
		if (qVol != null)
			qVol = qVol.trim();
	
		this.qVol = qVol;
	}
	public String getEsp() {
		return esp;
	}
	public void setEsp(String esp) {
		if (esp != null)
			esp = esp.trim();
	
		this.esp = esp;
	}
	public String getMarca() {
		return marca;
	}
	public void setMarca(String marca) {
		if (marca != null)
			marca = marca.trim();
	
		this.marca = marca;
	}
	public String getnVol() {
		return nVol;
	}
	public void setnVol(String nVol) {
		if (nVol != null)
			nVol = nVol.trim();
	
		this.nVol = nVol;
	}
	public String getPesoL() {
		return pesoL;
	}
	public void setPesoL(String pesoL) {
		if (pesoL != null)
			pesoL = pesoL.trim();
	
		this.pesoL = pesoL;
	}
	public String getPesoB() {
		return pesoB;
	}
	public void setPesoB(String pesoB) {
		if (pesoB != null)
			pesoB = pesoB.trim();
	
		this.pesoB = pesoB;
	}
		
}