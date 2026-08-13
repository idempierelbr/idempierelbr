package org.idempierelbr.nfe.test;

import static org.assertj.core.api.Assertions.assertThat;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

import org.idempierelbr.nfe.beans.IdentNFE;
import org.idempierelbr.nfe.beans.PagAntecipadoBean;
import org.junit.jupiter.api.Test;

/**
 * A SEFAZ valida o XML contra um XSD de sequência estrita: a ordem dos elementos
 * dentro de {@code ide} importa. O XStream serializa os campos na ordem em que são
 * declarados no bean, então reordenar declarações quebra a emissão silenciosamente
 * — sem erro de compilação e sem falha visível até a rejeição da SEFAZ.
 *
 * <p>Estes testes fixam a posição dos campos introduzidos pela NT 2025.002, em
 * especial o grupo BB/gPagAntecipado, que fica entre tpNFCredito e indFinal.
 */
class IdentNFEOrderTest {

	/** Nomes dos campos de IdentNFE na ordem de declaração — a ordem do XML */
	private List<String> fieldOrder() {
		List<String> names = new ArrayList<String>();

		for (Field field : IdentNFE.class.getDeclaredFields()) {
			if (!field.isSynthetic())
				names.add(field.getName());
		}

		return names;
	}

	@Test
	void gPagAntecipado_isDeclaredBetweenTpNFCreditoAndIndFinal() {
		List<String> order = fieldOrder();

		assertThat(order).contains("gPagAntecipado");
		assertThat(order.indexOf("gPagAntecipado")).isGreaterThan(order.indexOf("tpNFCredito"));
		assertThat(order.indexOf("gPagAntecipado")).isLessThan(order.indexOf("indFinal"));
	}

	@Test
	void debitAndCreditSubtypesComeRightAfterFinNFe() {
		List<String> order = fieldOrder();

		assertThat(order.indexOf("tpNFDebito")).isEqualTo(order.indexOf("finNFe") + 1);
		assertThat(order.indexOf("tpNFCredito")).isEqualTo(order.indexOf("tpNFDebito") + 1);
	}

	@Test
	void identificationFieldsKeepTheLayoutOrder() {
		List<String> order = fieldOrder();

		assertThat(order.indexOf("cUF")).isLessThan(order.indexOf("natOp"));
		assertThat(order.indexOf("natOp")).isLessThan(order.indexOf("mod"));
		assertThat(order.indexOf("tpNF")).isLessThan(order.indexOf("idDest"));
		assertThat(order.indexOf("idDest")).isLessThan(order.indexOf("cMunFG"));
		assertThat(order.indexOf("finNFe")).isLessThan(order.indexOf("indFinal"));
		assertThat(order.indexOf("indPres")).isLessThan(order.indexOf("procEmi"));
	}

	@Test
	void advanceGroupStartsEmptyAndRejectsBlankKeys() {
		PagAntecipadoBean pag = new PagAntecipadoBean();

		assertThat(pag.isEmpty()).isTrue();
		assertThat(pag.addRefNFe(null)).isFalse();
		assertThat(pag.addRefNFe("   ")).isFalse();
		assertThat(pag.isEmpty()).isTrue();
	}

	@Test
	void advanceGroupAcceptsOneKeyPerAdvanceNote() {
		PagAntecipadoBean pag = new PagAntecipadoBean();

		assertThat(pag.addRefNFe("35260112345678000199550010000001231123456789")).isTrue();
		assertThat(pag.addRefNFe(" 35260112345678000199550010000001241123456789 ")).isTrue();

		assertThat(pag.isEmpty()).isFalse();
		assertThat(pag.getRefNFe()).containsExactly(
				"35260112345678000199550010000001231123456789",
				"35260112345678000199550010000001241123456789");
	}
}
