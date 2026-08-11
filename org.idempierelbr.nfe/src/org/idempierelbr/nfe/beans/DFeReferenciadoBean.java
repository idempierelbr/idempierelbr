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

/**
 * Grupo det/DFeReferenciado (NT 2025.002): referenciamento por item da NF-e
 * original nas Notas de Débito/Crédito da Reforma Tributária (IBS/CBS).
 */
public class DFeReferenciadoBean {

	private String chaveAcesso;
	private String nItem;

	public DFeReferenciadoBean() {
	}

	public DFeReferenciadoBean(String chaveAcesso, String nItem) {
		setChaveAcesso(chaveAcesso);
		setNItem(nItem);
	}

	public String getChaveAcesso() {
		return chaveAcesso;
	}

	public void setChaveAcesso(String chaveAcesso) {
		if (chaveAcesso != null)
			chaveAcesso = chaveAcesso.trim();

		this.chaveAcesso = chaveAcesso;
	}

	public String getNItem() {
		return nItem;
	}

	public void setNItem(String nItem) {
		if (nItem != null)
			nItem = nItem.trim();

		this.nItem = nItem;
	}
}
