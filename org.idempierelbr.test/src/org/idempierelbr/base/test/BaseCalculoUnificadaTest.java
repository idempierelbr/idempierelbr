package org.idempierelbr.base.test;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatThrownBy;

import java.math.BigDecimal;
import java.util.EnumMap;
import java.util.Map;

import org.idempierelbr.base.ibscbs.BaseCalculoUnificada;
import org.idempierelbr.base.ibscbs.BaseCalculoUnificada.Elemento;
import org.idempierelbr.base.ibscbs.BaseCalculoUnificada.Natureza;
import org.junit.jupiter.api.Test;

/**
 * Base unificada do IBS/CBS. Os casos são os do {@code BaseCalculoUnificadaServiceTest}
 * da Calculadora RTC da Receita (1.7.2), mais as vigências por ano do
 * {@code ElementoBaseCalculo}.
 */
class BaseCalculoUnificadaTest {

	@Test
	void nfe() {
		Map<Elemento, BigDecimal> v = valores();
		v.put(Elemento.V_PROD, new BigDecimal("1000"));
		v.put(Elemento.V_FRETE, new BigDecimal("50"));
		v.put(Elemento.V_SEG, new BigDecimal("20"));
		v.put(Elemento.V_DESC, new BigDecimal("40"));
		v.put(Elemento.V_ICMS, new BigDecimal("180"));

		assertThat(base(v, 2026, Natureza.BEM, 55)).isEqualByComparingTo("850");
	}

	@Test
	void nfceIgnoraIIeDIFAL() {
		Map<Elemento, BigDecimal> v = valores();
		v.put(Elemento.V_PROD, new BigDecimal("1000"));
		v.put(Elemento.V_FRETE, new BigDecimal("50"));
		v.put(Elemento.V_II, new BigDecimal("150"));
		v.put(Elemento.V_DESC, new BigDecimal("40"));
		v.put(Elemento.V_ICMS, new BigDecimal("180"));
		v.put(Elemento.V_ICMS_UF_DEST, new BigDecimal("20"));

		assertThat(base(v, 2026, Natureza.BEM, 65))
				.as("vII e vICMSUFDest só valem na NF-e")
				.isEqualByComparingTo("830");
	}

	@Test
	void issqnSoSaiDaBaseDeServico() {
		Map<Elemento, BigDecimal> v = valores();
		v.put(Elemento.V_PROD, new BigDecimal("1000"));
		v.put(Elemento.V_ISSQN, new BigDecimal("20"));

		assertThat(base(v, 2026, Natureza.BEM, 55)).isEqualByComparingTo("1000");
		assertThat(base(v, 2026, Natureza.SERVICO, 55)).isEqualByComparingTo("980");

		BaseCalculoUnificada.Resultado r = BaseCalculoUnificada.calcular(v, 2026, Natureza.BEM, 55);
		assertThat(r.getAvisos()).as("valor ignorado gera aviso").isNotEmpty();
		assertThat(r.getAvisos().get(0)).contains("vISSQN");
	}

	@Test
	void nulosValemZero() {
		assertThat(base(valores(), 2026, Natureza.BEM, 55)).isEqualByComparingTo("0");
		assertThat(base(null, 2026, Natureza.BEM, 55)).isEqualByComparingTo("0");
	}

	@Test
	void baseNegativaNaoEhTruncadaAqui() {
		Map<Elemento, BigDecimal> v = valores();
		v.put(Elemento.V_PROD, new BigDecimal("100"));
		v.put(Elemento.V_DESC, new BigDecimal("200"));

		assertThat(base(v, 2026, Natureza.BEM, 55))
				.as("quem zera a base negativa é o cálculo do tributo")
				.isEqualByComparingTo("-100");
	}

	@Test
	void pisCofinsSoSaemDaBaseEm2026() {
		Map<Elemento, BigDecimal> v = valores();
		v.put(Elemento.V_PROD, new BigDecimal("1000"));
		v.put(Elemento.V_PIS, new BigDecimal("16.50"));
		v.put(Elemento.V_COFINS, new BigDecimal("76"));
		v.put(Elemento.V_ICMS, new BigDecimal("180"));

		assertThat(base(v, 2026, Natureza.BEM, 55)).isEqualByComparingTo("727.50");
		assertThat(base(v, 2027, Natureza.BEM, 55))
				.as("de 2027 em diante só o ICMS sai da base")
				.isEqualByComparingTo("820");
		assertThat(base(v, 2033, Natureza.BEM, 55))
				.as("em 2033 o ICMS deixa de existir")
				.isEqualByComparingTo("1000");
	}

	@Test
	void isEntraNaBaseAPartirDe2027() {
		Map<Elemento, BigDecimal> v = valores();
		v.put(Elemento.V_PROD, new BigDecimal("200"));
		v.put(Elemento.V_IS, new BigDecimal("47.30"));

		assertThat(base(v, 2026, Natureza.BEM, 55)).isEqualByComparingTo("200");
		assertThat(base(v, 2027, Natureza.BEM, 55)).isEqualByComparingTo("247.30");
	}

	@Test
	void modeloInvalido() {
		assertThatThrownBy(() -> BaseCalculoUnificada.calcular(valores(), 2026, Natureza.BEM, 57))
				.isInstanceOf(IllegalArgumentException.class)
				.hasMessageContaining("55");
	}

	private static Map<Elemento, BigDecimal> valores() {
		return new EnumMap<>(Elemento.class);
	}

	private static BigDecimal base(Map<Elemento, BigDecimal> v, int ano, Natureza natureza, int modelo) {
		return BaseCalculoUnificada.calcular(v, ano, natureza, modelo).getBase();
	}
}
