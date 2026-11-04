package org.idempierelbr.rtc.provider;

/**
 * Situação de uma solicitação na Receita, como o endpoint de situação a
 * devolve. A URL de download não vem aqui: ver {@link RTCFiscoDownloadLink}.
 *
 * <p>Um tíquete que a Receita não conhece mais não tem situação: é
 * {@link #isNotFound()}, com o código e a mensagem que vieram.
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
	private final boolean notFound;

	public RTCFiscoStatus(State state, String rawState, String errorCode, String errorMessage) {
		this(state, rawState, errorCode, errorMessage, false);
	}

	private RTCFiscoStatus(State state, String rawState, String errorCode, String errorMessage, boolean notFound) {
		this.state = state;
		this.rawState = rawState;
		this.errorCode = errorCode;
		this.errorMessage = errorMessage;
		this.notFound = notFound;
	}

	/**
	 * Tíquete que a Receita não encontra — {@code SOLICITACAO_NAO_ENCONTRADA},
	 * que não consta da documentação, mas é o que ela devolve depois que o
	 * tíquete deixa de existir.
	 */
	public static RTCFiscoStatus notFound(String errorCode, String errorMessage) {
		return new RTCFiscoStatus(null, null, errorCode, errorMessage, true);
	}

	/** A Receita não encontra mais o tíquete? Nesse caso não há estado. */
	public boolean isNotFound() {
		return notFound;
	}

	/** Estado conhecido, ou nulo — nesse caso ver {@link #getRawState()} e {@link #isNotFound()} */
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
