package org.idempierelbr.base.test;

import static org.assertj.core.api.Assertions.assertThat;

import org.idempierelbr.base.model.MLBRCBenefRule;
import org.idempierelbr.base.model.MLBRDocLineICMS;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.ValueSource;

/**
 * Trava a ordem de busca do Código de Benefício Fiscal (cBenef) e o formato aceito
 * na regra por UF. Lógica pura: sem banco, sem rede, sem container iDempiere.
 * A escolha da regra no banco (produto, NCM, CST, organização, vigência) fica em
 * {@link CBenefRuleIT}.
 */
class CBenefRuleTest {

	private static final String RULE = "SP011030";
	private static final String PRODUCT = "PR810001";
	private static final String TAX_STATUS = "RJ810001";

	@Test
	void withoutRuleProductOverridesTaxStatus() {
		assertThat(MLBRDocLineICMS.chooseCBenef(false, null, PRODUCT, TAX_STATUS))
				.as("sem regra por UF, o produto vence o CST, como antes da regra existir")
				.isEqualTo(PRODUCT);
	}

	@Test
	void withoutRuleAndWithoutProductCodeFallsBackToTaxStatus() {
		assertThat(MLBRDocLineICMS.chooseCBenef(false, null, null, TAX_STATUS)).isEqualTo(TAX_STATUS);
		assertThat(MLBRDocLineICMS.chooseCBenef(false, null, "  ", TAX_STATUS))
				.as("código em branco no produto não conta")
				.isEqualTo(TAX_STATUS);
	}

	@Test
	void withoutAnyCodeReturnsNull() {
		assertThat(MLBRDocLineICMS.chooseCBenef(false, null, null, null)).isNull();
		assertThat(MLBRDocLineICMS.chooseCBenef(false, null, "", " ")).isNull();
	}

	@Test
	void ruleOverridesProductAndTaxStatus() {
		assertThat(MLBRDocLineICMS.chooseCBenef(true, RULE, PRODUCT, TAX_STATUS)).isEqualTo(RULE);
	}

	@Test
	void ruleWithoutCodeSuppressesProductAndTaxStatus() {
		// Regra marcada como Não Informar cBenef: o item sai sem código nesta UF,
		// mesmo com código global no produto ou no CST
		assertThat(MLBRDocLineICMS.chooseCBenef(true, null, PRODUCT, TAX_STATUS)).isNull();
	}

	@Test
	void trimsTheChosenCode() {
		assertThat(MLBRDocLineICMS.chooseCBenef(false, null, " " + PRODUCT + " ", null)).isEqualTo(PRODUCT);
	}

	@ParameterizedTest
	@ValueSource(strings = { "SP011030", "PR12345678", "SEM CBENEF", "sc850001" })
	void acceptsLayoutFormat(String cBenef) {
		// leiauteNFe_v4.00.xsd, campo cBenef: 8 ou 10 caracteres sem espaço, ou SEM CBENEF
		assertThat(MLBRCBenefRule.isValidCBenef(cBenef)).isTrue();
	}

	@ParameterizedTest
	@ValueSource(strings = { "", "SP01103", "SP0110300", "SP01103000X", "SP 11030", "sem cbenef", "SEM  CBENEF" })
	void rejectsOutOfLayoutFormat(String cBenef) {
		assertThat(MLBRCBenefRule.isValidCBenef(cBenef)).isFalse();
	}

	@Test
	void rejectsNull() {
		assertThat(MLBRCBenefRule.isValidCBenef(null)).isFalse();
	}
}
