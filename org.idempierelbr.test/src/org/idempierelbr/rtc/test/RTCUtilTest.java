package org.idempierelbr.rtc.test;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatThrownBy;

import java.sql.Timestamp;
import java.time.Instant;
import java.time.LocalDateTime;

import org.idempierelbr.rtc.util.RTCUtil;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.CsvSource;
import org.junit.jupiter.params.provider.ValueSource;

class RTCUtilTest {

	@ParameterizedTest
	@CsvSource({
		"12345678,12345678",
		"12.345.678,12345678",
		"12345678000195,12345678",
		"12.345.678/0001-95,12345678"
	})
	void cnpjBase_acceptsRootOrFullCNPJ(String input, String expected) {
		assertThat(RTCUtil.toCNPJBase(input)).isEqualTo(expected);
	}

	@ParameterizedTest
	@ValueSource(strings = { "1234567", "123456789", "", "abc" })
	void cnpjBase_rejectsAnythingElse(String input) {
		assertThat(RTCUtil.toCNPJBase(input)).isNull();
	}

	@ParameterizedTest
	@ValueSource(strings = { "01/2026", "12/2026", "06/2027" })
	void pa_validFormat(String pa) {
		assertThat(RTCUtil.isValidPA(pa)).isTrue();
	}

	@ParameterizedTest
	@ValueSource(strings = { "13/2026", "00/2026", "6/2026", "2026-06", "06/26" })
	void pa_invalidFormat(String pa) {
		assertThat(RTCUtil.isValidPA(pa)).isFalse();
	}

	@Test
	void dateTime_utcWithMicroseconds() {
		assertThat(RTCUtil.parseDateTime("2026-08-13T21:19:16.190202Z").toInstant())
			.isEqualTo(Instant.parse("2026-08-13T21:19:16.190202Z"));
	}

	@Test
	void dateTime_offsetWithNanoseconds() {
		// formato do urlAssinadaExpiraEm no exemplo da documentação
		assertThat(RTCUtil.parseDateTime("2026-09-10T11:07:38.377213789-03:00").toInstant())
			.isEqualTo(Instant.parse("2026-09-10T14:07:38.377213789Z"));
	}

	@Test
	void dateTime_withoutOffsetIsBrasilia() {
		assertThat(RTCUtil.parseDateTime("2026-08-01T00:00:00").toInstant())
			.isEqualTo(Instant.parse("2026-08-01T03:00:00Z"));
	}

	@Test
	void dateTime_emptyIsNull_andGarbageIsRefused() {
		assertThat(RTCUtil.parseDateTime(null)).isNull();
		assertThat(RTCUtil.parseDateTime(" ")).isNull();
		assertThatThrownBy(() -> RTCUtil.parseDateTime("ontem")).isInstanceOf(IllegalArgumentException.class);
		assertThat(RTCUtil.parseDateTimeOrNull("ontem")).isNull();
	}

	@Test
	void date_isTheBrazilianCalendarDayAtMidnight() {
		// 23h30 de Brasília é 02h30Z do dia seguinte: a arrecadação foi no dia 27
		Timestamp date = RTCUtil.toDate(RTCUtil.parseDateTime("2026-08-28T02:30:00Z"));

		assertThat(date.toLocalDateTime()).isEqualTo(LocalDateTime.of(2026, 8, 27, 0, 0));
		assertThat(RTCUtil.toDate(null)).isNull();
	}

	@Test
	void seconds_comeAsText() {
		assertThat(RTCUtil.parseSeconds("120")).isEqualTo(120);
		assertThat(RTCUtil.parseSeconds(null)).isZero();
		assertThat(RTCUtil.parseSeconds("dois minutos")).isZero();
	}

	@Test
	void secretEquals() {
		assertThat(RTCUtil.secretEquals("a1b2c3d4e5f6a7b8", "a1b2c3d4e5f6a7b8")).isTrue();
		assertThat(RTCUtil.secretEquals("a1b2c3d4e5f6a7b8", "a1b2c3d4e5f6a7b9")).isFalse();
		assertThat(RTCUtil.secretEquals("a1b2c3d4e5f6a7b8", "a1b2")).isFalse();
		assertThat(RTCUtil.secretEquals(null, "x")).isFalse();
	}

	@Test
	void hostOf_dropsPathAndSignature() {
		String signed = "https://storagegw.estaleiro.serpro.gov.br/apuracao/arquivo.json?X-Amz-Signature=abc";

		assertThat(RTCUtil.hostOf(signed)).isEqualTo("storagegw.estaleiro.serpro.gov.br");
		assertThat(RTCUtil.hostOf("não é url")).isEmpty();
	}
}
