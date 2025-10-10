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

public class ISBean {

	// Imposto Seletivo
	
	private String CSTIS;
	private String cClassTribIS;
	private String vBCIS;
	private String pIS;
	private String pISEspec;
	private String uTrib;
	private String qTrib;
	private String vIS;

	public String getCSTIS() {
		return CSTIS;
	}

	public void setCSTIS(String cSTIS) {
		if (cSTIS != null)
			cSTIS = cSTIS.trim();
		
		CSTIS = cSTIS;
	}

	public String getcClassTribIS() {
		return cClassTribIS;
	}

	public void setcClassTribIS(String cClassTribIS) {
		if (cClassTribIS != null)
			cClassTribIS = cClassTribIS.trim();
		
		this.cClassTribIS = cClassTribIS;
	}

	public String getvBCIS() {
		return vBCIS;
	}

	public void setvBCIS(String vBCIS) {
		if (vBCIS != null)
			vBCIS = vBCIS.trim();
		
		this.vBCIS = vBCIS;
	}

	public String getpIS() {
		return pIS;
	}

	public void setpIS(String pIS) {
		if (pIS != null)
			pIS = pIS.trim();
		
		this.pIS = pIS;
	}

	public String getpISEspec() {
		return pISEspec;
	}

	public void setpISEspec(String pISEspec) {
		if (pISEspec != null)
			pISEspec = pISEspec.trim();
		
		this.pISEspec = pISEspec;
	}

	public String getuTrib() {
		return uTrib;
	}

	public void setuTrib(String uTrib) {
		if (uTrib != null)
			uTrib = uTrib.trim();
		
		this.uTrib = uTrib;
	}

	public String getqTrib() {
		return qTrib;
	}

	public void setqTrib(String qTrib) {
		if (qTrib != null)
			qTrib = qTrib.trim();
		
		this.qTrib = qTrib;
	}

	public String getvIS() {
		return vIS;
	}

	public void setvIS(String vIS) {
		if (vIS != null)
			vIS = vIS.trim();
		
		this.vIS = vIS;
	}
}