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

public class CobrancaGrupoFatura {

	private String nFat;
	private String vOrig;
	private String vDesc;
	private String vLiq;
	
	public String getnFat() {
		return nFat;
	}
	public void setnFat(String nFat) {
		if (nFat != null)
			nFat = nFat.trim();
	
		this.nFat = nFat;
	}
	public String getvOrig() {
		return vOrig;
	}
	public void setvOrig(String vOrig) {
		if (vOrig != null)
			vOrig = vOrig.trim();
	
		this.vOrig = vOrig;
	}
	public String getvDesc() {
		return vDesc;
	}
	public void setvDesc(String vDesc) {
		if (vDesc != null)
			vDesc = vDesc.trim();
	
		this.vDesc = vDesc;
	}
	public String getvLiq() {
		return vLiq;
	}
	public void setvLiq(String vLiq) {
		if (vLiq != null)
			vLiq = vLiq.trim();
	
		this.vLiq = vLiq;
	}

}