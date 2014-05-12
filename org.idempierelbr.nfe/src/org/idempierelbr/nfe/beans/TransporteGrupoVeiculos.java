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

public class TransporteGrupoVeiculos {
	
	private String placa;
	private String UF;
	private String RNTC;
	
	public String getPlaca() {
		return placa;
	}
	public void setPlaca(String placa) {
		if (placa != null)
			placa = placa.trim();
	
		this.placa = placa;
	}
	public String getUF() {
		return UF;
	}
	public void setUF(String uF) {
		if (uF != null)
			uF = uF.trim();
	
		UF = uF;
	}
	public String getRNTC() {
		return RNTC;
	}
	public void setRNTC(String rNTC) {
		if (rNTC != null)
			rNTC = rNTC.trim();
	
		RNTC = rNTC;
	}
	
}