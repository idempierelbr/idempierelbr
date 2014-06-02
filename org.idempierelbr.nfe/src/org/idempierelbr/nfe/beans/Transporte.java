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

import java.util.ArrayList;
import java.util.List;

public class Transporte {

	// Informações do Transporte da NF-E
	
	private String modFrete;
	private TransporteGrupo transporta;
	private TransporteRetencao retTransp;
	private TransporteGrupoVeiculos veicTransp;
	private List<TransporteReboque> reboques = null;
	private String vagao;
	private String balsa;
	private List<TransporteVol> vols = null;
	
	public String getModFrete() {
		return modFrete;
	}
	public void setModFrete(String modFrete) {
		if (modFrete != null)
			modFrete = modFrete.trim();
		
		this.modFrete = modFrete;
	}
	public TransporteGrupo getTransporta() {
		return transporta;
	}
	public void setTransporta(TransporteGrupo transporta) {
		this.transporta = transporta;
	}
	public TransporteRetencao getRetTransp() {
		return retTransp;
	}
	public void setRetTransp(TransporteRetencao retTransp) {
		this.retTransp = retTransp;
	}
	public TransporteGrupoVeiculos getVeicTransp() {
		return veicTransp;
	}
	public void setVeicTransp(TransporteGrupoVeiculos veicTransp) {
		this.veicTransp = veicTransp;
	}
	public List<TransporteReboque> getReboques() {
		return reboques;
	}
	public void setReboques(List<TransporteReboque> reboques) {
		this.reboques = reboques;
	}
	public boolean addReboque(TransporteReboque e) {
		if (reboques == null)
				reboques = new ArrayList<TransporteReboque>();
		return reboques.add(e);
	}
	public List<TransporteVol> getVols() {
		return vols;
	}
	public void setVols(List<TransporteVol> vols) {
		this.vols = vols;
	}
	public boolean addVol(TransporteVol e) {
		if (vols == null)
			vols = new ArrayList<TransporteVol>();
		return vols.add(e);
	}
	public String getVagao() {
		return vagao;
	}
	public void setVagao(String vagao) {
		this.vagao = vagao;
	}
	public String getBalsa() {
		return balsa;
	}
	public void setBalsa(String balsa) {
		this.balsa = balsa;
	}
}
