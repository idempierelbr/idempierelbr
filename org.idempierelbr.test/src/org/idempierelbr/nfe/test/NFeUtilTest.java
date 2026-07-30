package org.idempierelbr.nfe.test;

import static org.assertj.core.api.Assertions.assertThat;

import org.idempierelbr.nfe.util.NFeUtil;
import org.junit.jupiter.api.Test;

/**
 * Pure logic tests for {@link NFeUtil}.
 * No DB, no network, no iDempiere container required.
 */
class NFeUtilTest {

	@Test
	void autorizadorFromTpEmis_returnsAN_whenTpEmisIs6() {
		assertThat(NFeUtil.autorizadorFromTpEmis("<NFe><tpEmis>6</tpEmis></NFe>")).isEqualTo("AN");
	}

	@Test
	void autorizadorFromTpEmis_returnsRS_whenTpEmisIs7() {
		assertThat(NFeUtil.autorizadorFromTpEmis("<NFe><tpEmis>7</tpEmis></NFe>")).isEqualTo("RS");
	}

	@Test
	void autorizadorFromTpEmis_returnsNull_whenTpEmisIs1() {
		assertThat(NFeUtil.autorizadorFromTpEmis("<NFe><tpEmis>1</tpEmis></NFe>")).isNull();
	}

	@Test
	void autorizadorFromTpEmis_returnsNull_whenInputIsNull() {
		assertThat(NFeUtil.autorizadorFromTpEmis(null)).isNull();
	}

	@Test
	void autorizadorFromTpEmis_returnsNull_whenTpEmisTagAbsent() {
		assertThat(NFeUtil.autorizadorFromTpEmis("<NFe></NFe>")).isNull();
	}

	@Test
	void autorizadorFromTpEmis_returnsNull_whenTpEmisIsUnknownValue() {
		assertThat(NFeUtil.autorizadorFromTpEmis("<NFe><tpEmis>9</tpEmis></NFe>")).isNull();
	}
}
