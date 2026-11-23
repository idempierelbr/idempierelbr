package org.idempierelbr.base.test;

import static org.assertj.core.api.Assertions.assertThat;

import java.time.LocalDate;
import java.util.List;

import org.idempierelbr.base.ibscbs.NcmAplicavel;
import org.idempierelbr.base.ibscbs.NcmAplicavel.Excecao;
import org.idempierelbr.base.ibscbs.NcmAplicavel.Resultado;
import org.idempierelbr.base.ibscbs.NcmAplicavel.Vinculo;
import org.junit.jupiter.api.Test;

/**
 * Tabela-verdade da crítica de NCM aplicável à cClassTrib, a mesma do
 * {@code NcmAplicavelService} da Calculadora RTC da Receita (1.7.2):
 * rejeita quando !A ou (E e !S).
 */
class NcmAplicavelTest {

	private static final LocalDate DATA = LocalDate.of(2026, 6, 15);
	private static final LocalDate INICIO = LocalDate.of(2026, 1, 1);
	private static final LocalDate ONTEM = DATA.minusDays(1);

	@Test
	void semAnexoAceitaQualquerNcm() {
		assertThat(NcmAplicavel.criticar("01011010", List.of(), DATA)).isEqualTo(Resultado.SEM_ANEXO);
		assertThat(NcmAplicavel.criticar(null, List.of(), DATA))
				.as("sem anexo, nem o NCM é exigido")
				.isEqualTo(Resultado.SEM_ANEXO);
	}

	@Test
	void anexoSoComVinculosForaDeVigenciaContaComoSemAnexo() {
		List<Vinculo> anexo = List.of(new Vinculo("0101", INICIO, ONTEM));
		assertThat(NcmAplicavel.criticar("99999999", anexo, DATA)).isEqualTo(Resultado.SEM_ANEXO);
	}

	@Test
	void anexoExigeNcmCompleto() {
		List<Vinculo> anexo = List.of(new Vinculo("0101", INICIO, null));
		assertThat(NcmAplicavel.criticar(null, anexo, DATA)).isEqualTo(Resultado.NCM_INCOMPLETO);
		assertThat(NcmAplicavel.criticar("0101", anexo, DATA)).isEqualTo(Resultado.NCM_INCOMPLETO);
		assertThat(Resultado.NCM_INCOMPLETO.isValido()).isFalse();
	}

	@Test
	void prefixoDoAnexoCobreONcm() {
		List<Vinculo> anexo = List.of(new Vinculo("0101", INICIO, null));
		assertThat(NcmAplicavel.criticar("01011010", anexo, DATA)).isEqualTo(Resultado.ACEITO);
		assertThat(NcmAplicavel.criticar("01021010", anexo, DATA)).isEqualTo(Resultado.NAO_VINCULADO);
	}

	@Test
	void a0_e0_s0_ncmForaDoAnexo() {
		List<Vinculo> anexo = List.of(new Vinculo("0101", INICIO, null), new Vinculo("02", INICIO, ONTEM));
		assertThat(NcmAplicavel.criticar("02011000", anexo, DATA))
				.as("o vínculo que cobriria o NCM está fora de vigência")
				.isEqualTo(Resultado.NAO_VINCULADO);
	}

	@Test
	void a0_e1_s0_excecaoVigenteNaoRestauraVinculoExpirado() {
		List<Vinculo> anexo = List.of(new Vinculo("0101", INICIO, null),
				new Vinculo("02", INICIO, ONTEM).addExcecao(new Excecao("0201", INICIO, null)));
		assertThat(NcmAplicavel.criticar("02011000", anexo, DATA)).isEqualTo(Resultado.NAO_VINCULADO);
	}

	@Test
	void a1_e0_excecaoQueNaoCobreONcm() {
		List<Vinculo> anexo = List.of(new Vinculo("02", INICIO, null).addExcecao(new Excecao("0202", INICIO, null)));
		assertThat(NcmAplicavel.criticar("02011000", anexo, DATA)).isEqualTo(Resultado.ACEITO);
	}

	@Test
	void a1_e0_s1_vinculoSemExcecao() {
		List<Vinculo> anexo = List.of(new Vinculo("02011000", INICIO, null));
		assertThat(NcmAplicavel.criticar("02011000", anexo, DATA)).isEqualTo(Resultado.ACEITO);
	}

	@Test
	void a1_e1_s0_ncmExcepcionado() {
		List<Vinculo> anexo = List.of(new Vinculo("02", INICIO, null).addExcecao(new Excecao("0201", INICIO, null)));
		assertThat(NcmAplicavel.criticar("02011000", anexo, DATA)).isEqualTo(Resultado.NAO_VINCULADO);
	}

	@Test
	void a1_e1_s1_outroVinculoSemExcecaoCobreONcm() {
		List<Vinculo> anexo = List.of(
				new Vinculo("02", INICIO, null).addExcecao(new Excecao("0201", INICIO, null)),
				new Vinculo("0201", INICIO, null));
		assertThat(NcmAplicavel.criticar("02011000", anexo, DATA)).isEqualTo(Resultado.ACEITO);
	}

	@Test
	void excecaoForaDeVigenciaNaoExclui() {
		List<Vinculo> anexo = List.of(new Vinculo("02", INICIO, null).addExcecao(new Excecao("0201", INICIO, ONTEM)));
		assertThat(NcmAplicavel.criticar("02011000", anexo, DATA)).isEqualTo(Resultado.ACEITO);
	}

	@Test
	void vigenciaInclusiva() {
		List<Vinculo> anexo = List.of(new Vinculo("0101", DATA, DATA));
		assertThat(NcmAplicavel.criticar("01011010", anexo, DATA))
				.as("início e fim valem no próprio dia")
				.isEqualTo(Resultado.ACEITO);
	}
}
