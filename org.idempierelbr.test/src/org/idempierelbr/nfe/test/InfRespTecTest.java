package org.idempierelbr.nfe.test;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatThrownBy;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

import org.adempiere.exceptions.AdempiereException;
import org.idempierelbr.nfe.beans.DadosNFE;
import org.idempierelbr.nfe.beans.InfRespTec;
import org.idempierelbr.nfe.util.NFeUtil;
import org.junit.jupiter.api.Test;

/**
 * Grupo ZD (Responsável Técnico, NT 2018.005), montado a partir das SysConfig LBR_RESPTEC_*.
 * Algumas UFs (ex.: MS) rejeitam a NF-e sem ele com cStat 972.
 * No DB, no network, no iDempiere container required.
 */
class InfRespTecTest {

	private static final String CHAVE = "41180678393592000146558900000006041028190697";

	@Test
	void returnsNull_whenCnpjIsNotConfigured() throws Exception {
		assertThat(NFeUtil.createInfRespTec(null, "Fulano", "fulano@example.com", "11999990000", null, null, CHAVE)).isNull();
		assertThat(NFeUtil.createInfRespTec("  ", "Fulano", "fulano@example.com", "11999990000", null, null, CHAVE)).isNull();
	}

	@Test
	void removesMasksAndOmitsCsrt_whenCsrtIsNotConfigured() throws Exception {
		InfRespTec inf = NFeUtil.createInfRespTec("11.222.333/0001-81", " Fulano de Tal ", "fulano@example.com",
				"(11) 99999-0000", "", "", CHAVE);

		assertThat(inf.getCNPJ()).isEqualTo("11222333000181");
		assertThat(inf.getxContato()).isEqualTo("Fulano de Tal");
		assertThat(inf.getEmail()).isEqualTo("fulano@example.com");
		assertThat(inf.getFone()).isEqualTo("11999990000");
		assertThat(inf.getIdCSRT()).isNull();
		assertThat(inf.getHashCSRT()).isNull();
	}

	@Test
	void hashCsrt_matchesTheExampleOfNT2018005() throws Exception {
		InfRespTec inf = NFeUtil.createInfRespTec("11222333000181", "Fulano de Tal", "fulano@example.com",
				"11999990000", "01", "G8063VRTNDMO886SFNK5LDUDEI24XJ22YIPO", CHAVE);

		assertThat(inf.getIdCSRT()).isEqualTo("01");
		assertThat(inf.getHashCSRT()).isEqualTo("aWv6LeEM4X6u4+qBI2OYZ8grigw=");
	}

	@Test
	void rejectsIncompleteConfiguration() {
		assertThatThrownBy(() -> NFeUtil.createInfRespTec("11222333000181", "", "fulano@example.com",
				"11999990000", null, null, CHAVE))
			.isInstanceOf(AdempiereException.class).hasMessageContaining("LBR_RESPTEC_CONTACT");
		assertThatThrownBy(() -> NFeUtil.createInfRespTec("11222333000181", "Fulano", "f@x",
				"11999990000", null, null, CHAVE))
			.isInstanceOf(AdempiereException.class).hasMessageContaining("LBR_RESPTEC_EMAIL");
		assertThatThrownBy(() -> NFeUtil.createInfRespTec("11222333000181", "Fulano", "fulano@example.com",
				"1234", null, null, CHAVE))
			.isInstanceOf(AdempiereException.class).hasMessageContaining("LBR_RESPTEC_PHONE");
		assertThatThrownBy(() -> NFeUtil.createInfRespTec("1122233300018", "Fulano", "fulano@example.com",
				"11999990000", null, null, CHAVE))
			.isInstanceOf(AdempiereException.class).hasMessageContaining("LBR_RESPTEC_CNPJ");
	}

	@Test
	void rejectsCsrtWithoutItsId_andIdWithWrongFormat() {
		assertThatThrownBy(() -> NFeUtil.createInfRespTec("11222333000181", "Fulano", "fulano@example.com",
				"11999990000", null, "G8063VRTNDMO886SFNK5LDUDEI24XJ22YIPO", CHAVE))
			.isInstanceOf(AdempiereException.class).hasMessageContaining("LBR_RESPTEC_IDCSRT");
		assertThatThrownBy(() -> NFeUtil.createInfRespTec("11222333000181", "Fulano", "fulano@example.com",
				"11999990000", "1", "G8063VRTNDMO886SFNK5LDUDEI24XJ22YIPO", CHAVE))
			.isInstanceOf(AdempiereException.class).hasMessageContaining("2 dígitos");
	}

	/**
	 * O XStream serializa os campos na ordem de declaração; no leiaute,
	 * infRespTec vem depois de infAdic e exporta.
	 */
	@Test
	void infRespTec_isDeclaredAfterInfAdicAndExporta() {
		List<String> order = new ArrayList<String>();

		for (Field field : DadosNFE.class.getDeclaredFields()) {
			if (!field.isSynthetic())
				order.add(field.getName());
		}

		assertThat(order.indexOf("infRespTec")).isEqualTo(order.indexOf("exporta") + 1);
		assertThat(order.indexOf("infRespTec")).isGreaterThan(order.indexOf("infAdic"));
	}
}
