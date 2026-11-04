package org.idempierelbr.rtc.test;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatThrownBy;

import java.nio.charset.StandardCharsets;

import org.adempiere.exceptions.AdempiereException;
import org.idempierelbr.rtc.client.RTCApiException;
import org.idempierelbr.rtc.client.RTCHttpClient;
import org.idempierelbr.rtc.client.RTCHttpResponse;
import org.idempierelbr.rtc.provider.RTCFiscoApuracaoCBSProvider;
import org.idempierelbr.rtc.provider.RTCFiscoStatus;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.NullAndEmptySource;
import org.junit.jupiter.params.provider.ValueSource;

/**
 * Leitura das respostas da Receita que decidem o destino de uma solicitação:
 * a consulta da situação (inclusive o tíquete que deixou de existir), as
 * repetições automáticas e o 429.
 */
class RTCFiscoApiResponseTest {

	private static final String TICKET = "b8e87b9a-cdb9-4fbe-b2ba-b3e15acfb986.F5BD3AF4";

	// ===== Situação =====

	@Test
	void concludedSituationIsRead() {
		RTCFiscoStatus status = parse(200, "{\"situacao\":\"CONCLUIDA\"}");

		assertThat(status.getState()).isEqualTo(RTCFiscoStatus.State.CONCLUIDA);
		assertThat(status.isNotFound()).isFalse();
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

	// ===== Mensagem do 429 =====

	@Test
	void rateLimitMessageTellsTheWait() {
		RTCApiException e = RTCApiException.of("consulta da situação do tíquete " + TICKET,
				new RTCHttpResponse(429, new byte[0], 1800));

		assertThat(e.getMessage()).contains("HTTP 429").contains("30 min");
		assertThat(e.getRetryAfterSeconds()).isEqualTo(1800);
	}

	@Test
	void rateLimitMessageWithoutWait() {
		RTCApiException e = RTCApiException.of("consulta", new RTCHttpResponse(429, new byte[0]));

		assertThat(e.getMessage()).contains("limite de chamadas").doesNotContain("pede para esperar");
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
}
