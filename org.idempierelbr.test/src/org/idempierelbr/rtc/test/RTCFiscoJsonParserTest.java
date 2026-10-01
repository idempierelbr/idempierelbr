package org.idempierelbr.rtc.test;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatThrownBy;

import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.nio.charset.StandardCharsets;

import org.adempiere.exceptions.AdempiereException;
import org.idempierelbr.rtc.json.RTCFiscoJsonParser;
import org.idempierelbr.rtc.json.dto.FiscoApuracaoFileDTO;
import org.idempierelbr.rtc.json.dto.FiscoApuracaoFileDTO.Composicao;
import org.idempierelbr.rtc.json.dto.FiscoApuracaoFileDTO.Documento;
import org.idempierelbr.rtc.json.dto.FiscoApuracaoFileDTO.Pagamento;
import org.junit.jupiter.api.Test;

/**
 * Leitura dos arquivos de apuração da Receita, pelos exemplos da documentação
 * v1.1 (17/09/2026). Lógica pura: sem banco e sem rede.
 */
class RTCFiscoJsonParserTest {

	@Test
	void debitos_readsPeriodsDocumentsAndDebitOnlyValues() throws IOException {
		FiscoApuracaoFileDTO file = RTCFiscoJsonParser.parse(resource("debitos.json"));

		assertThat(file.ni).isEqualTo("00409834");
		assertThat(file.tiqueteSolicitacao).isEqualTo("692b7b25-44cb-4415-8625-2b9522dd7933.B5E08D55");
		assertThat(file.apuracao).hasSize(2);
		assertThat(file.apuracao.get(0).pa).isEqualTo("06/2026");
		assertThat(file.apuracao.get(1).pa).isEqualTo("08/2026");

		Documento doc = file.apuracao.get(1).debitos.get(0);
		assertThat(doc.origem).isZero();
		assertThat(doc.documento).isEqualTo(55);
		assertThat(doc.chave).hasSize(44);
		assertThat(doc.atualizacao).isEqualTo("2026-08-14T12:40:16.763258Z");

		assertThat(doc.cbs.apurado).isEqualByComparingTo("40.15");
		assertThat(doc.cbs.extinto).isEqualByComparingTo("0.15");
		assertThat(doc.cbs.saldoDevedor).isEqualByComparingTo("40");
		assertThat(doc.cbs.apropriacao).isNull();
	}

	@Test
	void excedente_comesSingularInDebitsAndPluralInCredits() throws IOException {
		Documento debito = RTCFiscoJsonParser.parse(resource("debitos.json")).apuracao.get(0).debitos.get(0);
		Documento credito = RTCFiscoJsonParser.parse(resource("creditos.json")).apuracao.get(0).creditos.get(0);

		assertThat(debito.cbs.getExcedente()).isEqualByComparingTo(BigDecimal.ZERO);
		assertThat(credito.cbs.getExcedente()).isEqualByComparingTo("1.5");
	}

	@Test
	void creditos_readsNestedAppropriationGroups() throws IOException {
		Documento doc = RTCFiscoJsonParser.parse(resource("creditos.json")).apuracao.get(0).creditos.get(0);

		assertThat(doc.cbs.apropriacao.inapropriavel).isEqualByComparingTo("0.5");
		assertThat(doc.cbs.apropriacao.aApropriar).isEqualByComparingTo("2");
		assertThat(doc.cbs.apropriacao.apropriado).isEqualByComparingTo("12.5");
		assertThat(doc.cbs.apropriacao.utilizacao.utilizado).isEqualByComparingTo("10");
		assertThat(doc.cbs.apropriacao.utilizacao.naoUtilizado.saldoCredor).isEqualByComparingTo("2.5");
	}

	@Test
	void creditos_appropriationGroupIsOptional() throws IOException {
		Documento doc = RTCFiscoJsonParser.parse(resource("creditos.json")).apuracao.get(0).creditos.get(1);

		assertThat(doc.cbs.apurado).isEqualByComparingTo("3");
		assertThat(doc.cbs.apropriacao).isNull();
		assertThat(doc.cbs.getExcedente()).isNull();
	}

	@Test
	void recolhimentos_mapsSnakeCaseAndSupplierNI() throws IOException {
		Pagamento pagamento = RTCFiscoJsonParser.parse(resource("recolhimentos.json")).apuracao.get(0).pagamentos.get(0);
		Composicao item = pagamento.composicao.get(0);

		assertThat(pagamento.numeroDARF).isEqualTo("07202608270001");
		assertThat(pagamento.niAdquirente).isNull();
		assertThat(item.niFornecedor).isEqualTo("98765432000110");
		assertThat(item.total).isEqualByComparingTo("100.43");
	}

	@Test
	void pagamentos_readsCompositionAcrossPeriods() throws IOException {
		FiscoApuracaoFileDTO file = RTCFiscoJsonParser.parse(resource("pagamentos.json"));
		Pagamento darf = file.apuracao.get(0).pagamentos.get(0);

		assertThat(file.apuracao.get(0).dataArrecadacao).isEqualTo("2026-08-27T14:48:05.745Z");
		assertThat(darf.tipo).isEqualTo(1);
		assertThat(darf.composicao).hasSize(2);
		assertThat(darf.composicao.get(1).pa).isEqualTo("07/2026");
		assertThat(darf.composicao.get(1).niContribuinte).isEqualTo("12345678000195");
		assertThat(darf.composicao.get(1).total).isEqualByComparingTo("5.15");

		// a Receita manda "" em campo sem valor: quem importa trata como ausente
		assertThat(file.apuracao.get(0).pagamentos.get(1).numeroDARF).isEmpty();
	}

	@Test
	void pagamentos_mapsNiContribuinte() {
		String json = "{\"ni\":\"12345678\",\"apuracao\":[{\"dataArrecadacao\":\"2026-08-27T14:48:05.745Z\","
				+ "\"pagamentos\":[{\"numeroDARF\":\"1\",\"tipo\":0,\"niAdquirente\":\"11222333000181\","
				+ "\"composicao\":[{\"sequencial\":0,\"ni_contribuinte\":\"12345678000195\"}]}]}]}";

		Pagamento pagamento = RTCFiscoJsonParser.parse(bytes(json)).apuracao.get(0).pagamentos.get(0);

		assertThat(pagamento.niAdquirente).isEqualTo("11222333000181");
		assertThat(pagamento.composicao.get(0).niContribuinte).isEqualTo("12345678000195");
	}

	@Test
	void unknownFieldsAreIgnored() throws IOException {
		// debitos.json traz "campoNovoQueOLBRNaoConhece"
		assertThat(RTCFiscoJsonParser.parse(resource("debitos.json")).apuracao).hasSize(2);
	}

	@Test
	void byteOrderMarkIsTolerated() {
		assertThat(RTCFiscoJsonParser.parse(bytes("﻿{\"ni\":\"12345678\",\"apuracao\":[]}")).ni)
			.isEqualTo("12345678");
	}

	@Test
	void invalidJsonIsRefusedWithReadableMessage() {
		assertThatThrownBy(() -> RTCFiscoJsonParser.parse(bytes("{ isto não é json")))
			.isInstanceOf(AdempiereException.class)
			.hasMessageContaining("não é um JSON válido");
	}

	@Test
	void fileWithoutApuracaoIsRefused() {
		assertThatThrownBy(() -> RTCFiscoJsonParser.parse(bytes("{\"estado\":\"CONCLUIDA\"}")))
			.isInstanceOf(AdempiereException.class)
			.hasMessageContaining("apuracao");
	}

	@Test
	void emptyFileIsRefused() {
		assertThatThrownBy(() -> RTCFiscoJsonParser.parse(new byte[0]))
			.isInstanceOf(AdempiereException.class);
	}

	private static byte[] bytes(String text) {
		return text.getBytes(StandardCharsets.UTF_8);
	}

	private static byte[] resource(String name) throws IOException {
		try (InputStream in = RTCFiscoJsonParserTest.class.getResourceAsStream("/resources/test/rtc/" + name)) {
			assertThat(in).as("recurso de teste " + name).isNotNull();
			return in.readAllBytes();
		}
	}
}
