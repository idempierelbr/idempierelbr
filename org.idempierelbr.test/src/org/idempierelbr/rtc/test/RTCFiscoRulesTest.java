package org.idempierelbr.rtc.test;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatThrownBy;

import java.sql.Timestamp;
import java.time.Instant;
import java.time.temporal.ChronoUnit;

import org.adempiere.exceptions.AdempiereException;
import org.idempierelbr.rtc.service.RTCFiscoImportService;
import org.idempierelbr.rtc.service.RTCFiscoPollService;
import org.idempierelbr.rtc.service.RTCFiscoRequestService;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.ValueSource;

/**
 * Regras de decisão da integração com a apuração do fisco que não dependem de
 * banco: sobrescrita na reimportação, janela incremental, prazo de
 * processamento e serviços liberados.
 */
class RTCFiscoRulesTest {

	private static final Timestamp NOW = Timestamp.from(Instant.parse("2026-09-24T12:00:00Z"));

	// ===== Idempotência da importação =====

	@Test
	void newDocumentIsAlwaysWritten() {
		assertThat(RTCFiscoImportService.shouldOverwrite(null, NOW)).isTrue();
		assertThat(RTCFiscoImportService.shouldOverwrite(null, null)).isTrue();
	}

	@Test
	void sameFileTwiceChangesNothing() {
		assertThat(RTCFiscoImportService.shouldOverwrite(NOW, new Timestamp(NOW.getTime()))).isFalse();
	}

	@Test
	void olderUpdateNeverOverwritesNewer() {
		assertThat(RTCFiscoImportService.shouldOverwrite(NOW, minusMinutes(1))).isFalse();
	}

	@Test
	void newerUpdateOverwrites() {
		assertThat(RTCFiscoImportService.shouldOverwrite(minusMinutes(1), NOW)).isTrue();
	}

	@Test
	void updateWithoutTimestampDoesNotOverwrite() {
		assertThat(RTCFiscoImportService.shouldOverwrite(NOW, null)).isFalse();
	}

	// ===== Janela incremental de 8 dias =====

	@Test
	void firstImportExplainsWhatComesBack() {
		assertThat(RTCFiscoRequestService.getWindowWarning(null, NOW, 6, "débitos"))
			.contains("Primeira importação").contains("1º dia do mês corrente");
	}

	@Test
	void recentImportHasNoWarning() {
		assertThat(RTCFiscoRequestService.getWindowWarning(minusDays(5), NOW, 6, "débitos")).isNull();
	}

	@Test
	void importNearTheWindowWarns() {
		assertThat(RTCFiscoRequestService.getWindowWarning(minusDays(6), NOW, 6, "débitos"))
			.contains("6 dias").doesNotContain("Atenção");
	}

	@Test
	void importPastTheWindowWarnsOfLostChanges() {
		assertThat(RTCFiscoRequestService.getWindowWarning(minusDays(9), NOW, 6, "créditos"))
			.startsWith("Atenção").contains("9 dias").contains("créditos");
	}

	// ===== Prazo de processamento da Receita (4 h + folga) =====

	@Test
	void withinFourHoursAndMarginIsNotOverdue() {
		assertThat(RTCFiscoPollService.isOverdue(minusMinutes(270), NOW)).isFalse();
	}

	@Test
	void pastFourHoursAndMarginIsOverdue() {
		assertThat(RTCFiscoPollService.isOverdue(minusMinutes(271), NOW)).isTrue();
		assertThat(RTCFiscoPollService.isOverdue(null, NOW)).isFalse();
	}

	// ===== Serviços liberados =====

	@ParameterizedTest
	@ValueSource(strings = { "DEB", "CRE", "PAG", "REC" })
	void theFourServicesCanBeRequested(String service) {
		RTCFiscoRequestService.checkImportable(service);
	}

	@ParameterizedTest
	@ValueSource(strings = { "RAD", "PCONT", "XYZ" })
	void servicesWithoutImportAreNotRequested(String service) {
		// abrir gastaria uma das 4 chamadas do dia com um arquivo sem destino
		assertThatThrownBy(() -> RTCFiscoRequestService.checkImportable(service))
			.isInstanceOf(AdempiereException.class);
	}

	private static Timestamp minusMinutes(long minutes) {
		return Timestamp.from(NOW.toInstant().minus(minutes, ChronoUnit.MINUTES));
	}

	private static Timestamp minusDays(long days) {
		return Timestamp.from(NOW.toInstant().minus(days, ChronoUnit.DAYS));
	}
}
