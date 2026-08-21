package org.idempierelbr.base.test;

import static org.assertj.core.api.Assertions.assertThat;

import org.idempierelbr.base.model.MLBRDocLineICMS;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.ValueSource;

/**
 * Trava quais CSTs comportam Código de Benefício Fiscal (cBenef), regra por trás da
 * Rejeição 928 - "Informado código de benefício fiscal para CST sem benefício fiscal".
 * Lógica pura: sem banco, sem rede, sem container iDempiere.
 */
class CBenefTaxStatusTest {

	@ParameterizedTest
	@ValueSource(strings = { "20", "30", "40", "41_1", "41_2", "50", "51", "70", "90_1", "90_2" })
	void desoneratedTaxStatusAcceptCBenef(String taxStatus) {
		assertThat(MLBRDocLineICMS.isCBenefApplicable(taxStatus)).isTrue();
	}

	@ParameterizedTest
	@ValueSource(strings = { "00", "10_1", "10_2", "60" })
	void fullyTaxedAndWithheldTaxStatusRejectCBenef(String taxStatus) {
		// 00 e 10 tributam integralmente; 60 já teve o ICMS recolhido por ST
		assertThat(MLBRDocLineICMS.isCBenefApplicable(taxStatus)).isFalse();
	}

	@Test
	void simplesNacionalRejectsCBenefOnlyWhenTaxWasWithheld() {
		// CSOSN 500 é o equivalente do CST 60 no Simples Nacional
		assertThat(MLBRDocLineICMS.isCBenefApplicable(MLBRDocLineICMS.CSOSN_500)).isFalse();
		assertThat(MLBRDocLineICMS.isCBenefApplicable(MLBRDocLineICMS.CSOSN_400)).isTrue();
		assertThat(MLBRDocLineICMS.isCBenefApplicable(MLBRDocLineICMS.CSOSN_900)).isTrue();
	}

	@Test
	void missingTaxStatusRejectsCBenef() {
		assertThat(MLBRDocLineICMS.isCBenefApplicable(null)).isFalse();
		assertThat(MLBRDocLineICMS.isCBenefApplicable("")).isFalse();
	}
}
