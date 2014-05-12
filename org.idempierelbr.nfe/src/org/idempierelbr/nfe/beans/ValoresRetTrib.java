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

public class ValoresRetTrib {

	private String vRetPIS;
	private String vRetCOFINS;
	private String vRetCSSL;
	private String vBCIRRF;
	private String vIRRF;
	private String vBCRetPrev;
	private String vRetPrev;
	
	public String getvRetPIS() {
		return vRetPIS;
	}
	public void setvRetPIS(String vRetPIS) {
		if (vRetPIS != null)
			vRetPIS = vRetPIS.trim();
	
		this.vRetPIS = vRetPIS;
	}
	public String getvRetCOFINS() {
		return vRetCOFINS;
	}
	public void setvRetCOFINS(String vRetCOFINS) {
		if (vRetCOFINS != null)
			vRetCOFINS = vRetCOFINS.trim();
	
		this.vRetCOFINS = vRetCOFINS;
	}
	public String getvRetCSSL() {
		return vRetCSSL;
	}
	public void setvRetCSSL(String vRetCSSL) {
		if (vRetCSSL != null)
			vRetCSSL = vRetCSSL.trim();
	
		this.vRetCSSL = vRetCSSL;
	}
	public String getvBCIRRF() {
		return vBCIRRF;
	}
	public void setvBCIRRF(String vBCIRRF) {
		if (vBCIRRF != null)
			vBCIRRF = vBCIRRF.trim();
	
		this.vBCIRRF = vBCIRRF;
	}
	public String getvIRRF() {
		return vIRRF;
	}
	public void setvIRRF(String vIRRF) {
		if (vIRRF != null)
			vIRRF = vIRRF.trim();
	
		this.vIRRF = vIRRF;
	}
	public String getvBCRetPrev() {
		return vBCRetPrev;
	}
	public void setvBCRetPrev(String vBCRetPrev) {
		if (vBCRetPrev != null)
			vBCRetPrev = vBCRetPrev.trim();
	
		this.vBCRetPrev = vBCRetPrev;
	}
	public String getvRetPrev() {
		return vRetPrev;
	}
	public void setvRetPrev(String vRetPrev) {
		if (vRetPrev != null)
			vRetPrev = vRetPrev.trim();
	
		this.vRetPrev = vRetPrev;
	}
		
}