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

public class ValoresISSQN {

	private String vServ;
	private String vBC;
	private String vISS;
	private String vPIS;
	private String vCOFINS;
	
	public String getvServ() {
		return vServ;
	}
	public void setvServ(String vServ) {
		if (vServ != null)
			vServ = vServ.trim();
	
		this.vServ = vServ;
	}
	public String getvBC() {
		return vBC;
	}
	public void setvBC(String vBC) {
		if (vBC != null)
			vBC = vBC.trim();
	
		this.vBC = vBC;
	}
	public String getvISS() {
		return vISS;
	}
	public void setvISS(String vISS) {
		if (vISS != null)
			vISS = vISS.trim();
	
		this.vISS = vISS;
	}
	public String getvPIS() {
		return vPIS;
	}
	public void setvPIS(String vPIS) {
		if (vPIS != null)
			vPIS = vPIS.trim();
	
		this.vPIS = vPIS;
	}
	public String getvCOFINS() {
		return vCOFINS;
	}
	public void setvCOFINS(String vCOFINS) {
		if (vCOFINS != null)
			vCOFINS = vCOFINS.trim();
	
		this.vCOFINS = vCOFINS;
	}
	
}