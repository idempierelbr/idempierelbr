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

public class CobrancaGrupoDuplicata {

	private String nDup;
	private String dVenc;
	private String vDup;
	
	public String getnDup() {
		return nDup;
	}
	public void setnDup(String nDup) {
		if (nDup != null)
			nDup = nDup.trim();
	
		this.nDup = nDup;
	}
	public String getdVenc() {
		return dVenc;
	}
	public void setdVenc(String dVenc) {
		if (dVenc != null)
			dVenc = dVenc.trim();
	
		this.dVenc = dVenc;
	}
	public String getvDup() {
		return vDup;
	}
	public void setvDup(String vDup) {
		if (vDup != null)
			vDup = vDup.trim();
	
		this.vDup = vDup;
	}

}