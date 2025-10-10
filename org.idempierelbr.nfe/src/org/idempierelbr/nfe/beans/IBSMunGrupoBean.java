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

public class IBSMunGrupoBean {
	private String pIBSMun;
	private DifGrupoBean gDif;
	private DevTribGrupoBean gDevTrib;
	private RedGrupoBean gRed;
	private String vIBSMun;
	
	public String getpIBSMun() {
		return pIBSMun;
	}
	public void setpIBSMun(String pIBSMun) {
		this.pIBSMun = pIBSMun;
	}
	public DifGrupoBean getgDif() {
		return gDif;
	}
	public void setgDif(DifGrupoBean gDif) {
		this.gDif = gDif;
	}
	public DevTribGrupoBean getgDevTrib() {
		return gDevTrib;
	}
	public void setgDevTrib(DevTribGrupoBean gDevTrib) {
		this.gDevTrib = gDevTrib;
	}
	public RedGrupoBean getgRed() {
		return gRed;
	}
	public void setgRed(RedGrupoBean gRed) {
		this.gRed = gRed;
	}
	public String getvIBSMun() {
		return vIBSMun;
	}
	public void setvIBSMun(String vIBSMun) {
		this.vIBSMun = vIBSMun;
	}
}