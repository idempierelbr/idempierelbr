package org.idempierelbr.rtc.client;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.ConnectException;
import java.net.NoRouteToHostException;
import java.net.URI;
import java.net.UnknownHostException;
import java.net.http.HttpClient;
import java.net.http.HttpConnectTimeoutException;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.net.http.HttpTimeoutException;
import java.nio.charset.StandardCharsets;
import java.time.Duration;
import java.util.logging.Level;

import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.util.CLogger;
import org.idempierelbr.rtc.util.RTCUtil;

/**
 * Cliente HTTP das APIs da Receita Federal, sobre o {@code java.net.http} do
 * Java — sem certificado digital: a autenticação é OAuth 2.0.
 *
 * <p>Só as chamadas idempotentes (GET) são repetidas, e só em 5xx ou falha de
 * transporte. O 429 só é repetido quando a própria Receita pede uma espera
 * curta no {@code Retry-After}: a janela do limite não é documentada, e
 * repetir às cegas só gasta mais chamadas dele. O POST de abertura nunca é
 * repetido aqui: cada tentativa pode consumir uma das 4 chamadas do dia.
 *
 * <p>Nada que venha de uma URL assinada vai para o log além do host.
 *
 * @author Alan Lescano
 */
public class RTCHttpClient {
	private static final CLogger log = CLogger.getCLogger(RTCHttpClient.class);

	/** Teto de uma resposta JSON comum (token, abertura, situação) */
	private static final long MAX_JSON_BYTES = 1024L * 1024L;

	/** Esperas entre tentativas de uma chamada idempotente, em segundos */
	private static final int[] RETRY_DELAYS_SECONDS = { 2, 5 };

	/** Maior espera do {@code Retry-After} de um 429 que ainda vale aguardar e repetir, em segundos */
	private static final int MAX_RETRY_AFTER_SECONDS = 10;

	private final HttpClient client;
	private final Duration timeout;

	public RTCHttpClient(int timeoutSeconds) {
		this.timeout = Duration.ofSeconds(timeoutSeconds);
		this.client = HttpClient.newBuilder()
			.connectTimeout(timeout)
			.followRedirects(HttpClient.Redirect.NORMAL)
			.build();
	}

	/**
	 * POST de formulário ({@code application/x-www-form-urlencoded}) com
	 * autenticação Basic — o pedido de token.
	 */
	public RTCHttpResponse postForm(String url, String basicCredentials, String form) {
		HttpRequest request = newRequest(url)
			.header("Authorization", "Basic " + basicCredentials)
			.header("Content-Type", "application/x-www-form-urlencoded")
			.header("Accept", "application/json")
			.POST(HttpRequest.BodyPublishers.ofString(form, StandardCharsets.UTF_8))
			.build();

		return send(request, url, MAX_JSON_BYTES);
	}

	/** POST de JSON com token Bearer. Não é repetido em caso de falha. */
	public RTCHttpResponse postJson(String url, String bearerToken, String json) {
		HttpRequest request = newRequest(url)
			.header("Authorization", "Bearer " + bearerToken)
			.header("Content-Type", "application/json")
			.header("Accept", "application/json")
			.POST(HttpRequest.BodyPublishers.ofString(json, StandardCharsets.UTF_8))
			.build();

		return send(request, url, MAX_JSON_BYTES);
	}

	/** GET de JSON com token Bearer, repetido em 429 e 5xx. */
	public RTCHttpResponse getJson(String url, String bearerToken) {
		HttpRequest request = newRequest(url)
			.header("Authorization", "Bearer " + bearerToken)
			.header("Accept", "application/json")
			.GET()
			.build();

		return sendWithRetry(request, url, MAX_JSON_BYTES);
	}

	/**
	 * Baixa o arquivo de uma URL assinada. Vai sem cabeçalho de autorização: a
	 * URL já é a autorização, e um cabeçalho a mais invalida a assinatura.
	 *
	 * @param maxBytes tamanho máximo aceito
	 * @return o conteúdo baixado
	 * @throws RTCApiException se o servidor recusar o download
	 */
	public byte[] download(String signedURL, long maxBytes) {
		HttpRequest request = newRequest(signedURL).GET().build();

		RTCHttpResponse response = sendWithRetry(request, signedURL, maxBytes);

		if (!response.isSuccess())
			throw RTCApiException.of("liberação do arquivo para download", response);

		return response.getBody();
	}

	private HttpRequest.Builder newRequest(String url) {
		return HttpRequest.newBuilder(URI.create(url)).timeout(timeout);
	}

	private RTCHttpResponse sendWithRetry(HttpRequest request, String url, long maxBytes) {
		for (int attempt = 0; ; attempt++) {
			RTCHttpResponse response;

			try {
				response = send(request, url, maxBytes);
			} catch (ResponseTooLargeException e) {
				// baixar de novo daria no mesmo
				throw e;
			} catch (AdempiereException e) {
				// falha de transporte: vale tentar de novo, a menos que já se
				// tenha esgotado as tentativas
				if (attempt >= RETRY_DELAYS_SECONDS.length)
					throw e;

				sleep(RETRY_DELAYS_SECONDS[attempt]);
				continue;
			}

			Integer delay = getRetryDelaySeconds(response.getStatus(), response.getRetryAfterSeconds(), attempt);

			if (delay == null)
				return response;

			if (log.isLoggable(Level.INFO))
				log.info("Receita respondeu HTTP " + response.getStatus() + " em " + RTCUtil.hostOf(url)
						+ "; nova tentativa em " + delay + "s");

			sleep(delay);
		}
	}

	/**
	 * Quanto esperar antes de repetir uma chamada idempotente.
	 *
	 * @param attempt tentativas já feitas, a partir de 0
	 * @return a espera em segundos, ou nulo se não vale repetir
	 */
	public static Integer getRetryDelaySeconds(int status, Integer retryAfterSeconds, int attempt) {
		if (attempt >= RETRY_DELAYS_SECONDS.length)
			return null;

		if (status >= 500)
			return RETRY_DELAYS_SECONDS[attempt];

		// 429: a janela do limite é desconhecida, e cada repetição pode contar
		// nele; só vale repetir se a própria Receita pedir uma espera curta
		if (status == 429 && retryAfterSeconds != null && retryAfterSeconds <= MAX_RETRY_AFTER_SECONDS)
			return Math.max(1, retryAfterSeconds);

		return null;
	}

	private RTCHttpResponse send(HttpRequest request, String url, long maxBytes) {
		try {
			HttpResponse<InputStream> response = client.send(request, HttpResponse.BodyHandlers.ofInputStream());

			Integer retryAfter = RTCHttpResponse.parseRetryAfter(response.headers().firstValue("Retry-After").orElse(null));

			try (InputStream in = response.body()) {
				return new RTCHttpResponse(response.statusCode(), readLimited(in, maxBytes, url), retryAfter);
			}
		} catch (InterruptedException e) {
			Thread.currentThread().interrupt();
			throw new AdempiereException("A comunicação com a Receita Federal foi interrompida.");
		} catch (IOException e) {
			// o log leva só o host: a URL pode ser a assinada
			log.log(Level.WARNING, "Falha de comunicação com " + RTCUtil.hostOf(url) + ": " + e.getClass().getSimpleName());
			throw new AdempiereException(describeTransportFailure(url, e), e);
		}
	}

	private static byte[] readLimited(InputStream in, long maxBytes, String url) throws IOException {
		try (ByteArrayOutputStream buffer = new ByteArrayOutputStream()) {
			byte[] chunk = new byte[8192];
			int read;

			while ((read = in.read(chunk)) != -1) {
				buffer.write(chunk, 0, read);

				if (buffer.size() > maxBytes)
					throw new ResponseTooLargeException("A resposta de " + RTCUtil.hostOf(url) + " passou do tamanho máximo de "
							+ (maxBytes / (1024 * 1024)) + " MB. Se o arquivo for legítimo, aumente o "
							+ "LBR_RTC_FISCO_DOWNLOAD_MAX_MB.");
			}

			return buffer.toByteArray();
		}
	}

	/** Resposta acima do teto: não adianta repetir a chamada */
	private static class ResponseTooLargeException extends AdempiereException {
		private static final long serialVersionUID = 1L;

		ResponseTooLargeException(String message) {
			super(message);
		}
	}

	private static void sleep(int seconds) {
		try {
			Thread.sleep(seconds * 1000L);
		} catch (InterruptedException e) {
			Thread.currentThread().interrupt();
			throw new AdempiereException("A comunicação com a Receita Federal foi interrompida.");
		}
	}

	/**
	 * Falha de transporte em uma frase que quem opera entende, com o que
	 * verificar. Mesmo espírito de {@code SefazHttpClient.describeTransportFailure}.
	 */
	static String describeTransportFailure(String url, IOException e) {
		String host = RTCUtil.hostOf(url);
		String reason;
		String hint;

		if (e instanceof UnknownHostException) {
			reason = "o endereço " + host + " não foi encontrado";
			hint = "Verifique o acesso à internet, o DNS e o proxy do servidor de aplicação";
		}
		else if (e instanceof HttpConnectTimeoutException) {
			reason = "não foi possível abrir conexão com " + host + " dentro do tempo limite";
			hint = "Verifique o acesso à internet e se o firewall ou o proxy liberam a saída para a Receita";
		}
		else if (e instanceof HttpTimeoutException) {
			reason = host + " não respondeu dentro do tempo limite";
			hint = "Tente novamente em alguns minutos; se persistir, aumente o LBR_RTC_FISCO_HTTP_TIMEOUT_SECONDS";
		}
		else if (e instanceof ConnectException || e instanceof NoRouteToHostException) {
			reason = "não foi possível abrir conexão com " + host;
			hint = "Verifique o acesso à internet e se o firewall ou o proxy liberam a saída para a Receita";
		}
		else if (e instanceof SSLHandshakeException) {
			reason = host + " recusou a conexão segura";
			hint = "Verifique a data e a hora do servidor e se algum proxy está interceptando o HTTPS";
		}
		else if (e instanceof SSLException) {
			reason = host + " encerrou a conexão segura";
			hint = "Costuma ser instabilidade do serviço ou bloqueio de firewall/proxy — tente novamente em alguns minutos";
		}
		else {
			reason = "a comunicação falhou (" + e.getClass().getSimpleName() + ")";
			hint = "Tente novamente; se persistir, o detalhe técnico está no log do servidor";
		}

		return "Não foi possível concluir a comunicação com a Receita Federal: " + reason + ". " + hint + ".";
	}
}
