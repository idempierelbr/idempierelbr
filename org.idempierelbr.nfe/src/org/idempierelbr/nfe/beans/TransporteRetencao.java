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

public class TransporteRetencao {
	
	private String vServ;
	private String vBCRet;
	private String pICMSRet;
	private String vICMSRet;
	private String CFOP;
	private String cMunFG;
	
	public String getvServ() {
		return vServ;
	}
	public void setvServ(String vServ) {
		if (vServ != null)
			vServ = vServ.trim();
	
		this.vServ = vServ;
	}
	public String getvBCRet() {
		return vBCRet;
	}
	public void setvBCRet(String vBCRet) {
		if (vBCRet != null)
			vBCRet = vBCRet.trim();
	
		this.vBCRet = vBCRet;
	}
	public String getpICMSRet() {
		return pICMSRet;
	}
	public void setpICMSRet(String pICMSRet) {
		if (pICMSRet != null)
			pICMSRet = pICMSRet.trim();
	
		this.pICMSRet = pICMSRet;
	}
	public String getvICMSRet() {
		return vICMSRet;
	}
	public void setvICMSRet(String vICMSRet) {
		if (vICMSRet != null)
			vICMSRet = vICMSRet.trim();
	
		this.vICMSRet = vICMSRet;
	}
	public String getCFOP() {
		return CFOP;
	}
	public void setCFOP(String cFOP) {
		if (cFOP != null)
			cFOP = cFOP.trim();
	
		CFOP = cFOP;
	}
	public String getcMunFG() {
		return cMunFG;
	}
	public void setcMunFG(String cMunFG) {
		if (cMunFG != null)
			cMunFG = cMunFG.trim();
	
		this.cMunFG = cMunFG;
	}
	
}