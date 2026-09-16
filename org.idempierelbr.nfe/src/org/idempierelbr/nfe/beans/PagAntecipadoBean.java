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

/**
 * Grupo BB - gPagAntecipado (NT 2025.002): chaves de acesso das NF-e de Débito
 * do tipo 06-Pagamento antecipado cujo IBS/CBS já foi recolhido e que esta NF-e
 * de fornecimento abate (LC 214/2025, art. 10, § 4º).
 *
 * <p>A referência é sempre neste sentido: a nota de antecipação é o documento
 * iniciador e nunca referencia nada — é a NF-e do fornecimento que aponta para
 * ela. Sem este grupo, o IBS/CBS já antecipado seria cobrado uma segunda vez.
 */
public class PagAntecipadoBean {

	private List<String> refNFe;

	/**
	 * @param chaveAcesso chave de acesso da NF-e de antecipação (44 dígitos)
	 * @return true se a chave foi adicionada
	 */
	public boolean addRefNFe(String chaveAcesso) {
		if (chaveAcesso == null || chaveAcesso.trim().isEmpty())
			return false;

		if (refNFe == null)
			refNFe = new ArrayList<String>();

		return refNFe.add(chaveAcesso.trim());
	}

	public List<String> getRefNFe() {
		return refNFe;
	}

	public void setRefNFe(List<String> refNFe) {
		this.refNFe = refNFe;
	}

	/** @return true quando não há nenhuma antecipação a abater */
	public boolean isEmpty() {
		return refNFe == null || refNFe.isEmpty();
	}
}
