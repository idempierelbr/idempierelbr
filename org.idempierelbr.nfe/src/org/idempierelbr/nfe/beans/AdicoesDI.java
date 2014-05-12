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

public class AdicoesDI {

	private String nAdicao;
	private String nDI;
	private String nSeqAdic;
	private String cFabricante;
	private String vDescDI;
	
	public String getnAdicao() {
		return nAdicao;
	}
	public void setnAdicao(String nAdicao) {
		if (nAdicao != null)
			nAdicao = nAdicao.trim();
	
		this.nAdicao = nAdicao;
	}
	public String getnDI() {
		return nDI;
	}
	public void setnDI(String nDI) {
		if (nDI != null)
			nDI = nDI.trim();
	
		this.nDI = nDI;
	}
	public String getnSeqAdic() {
		return nSeqAdic;
	}
	public void setnSeqAdic(String nSeqAdic) {
		if (nSeqAdic != null)
			nSeqAdic = nSeqAdic.trim();
	
		this.nSeqAdic = nSeqAdic;
	}
	public String getcFabricante() {
		return cFabricante;
	}
	public void setcFabricante(String cFabricante) {
		if (cFabricante != null)
			cFabricante = cFabricante.trim();
	
		this.cFabricante = cFabricante;
	}
	public String getvDescDI() {
		return vDescDI;
	}
	public void setvDescDI(String vDescDI) {
		if (vDescDI != null)
			vDescDI = vDescDI.trim();
	
		this.vDescDI = vDescDI;
	}
	
}