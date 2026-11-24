package org.idempierelbr.base.test;

import static org.assertj.core.api.Assertions.assertThat;

import java.math.BigDecimal;

import org.idempierelbr.base.ibscbs.IBSCBSCalculator;
import org.idempierelbr.base.ibscbs.IBSCBSCalculator.Entrada;
import org.idempierelbr.base.ibscbs.IBSCBSCalculator.Resultado;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.CsvSource;

/**
 * Motor de IBS/CBS contra os casos da Calculadora RTC da Receita
 * (calculadora-rtc-regime-regular 1.7.2). Os valores esperados são os dos testes da
 * própria calculadora: {@code testesintegracao/calculoscorretos/cbsibs/*} e
 * {@code testesintegracao/arredondamento/Teste_CasosFixosArredondamento}. Na revisão
 * periódica, confira se mudaram e acrescente os casos novos.
 * <p>
 * Lógica pura: as alíquotas e reduções entram como parâmetro, sem banco.
 */
class IBSCBSCalculatorTest {

	/**
	 * Colunas: caso da calculadora, base, alíquota, redução da alíquota, pAliq publicada,
	 * pAliqEfet publicada, valor devido.
	 */
	@ParameterizedTest(name = "{0}")
	@DisplayName("Casos da Calculadora RTC 1.7.2")
	@CsvSource({
		// cClassTrib 000001, 2026: CBS 0,9 %, IBS UF 0,1 %, IBS Mun 0 %
		"Teste_000001_1 CBS,       200.00,   0.90,    0,  0.90,    0.90,    1.80",
		"Teste_000001_1 IBSUF,     200.00,   0.10,    0,  0.10,    0.10,    0.20",
		"Teste_000001_1 IBSMun,    200.00,   0,       0,  0.00,    0.00,    0.00",
		// 2027/2028: CBS 8,4 %, IBS 0,05 % + 0,05 %
		"Teste_000001_5 CBS,       200.00,   8.40,    0,  8.40,    8.40,   16.80",
		"Teste_000001_5 IBSUF,     200.00,   0.05,    0,  0.05,    0.05,    0.10",
		"Teste_000001_2 CBS,       247.30,   8.40,    0,  8.40,    8.40,   20.77",
		"Teste_000001_2 IBSUF,     247.30,   0.05,    0,  0.05,    0.05,    0.12",
		"Teste_000001_6 CBS,       210.54,   8.40,    0,  8.40,    8.40,   17.69",
		"Teste_000001_6 IBSUF,     210.54,   0.05,    0,  0.05,    0.05,    0.11",
		// cClassTrib 200032 e 011002: redução de 60 %
		"Teste_200032_1 CBS,       200.00,   0.90,   60,  0.90,    0.36,    0.72",
		"Teste_200032_1 IBSUF,     200.00,   0.10,   60,  0.10,    0.04,    0.08",
		"Teste_200032_1 IBSMun,    200.00,   0,      60,  0.00,    0.00,    0.00",
		"Teste_200032_2 CBS,       247.30,   8.40,   60,  8.40,    3.36,    8.31",
		"Teste_200032_2 IBSUF,     247.30,   0.05,   60,  0.05,    0.02,    0.05",
		"Teste_011002_1 CBS,       200.00,   0.90,   60,  0.90,    0.36,    0.72",
		// cClassTrib 200002: redução de 100 %, a alíquota nominal continua publicada
		"Teste_200002_1 CBS,       200.00,   0.90,  100,  0.90,    0.00,    0.00",
		"Teste_200002_1 IBSUF,     200.00,   0.10,  100,  0.10,    0.00,    0.00",
		// Arredondamento: HALF_EVEN, um arredondamento por número publicado
		"T1 empate vai para o par CBS,   25.00,  0.90,  0,  0.90,  0.90,  0.22",
		"T1 empate vai para o par IBSUF, 25.00,  0.10,  0,  0.10,  0.10,  0.02",
		"T2 CBS,                         12.00,  8.80,  0,  8.80,  8.80,  1.06",
		"T2 IBSUF,                       12.00,  0.05,  0,  0.05,  0.05,  0.01",
		"T3 CBS,                         14.00,  0.90,  0,  0.90,  0.90,  0.13",
		"T3 IBSUF,                       14.00,  0.10,  0,  0.10,  0.10,  0.01",
		"T4 alíquota efetiva publicada CBS, 1000000.00, 8.8123, 60, 8.8123, 3.5249, 35249.00",
		"T4 alíquota efetiva publicada IBSUF, 1000000.00, 0.05, 60, 0.05,  0.02,  200.00",
		"issue_total_cbs item 1 CBS,   2315.79,  0.90,  0,  0.90,  0.90,  20.84",
		"issue_total_cbs item 2 CBS,    690.52,  0.90,  0,  0.90,  0.90,   6.21",
		"issue_total_cbs item 1 IBSUF, 2315.79,  0.10,  0,  0.10,  0.10,   2.32",
		"issue_total_cbs item 2 IBSUF,  690.52,  0.10,  0,  0.10,  0.10,   0.69",
	})
	void casosDaCalculadora(String caso, BigDecimal base, BigDecimal aliquota, BigDecimal reducao,
			BigDecimal pAliq, BigDecimal pAliqEfet, BigDecimal valor) {
		Resultado r = IBSCBSCalculator.calcular(new Entrada(base, aliquota, reducao, null, null));

		assertThat(r.getBaseCalculo()).as("vBC").isEqualByComparingTo(base);
		assertThat(r.getAliquota()).as("alíquota publicada").isEqualByComparingTo(pAliq);
		assertThat(r.getAliquotaEfetiva()).as("pAliqEfet").isEqualByComparingTo(pAliqEfet);
		assertThat(r.getValorDevido()).as("valor do tributo").isEqualByComparingTo(valor);
		assertThat(r.getValorDevido().scale()).as("valor com 2 casas").isEqualTo(2);
		assertThat(r.getPercentualDiferimento()).as("sem diferimento").isNull();
		assertThat(r.getValorDiferimento()).isNull();
	}

	@Test
	@DisplayName("Arredondamento HALF_EVEN, não HALF_UP: 25,00 × 0,9 % = 0,225 → 0,22")
	void halfEven() {
		Resultado r = IBSCBSCalculator.calcular(new Entrada(new BigDecimal("25.00"), new BigDecimal("0.9"),
				null, null, null));
		assertThat(r.getValorDevido()).as("o cálculo antigo, com HALF_UP, dava 0,23").isEqualByComparingTo("0.22");
	}

	@Test
	@DisplayName("Alíquota com mais de 4 casas é publicada com 4 e é ela que multiplica a base")
	void aliquotaPublicadaCom4Casas() {
		Resultado r = IBSCBSCalculator.calcular(new Entrada(new BigDecimal("1000000.00"),
				new BigDecimal("8.81235"), null, null, null));
		assertThat(r.getAliquota()).as("8,81235 → 8,8124 (HALF_EVEN, o 3 é ímpar)").isEqualByComparingTo("8.8124");
		assertThat(r.getValorDevido()).isEqualByComparingTo("88124.00");
	}

	@Test
	@DisplayName("Diferimento integral: o valor devido é zero e vDif é o valor calculado")
	void diferimentoIntegral() {
		Resultado r = IBSCBSCalculator.calcular(new Entrada(new BigDecimal("200.00"), new BigDecimal("0.9"),
				new BigDecimal("60"), null, new BigDecimal("100")));
		assertThat(r.getValorCalculado()).isEqualByComparingTo("0.72");
		assertThat(r.getPercentualDiferimento()).isEqualByComparingTo("100");
		assertThat(r.getValorDiferimento()).isEqualByComparingTo("0.72");
		assertThat(r.getValorDevido()).isEqualByComparingTo("0.00");
	}

	@Test
	@DisplayName("Diferimento parcial: vDif sai do valor exato e é descontado uma vez")
	void diferimentoParcial() {
		// 25,00 × 0,9 % = 0,225 exato → calculado 0,22; vDif = arred2(0,225 × 50 %) = arred2(0,1125) = 0,11
		Resultado r = IBSCBSCalculator.calcular(new Entrada(new BigDecimal("25.00"), new BigDecimal("0.9"),
				null, null, new BigDecimal("50")));
		assertThat(r.getValorCalculado()).isEqualByComparingTo("0.22");
		assertThat(r.getValorDiferimento()).isEqualByComparingTo("0.11");
		assertThat(r.getValorDevido()).as("0,22 − 0,11").isEqualByComparingTo("0.11");
	}

	@Test
	@DisplayName("Diferimento zero não gera o grupo gDif")
	void diferimentoZero() {
		Resultado r = IBSCBSCalculator.calcular(new Entrada(new BigDecimal("200.00"), new BigDecimal("0.9"),
				null, null, BigDecimal.ZERO));
		assertThat(r.getPercentualDiferimento()).isNull();
		assertThat(r.getValorDevido()).isEqualByComparingTo("1.80");
	}

	@Test
	@DisplayName("Redução de 50 % da base (tratamento 'Redução de base de cálculo')")
	void reducaoDaBase() {
		Resultado r = IBSCBSCalculator.calcular(new Entrada(new BigDecimal("200.00"), new BigDecimal("0.9"),
				null, new BigDecimal("50"), null));
		assertThat(r.getBaseCalculo()).isEqualByComparingTo("100.00");
		assertThat(r.getValorDevido()).isEqualByComparingTo("0.90");
	}

	@Test
	@DisplayName("Exclusão de 100 % da base: base zero, valor zero")
	void exclusaoDaBase() {
		Resultado r = IBSCBSCalculator.calcular(new Entrada(new BigDecimal("200.00"), new BigDecimal("0.9"),
				null, new BigDecimal("100"), null));
		assertThat(r.getBaseCalculo()).isEqualByComparingTo("0.00");
		assertThat(r.getValorDevido()).isEqualByComparingTo("0.00");
	}

	@Test
	@DisplayName("Base negativa (desconto maior que o valor) vira zero")
	void baseNegativa() {
		Resultado r = IBSCBSCalculator.calcular(new Entrada(new BigDecimal("-100"), new BigDecimal("0.9"),
				null, null, null));
		assertThat(r.getBaseCalculo()).isEqualByComparingTo("0.00");
		assertThat(r.getValorDevido()).isEqualByComparingTo("0.00");
	}

	@Test
	@DisplayName("Alíquota nula (sem alíquota ou alíquota zero) dá zero, sem erro")
	void aliquotaNula() {
		Resultado r = IBSCBSCalculator.calcular(new Entrada(new BigDecimal("200.00"), null, null, null, null));
		assertThat(r.getAliquota()).isEqualByComparingTo("0");
		assertThat(r.getValorDevido()).isEqualByComparingTo("0.00");
	}

	/**
	 * Tributação regular (grupo gTribRegular): cClassTrib 550001 (suspensão) com a classificação
	 * regular informada. Colunas: caso da calculadora, base, alíquota e redução da cClassTrib
	 * regular, pAliqEfetReg e vTribReg esperados. O grupo principal sai sempre zerado e sem gRed.
	 */
	@ParameterizedTest(name = "{0}")
	@DisplayName("Tributação regular: casos da Calculadora RTC 1.7.2")
	@CsvSource({
		// regular 000/000001, 2026 (CBS 0,9 %, IBS UF 0,1 %, IBS Mun 0 %)
		"Teste_000001_3 CBS,       200.00,  0.90,    0,  0.90,   1.80",
		"Teste_000001_3 IBSUF,     200.00,  0.10,    0,  0.10,   0.20",
		"Teste_000001_3 IBSMun,    200.00,  0,       0,  0.00,   0.00",
		// regular 000/000001, 2027 (base 247,30: 200 + IS 47,30)
		"Teste_000001_4 CBS,       247.30,  8.40,    0,  8.40,  20.77",
		"Teste_000001_4 IBSUF,     247.30,  0.05,    0,  0.05,   0.12",
		"Teste_000001_4 IBSMun,    247.30,  0.05,    0,  0.05,   0.12",
		// regular 200/200002: redução de 100 %
		"Teste_200002_3 CBS,       200.00,  0.90,  100,  0.00,   0.00",
		"Teste_200002_3 IBSUF,     200.00,  0.10,  100,  0.00,   0.00",
		// regular 200/200032: redução de 60 %
		"Teste_200032_3 CBS,       200.00,  0.90,   60,  0.36,   0.72",
		"Teste_200032_3 IBSUF,     200.00,  0.10,   60,  0.04,   0.08",
		"Teste_200032_3 IBSMun,    200.00,  0,      60,  0.00,   0.00",
		"Teste_200032_4 CBS,       247.30,  8.40,   60,  3.36,   8.31",
		"Teste_200032_4 IBSUF,     247.30,  0.05,   60,  0.02,   0.05",
		"Teste_200032_4 IBSMun,    247.30,  0.05,   60,  0.02,   0.05",
	})
	void tributacaoRegular(String caso, BigDecimal base, BigDecimal aliquota, BigDecimal reducao,
			BigDecimal aliquotaEfetivaRegular, BigDecimal valorRegular) {
		Resultado r = IBSCBSCalculator.calcularComTributacaoRegular(base,
				new Entrada(base, aliquota, reducao, null, null));

		assertThat(r.getBaseCalculo()).as("vBC").isEqualByComparingTo(base);
		assertThat(r.getAliquota()).as("alíquota do grupo principal (UB56-10, exceção 1)").isEqualByComparingTo("0");
		assertThat(r.getValorDevido()).as("valor do grupo principal").isEqualByComparingTo("0.00");
		assertThat(r.getPercentualReducao()).as("sem gRed no grupo principal").isNull();
		assertThat(r.getAliquotaEfetiva()).as("sem gRed no grupo principal").isNull();
		assertThat(r.getPercentualDiferimento()).as("sem gDif").isNull();
		assertThat(r.hasTributacaoRegular()).isTrue();
		assertThat(r.getAliquotaEfetivaRegular()).as("pAliqEfetReg").isEqualByComparingTo(aliquotaEfetivaRegular);
		assertThat(r.getValorRegular()).as("vTribReg").isEqualByComparingTo(valorRegular);
	}

	@Test
	@DisplayName("Tributação regular sem a classificação regular: grupo principal zerado, sem valores regulares")
	void tributacaoRegularSemClassificacao() {
		Resultado r = IBSCBSCalculator.calcularComTributacaoRegular(new BigDecimal("200"), null);

		assertThat(r.getBaseCalculo()).isEqualByComparingTo("200.00");
		assertThat(r.getAliquota()).isEqualByComparingTo("0");
		assertThat(r.getValorDevido()).isEqualByComparingTo("0.00");
		assertThat(r.hasTributacaoRegular()).isFalse();
		assertThat(r.getAliquotaEfetivaRegular()).isNull();
		assertThat(r.getValorRegular()).isNull();
	}

	@Test
	@DisplayName("Tributação regular: o diferimento da classificação regular não entra")
	void tributacaoRegularIgnoraDiferimento() {
		Resultado r = IBSCBSCalculator.calcularComTributacaoRegular(new BigDecimal("200"),
				new Entrada(new BigDecimal("200"), new BigDecimal("0.9"), null, null, new BigDecimal("100")));

		assertThat(r.getPercentualDiferimento()).isNull();
		assertThat(r.getValorRegular()).isEqualByComparingTo("1.80");
	}

	@Test
	@DisplayName("Cálculo comum não tem tributação regular")
	void calculoComumSemTributacaoRegular() {
		Resultado r = IBSCBSCalculator.calcular(new Entrada(new BigDecimal("200"), new BigDecimal("0.9"), null, null, null));

		assertThat(r.hasTributacaoRegular()).isFalse();
		assertThat(r.getValorRegular()).isNull();
	}
}
