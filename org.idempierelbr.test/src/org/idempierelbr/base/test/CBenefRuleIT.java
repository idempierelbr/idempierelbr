package org.idempierelbr.base.test;

import static org.assertj.core.api.Assertions.assertThat;

import java.sql.Timestamp;

import org.compiere.model.MLocation;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MProduct;
import org.compiere.model.MRegion;
import org.compiere.model.Query;
import org.compiere.util.Env;
import org.compiere.util.TimeUtil;
import org.idempiere.test.DictionaryIDs;
import org.idempierelbr.base.model.I_LBR_NCM;
import org.idempierelbr.base.model.MLBRCBenefRule;
import org.idempierelbr.base.model.MLBRDocLineICMS;
import org.idempierelbr.base.util.AdempiereLBR;
import org.idempierelbr.test.AbstractLBRTestCase;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

/**
 * Regra de Código de Benefício Fiscal (cBenef) por UF do emitente contra o banco:
 * dicionário, consultas e validações reais. Tudo fica na transação do teste,
 * desfeita no fim.
 * <p>
 * Precisa de um banco com a migração da tabela LBR_CBenefRule; aponte
 * {@code IDEMPIERE_HOME} para o idempiere.properties dele e rode
 * {@code mvn -o verify -Dtest=CBenefRuleIT -DfailIfNoTests=false}.
 */
class CBenefRuleIT extends AbstractLBRTestCase {

	private static final Timestamp YEAR_START = TimeUtil.getDay(2026, 1, 1);
	private static final Timestamp DOC_DATE = TimeUtil.getDay(2026, 6, 15);

	private static final int ALL_ORGS = 0;
	private static final int ELM = DictionaryIDs.M_Product.ELM.id;
	private static final int OAK = DictionaryIDs.M_Product.OAK.id;

	private int sp;
	private int ms;
	private int ncm;
	private int otherNcm;

	@BeforeEach
	void regionsAndNcm() {
		sp = region("SP");
		ms = region("MS");

		int[] ncms = new Query(Env.getCtx(), I_LBR_NCM.Table_Name, null, getTrxName())
				.setOnlyActiveRecords(true)
				.setOrderBy(I_LBR_NCM.COLUMNNAME_LBR_NCM_ID)
				.getIDs();
		assertThat(ncms.length).as("o banco precisa de pelo menos dois NCMs").isGreaterThanOrEqualTo(2);
		ncm = ncms[0];
		otherNcm = ncms[1];
	}

	// ------------------------------------------------------------ a busca

	@Test
	void productRuleWinsOverNcmRuleWhichWinsOverTaxStatusRule() {
		rule(ALL_ORGS, sp, "40", 0, 0, "SP000001").saveEx();
		rule(ALL_ORGS, sp, "40", 0, ncm, "SP000002").saveEx();
		rule(ALL_ORGS, sp, "40", ELM, 0, "SP000003").saveEx();

		assertThat(code(GARDEN_WORLD_HQ_ORG, sp, "40", ELM, ncm)).as("regra do produto").isEqualTo("SP000003");
		assertThat(code(GARDEN_WORLD_HQ_ORG, sp, "40", OAK, ncm)).as("regra do NCM").isEqualTo("SP000002");
		assertThat(code(GARDEN_WORLD_HQ_ORG, sp, "40", OAK, otherNcm)).as("regra só do CST").isEqualTo("SP000001");
	}

	@Test
	void organizationRuleWinsWithinTheSameLevel() {
		rule(ALL_ORGS, sp, "40", 0, 0, "SP000001").saveEx();
		rule(GARDEN_WORLD_HQ_ORG, sp, "40", 0, 0, "SP000009").saveEx();

		assertThat(code(GARDEN_WORLD_HQ_ORG, sp, "40", OAK, 0)).isEqualTo("SP000009");
		assertThat(code(DictionaryIDs.AD_Org.STORE_CENTRAL.id, sp, "40", OAK, 0))
				.as("outra organização fica com a regra para todas")
				.isEqualTo("SP000001");
	}

	@Test
	void ruleOnlyAppliesToItsRegionAndTaxStatus() {
		rule(ALL_ORGS, sp, "40", 0, 0, "SP000001").saveEx();

		assertThat(find(GARDEN_WORLD_HQ_ORG, ms, "40", OAK, 0, DOC_DATE)).as("emitente de MS").isNull();
		assertThat(find(GARDEN_WORLD_HQ_ORG, sp, "41_1", OAK, 0, DOC_DATE)).as("outro CST").isNull();
	}

	@Test
	void simpleNationalRuleMatchesTheCsosn() {
		rule(ALL_ORGS, sp, MLBRDocLineICMS.CSOSN_102, 0, 0, "SP000102").saveEx();

		assertThat(code(GARDEN_WORLD_HQ_ORG, sp, MLBRDocLineICMS.CSOSN_102, OAK, 0)).isEqualTo("SP000102");
	}

	@Test
	void validityIncludesTheLastDayAndEndsAfterIt() {
		MLBRCBenefRule rule = rule(ALL_ORGS, sp, "40", 0, 0, "SP000001");
		rule.setValidTo(TimeUtil.getDay(2026, 3, 31));
		rule.saveEx();

		assertThat(find(GARDEN_WORLD_HQ_ORG, sp, "40", OAK, 0, Timestamp.valueOf("2026-03-31 15:30:00")))
				.as("último dia da vigência, com hora").isNotNull();
		assertThat(find(GARDEN_WORLD_HQ_ORG, sp, "40", OAK, 0, TimeUtil.getDay(2026, 4, 1)))
				.as("depois do fim da vigência").isNull();
		assertThat(find(GARDEN_WORLD_HQ_ORG, sp, "40", OAK, 0, TimeUtil.getDay(2025, 12, 31)))
				.as("antes do início da vigência").isNull();
	}

	// ------------------------------------------------------- as validações

	@Test
	void taxStatusWithoutBenefitIsRejected() {
		// Rejeição 928: cBenef informado para CST sem benefício fiscal
		assertThat(rule(ALL_ORGS, sp, MLBRDocLineICMS.CST_ICMS_00, 0, 0, "SP000001").save()).isFalse();
		assertThat(rule(ALL_ORGS, sp, MLBRDocLineICMS.CST_ICMS_60, 0, 0, "SP000001").save()).isFalse();
	}

	@Test
	void productAndNcmTogetherAreRejected() {
		assertThat(rule(ALL_ORGS, sp, "40", ELM, ncm, "SP000001").save()).isFalse();
	}

	@Test
	void codeOutOfLayoutOrMissingIsRejected() {
		assertThat(rule(ALL_ORGS, sp, "40", 0, 0, "SP1").save()).as("fora do leiaute").isFalse();
		assertThat(rule(ALL_ORGS, sp, "40", 0, 0, " ").save()).as("sem código e sem Não Informar").isFalse();
	}

	@Test
	void omittedRuleKeepsNoCode() {
		MLBRCBenefRule rule = rule(ALL_ORGS, sp, "40", 0, 0, "SP000001");
		rule.setLBR_IsOmitCBenef(true);
		rule.saveEx();

		assertThat(rule.getLBR_CBenef()).isNull();
	}

	@Test
	void ruleKeepsOnlyTheTaxStatusOfItsRegime() {
		MLBRCBenefRule rule = rule(ALL_ORGS, sp, MLBRDocLineICMS.CSOSN_102, 0, 0, "SP000001");
		rule.setLBR_ICMS_TaxStatusTN("40");
		rule.saveEx();

		assertThat(rule.getLBR_ICMS_TaxStatusTN()).as("CST da Tributação Normal numa regra do Simples").isNull();
		assertThat(rule.getLBR_ICMS_TaxStatusSN()).isEqualTo(MLBRDocLineICMS.CSOSN_102);
	}

	@Test
	void overlappingRuleIsRejectedUntilThePreviousOneIsClosed() {
		MLBRCBenefRule previous = rule(ALL_ORGS, sp, "40", ELM, 0, "SP000001");
		previous.saveEx();

		MLBRCBenefRule next = rule(ALL_ORGS, sp, "40", ELM, 0, "SP000002");
		next.setValidFrom(TimeUtil.getDay(2026, 6, 1));
		assertThat(next.save()).as("vigência em aberto da regra anterior").isFalse();

		previous.setValidTo(TimeUtil.getDay(2026, 5, 31));
		previous.saveEx();
		assertThat(next.save()).as("regra anterior encerrada no dia anterior").isTrue();
		assertThat(code(GARDEN_WORLD_HQ_ORG, sp, "40", ELM, 0)).isEqualTo("SP000002");
	}

	// ------------------------------------------- na linha de ICMS (updateCBenef)

	@Test
	void icmsLineUsesTheEmitterRegionRuleBeforeTheProductCode() {
		int emitterRegion = emitterRegion(GARDEN_WORLD_HQ_ORG);
		MProduct product = new MProduct(Env.getCtx(), ELM, getTrxName());
		product.set_ValueOfColumn("LBR_CBenef", "PR810001");

		MLBRDocLineICMS icms = icmsLine("40");

		icms.updateCBenef(null, product, DOC_DATE);
		assertThat(icms.get_ValueAsString("LBR_CBenef"))
				.as("sem regra para a UF do emitente, vale o código do produto, como antes")
				.isEqualTo("PR810001");

		rule(ALL_ORGS, ms == emitterRegion ? sp : ms, "40", 0, 0, "MS000001").saveEx();
		icms.updateCBenef(null, product, DOC_DATE);
		assertThat(icms.get_ValueAsString("LBR_CBenef"))
				.as("regra de outra UF não vale para este emitente")
				.isEqualTo("PR810001");

		rule(ALL_ORGS, emitterRegion, "40", 0, 0, "SP000001").saveEx();
		icms.updateCBenef(null, product, DOC_DATE);
		assertThat(icms.get_ValueAsString("LBR_CBenef")).isEqualTo("SP000001");
	}

	@Test
	void icmsLineOmitsTheGlobalCodeWhenTheRuleSaysSo() {
		int emitterRegion = emitterRegion(GARDEN_WORLD_HQ_ORG);
		MProduct product = new MProduct(Env.getCtx(), ELM, getTrxName());
		product.set_ValueOfColumn("LBR_CBenef", "PR810001");

		MLBRCBenefRule omit = rule(ALL_ORGS, emitterRegion, "40", ELM, 0, null);
		omit.setLBR_IsOmitCBenef(true);
		omit.saveEx();

		MLBRDocLineICMS icms = icmsLine("40");
		icms.updateCBenef(null, product, DOC_DATE);

		assertThat(icms.get_ValueAsString("LBR_CBenef")).isEmpty();
	}

	// ------------------------------------------------------------ apoio

	private MLBRCBenefRule rule(int AD_Org_ID, int C_Region_ID, String taxStatus, int M_Product_ID,
			int LBR_NCM_ID, String cBenef) {
		MLBRCBenefRule rule = new MLBRCBenefRule(Env.getCtx(), 0, getTrxName());
		rule.setAD_Org_ID(AD_Org_ID);
		rule.setC_Region_ID(C_Region_ID);
		if (taxStatus.length() == 3) {
			rule.setLBR_ICMSRegime(MLBRCBenefRule.LBR_ICMSREGIME_SimpleTaxation);
			rule.setLBR_ICMS_TaxStatusSN(taxStatus);
		} else {
			rule.setLBR_ICMSRegime(MLBRCBenefRule.LBR_ICMSREGIME_DefaultTaxation);
			rule.setLBR_ICMS_TaxStatusTN(taxStatus);
		}
		if (M_Product_ID > 0)
			rule.setM_Product_ID(M_Product_ID);
		if (LBR_NCM_ID > 0)
			rule.setLBR_NCM_ID(LBR_NCM_ID);
		rule.setLBR_CBenef(cBenef);
		rule.setValidFrom(YEAR_START);
		return rule;
	}

	private MLBRCBenefRule find(int AD_Org_ID, int C_Region_ID, String taxStatus, int M_Product_ID,
			int LBR_NCM_ID, Timestamp date) {
		return MLBRCBenefRule.get(Env.getCtx(), Env.getAD_Client_ID(Env.getCtx()), AD_Org_ID, C_Region_ID,
				taxStatus, M_Product_ID, LBR_NCM_ID, date, getTrxName());
	}

	private String code(int AD_Org_ID, int C_Region_ID, String taxStatus, int M_Product_ID, int LBR_NCM_ID) {
		MLBRCBenefRule rule = find(AD_Org_ID, C_Region_ID, taxStatus, M_Product_ID, LBR_NCM_ID, DOC_DATE);
		assertThat(rule).as("regra vigente").isNotNull();
		return rule.getLBR_CBenef();
	}

	private MLBRDocLineICMS icmsLine(String taxStatus) {
		MLBRDocLineICMS icms = new MLBRDocLineICMS(Env.getCtx(), 0, getTrxName());
		icms.setAD_Org_ID(GARDEN_WORLD_HQ_ORG);
		icms.setLBR_ICMSRegime(MLBRDocLineICMS.LBR_ICMSREGIME_DefaultTaxation);
		icms.setLBR_ICMS_TaxStatusTN(taxStatus);
		return icms;
	}

	private int emitterRegion(int AD_Org_ID) {
		MOrgInfo orgInfo = MOrgInfo.get(Env.getCtx(), AD_Org_ID, getTrxName());
		int region = orgInfo.getC_Location_ID() > 0
				? MLocation.get(Env.getCtx(), orgInfo.getC_Location_ID(), getTrxName()).getC_Region_ID() : 0;
		assertThat(region).as("a organização precisa de endereço com UF").isPositive();
		return region;
	}

	private int region(String name) {
		return new Query(Env.getCtx(), MRegion.Table_Name, "C_Country_ID=? AND Name=?", getTrxName())
				.setParameters(AdempiereLBR.BRASIL, name).firstIdOnly();
	}
}
