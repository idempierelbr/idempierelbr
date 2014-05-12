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

public class ImpostoIPIGrupoBean {
	private String CST;
	private String vBC;
	private String pIPI;
	private String qUnid;
	private String vUnid;
	private String vIPI;
	
	public String getCST() {
		return CST;
	}
	public void setCST(String cST) {
		if (cST != null)
			cST = cST.trim();
	
		CST = cST;
	}
	public String getvBC() {
		return vBC;
	}
	public void setvBC(String vBC) {
		if (vBC != null)
			vBC = vBC.trim();
	
		this.vBC = vBC;
	}
	public String getpIPI() {
		return pIPI;
	}
	public void setpIPI(String pIPI) {
		if (pIPI != null)
			pIPI = pIPI.trim();
	
		this.pIPI = pIPI;
	}
	public String getvIPI() {
		return vIPI;
	}
	public void setvIPI(String vIPI) {
		if (vIPI != null)
			vIPI = vIPI.trim();
	
		this.vIPI = vIPI;
	}
	public String getqUnid() {
		return qUnid;
	}
	public void setqUnid(String qUnid) {
		if (qUnid != null)
			qUnid = qUnid.trim();
	
		this.qUnid = qUnid;
	}
	public String getvUnid() {
		return vUnid;
	}
	public void setvUnid(String vUnid) {
		if (vUnid != null)
			vUnid = vUnid.trim();
	
		this.vUnid = vUnid;
	}
		
}