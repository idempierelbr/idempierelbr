package org.idempierelbr.rtc.provider;

import java.sql.Timestamp;

/**
 * Situação de uma solicitação na Receita, como o endpoint de situação a
 * devolve.
 *
 * @author Alan Lescano
 */
public final class RTCFiscoStatus {

	/** Estados do campo {@code estado} */
	public enum State {
		PENDENTE, EM_PROCESSAMENTO, CONCLUIDA, ERRO;

		/**
		 * @return o estado, ou nulo se a Receita mandar um valor que o LBR
		 *         ainda não conhece
		 */
		public static State of(String value) {
			if (value == null)
				return null;

			for (State state : values())
				if (state.name().equalsIgnoreCase(value.trim()))
					return state;

			return null;
		}
	}

	private final State state;
	private final String rawState;
	private final String signedURL;
	private final Timestamp signedURLExpiresAt;
	private final String errorCode;
	private final String errorMessage;

	public RTCFiscoStatus(State state, String rawState, String signedURL, Timestamp signedURLExpiresAt,
			String errorCode, String errorMessage) {
		this.state = state;
		this.rawState = rawState;
		this.signedURL = signedURL;
		this.signedURLExpiresAt = signedURLExpiresAt;
		this.errorCode = errorCode;
		this.errorMessage = errorMessage;
	}

	/** Estado conhecido, ou nulo — nesse caso ver {@link #getRawState()} */
	public State getState() {
		return state;
	}

	/** O {@code estado} tal como veio */
	public String getRawState() {
		return rawState;
	}

	public String getSignedURL() {
		return signedURL;
	}

	public Timestamp getSignedURLExpiresAt() {
		return signedURLExpiresAt;
	}

	public String getErrorCode() {
		return errorCode;
	}

	public String getErrorMessage() {
		return errorMessage;
	}
}
