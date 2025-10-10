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

public class IBSUFGrupoBean {
	private String pIBSUF;
	private DifGrupoBean gDif;
	private DevTribGrupoBean gDevTrib;
	private RedGrupoBean gRed;
	private String vIBSUF;
	
	public String getpIBSUF() {
		return pIBSUF;
	}
	public void setpIBSUF(String pIBSUF) {
		this.pIBSUF = pIBSUF;
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
	public String getvIBSUF() {
		return vIBSUF;
	}
	public void setvIBSUF(String vIBSUF) {
		this.vIBSUF = vIBSUF;
	}
}