package org.idempierelbr.rtc.client;

import java.time.Duration;
import java.time.Instant;
import java.time.LocalDate;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;

/**
 * Cota de chamadas de uma rota da Receita, como o gateway informa em toda
 * resposta: {@code RateLimit-Limit}, {@code RateLimit-Remaining} e
 * {@code RateLimit-Reset} (segundos até renovar).
 *
 * <p>A Receita não documenta essas cotas. Em 04/11/2026 a rota de download
 * respondeu com 8 por dia, renovadas à meia-noite UTC (21:00 em Brasília); a
 * de situação recusou a quinta consulta do dia.
 *
 * @author Alan Lescano
 */
public final class RTCQuota {

	private static final DateTimeFormatter TIME = DateTimeFormatter.ofPattern("HH:mm");
	private static final DateTimeFormatter DATE_TIME = DateTimeFormatter.ofPattern("dd/MM 'às' HH:mm");

	private final int limit;
	private final int remaining;
	private final Instant resetAt;

	public RTCQuota(int limit, int remaining, Instant resetAt) {
		this.limit = limit;
		this.remaining = remaining;
		this.resetAt = resetAt;
	}

	/**
	 * Lê a cota dos cabeçalhos.
	 *
	 * @param receivedAt quando a resposta chegou, base do {@code RateLimit-Reset}
	 * @return a cota, ou nulo se o limite ou o restante não vierem
	 */
	public static RTCQuota parse(String limit, String remaining, String resetSeconds, Instant receivedAt) {
		Integer limitValue = parseNonNegative(limit);
		Integer remainingValue = parseNonNegative(remaining);

		if (limitValue == null || remainingValue == null)
			return null;

		Integer reset = parseNonNegative(resetSeconds);

		return new RTCQuota(limitValue, remainingValue,
				reset == null || receivedAt == null ? null : receivedAt.plusSeconds(reset));
	}

	public int getLimit() {
		return limit;
	}

	public int getRemaining() {
		return remaining;
	}

	/** Quando a cota renova, ou nulo se a Receita não informou */
	public Instant getResetAt() {
		return resetAt;
	}

	/** "restam 6 de 8 (renova às 21:00)" */
	public String describe(Instant now, ZoneId zone) {
		String text = "restam " + remaining + " de " + limit;

		if (resetAt != null)
			text += " (renova " + describeWhen(resetAt, now, zone) + ")";

		return text;
	}

	/**
	 * Um momento próximo como quem opera lê: "em 30 s" se faltar pouco, senão
	 * a hora — "às 21:00", "amanhã às 21:00" ou "em 06/11 às 21:00".
	 */
	public static String describeWhen(Instant at, Instant now, ZoneId zone) {
		long seconds = Duration.between(now, at).getSeconds();

		if (seconds < 120)
			return "em " + Math.max(seconds, 0) + " s";

		ZonedDateTime when = at.atZone(zone);
		LocalDate today = now.atZone(zone).toLocalDate();

		if (when.toLocalDate().equals(today))
			return "às " + TIME.format(when);

		if (when.toLocalDate().equals(today.plusDays(1)))
			return "amanhã às " + TIME.format(when);

		return "em " + DATE_TIME.format(when);
	}

	@Override
	public String toString() {
		return remaining + "/" + limit + (resetAt == null ? "" : " até " + resetAt);
	}

	/** Inteiro não negativo, ou nulo se ausente ou em outro formato */
	static Integer parseNonNegative(String value) {
		if (value == null || value.trim().isEmpty())
			return null;

		try {
			int number = Integer.parseInt(value.trim());
			return number < 0 ? null : number;
		} catch (NumberFormatException e) {
			return null;
		}
	}
}
