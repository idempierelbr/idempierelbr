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

public class IIBean {
	
	// Imposto de Importação
	
	private String vBC;
	private String vDespAdu;
	private String vII;
	private String vIOF;
	
	public String getvBC() {
		return vBC;
	}
	public void setvBC(String vBC) {
		if (vBC != null)
			vBC = vBC.trim();
	
		this.vBC = vBC;
	}
	public String getvDespAdu() {
		return vDespAdu;
	}
	public void setvDespAdu(String vDespAdu) {
		if (vDespAdu != null)
			vDespAdu = vDespAdu.trim();
	
		this.vDespAdu = vDespAdu;
	}
	public String getvII() {
		return vII;
	}
	public void setvII(String vII) {
		if (vII != null)
			vII = vII.trim();
	
		this.vII = vII;
	}
	public String getvIOF() {
		return vIOF;
	}
	public void setvIOF(String vIOF) {
		if (vIOF != null)
			vIOF = vIOF.trim();
	
		this.vIOF = vIOF;
	}

}