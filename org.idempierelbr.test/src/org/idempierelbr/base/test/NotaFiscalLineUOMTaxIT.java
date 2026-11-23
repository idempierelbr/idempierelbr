package org.idempierelbr.base.test;

import static org.assertj.core.api.Assertions.assertThat;

import java.math.BigDecimal;

import org.compiere.model.MProduct;
import org.compiere.util.Env;
import org.idempiere.test.DictionaryIDs;
import org.idempierelbr.base.model.MLBRDocLineDetailsNfe;
import org.idempierelbr.base.model.MLBRNotaFiscalLine;
import org.idempierelbr.test.AbstractLBRTestCase;
import org.junit.jupiter.api.Test;

/**
 * Unidade tributável (uTrib) dos detalhes de uma linha de Nota Fiscal avulsa,
 * sem pedido, fatura ou RMA: quantidade e preço tributáveis são copiados da
 * linha, então a unidade também tem de ser a da linha, e não a do produto.
 * <p>
 * As linhas ficam só em memória; o banco é usado para ler o produto.
 * Rode com {@code IDEMPIERE_HOME} apontando para o idempiere.properties do
 * banco e {@code mvn -o verify -Dtest=NotaFiscalLineUOMTaxIT -DfailIfNoTests=false}.
 */
class NotaFiscalLineUOMTaxIT extends AbstractLBRTestCase {

	private static final int ELM = DictionaryIDs.M_Product.ELM.id;
	private static final int EACH = DictionaryIDs.C_UOM.EACH.id;
	private static final int SIX_PACK = DictionaryIDs.C_UOM.SIX_PACK.id;

	@Test
	void taxUOMFollowsTheLineWhenItDiffersFromTheProduct() {
		assertThat(new MProduct(Env.getCtx(), ELM, getTrxName()).getC_UOM_ID())
				.as("pré-condição: o produto do teste está em outra unidade")
				.isNotEqualTo(SIX_PACK);

		MLBRDocLineDetailsNfe details = detailsOf(line(ELM, SIX_PACK, new BigDecimal("2"), new BigDecimal("30")));

		assertThat(details.getLBR_UOMTax_ID())
				.as("qTrib e vUnTrib estão na unidade da linha, então uTrib também")
				.isEqualTo(SIX_PACK);
		assertThat(details.getLBR_QtyTax()).isEqualByComparingTo("2");
		assertThat(details.getLBR_PriceTax()).isEqualByComparingTo("30");
	}

	@Test
	void taxUOMIsFilledForLinesWithoutProduct() {
		MLBRDocLineDetailsNfe details = detailsOf(line(0, EACH, BigDecimal.ONE, BigDecimal.TEN));

		assertThat(details.getLBR_UOMTax_ID())
				.as("linha sem produto também precisa de uTrib no XML")
				.isEqualTo(EACH);
	}

	private MLBRNotaFiscalLine line(int M_Product_ID, int C_UOM_ID, BigDecimal qty, BigDecimal price) {
		MLBRNotaFiscalLine line = new MLBRNotaFiscalLine(Env.getCtx(), 0, getTrxName());
		line.setAD_Org_ID(GARDEN_WORLD_HQ_ORG);
		line.setM_Product_ID(M_Product_ID);
		line.setC_UOM_ID(C_UOM_ID);
		line.setQty(qty);
		line.setPriceActual(price);
		line.setLineNetAmt(qty.multiply(price));
		return line;
	}

	private MLBRDocLineDetailsNfe detailsOf(MLBRNotaFiscalLine line) {
		MLBRDocLineDetailsNfe details = new MLBRDocLineDetailsNfe(Env.getCtx(), 0, getTrxName());
		details.populateFromPO(line);
		return details;
	}
}
