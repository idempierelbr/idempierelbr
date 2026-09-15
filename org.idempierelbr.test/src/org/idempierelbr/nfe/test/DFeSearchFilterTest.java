package org.idempierelbr.nfe.test;

import static org.assertj.core.api.Assertions.assertThat;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.idempierelbr.nfe.imports.DFeSearchFilter;
import org.junit.jupiter.api.Test;

/**
 * Pure logic tests for {@link DFeSearchFilter} — os critérios da busca de DF-e
 * no monitor viram cláusula e parâmetros da consulta.
 * No DB, no network, no iDempiere container required.
 */
class DFeSearchFilterTest {

	@Test
	void isEmpty_trueWithoutCriteriaOrWithBlankEmitter() {
		DFeSearchFilter filter = new DFeSearchFilter();
		assertThat(filter.isEmpty()).isTrue();

		filter.emitter = "   ";
		assertThat(filter.isEmpty()).isTrue();

		filter.emitter = "acme";
		assertThat(filter.isEmpty()).isFalse();
	}

	@Test
	void appendWhere_addsNothingWhenEmpty() {
		StringBuilder where = new StringBuilder("LBR_DFeStatus=?");
		List<Object> parameters = new ArrayList<Object>();

		new DFeSearchFilter().appendWhere(where, parameters);

		assertThat(where.toString()).isEqualTo("LBR_DFeStatus=?");
		assertThat(parameters).isEmpty();
	}

	@Test
	void appendWhere_emitterWithLettersSearchesName() {
		DFeSearchFilter filter = new DFeSearchFilter();
		filter.emitter = " Acme Ltda ";

		StringBuilder where = new StringBuilder();
		List<Object> parameters = new ArrayList<Object>();
		filter.appendWhere(where, parameters);

		assertThat(where.toString()).isEqualTo(" AND UPPER(LBR_EmitName) LIKE ?");
		assertThat(parameters).containsExactly("%ACME LTDA%");
	}

	@Test
	void appendWhere_maskedCnpjRootSearchesDocumentPrefix() {
		DFeSearchFilter filter = new DFeSearchFilter();
		filter.emitter = "12.345.678";

		StringBuilder where = new StringBuilder();
		List<Object> parameters = new ArrayList<Object>();
		filter.appendWhere(where, parameters);

		assertThat(where.toString()).isEqualTo(" AND LBR_EmitCNPJ LIKE ?");
		assertThat(parameters).containsExactly("12345678%");
	}

	@Test
	void appendWhere_nameWithDigitsIsStillName() {
		DFeSearchFilter filter = new DFeSearchFilter();
		filter.emitter = "3M do Brasil";

		StringBuilder where = new StringBuilder();
		List<Object> parameters = new ArrayList<Object>();
		filter.appendWhere(where, parameters);

		assertThat(where.toString()).isEqualTo(" AND UPPER(LBR_EmitName) LIKE ?");
		assertThat(parameters).containsExactly("%3M DO BRASIL%");
	}

	@Test
	void appendWhere_dateToIncludesTheWholeLastDay() {
		DFeSearchFilter filter = new DFeSearchFilter();
		filter.dateFrom = timestamp(2025, 9, 1, 15, 30);
		filter.dateTo = timestamp(2025, 9, 30, 8, 0);

		StringBuilder where = new StringBuilder();
		List<Object> parameters = new ArrayList<Object>();
		filter.appendWhere(where, parameters);

		assertThat(where.toString()).isEqualTo(" AND DateDoc>=? AND DateDoc<?");
		assertThat(parameters).containsExactly(timestamp(2025, 9, 1, 0, 0), timestamp(2025, 10, 1, 0, 0));
	}

	@Test
	void validate_rejectsStartAfterEndButAcceptsSameDay() {
		DFeSearchFilter filter = new DFeSearchFilter();
		filter.dateFrom = timestamp(2025, 9, 30, 0, 0);
		filter.dateTo = timestamp(2025, 9, 1, 0, 0);
		assertThat(filter.validate()).isNotNull();

		filter.dateFrom = timestamp(2025, 9, 1, 18, 0);
		filter.dateTo = timestamp(2025, 9, 1, 9, 0);
		assertThat(filter.validate()).isNull();
	}

	@Test
	void describe_readsLikeTheUserTyped() {
		DFeSearchFilter filter = new DFeSearchFilter();
		assertThat(filter.describe()).isEmpty();

		filter.dateFrom = timestamp(2025, 9, 1, 0, 0);
		filter.dateTo = timestamp(2025, 9, 30, 0, 0);
		filter.emitter = "acme";

		assertThat(filter.describe()).isEqualTo("emitidos de 01/09/2025 a 30/09/2025, emitente \"acme\"");
	}

	private static Timestamp timestamp(int year, int month, int day, int hour, int minute) {
		return Timestamp.valueOf(LocalDateTime.of(year, month, day, hour, minute));
	}
}
