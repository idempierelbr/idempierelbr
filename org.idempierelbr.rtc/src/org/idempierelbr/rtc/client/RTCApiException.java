package org.idempierelbr.rtc.client;

import org.adempiere.exceptions.AdempiereException;
import org.idempierelbr.rtc.json.RTCJson;

import com.google.gson.JsonObject;

/**
 * Recusa da Receita a uma chamada: o status HTTP e, quando a resposta os traz,
 * o {@code codigoErro} e a {@code mensagemErro}. A mensagem já vem pronta para
 * quem opera ler.
 *
 * @author Alan Lescano
 */
public class RTCApiException extends AdempiereException {
	private static final long serialVersionUID = 1L;

	private final int httpStatus;
	private final String errorCode;
	private final String errorMessage;
	private final Integer retryAfterSeconds;

	public RTCApiException(String message, int httpStatus, String errorCode, String errorMessage) {
		this(message, httpStatus, errorCode, errorMessage, null);
	}

	public RTCApiException(String message, int httpStatus, String errorCode, String errorMessage,
			Integer retryAfterSeconds) {
		super(message);
		this.httpStatus = httpStatus;
		this.errorCode = errorCode;
		this.errorMessage = errorMessage;
		this.retryAfterSeconds = retryAfterSeconds;
	}

	/**
	 * Monta a exceção a partir de uma resposta de erro.
	 *
	 * @param operation o que se tentava fazer, como o usuário entende — por
	 *        exemplo "abertura da solicitação de débitos"
	 */
	public static RTCApiException of(String operation, RTCHttpResponse response) {
		String errorCode = null;
		String errorMessage = null;

		JsonObject json = RTCJson.parseObject(response.getBodyAsString());

		if (json != null) {
			errorCode = RTCJson.getString(json, "codigoErro");
			errorMessage = RTCJson.getString(json, "mensagemErro");
		}

		StringBuilder message = new StringBuilder("A Receita Federal recusou a ").append(operation)
			.append(" (HTTP ").append(response.getStatus());

		if (errorCode != null)
			message.append(", ").append(errorCode);

		message.append(")");

		if (errorMessage != null)
			message.append(": ").append(errorMessage);
		else
			message.append(": ").append(describeStatus(response.getStatus()));

		if (response.getStatus() == 429 && response.getRetryAfterSeconds() != null)
			message.append(" (a Receita pede para esperar ").append(describeWait(response.getRetryAfterSeconds()))
				.append(")");

		return new RTCApiException(message.toString(), response.getStatus(), errorCode, errorMessage,
				response.getRetryAfterSeconds());
	}

	public int getHttpStatus() {
		return httpStatus;
	}

	public String getErrorCode() {
		return errorCode;
	}

	public String getErrorMessage() {
		return errorMessage;
	}

	/** Espera pedida pela Receita no {@code Retry-After}, em segundos, ou nulo */
	public Integer getRetryAfterSeconds() {
		return retryAfterSeconds;
	}

	/** A Receita recusou por excesso de chamadas (HTTP 429)? */
	public boolean isRateLimited() {
		return httpStatus == 429;
	}

	/**
	 * A recusa por excesso de chamadas na cadeia de causas, se houver.
	 *
	 * @return a exceção do 429, ou nulo
	 */
	public static RTCApiException findRateLimit(Throwable e) {
		for (Throwable cause = e; cause != null; cause = cause.getCause() == cause ? null : cause.getCause())
			if (cause instanceof RTCApiException && ((RTCApiException) cause).isRateLimited())
				return (RTCApiException) cause;

		return null;
	}

	/** Espera em segundos como quem opera lê: "30 s", "5 min", "2 h" */
	static String describeWait(int seconds) {
		if (seconds < 120)
			return seconds + " s";

		int minutes = (seconds + 59) / 60;

		if (minutes < 120)
			return minutes + " min";

		return ((minutes + 59) / 60) + " h";
	}

	/** O que o status costuma significar, quando a Receita não explica */
	private static String describeStatus(int status) {
		switch (status) {
			case 401: return "credencial inválida ou token vencido";
			case 403: return "a credencial não tem permissão para este CNPJ ou serviço";
			case 404: return "recurso não encontrado";
			case 429: return "limite de chamadas excedido; tente mais tarde";
			default:
				return status >= 500 ? "instabilidade no serviço da Receita; tente novamente em alguns minutos"
						: "resposta inesperada";
		}
	}
}
