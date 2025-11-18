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

public class IBSCBSTot {
	private String vBCIBSCBS;
	private IBSTot gIBS;
	private CBSTot gCBS;
	
	public String getvBCIBSCBS() {
		return vBCIBSCBS;
	}
	public void setvBCIBSCBS(String vBCIBSCBS) {
		this.vBCIBSCBS = vBCIBSCBS;
	}
	public IBSTot getgIBS() {
		return gIBS;
	}
	public void setgIBS(IBSTot gIBS) {
		this.gIBS = gIBS;
	}
	public CBSTot getgCBS() {
		return gCBS;
	}
	public void setgCBS(CBSTot gCBS) {
		this.gCBS = gCBS;
	}
}