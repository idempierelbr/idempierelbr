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

import org.idempierelbr.core.util.RemoverAcentos;

public class DetalhesProdServBean
{

	// Detalhamento de Produtos e Serviços da NF-E
	public ProdutosNFEBean prod;
	public TributosInciBean imposto;
	public String infAdProd;
	public int nItem;

	/**
	 * 
	 * @param prod
	 * @param tributos
	 * @param nItem
	 */
	public DetalhesProdServBean(ProdutosNFEBean prod, TributosInciBean tributos, int nItem)
	{
		this.imposto = tributos;
		this.prod = prod;
		this.nItem = nItem;
	}	//	DetailsNFEBean

	/**
	 * 
	 * @param prod
	 * @param tributos
	 * @param nItem
	 * @param inf
	 */
	public DetalhesProdServBean (ProdutosNFEBean prod, TributosInciBean tributos,
			int nItem, String inf)
	{
		this.imposto = tributos;
		this.prod = prod;
		this.nItem = nItem;
		this.infAdProd = RemoverAcentos.remover(inf);
	}	//	DetailsNFEBean
	
}	//	DetailsNFEBean