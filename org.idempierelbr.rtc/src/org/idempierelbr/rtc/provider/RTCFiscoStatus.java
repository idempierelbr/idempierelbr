package org.idempierelbr.rtc.provider;

/**
 * Situação de uma solicitação na Receita, como o endpoint de situação a
 * devolve. A URL de download não vem aqui: ver {@link RTCFiscoDownloadLink}.
 *
 * @author Alan Lescano
 */
public final class RTCFiscoStatus {

	/** Valores do campo {@code situacao} */
	public enum State {
		PENDENTE, EM_PROCESSAMENTO, CONCLUIDA, ERRO, EXPIRADA;

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
	private final String errorCode;
	private final String errorMessage;

	public RTCFiscoStatus(State state, String rawState, String errorCode, String errorMessage) {
		this.state = state;
		this.rawState = rawState;
		this.errorCode = errorCode;
		this.errorMessage = errorMessage;
	}

	/** Estado conhecido, ou nulo — nesse caso ver {@link #getRawState()} */
	public State getState() {
		return state;
	}

	/** A {@code situacao} tal como veio */
	public String getRawState() {
		return rawState;
	}

	public String getErrorCode() {
		return errorCode;
	}

	public String getErrorMessage() {
		return errorMessage;
	}
}
