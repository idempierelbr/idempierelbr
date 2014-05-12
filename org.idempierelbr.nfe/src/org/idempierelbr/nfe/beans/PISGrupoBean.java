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

public class PISGrupoBean {
	private String CST;
	private String vBC;
	private String pPIS;
	private String qBCProd;
	private String vAliqProd;
	private String vPIS;
	
	public String getvAliqProd()
	{
		return vAliqProd;
	}
	public void setvAliqProd(String vAliqProd)
	{
		this.vAliqProd = vAliqProd;
	}
	public String getqBCProd()
	{
		return qBCProd;
	}
	public void setqBCProd(String qBCProd)
	{
		this.qBCProd = qBCProd;
	}
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
	public String getpPIS() {
		return pPIS;
	}
	public void setpPIS(String pPIS) {
		if (pPIS != null)
			pPIS = pPIS.trim();
	
		this.pPIS = pPIS;
	}
	public String getvPIS() {
		return vPIS;
	}
	public void setvPIS(String vPIS) {
		if (vPIS != null)
			vPIS = vPIS.trim();
	
		this.vPIS = vPIS;
	}

}
