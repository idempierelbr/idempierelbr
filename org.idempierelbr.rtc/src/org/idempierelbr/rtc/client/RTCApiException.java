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

	public RTCApiException(String message, int httpStatus, String errorCode, String errorMessage) {
		super(message);
		this.httpStatus = httpStatus;
		this.errorCode = errorCode;
		this.errorMessage = errorMessage;
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

		return new RTCApiException(message.toString(), response.getStatus(), errorCode, errorMessage);
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
