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

public class Cobranca {

	// Dados da Cobrança
	private CobrancaGrupoFatura fat;
	private List<CobrancaGrupoDuplicata> dups = new ArrayList<CobrancaGrupoDuplicata>();

	public List<CobrancaGrupoDuplicata> getDups() {
		return dups;
	}

	public void setDups(List<CobrancaGrupoDuplicata> dups) {
		this.dups = dups;
	}

	public CobrancaGrupoFatura getFat() {
		return fat;
	}

	public void setFat(CobrancaGrupoFatura fat) {
		this.fat = fat;
	}

	public boolean addDup(CobrancaGrupoDuplicata e) {
		return dups.add(e);
	}
}
