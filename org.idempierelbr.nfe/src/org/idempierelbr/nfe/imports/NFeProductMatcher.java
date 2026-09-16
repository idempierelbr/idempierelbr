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

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Properties;

import org.compiere.model.MProduct;
import org.compiere.model.MProductPO;
import org.compiere.model.MSysConfig;
import org.compiere.model.Query;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.idempierelbr.base.model.MLBRNCM;
import org.idempierelbr.base.util.RemoverAcentos;
import org.idempierelbr.base.util.TextUtil;
import org.idempierelbr.nfe.util.NFeUtil;

/**
 * De-para entre o produto do emitente e o produto do cadastro, em cascata do
 * mais seguro para o menos seguro.
 *
 * <table>
 * <tr><td>1</td><td>{@code M_Product.Value = cProd}, em nota nossa</td><td>automático</td></tr>
 * <tr><td>2</td><td>{@code M_Product_PO.VendorProductNo = cProd} do emitente</td><td>automático</td></tr>
 * <tr><td>3</td><td>{@code M_Product_PO.UPC = cEAN} do emitente</td><td>automático</td></tr>
 * <tr><td>4</td><td>{@code M_Product.UPC = cEAN}, com GTIN válido</td><td>automático</td></tr>
 * <tr><td>5</td><td>{@code M_Product.Value = cProd} e NCM igual</td><td>SysConfig, desligado por padrão</td></tr>
 * <tr><td>-</td><td>semelhança entre {@code xProd} e o nome do produto</td><td>só ordena sugestões</td></tr>
 * </table>
 *
 * <p>O que sustenta a cascata em regime é o passo seguinte: toda conciliação
 * feita à mão vira um {@code M_Product_PO}, então a exceção de hoje é o
 * automático de amanhã.
 *
 * @author Alan Lescano
 */
public class NFeProductMatcher {

	private static final CLogger log = CLogger.getCLogger(NFeProductMatcher.class);

	/** Liga o nível 5 da cascata (código do produto + NCM) */
	public static final String SYSCONFIG_MATCH_BY_VALUE = "LBR_DFE_MATCH_BY_PRODUCT_VALUE";
	/** Grava o vínculo com o fornecedor a cada conciliação */
	public static final String SYSCONFIG_CREATE_PRODUCT_PO = "LBR_PRODUCTPO_WHEN_GEN_NF_FROM_XML";

	/** Quantidade padrão de sugestões oferecidas para um item pendente */
	public static final int DEFAULT_SUGGESTIONS = 10;

	/** GTIN ausente, como o layout manda declarar */
	private static final String NO_GTIN = "SEM GTIN";

	/** Escape do LIKE, para que curinga do usuário não vire curinga do SQL */
	private static final char LIKE_ESCAPE = '!';

	private final Properties ctx;
	private final String trxName;
	private final boolean matchByValue;

	public NFeProductMatcher(Properties ctx, String trxName) {
		this.ctx = ctx;
		this.trxName = trxName;
		this.matchByValue = MSysConfig.getBooleanValue(SYSCONFIG_MATCH_BY_VALUE, false,
				Env.getAD_Client_ID(ctx));
	}

	/**
	 * Roda a cascata em todos os itens ainda não resolvidos do documento.
	 *
	 * @return quantidade de itens que continuaram pendentes
	 */
	public int match(NFeImportDocument nfe) {
		int pending = 0;

		for (NFeImportItem item : nfe.items) {
			if (!item.isResolved())
				match(item, nfe.C_BPartner_ID, nfe.isSelfIssued);

			if (!item.isResolved())
				pending++;
		}

		return pending;
	}

	/**
	 * Identifica um item pela cascata, tratando o emitente como terceiro.
	 *
	 * @param C_BPartner_ID emitente, ou nulo quando o parceiro ainda não foi
	 *                      reconhecido — aí só os níveis que não dependem dele
	 *                      podem rodar
	 * @return true se o item foi identificado
	 */
	public boolean match(NFeImportItem item, Integer C_BPartner_ID) {
		return match(item, C_BPartner_ID, false);
	}

	/**
	 * Identifica um item pela cascata.
	 *
	 * @param C_BPartner_ID emitente, ou nulo quando o parceiro ainda não foi
	 *                      reconhecido — aí só os níveis que não dependem dele
	 *                      podem rodar
	 * @param selfIssued    a nota foi emitida por organização nossa
	 *                      ({@link NFeImportDocument#isSelfIssued})
	 * @return true se o item foi identificado
	 */
	public boolean match(NFeImportItem item, Integer C_BPartner_ID, boolean selfIssued) {
		// 1. nota nossa: o cProd é o Value que o nosso próprio XML levou, então
		// não há de-para a fazer — nem fornecedor de quem aprender, nem NCM a
		// conferir, porque o produto é literalmente o mesmo registro
		if (selfIssued && apply(item, getProductByValue(item.cProd),
				NFeImportItem.MATCH_SELF_PRODUCT_VALUE))
			return true;

		if (C_BPartner_ID != null && C_BPartner_ID > 0) {
			// 2. de-para explícito, já aprendido em alguma importação anterior
			if (apply(item, getProductPO("VendorProductNo=?", item.cProd, C_BPartner_ID),
					NFeImportItem.MATCH_VENDOR_PRODUCT_NO))
				return true;

			// 3. mesma natureza do nível 2, por outra chave
			if (isValidGTIN(item.cEAN)
					&& apply(item, getProductPO("UPC=?", item.cEAN, C_BPartner_ID),
							NFeImportItem.MATCH_VENDOR_UPC))
				return true;
		}

		// 4. GTIN é identificador global: se bate, é o mesmo produto
		if (isValidGTIN(item.cEAN)) {
			MProduct product = new Query(ctx, MProduct.Table_Name, "UPC=?", trxName)
				.setParameters(item.cEAN)
				.setClient_ID()
				.setOnlyActiveRecords(true)
				.first();

			if (apply(item, product, NFeImportItem.MATCH_PRODUCT_UPC))
				return true;
		}

		// 5. mesmo código e mesmo NCM — coincidência plausível, não certeza
		if (matchByValue) {
			MProduct product = getProductByValue(item.cProd);

			if (hasSameNCM(product, item.NCM) && apply(item, product, NFeImportItem.MATCH_PRODUCT_VALUE))
				return true;
		}

		return false;
	}

	/**
	 * Produtos que podem ser o item pendente, do mais parecido para o menos.
	 * Ordena por semelhança da descrição e privilegia quem tem o mesmo NCM —
	 * é o último degrau, o que nunca decide sozinho.
	 *
	 * @param limit quantos devolver
	 */
	public List<MProduct> suggest(NFeImportItem item, int limit) {
		List<MProduct> candidates = new Query(ctx, MProduct.Table_Name, "IsSummary=?", trxName)
			.setParameters("N")
			.setClient_ID()
			.setOnlyActiveRecords(true)
			.setOrderBy("Name")
			.list();

		final String description = normalize(item.xProd);
		final String ncm = TextUtil.toNumeric(item.NCM);

		Collections.sort(candidates, new Comparator<MProduct>() {
			@Override
			public int compare(MProduct a, MProduct b) {
				return Double.compare(score(b, description, ncm), score(a, description, ncm));
			}
		});

		return candidates.size() > limit ? new ArrayList<MProduct>(candidates.subList(0, limit)) : candidates;
	}

	/**
	 * Grava o de-para para as próximas importações do mesmo fornecedor. É isto
	 * que faz a fila de pendências encolher com o tempo.
	 *
	 * @return o vínculo gravado, ou nulo se a gravação estiver desligada por
	 *         SysConfig ou não houver o que gravar
	 */
	public MProductPO saveVendorLink(NFeImportItem item, int C_BPartner_ID, int AD_Org_ID) {
		if (item.M_Product_ID == null || C_BPartner_ID <= 0)
			return null;

		if (!MSysConfig.getBooleanValue(SYSCONFIG_CREATE_PRODUCT_PO, true, Env.getAD_Client_ID(ctx)))
			return null;

		MProductPO productPO = item.productPO;

		if (productPO == null)
			productPO = new Query(ctx, MProductPO.Table_Name, "C_BPartner_ID=? AND M_Product_ID=?", trxName)
				.setParameters(C_BPartner_ID, item.M_Product_ID)
				.setClient_ID()
				.first();

		if (productPO == null) {
			productPO = new MProductPO(ctx, 0, trxName);
			productPO.setAD_Org_ID(AD_Org_ID);
			productPO.setC_BPartner_ID(C_BPartner_ID);
			productPO.setM_Product_ID(item.M_Product_ID);
			productPO.setIsCurrentVendor(false);
		}

		productPO.set_TrxName(trxName);
		productPO.setVendorProductNo(item.cProd);

		if (isValidGTIN(item.cEAN))
			productPO.setUPC(item.cEAN);

		if (item.C_UOM_ID != null)
			productPO.setC_UOM_ID(item.C_UOM_ID);

		productPO.saveEx();
		item.productPO = productPO;

		return productPO;
	}

	/**
	 * Aplica a um lote inteiro o vínculo que o usuário acabou de resolver: o
	 * mesmo código do mesmo fornecedor, em qualquer nota da fila, já aparece
	 * casado.
	 *
	 * @return quantidade de itens que o vínculo resolveu
	 */
	public static int applyToBatch(List<NFeImportDocument> batch, NFeImportItem resolved, Integer C_BPartner_ID) {
		if (resolved.cProd == null || resolved.M_Product_ID == null)
			return 0;

		int applied = 0;

		for (NFeImportDocument nfe : batch) {
			if (C_BPartner_ID != null && !C_BPartner_ID.equals(nfe.C_BPartner_ID))
				continue;

			for (NFeImportItem item : nfe.items) {
				if (item == resolved || item.isResolved() || !resolved.cProd.equals(item.cProd))
					continue;

				item.M_Product_ID = resolved.M_Product_ID;
				item.C_UOM_ID = resolved.C_UOM_ID;
				item.productPO = resolved.productPO;
				item.matchLevel = NFeImportItem.MATCH_MANUAL;
				applied++;
			}
		}

		return applied;
	}

	/**
	 * @return true se o código é um GTIN de verdade — o layout manda declarar
	 *         "SEM GTIN" quando não há, e há quem mande zeros ou lixo
	 */
	public static boolean isValidGTIN(String cEAN) {
		if (cEAN == null || cEAN.trim().isEmpty())
			return false;

		String gtin = cEAN.trim();

		if (NO_GTIN.equalsIgnoreCase(gtin) || gtin.contains("GTIN"))
			return false;

		return NFeUtil.isValidEAN(gtin);
	}

	/**
	 * Produto cujo {@code Value} teria virado este {@code cProd} ao ser gravado
	 * no XML.
	 *
	 * <p>Não é comparação direta: o gerador passa o {@code Value} por
	 * {@link RemoverAcentos#remover(String)} antes de escrever o {@code cProd},
	 * e ali todo caractere que não é letra, dígito ou espaço vira espaço. Um
	 * produto {@code M5W30_24X1} sai do nosso XML como {@code M5W30 24X1} e
	 * nunca mais se reconhece na volta se a busca for por igualdade.
	 *
	 * <p>Então cada espaço do {@code cProd} é tratado como curinga de pelo menos
	 * um caractere — foi o que sobrou de algo que a higienização trocou, ou de
	 * um espaço mesmo — e os candidatos que o LIKE traz são confirmados
	 * repetindo a higienização sobre o {@code Value} deles. O LIKE só reduz o
	 * conjunto; quem decide é a comparação em Java, com o mesmo código que o
	 * gerador roda.
	 *
	 * <p>A higienização ainda apara as pontas e o cadastro tem código digitado
	 * com espaço sobrando, então a busca larga compara pelo {@code Value}
	 * aparado. Perde o índice, mas só roda depois que a igualdade falhou — e
	 * quando ela falha o item ia para a fila de conciliação de qualquer jeito.
	 *
	 * <p>Resta fora o {@code Value} com acento, que a higienização também troca
	 * ({@code CAFÉ} vira {@code CAFE}) sem deixar espaço no lugar. Código de
	 * produto acentuado é raro o bastante para ficar com a conciliação manual,
	 * em vez de custar um curinga em cada vogal do padrão.
	 *
	 * @return o produto, ou nulo se nenhum ou mais de um {@code Value} chega a
	 *         este {@code cProd}
	 */
	private MProduct getProductByValue(String cProd) {
		if (cProd == null || cProd.trim().isEmpty())
			return null;

		String value = cProd.trim();

		// caso comum: o código não tinha nada para higienizar
		MProduct product = new Query(ctx, MProduct.Table_Name, "Value=?", trxName)
			.setParameters(value)
			.setClient_ID()
			.setOnlyActiveRecords(true)
			.first();

		if (product != null)
			return product;

		List<MProduct> candidates = new Query(ctx, MProduct.Table_Name,
				"UPPER(TRIM(Value)) LIKE UPPER(?) ESCAPE '" + LIKE_ESCAPE + "'", trxName)
			.setParameters(toLikePattern(value))
			.setClient_ID()
			.setOnlyActiveRecords(true)
			.list();

		MProduct match = null;

		for (MProduct candidate : candidates) {
			if (!value.equalsIgnoreCase(RemoverAcentos.remover(candidate.getValue())))
				continue;

			// dois códigos diferentes que chegam ao mesmo cProd: o XML não diz
			// qual é, e chutar seria pior do que mandar para a conciliação
			if (match != null) {
				log.warning("cProd '" + value + "' chega a mais de um produto: "
						+ match.getValue() + " e " + candidate.getValue());
				return null;
			}

			match = candidate;
		}

		return match;
	}

	/**
	 * Padrão LIKE dos {@code Value} que podem ter virado este {@code cProd}:
	 * cada sequência de espaços vira {@code _%}, que é "um caractere ou mais" —
	 * a higienização colapsa espaços seguidos, então um espaço do {@code cProd}
	 * pode ter nascido de vários caracteres. O resto vai literal, com os
	 * curingas do próprio SQL escapados.
	 */
	private static String toLikePattern(String cProd) {
		StringBuilder pattern = new StringBuilder();
		boolean afterSpace = false;

		for (int i = 0; i < cProd.length(); i++) {
			char ch = cProd.charAt(i);

			if (ch == ' ') {
				if (!afterSpace)
					pattern.append("_%");

				afterSpace = true;
				continue;
			}

			afterSpace = false;

			if (ch == '_' || ch == '%' || ch == LIKE_ESCAPE)
				pattern.append(LIKE_ESCAPE);

			pattern.append(ch);
		}

		return pattern.toString();
	}

	private MProductPO getProductPO(String where, String value, int C_BPartner_ID) {
		if (value == null || value.trim().isEmpty())
			return null;

		return new Query(ctx, MProductPO.Table_Name, "C_BPartner_ID=? AND " + where, trxName)
			.setParameters(C_BPartner_ID, value)
			.setClient_ID()
			.setOnlyActiveRecords(true)
			.first();
	}

	private boolean apply(NFeImportItem item, MProductPO productPO, int matchLevel) {
		if (productPO == null)
			return false;

		item.productPO = productPO;
		item.M_Product_ID = productPO.getM_Product_ID();
		item.matchLevel = matchLevel;
		item.C_UOM_ID = productPO.getC_UOM_ID() > 0
				? productPO.getC_UOM_ID() : getProductUOM(productPO.getM_Product_ID());

		log.fine("Item " + item.nItem + " identificado por " + item.getMatchDescription());

		return item.isResolved();
	}

	private boolean apply(NFeImportItem item, MProduct product, int matchLevel) {
		if (product == null)
			return false;

		item.M_Product_ID = product.getM_Product_ID();
		item.C_UOM_ID = product.getC_UOM_ID();
		item.matchLevel = matchLevel;

		log.fine("Item " + item.nItem + " identificado por " + item.getMatchDescription());

		return item.isResolved();
	}

	private int getProductUOM(int M_Product_ID) {
		if (M_Product_ID <= 0)
			return 0;

		return MProduct.get(ctx, M_Product_ID).getC_UOM_ID();
	}

	/**
	 * NCM do cadastro contra o do XML, ambos reduzidos a dígitos — na base o
	 * NCM é gravado com pontos ("0101.10.10") e no XML vem sem.
	 */
	private boolean hasSameNCM(MProduct product, String NCM) {
		if (product == null || NCM == null)
			return false;

		int LBR_NCM_ID = product.get_ValueAsInt("LBR_NCM_ID");

		if (LBR_NCM_ID <= 0)
			return false;

		MLBRNCM ncm = new MLBRNCM(ctx, LBR_NCM_ID, trxName);

		return TextUtil.toNumeric(NCM).equals(TextUtil.toNumeric(ncm.getValue()));
	}

	/**
	 * Semelhança entre a descrição do fornecedor e a do cadastro: proporção de
	 * palavras em comum, com bônus para o mesmo NCM. Não decide nada — só
	 * coloca os candidatos plausíveis no topo da lista.
	 */
	private double score(MProduct product, String description, String ncm) {
		double score = 0;

		if (ncm != null && !ncm.isEmpty()) {
			int LBR_NCM_ID = product.get_ValueAsInt("LBR_NCM_ID");

			if (LBR_NCM_ID > 0) {
				MLBRNCM productNCM = new MLBRNCM(ctx, LBR_NCM_ID, trxName);

				if (ncm.equals(TextUtil.toNumeric(productNCM.getValue())))
					score += 1;
			}
		}

		if (description == null || description.isEmpty())
			return score;

		String name = normalize(product.getName());

		if (name.isEmpty())
			return score;

		String[] words = description.split(" ");
		int matches = 0;

		for (String word : words) {
			if (word.length() > 2 && name.contains(word))
				matches++;
		}

		return score + (words.length == 0 ? 0 : (double) matches / words.length);
	}

	private static String normalize(String value) {
		return value == null ? "" : value.trim().toUpperCase();
	}
}	//	NFeProductMatcher
