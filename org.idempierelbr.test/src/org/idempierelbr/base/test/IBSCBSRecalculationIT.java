package org.idempierelbr.base.test;

import static org.assertj.core.api.Assertions.assertThat;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.Timestamp;

import org.compiere.model.MBPartner;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MProduct;
import org.compiere.model.MTax;
import org.compiere.model.Query;
import org.compiere.process.DocAction;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.TimeUtil;
import org.idempiere.test.DictionaryIDs;
import org.idempierelbr.base.model.I_LBR_DocLine_IBSCBS;
import org.idempierelbr.base.model.MLBRDocLineDetails;
import org.idempierelbr.base.model.MLBRDocLineDetailsTax;
import org.idempierelbr.base.model.MLBRDocLineIBSCBS;
import org.idempierelbr.base.model.MLBRDocLinePIS;
import org.idempierelbr.base.model.MLBRTax;
import org.idempierelbr.base.model.MLBRTaxLine;
import org.idempierelbr.base.model.MLBRTaxName;
import org.idempierelbr.base.model.X_LBR_CST_IBSCBS;
import org.idempierelbr.base.model.X_LBR_ClassTrib_IBSCBS;
import org.idempierelbr.test.AbstractLBRTestCase;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

/**
 * Recálculo só do IBS/CBS de uma linha de pedido: frete, seguro e outras despesas
 * gravados depois do cálculo entram na base unificada, e um ajuste de outro imposto
 * (por um processo próprio do cliente) entra quando o recálculo é chamado.
 * <p>
 * O pedido é do GardenWorld, com o imposto resumo GST/PST, que não usa o provider do
 * LBR: o LBR não cria os detalhes sozinho, e o teste os grava com uma transação de
 * impostos só de CBS (CST 000, cClassTrib 000001). Vale a alíquota nacional de CBS do banco.
 * <p>
 * Rode com {@code IDEMPIERE_HOME} apontando para um banco com as migrações em dia:
 * {@code mvn -o clean verify -Dtest=IBSCBSRecalculationIT -Dsurefire.failIfNoSpecifiedTests=false}.
 */
class IBSCBSRecalculationIT extends AbstractLBRTestCase {

	private static final Timestamp DOC_DATE = TimeUtil.getDay(2026, 6, 15);

	private MLBRDocLineDetailsTax details;

	@BeforeEach
	void orderLineWithCBS() {
		int cbsName = new Query(Env.getCtx(), MLBRTaxName.Table_Name, "Name=?", getTrxName())
				.setParameters("CBS").firstIdOnly();
		assertThat(cbsName).as("pré-condição: imposto CBS do LBR no banco").isPositive();

		// O MOrderLine lê o imposto pelo cache, sem a transação do teste: usa o resumo GST/PST do
		// GardenWorld e marca o filho GST como CBS (o rollback do teste desfaz)
		MTax parent = new MTax(Env.getCtx(), DictionaryIDs.C_Tax.GST_PST.id, getTrxName());
		MTax cbs = new MTax(Env.getCtx(), DictionaryIDs.C_Tax.GST.id, getTrxName());
		assertThat(parent.isSummary()).as("pré-condição: GST/PST é imposto resumo").isTrue();
		assertThat(cbs.getParent_Tax_ID()).as("pré-condição: GST é filho do GST/PST").isEqualTo(parent.get_ID());
		cbs.set_ValueOfColumn("LBR_TaxName_ID", cbsName);
		cbs.set_ValueOfColumn("LBR_TaxGroup_ID", MLBRTax.getTaxGroupID(MLBRTax.TAX_GROUP_CBS_NAME));
		cbs.saveEx();

		MLBRTax tax = new MLBRTax(Env.getCtx(), 0, getTrxName());
		tax.saveEx();

		MLBRTaxLine tl = new MLBRTaxLine(Env.getCtx(), 0, getTrxName());
		tl.setLBR_Tax_ID(tax.get_ID());
		tl.setLBR_TaxName_ID(cbsName);
		tl.setLBR_TaxRate(new BigDecimal("0.9"));
		tl.setLBR_PostTax(true);
		tl.set_ValueOfColumn(I_LBR_DocLine_IBSCBS.COLUMNNAME_LBR_CST_IBSCBS_ID, id(X_LBR_CST_IBSCBS.Table_Name, "000"));
		tl.set_ValueOfColumn(I_LBR_DocLine_IBSCBS.COLUMNNAME_LBR_ClassTrib_IBSCBS_ID,
				id(X_LBR_ClassTrib_IBSCBS.Table_Name, "000001"));
		tl.saveEx();

		MOrder order = new MOrder(Env.getCtx(), 0, getTrxName());
		order.setBPartner(MBPartner.get(Env.getCtx(), DictionaryIDs.C_BPartner.JOE_BLOCK.id));
		order.setC_DocTypeTarget_ID(MOrder.DocSubTypeSO_Standard);
		order.setDeliveryRule(MOrder.DELIVERYRULE_CompleteOrder);
		order.setDocStatus(DocAction.STATUS_Drafted);
		order.setDocAction(DocAction.ACTION_Complete);
		order.setDateOrdered(DOC_DATE);
		order.setDatePromised(DOC_DATE);
		order.saveEx();

		MOrderLine line = new MOrderLine(order);
		line.setProduct(MProduct.get(Env.getCtx(), DictionaryIDs.M_Product.ELM.id));
		line.setQty(BigDecimal.TEN);
		line.setPrice(new BigDecimal("100"));
		line.setC_Tax_ID(parent.get_ID());
		line.saveEx();

		details = new MLBRDocLineDetailsTax(Env.getCtx(), 0, getTrxName());
		details.setAD_Org_ID(line.getAD_Org_ID());
		details.setC_OrderLine_ID(line.get_ID());
		details.setLBR_Tax_ID(tax.get_ID());
		details.setLBR_GrossAmt(new BigDecimal("1000"));
		details.setLBR_QtyTax(BigDecimal.TEN);
		details.saveEx();

		assertThat(ibscbs().getLBR_TaxBaseAmt()).as("pré-condição: o cálculo da linha criou o IBS/CBS")
				.isEqualByComparingTo("1000");
	}

	@Test
	void freightSavedAfterTheCalculationEntersTheBase() {
		details.setFreightAmt(new BigDecimal("100"));
		details.saveEx();

		assertCBS("1100");
	}

	@Test
	void surchargesAndInsuranceSavedAfterTheCalculationEnterTheBase() {
		details.setSurcharges(new BigDecimal("355.50"));
		details.saveEx();
		assertCBS("1355.50");

		details.setInsuredAmount(new BigDecimal("20"));
		details.saveEx();
		assertCBS("1375.50");
	}

	@Test
	void recalculationTakesAnotherTaxChangedByACustomProcess() {
		MLBRDocLinePIS pis = new MLBRDocLinePIS(Env.getCtx(), 0, getTrxName());
		pis.setAD_Org_ID(details.getAD_Org_ID());
		pis.setLBR_DocLine_Details_ID(details.get_ID());
		pis.setLBR_TaxAmt(new BigDecimal("16.50"));
		pis.saveEx();

		assertThat(ibscbs().getLBR_TaxBaseAmt()).as("sem o recálculo, a base fica desatualizada")
				.isEqualByComparingTo("1000");

		assertThat(details.recalculateIBSCBS()).isTrue();
		assertCBS("983.50");
	}

	@Test
	void recalculationUsesTheSavedValuesNotAStaleInstance() {
		// Outra instância (ex.: um evento de outro plugin) grava outras despesas
		DB.executeUpdateEx("UPDATE LBR_DocLine_Details SET Surcharges=50 WHERE LBR_DocLine_Details_ID=?",
				new Object[] { details.get_ID() }, getTrxName());

		assertThat(details.getSurcharges()).as("pré-condição: a instância em memória não viu a alteração")
				.isEqualByComparingTo(Env.ZERO);
		assertThat(details.recalculateIBSCBS()).isTrue();
		assertCBS("1050");
	}

	@Test
	void detailsWithoutTaxTransactionAreNotRecalculated() {
		MLBRDocLineDetails empty = new MLBRDocLineDetails(Env.getCtx(), 0, getTrxName());
		empty.setAD_Org_ID(0);
		empty.setLBR_GrossAmt(new BigDecimal("1000"));
		empty.saveEx();

		assertThat(empty.recalculateIBSCBS()).isFalse();
	}

	// ------------------------------------------------------------ apoio

	/** Base gravada e CBS = base × alíquota, arredondada a 2 casas */
	private void assertCBS(String base) {
		MLBRDocLineIBSCBS ibscbs = ibscbs();
		assertThat(ibscbs.getLBR_TaxBaseAmt()).as("base do IBS/CBS").isEqualByComparingTo(base);
		assertThat(ibscbs.getLBR_CBS_TaxAmt()).as("CBS")
				.isEqualByComparingTo(new BigDecimal(base).multiply(ibscbs.getLBR_CBS_TaxRate())
						.divide(Env.ONEHUNDRED, 2, RoundingMode.HALF_EVEN));
	}

	private MLBRDocLineIBSCBS ibscbs() {
		MLBRDocLineIBSCBS[] lines = MLBRDocLineIBSCBS.getOfDetails(details);
		assertThat(lines).hasSize(1);
		return lines[0];
	}

	private int id(String tableName, String value) {
		return new Query(Env.getCtx(), tableName, "Value=? AND AD_Client_ID=0", getTrxName())
				.setParameters(value).firstIdOnly();
	}
}
