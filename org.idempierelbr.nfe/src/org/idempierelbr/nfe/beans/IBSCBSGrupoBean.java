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

public class IBSCBSGrupoBean {

	// IBS / CBS
	
	private String vBC;
	private IBSUFGrupoBean gIBSUF;
	private IBSMunGrupoBean gIBSMun;
	private String vIBS;
	private CBSGrupoBean gCBS;
	
	public String getvBC() {
		return vBC;
	}
	public void setvBC(String vBC) {
		this.vBC = vBC;
	}
	public IBSUFGrupoBean getgIBSUF() {
		return gIBSUF;
	}
	public void setgIBSUF(IBSUFGrupoBean gIBSUF) {
		this.gIBSUF = gIBSUF;
	}
	public IBSMunGrupoBean getgIBSMun() {
		return gIBSMun;
	}
	public void setgIBSMun(IBSMunGrupoBean gIBSMun) {
		this.gIBSMun = gIBSMun;
	}
	public String getvIBS() {
		return vIBS;
	}
	public void setvIBS(String vIBS) {
		this.vIBS = vIBS;
	}
	public CBSGrupoBean getgCBS() {
		return gCBS;
	}
	public void setgCBS(CBSGrupoBean gCBS) {
		this.gCBS = gCBS;
	}
}