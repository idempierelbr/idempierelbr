package org.idempierelbr.rtc.test;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatThrownBy;

import java.nio.charset.StandardCharsets;
import java.time.Instant;
import java.time.ZoneId;

import org.adempiere.exceptions.AdempiereException;
import org.idempierelbr.rtc.client.RTCApiException;
import org.idempierelbr.rtc.client.RTCHttpClient;
import org.idempierelbr.rtc.client.RTCHttpResponse;
import org.idempierelbr.rtc.client.RTCQuota;
import org.idempierelbr.rtc.provider.RTCFiscoApuracaoCBSProvider;
import org.idempierelbr.rtc.provider.RTCFiscoDownloadLink;
import org.idempierelbr.rtc.provider.RTCFiscoStatus;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.NullAndEmptySource;
import org.junit.jupiter.params.provider.ValueSource;

/**
 * Leitura das respostas da Receita que decidem o destino de uma solicitação:
 * o link de download, a consulta da situação (inclusive o tíquete que deixou
 * de existir), as repetições automáticas, a cota e o 429.
 */
class RTCFiscoApiResponseTest {

	private static final String TICKET = "b8e87b9a-cdb9-4fbe-b2ba-b3e15acfb986.F5BD3AF4";

	/** 08:17 em Brasília, quando a cota do dia ainda tem 12 h 43 min pela frente */
	private static final Instant RECEIVED = Instant.parse("2026-11-04T11:17:00Z");

	private static final ZoneId BRASILIA = ZoneId.of("America/Sao_Paulo");

	// ===== Link de download =====

	@Test
	void downloadLinkIsRead() {
		RTCQuota quota = RTCQuota.parse("8", "7", "45780", RECEIVED);
		RTCFiscoDownloadLink link = RTCFiscoApuracaoCBSProvider.parseDownloadLink(TICKET, response(200,
				"{\"urlAssinada\":\"https://obs.example/arquivo?assinatura=x\","
						+ "\"urlAssinadaExpiraEm\":\"2026-11-06T08:17:20.824907-03:00\"}", null, quota));

		assertThat(link.isAvailable()).isTrue();
		assertThat(link.getSignedURL()).startsWith("https://obs.example/");
		assertThat(link.getExpiresAt()).isNotNull();
		assertThat(link.getQuota()).isSameAs(quota);
	}

	@Test
	void unavailableFileIsNotAnError() {
		// ARQUIVO_INDISPONIVEL: ainda processando, ou já baixado — a situação explica
		RTCQuota quota = RTCQuota.parse("8", "6", "45000", RECEIVED);
		RTCFiscoDownloadLink link = RTCFiscoApuracaoCBSProvider.parseDownloadLink(TICKET, response(404,
				"{\"codigoErro\":\"ARQUIVO_INDISPONIVEL\",\"mensagemErro\":\"arquivo indisponível\"}", null, quota));

		assertThat(link.isAvailable()).isFalse();
		assertThat(link.getSignedURL()).isNull();
		assertThat(link.getQuota()).isSameAs(quota);
	}

	@Test
	void rateLimitOnDownloadKeepsTheRequestOpen() {
		assertThatThrownBy(() -> RTCFiscoApuracaoCBSProvider.parseDownloadLink(TICKET, response(429, "", 45000, null)))
			.isInstanceOfSatisfying(RTCApiException.class, e -> assertThat(e.isRateLimited()).isTrue());
	}

	@Test
	void successWithoutLinkIsRejected() {
		assertThatThrownBy(() -> RTCFiscoApuracaoCBSProvider.parseDownloadLink(TICKET, response(200, "{}", null, null)))
			.isInstanceOf(AdempiereException.class)
			.hasMessageContaining("sem informar o link");
	}

	// ===== Situação =====

	@Test
	void concludedSituationIsRead() {
		RTCFiscoStatus status = parse(200, "{\"situacao\":\"CONCLUIDA\"}");

		assertThat(status.getState()).isEqualTo(RTCFiscoStatus.State.CONCLUIDA);
		assertThat(status.isNotFound()).isFalse();
	}

	@Test
	void situationCarriesTheQuota() {
		RTCQuota quota = RTCQuota.parse("4", "1", "45000", RECEIVED);
		RTCFiscoStatus status = RTCFiscoApuracaoCBSProvider.parseStatus(TICKET,
				response(200, "{\"situacao\":\"PENDENTE\"}", null, quota));

		assertThat(status.getQuota()).isSameAs(quota);
	}

	@Test
	void documentedErrorWith404KeepsTheSituation() {
		RTCFiscoStatus status = parse(404,
				"{\"situacao\":\"ERRO\",\"codigoErro\":\"ERRO_INTERNO\",\"mensagemErro\":\"erro interno\"}");

		assertThat(status.getState()).isEqualTo(RTCFiscoStatus.State.ERRO);
		assertThat(status.isNotFound()).isFalse();
		assertThat(status.getErrorCode()).isEqualTo("ERRO_INTERNO");
	}

	@Test
	void vanishedTicketIsNotFound() {
		// resposta real de 04/11/2026, fora da documentação
		RTCFiscoStatus status = parse(404,
				"{\"codigoErro\":\"SOLICITACAO_NAO_ENCONTRADA\",\"mensagemErro\":\"solicitação não encontrada\"}");

		assertThat(status.isNotFound()).isTrue();
		assertThat(status.getState()).isNull();
		assertThat(status.getErrorCode()).isEqualTo("SOLICITACAO_NAO_ENCONTRADA");
		assertThat(status.getErrorMessage()).isEqualTo("solicitação não encontrada");
	}

	@Test
	void missingGatewayRouteIsNotALostTicket() {
		// endereço errado na configuração: encerrar a solicitação esconderia o erro
		assertThatThrownBy(() -> parse(404, "{\"message\":\"no Route matched with those values\"}"))
			.isInstanceOfSatisfying(RTCApiException.class, e -> assertThat(e.getHttpStatus()).isEqualTo(404));
	}

	@Test
	void rateLimitOnSituationKeepsTheRequestOpen() {
		assertThatThrownBy(() -> parse(429, ""))
			.isInstanceOfSatisfying(RTCApiException.class, e -> assertThat(e.isRateLimited()).isTrue());
	}

	@Test
	void successWithoutSituationIsRejected() {
		assertThatThrownBy(() -> parse(200, "{}"))
			.isInstanceOf(AdempiereException.class)
			.hasMessageContaining("sem informar a situação");
	}

	// ===== Repetição automática =====

	@Test
	void serverErrorsAreRetriedTwice() {
		assertThat(RTCHttpClient.getRetryDelaySeconds(503, null, 0)).isEqualTo(2);
		assertThat(RTCHttpClient.getRetryDelaySeconds(500, null, 1)).isEqualTo(5);
		assertThat(RTCHttpClient.getRetryDelaySeconds(500, null, 2)).isNull();
	}

	@Test
	void rateLimitIsNotRetriedBlindly() {
		assertThat(RTCHttpClient.getRetryDelaySeconds(429, null, 0)).isNull();
		assertThat(RTCHttpClient.getRetryDelaySeconds(429, 3600, 0)).isNull();
		assertThat(RTCHttpClient.getRetryDelaySeconds(429, 11, 0)).isNull();
	}

	@Test
	void shortRetryAfterIsHonoured() {
		assertThat(RTCHttpClient.getRetryDelaySeconds(429, 3, 0)).isEqualTo(3);
		assertThat(RTCHttpClient.getRetryDelaySeconds(429, 10, 1)).isEqualTo(10);
		assertThat(RTCHttpClient.getRetryDelaySeconds(429, 0, 0)).isEqualTo(1);
		assertThat(RTCHttpClient.getRetryDelaySeconds(429, 3, 2)).isNull();
	}

	@ParameterizedTest
	@ValueSource(ints = { 400, 401, 403, 404 })
	void clientErrorsAreNotRetried(int status) {
		assertThat(RTCHttpClient.getRetryDelaySeconds(status, 1, 0)).isNull();
	}

	// ===== Retry-After =====

	@Test
	void retryAfterInSecondsIsRead() {
		assertThat(RTCHttpResponse.parseRetryAfter("5")).isEqualTo(5);
		assertThat(RTCHttpResponse.parseRetryAfter(" 120 ")).isEqualTo(120);
		assertThat(RTCHttpResponse.parseRetryAfter("0")).isEqualTo(0);
	}

	@ParameterizedTest
	@NullAndEmptySource
	@ValueSource(strings = { "-1", "abc", "Wed, 21 Oct 2026 07:28:00 GMT" })
	void otherRetryAfterIsUnknown(String value) {
		assertThat(RTCHttpResponse.parseRetryAfter(value)).isNull();
	}

	// ===== Cota =====

	@Test
	void quotaIsReadFromTheHeaders() {
		RTCQuota quota = RTCQuota.parse("8", " 7 ", "45780", RECEIVED);

		assertThat(quota.getLimit()).isEqualTo(8);
		assertThat(quota.getRemaining()).isEqualTo(7);
		assertThat(quota.getResetAt()).isEqualTo(Instant.parse("2026-11-05T00:00:00Z"));
		assertThat(quota.describe(RECEIVED, BRASILIA)).isEqualTo("restam 7 de 8 (renova às 21:00)");
	}

	@Test
	void quotaWithoutResetStillCounts() {
		RTCQuota quota = RTCQuota.parse("8", "0", null, RECEIVED);

		assertThat(quota.getResetAt()).isNull();
		assertThat(quota.describe(RECEIVED, BRASILIA)).isEqualTo("restam 0 de 8");
	}

	@Test
	void incompleteQuotaIsUnknown() {
		assertThat(RTCQuota.parse(null, "7", "45780", RECEIVED)).isNull();
		assertThat(RTCQuota.parse("8", null, "45780", RECEIVED)).isNull();
		assertThat(RTCQuota.parse("oito", "7", "45780", RECEIVED)).isNull();
		assertThat(RTCQuota.parse("8", "-1", "45780", RECEIVED)).isNull();
	}

	@Test
	void momentsAreToldAsClockTime() {
		assertThat(RTCQuota.describeWhen(RECEIVED.plusSeconds(30), RECEIVED, BRASILIA)).isEqualTo("em 30 s");
		assertThat(RTCQuota.describeWhen(Instant.parse("2026-11-05T00:00:00Z"), RECEIVED, BRASILIA))
			.isEqualTo("às 21:00");
		assertThat(RTCQuota.describeWhen(Instant.parse("2026-11-06T00:00:00Z"), Instant.parse("2026-11-05T00:30:00Z"),
				BRASILIA)).isEqualTo("amanhã às 21:00");
		assertThat(RTCQuota.describeWhen(Instant.parse("2026-11-08T00:00:00Z"), RECEIVED, BRASILIA))
			.isEqualTo("em 07/11 às 21:00");
	}

	// ===== Mensagem do 429 =====

	@Test
	void rateLimitMessageTellsWhenToRetry() {
		RTCApiException e = RTCApiException.of("consulta da situação do tíquete " + TICKET,
				response(429, "", 45780, null));

		Instant retryAt = Instant.parse("2026-11-05T00:00:00Z");

		assertThat(e.getMessage()).contains("HTTP 429")
			.contains("a Receita volta a aceitar chamadas " + RTCQuota.describeWhen(retryAt, RECEIVED, ZoneId.systemDefault()))
			.doesNotContain(" h)");
		assertThat(e.getRetryAfterSeconds()).isEqualTo(45780);
		assertThat(e.getRetryAt()).isEqualTo(retryAt);
	}

	@Test
	void rateLimitMessageUsesTheQuotaWithoutRetryAfter() {
		RTCApiException e = RTCApiException.of("consulta", response(429, "", null, RTCQuota.parse("4", "0", "45780", RECEIVED)));

		assertThat(e.getMessage()).contains("limite de 4 chamadas excedido").contains("volta a aceitar chamadas");
		assertThat(e.getRetryAt()).isEqualTo(Instant.parse("2026-11-05T00:00:00Z"));
	}

	@Test
	void rateLimitMessageWithoutWait() {
		RTCApiException e = RTCApiException.of("consulta", new RTCHttpResponse(429, new byte[0]));

		assertThat(e.getMessage()).contains("limite de chamadas excedido; tente mais tarde")
			.doesNotContain("volta a aceitar");
		assertThat(e.getRetryAt()).isNull();
	}

	@Test
	void rateLimitIsFoundAmongTheCauses() {
		RTCApiException limit = RTCApiException.of("consulta", new RTCHttpResponse(429, new byte[0]));
		RTCApiException notFound = RTCApiException.of("consulta", new RTCHttpResponse(404, new byte[0]));

		assertThat(RTCApiException.findRateLimit(limit)).isSameAs(limit);
		assertThat(RTCApiException.findRateLimit(new AdempiereException("falhou", limit))).isSameAs(limit);
		assertThat(RTCApiException.findRateLimit(notFound)).isNull();
		assertThat(RTCApiException.findRateLimit(new AdempiereException("outra coisa"))).isNull();
	}

	private static RTCFiscoStatus parse(int status, String body) {
		return RTCFiscoApuracaoCBSProvider.parseStatus(TICKET,
				new RTCHttpResponse(status, body.getBytes(StandardCharsets.UTF_8)));
	}

	private static RTCHttpResponse response(int status, String body, Integer retryAfter, RTCQuota quota) {
		return new RTCHttpResponse(status, body.getBytes(StandardCharsets.UTF_8), retryAfter, quota, RECEIVED);
	}
}
