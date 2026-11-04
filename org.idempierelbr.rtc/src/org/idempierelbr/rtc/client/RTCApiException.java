package org.idempierelbr.rtc.client;

import java.time.Instant;
import java.time.ZoneId;

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
	private final Instant retryAt;

	public RTCApiException(String message, int httpStatus, String errorCode, String errorMessage) {
		this(message, httpStatus, errorCode, errorMessage, null, null);
	}

	public RTCApiException(String message, int httpStatus, String errorCode, String errorMessage,
			Integer retryAfterSeconds, Instant retryAt) {
		super(message);
		this.httpStatus = httpStatus;
		this.errorCode = errorCode;
		this.errorMessage = errorMessage;
		this.retryAfterSeconds = retryAfterSeconds;
		this.retryAt = retryAt;
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
		else if (response.getStatus() == 429)
			message.append(": ").append(describeRateLimit(response.getQuota()));
		else
			message.append(": ").append(describeStatus(response.getStatus()));

		if (response.getStatus() == 429)
			message.append(describeRetry(response.getRetryAt(), response.getReceivedAt(), ZoneId.systemDefault()));

		return new RTCApiException(message.toString(), response.getStatus(), errorCode, errorMessage,
				response.getRetryAfterSeconds(), response.getStatus() == 429 ? response.getRetryAt() : null);
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

	/**
	 * Num 429, quando a Receita volta a aceitar chamadas — pelo
	 * {@code Retry-After} ou pela renovação da cota —, ou nulo se ela não
	 * informou
	 */
	public Instant getRetryAt() {
		return retryAt;
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

	/** "limite de 8 chamadas excedido", quando a Receita informa a cota */
	static String describeRateLimit(RTCQuota quota) {
		return "limite " + (quota != null && quota.getLimit() > 0 ? "de " + quota.getLimit() + " chamadas"
				: "de chamadas") + " excedido";
	}

	/**
	 * Quando tentar de novo, como quem opera lê: a hora, e não a espera — a
	 * cota da Receita renova à meia-noite UTC, e "13 h" não diz que é às 21:00.
	 */
	static String describeRetry(Instant retryAt, Instant now, ZoneId zone) {
		if (retryAt == null)
			return "; tente mais tarde";

		return "; a Receita volta a aceitar chamadas " + RTCQuota.describeWhen(retryAt, now, zone);
	}

	/** O que o status costuma significar, quando a Receita não explica */
	private static String describeStatus(int status) {
		switch (status) {
			case 401: return "credencial inválida ou token vencido";
			case 403: return "a credencial não tem permissão para este CNPJ ou serviço";
			case 404: return "recurso não encontrado";
			default:
				return status >= 500 ? "instabilidade no serviço da Receita; tente novamente em alguns minutos"
						: "resposta inesperada";
		}
	}
}
