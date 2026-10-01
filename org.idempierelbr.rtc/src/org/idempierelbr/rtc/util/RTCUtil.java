package org.idempierelbr.rtc.util;

import java.net.URI;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.time.OffsetDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeParseException;

/**
 * Conversões e validações comuns à integração com as APIs de apuração do
 * fisco. Sem dependência de banco, para poder ser testado isoladamente.
 *
 * @author Alan Lescano
 */
public final class RTCUtil {

	/** Fuso usado quando a Receita manda data e hora sem deslocamento */
	public static final ZoneId ZONE_BRASILIA = ZoneId.of("America/Sao_Paulo");

	private RTCUtil() {
	}

	/**
	 * Raiz de 8 dígitos a partir de um CNPJ com ou sem formatação, completo ou
	 * já só a raiz.
	 *
	 * @return os 8 dígitos, ou nulo se o valor não for nem raiz nem CNPJ
	 */
	public static String toCNPJBase(String cnpj) {
		if (cnpj == null)
			return null;

		String digits = cnpj.replaceAll("\\D", "");

		if (digits.length() == 14)
			return digits.substring(0, 8);

		return digits.length() == 8 ? digits : null;
	}

	/**
	 * Período de apuração no formato da Receita, {@code MM/AAAA}.
	 */
	public static boolean isValidPA(String pa) {
		if (pa == null || !pa.matches("\\d{2}/\\d{4}"))
			return false;

		int month = Integer.parseInt(pa.substring(0, 2));

		return month >= 1 && month <= 12;
	}

	/**
	 * Data e hora ISO-8601 como a Receita manda — com {@code Z}, com
	 * deslocamento ({@code -03:00}) e com até nanossegundos. Sem deslocamento,
	 * assume o horário de Brasília.
	 *
	 * @return o instante, ou nulo para valor vazio
	 * @throws IllegalArgumentException se o texto não for uma data e hora
	 */
	public static Timestamp parseDateTime(String value) {
		if (value == null || value.trim().isEmpty())
			return null;

		String text = value.trim();

		try {
			return Timestamp.from(OffsetDateTime.parse(text).toInstant());
		} catch (DateTimeParseException e) {
			try {
				return Timestamp.from(LocalDateTime.parse(text).atZone(ZONE_BRASILIA).toInstant());
			} catch (DateTimeParseException e2) {
				throw new IllegalArgumentException("Data e hora inválida: " + text);
			}
		}
	}

	/**
	 * Data (sem hora) de um instante, pelo calendário de Brasília, à
	 * meia-noite — como o iDempiere grava as colunas do tipo Data. Uma
	 * arrecadação às 23h de Brasília é {@code 02:00Z} do dia seguinte, e
	 * precisa cair no dia em que aconteceu no Brasil.
	 *
	 * @return a data, ou nulo para instante nulo
	 */
	public static Timestamp toDate(Timestamp instant) {
		if (instant == null)
			return null;

		return Timestamp.valueOf(instant.toInstant().atZone(ZONE_BRASILIA).toLocalDate().atStartOfDay());
	}

	/**
	 * Como {@link #parseDateTime(String)}, mas devolve nulo em vez de lançar
	 * exceção — para campos cuja falta não deve interromper o fluxo, como o
	 * vencimento da URL assinada.
	 */
	public static Timestamp parseDateTimeOrNull(String value) {
		try {
			return parseDateTime(value);
		} catch (IllegalArgumentException e) {
			return null;
		}
	}

	/**
	 * Segundos informados como texto, como a Receita manda o
	 * {@code tEASegundos}.
	 *
	 * @return o valor, ou 0 se vier vazio ou não numérico
	 */
	public static int parseSeconds(String value) {
		if (value == null)
			return 0;

		try {
			return Integer.parseInt(value.trim());
		} catch (NumberFormatException e) {
			return 0;
		}
	}

	/**
	 * Compara dois segredos em tempo constante, para que o tempo de resposta do
	 * webhook não revele quantos caracteres coincidiram.
	 */
	public static boolean secretEquals(String expected, String received) {
		if (expected == null || received == null)
			return false;

		return MessageDigest.isEqual(expected.getBytes(StandardCharsets.UTF_8),
				received.getBytes(StandardCharsets.UTF_8));
	}

	/**
	 * Só o host de uma URL — o que pode ir para log e para a tela. A URL
	 * assinada inteira é um segredo e não deve aparecer em lugar nenhum.
	 */
	public static String hostOf(String url) {
		if (url == null)
			return "";

		try {
			String host = URI.create(url.trim()).getHost();
			return host == null ? "" : host;
		} catch (IllegalArgumentException e) {
			return "";
		}
	}
}
