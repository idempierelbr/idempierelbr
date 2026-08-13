package org.idempierelbr.base.test;

import static org.assertj.core.api.Assertions.assertThat;

import org.idempierelbr.base.model.NFeDebitCreditType;
import org.idempierelbr.base.model.NFeDebitCreditType.NItemRule;
import org.idempierelbr.base.model.NFeDebitCreditType.RefRequirement;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.CsvSource;
import org.junit.jupiter.params.provider.ValueSource;

/**
 * Trava as regras da NT 2025.002-RTC codificadas em {@link NFeDebitCreditType}.
 * Lógica pura: sem banco, sem rede, sem container iDempiere.
 *
 * <p>Cada teste referencia a regra de validação e a rejeição correspondentes, para
 * que a revisão de uma nova versão da Nota Técnica seja rastreável.
 */
class NFeDebitCreditTypeTest {

	// ===== Referenciamento (VC02-10/1038, B25-30/254, B25-65/1027) =====

	@ParameterizedTest
	@CsvSource({ "6,03", "6,04", "5,01", "5,03", "5,04" })
	void referenceIsRequired_forTypesTheNTDemands(String finNFe, String code) {
		assertThat(NFeDebitCreditType.get(finNFe, code).isReferenceRequired()).isTrue();
	}

	@ParameterizedTest
	@ValueSource(strings = { "01", "02", "05", "06", "07", "08" })
	void referenceIsNotRequired_forOriginatingDebitTypes(String code) {
		NFeDebitCreditType type = NFeDebitCreditType.get(NFeDebitCreditType.FINNFE_DEBIT, code);

		assertThat(type.isReferenceRequired()).isFalse();
		assertThat(type.isReferenceForbidden()).isFalse();
	}

	@Test
	void advancePaymentDoesNotReferenceAnyDocument() {
		// 06-Pagamento antecipado é o documento iniciador: é referenciado pela NF-e de
		// fornecimento (gPagAntecipado), e não o contrário
		assertThat(NFeDebitCreditType.DEBIT_ADVANCE_PAYMENT.getRefRequirement())
				.isEqualTo(RefRequirement.NOT_REQUIRED);
	}

	@Test
	void zfmPresumedCreditForbidsReference() {
		// B25-65, rejeição 1027
		assertThat(NFeDebitCreditType.CREDIT_ZFM_PRESUMED.isReferenceForbidden()).isTrue();
	}

	@Test
	void creditNeverReferencesAtItemLevel() {
		// VC02-07, rejeição 1042
		for (NFeDebitCreditType type : NFeDebitCreditType.values()) {
			if (!type.isDebit())
				assertThat(type.isItemLevelReference()).as(type.toString()).isFalse();
		}
	}

	// ===== nItem do DFeReferenciado (VC03-10/1039, VC03-20/1048) =====

	@Test
	void interestDebitRequiresNItem() {
		assertThat(NFeDebitCreditType.DEBIT_INTEREST.isItemLevelReference()).isTrue();
		assertThat(NFeDebitCreditType.DEBIT_INTEREST.getNItemRule()).isEqualTo(NItemRule.REQUIRED);
	}

	@Test
	void unprocessedNFDebitForbidsNItem() {
		assertThat(NFeDebitCreditType.DEBIT_UNPROCESSED_NF.isItemLevelReference()).isTrue();
		assertThat(NFeDebitCreditType.DEBIT_UNPROCESSED_NF.getNItemRule()).isEqualTo(NItemRule.FORBIDDEN);
	}

	// ===== Direção da operação (B25-110/1161, B25-120/1162) =====

	@Test
	void debitIsAlwaysOutgoingAndCreditAlwaysIncoming() {
		for (NFeDebitCreditType type : NFeDebitCreditType.values())
			assertThat(type.getOperationType()).as(type.toString()).isEqualTo(type.isDebit() ? "1" : "0");
	}

	// ===== Tributos do regime antigo (B25-80/1001) =====

	@Test
	void onlyReturnCreditAllowsLegacyTaxes() {
		for (NFeDebitCreditType type : NFeDebitCreditType.values()) {
			assertThat(type.isLegacyTaxesAllowed()).as(type.toString())
					.isEqualTo(type == NFeDebitCreditType.CREDIT_RETURN);
		}
	}

	// ===== Vigência (B25.2-30/1145) =====

	@Test
	void zfmPresumedCreditIsValidOnlyFrom2029() {
		assertThat(NFeDebitCreditType.CREDIT_ZFM_PRESUMED.getValidFromYear()).isEqualTo(2029);
	}

	@Test
	void otherTypesHaveNoStartYearRestriction() {
		for (NFeDebitCreditType type : NFeDebitCreditType.values()) {
			if (type != NFeDebitCreditType.CREDIT_ZFM_PRESUMED)
				assertThat(type.getValidFromYear()).as(type.toString()).isZero();
		}
	}

	// ===== Modelo referenciável (B25-100/1003) =====

	@Test
	void creditReferencesModel55Only_exceptReturnWhichAlsoAcceptsNFCe() {
		assertThat(NFeDebitCreditType.CREDIT_INTEREST.isRefModelAllowed("55")).isTrue();
		assertThat(NFeDebitCreditType.CREDIT_INTEREST.isRefModelAllowed("65")).isFalse();

		assertThat(NFeDebitCreditType.CREDIT_RETURN.isRefModelAllowed("55")).isTrue();
		assertThat(NFeDebitCreditType.CREDIT_RETURN.isRefModelAllowed("65")).isTrue();
	}

	@Test
	void debitHasNoRefModelRestriction() {
		// A restrição da B25-100 é exclusiva da nota de crédito
		assertThat(NFeDebitCreditType.DEBIT_INTEREST.isRefModelAllowed("65")).isTrue();
	}

	// ===== Utilitários =====

	@Test
	void getModelOfKey_extractsPositions21And22() {
		// cUF(2) + AAMM(4) + CNPJ(14) = 20 caracteres antes do modelo
		String key = "35" + "2601" + "12345678000199" + "55" + "001" + "000000123" + "1" + "12345678" + "9";

		assertThat(key).hasSize(44);
		assertThat(NFeDebitCreditType.getModelOfKey(key)).isEqualTo("55");
	}

	@ParameterizedTest
	@ValueSource(strings = { "", "123", "   " })
	void getModelOfKey_returnsNull_whenKeyIsNotAValidAccessKey(String key) {
		assertThat(NFeDebitCreditType.getModelOfKey(key)).isNull();
	}

	@Test
	void getModelOfKey_returnsNull_whenKeyIsNull() {
		assertThat(NFeDebitCreditType.getModelOfKey(null)).isNull();
	}

	@Test
	void get_returnsNull_forCombinationsOutsideTheNT() {
		assertThat(NFeDebitCreditType.get("6", "09")).isNull();
		assertThat(NFeDebitCreditType.get("5", "06")).isNull();
		assertThat(NFeDebitCreditType.get("1", "01")).isNull();
		assertThat(NFeDebitCreditType.get(null, "01")).isNull();
		assertThat(NFeDebitCreditType.get("6", null)).isNull();
	}

	@Test
	void get_toleratesSurroundingWhitespace() {
		assertThat(NFeDebitCreditType.get(" 6 ", " 04 ")).isEqualTo(NFeDebitCreditType.DEBIT_INTEREST);
	}

	@Test
	void getOfDocType_returnsNull_whenThereIsNoDocType() {
		// DocType ausente ou sem as colunas de finalidade: o chamador cai no parâmetro
		assertThat(NFeDebitCreditType.getOfDocType(null)).isNull();
	}

	@Test
	void isDebitCredit_recognizesOnlyFinalities5And6() {
		assertThat(NFeDebitCreditType.isDebitCredit("5")).isTrue();
		assertThat(NFeDebitCreditType.isDebitCredit("6")).isTrue();
		assertThat(NFeDebitCreditType.isDebitCredit("1")).isFalse();
		assertThat(NFeDebitCreditType.isDebitCredit("4")).isFalse();
		assertThat(NFeDebitCreditType.isDebitCredit(null)).isFalse();
	}

	@Test
	void theNTDefinesEightDebitAndFiveCreditTypes() {
		long debits = 0;
		long credits = 0;

		for (NFeDebitCreditType type : NFeDebitCreditType.values()) {
			if (type.isDebit())
				debits++;
			else
				credits++;
		}

		assertThat(debits).isEqualTo(8);
		assertThat(credits).isEqualTo(5);
	}
}
