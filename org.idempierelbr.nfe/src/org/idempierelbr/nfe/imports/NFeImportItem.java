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
package org.idempierelbr.nfe.imports;

import java.math.BigDecimal;

import org.compiere.model.MProductPO;
import org.w3c.dom.Element;

/**
 * Item de uma NF-e sendo importada: o que o XML diz e o que o de-para resolveu.
 *
 * <p>Os campos são públicos porque isto é um DTO de leitura, preenchido pelo
 * {@link NFeXMLParser} e consumido pela tela de conciliação e pelo
 * {@link NFeImportService} — mesmo padrão do bean de produto que a tela antiga
 * já usava.
 *
 * <p>O elemento {@code det} original viaja junto: os grupos de imposto são
 * lidos dele na hora de criar a nota, sem passar por bean intermediário.
 *
 * @author Alan Lescano
 */
public class NFeImportItem {

	/** Item não identificado por nenhum nível da cascata */
	public static final int MATCH_NONE = 0;
	/** M_Product_PO.VendorProductNo = cProd, para o emitente */
	public static final int MATCH_VENDOR_PRODUCT_NO = 1;
	/** M_Product_PO.UPC = cEAN, para o emitente */
	public static final int MATCH_VENDOR_UPC = 2;
	/** M_Product.UPC = cEAN, com GTIN válido */
	public static final int MATCH_PRODUCT_UPC = 3;
	/** M_Product.Value = cProd e NCM igual — desligado por padrão */
	public static final int MATCH_PRODUCT_VALUE = 4;
	/** Resolvido à mão na tela de conciliação */
	public static final int MATCH_MANUAL = 9;

	/** Elemento {@code det} do XML, de onde saem os grupos de imposto */
	public Element det;

	public int nItem;

	public String cProd;
	public String cEAN;
	public String xProd;
	public String NCM;
	public String CEST;
	public String CFOP;
	public String uCom;
	public String indTot;

	public BigDecimal qCom;
	public BigDecimal vUnCom;
	public BigDecimal vProd;
	public BigDecimal vDesc;
	public BigDecimal vFrete;
	public BigDecimal vSeg;
	public BigDecimal vOutro;

	/** Combustíveis e lubrificantes ({@code prod/comb}) */
	public String cProdANP;
	public String CODIF;
	public String UFCons;
	public BigDecimal pMixGN;
	public BigDecimal qTemp;

	/** Produto do cadastro, quando o de-para resolveu */
	public Integer M_Product_ID;
	/** Alternativa ao produto, escolhida à mão na conciliação */
	public Integer C_Charge_ID;
	public Integer C_UOM_ID;

	/** Nível da cascata que resolveu o item — ver as constantes MATCH_* */
	public int matchLevel = MATCH_NONE;

	/** Vínculo do fornecedor, existente ou a criar */
	public MProductPO productPO;

	/** @return true se o item já tem para onde ir na nota */
	public boolean isResolved() {
		return (M_Product_ID != null || C_Charge_ID != null) && C_UOM_ID != null;
	}

	/** @return true se o item foi resolvido sem intervenção do usuário */
	public boolean isAutoMatched() {
		return matchLevel > MATCH_NONE && matchLevel < MATCH_MANUAL;
	}

	/** @return descrição do nível que resolveu o item, para a tela e o log */
	public String getMatchDescription() {
		switch (matchLevel) {
			case MATCH_VENDOR_PRODUCT_NO:
				return "Código do fornecedor";
			case MATCH_VENDOR_UPC:
				return "GTIN do fornecedor";
			case MATCH_PRODUCT_UPC:
				return "GTIN do produto";
			case MATCH_PRODUCT_VALUE:
				return "Código e NCM";
			case MATCH_MANUAL:
				return "Manual";
			default:
				return "Pendente";
		}
	}

	@Override
	public String toString() {
		return new StringBuilder("NFeImportItem[").append(nItem)
			.append(", cProd=").append(cProd)
			.append(", xProd=").append(xProd)
			.append(", M_Product_ID=").append(M_Product_ID)
			.append("]").toString();
	}
}	//	NFeImportItem
