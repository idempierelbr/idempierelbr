package org.idempierelbr.mdfe.test;

import java.util.Random;

/**
 * Seeded generators of hostile text for the CIOT number and the CNPJ/CPF of
 * its responsible: separators, invisible and control characters, digits of
 * other scripts, XML specials. Shared by the generator and the form tests.
 * <p>
 * A longer or different run: system properties {@code mdfe.fuzz.cases} and
 * {@code mdfe.fuzz.seed} of the test JVM (with Tycho, inside
 * {@code -Dtycho.testArgLine=...}).
 */
final class HostileInput {

	static final long SEED = Long.getLong("mdfe.fuzz.seed", 20261027L);
	static final int CASES = Integer.getInteger("mdfe.fuzz.cases", 1000);

	private static final String[] NOISE = { ".", "-", "/", " ", "\t", "\n", "\r", " ", " ", " ",
			"​", "﻿", "\u0000", "\u0085", "‏", "́", "😀", "<", ">", "&", "\"", "'",
			"]]>", "a", "Z", "ç", "Ã", "ß", "İ", "ı",
			// digits of other scripts: Arabic-Indic, Persian, Devanagari, full width, math bold, Mongolian
			"٣", "۳", "३", "３", "𝟑", "᠓",
			// look like digits, are not: superscript, circled, roman
			"³", "③", "Ⅲ" };

	private HostileInput() {
	}

	/** Mostly 0, 11, 12 or 13 ASCII digits mixed with noise; sometimes up to 40 digits, sometimes null. */
	static String number(Random random) {
		int[] targets = { 0, 1, 11, 12, 12, 12, 12, 13, 14, 24 };
		int digits = random.nextInt(5) == 0 ? random.nextInt(41) : targets[random.nextInt(targets.length)];
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < digits; i++) {
			noise(random, sb, 4);
			sb.append((char) ('0' + random.nextInt(10)));
		}
		noise(random, sb, 3);
		return (sb.length() == 0 && random.nextBoolean()) ? null : sb.toString();
	}

	/** A numeric, masked, alphanumeric or broken CNPJ with noise; sometimes null. */
	static String cnpj(Random random) {
		String[] bases = { "12345678000199", "12.345.678/0001-99", "12ABC34501DE35", "12abc34501de35",
				"12.ABC.345/01DE-35", "1234567800019", "123456780001999", "ABCDEFGHIJKLMN", "" };
		if (random.nextInt(10) == 0)
			return null;
		StringBuilder sb = new StringBuilder();
		for (char c : bases[random.nextInt(bases.length)].toCharArray()) {
			noise(random, sb, 6);
			sb.append(c);
		}
		noise(random, sb, 4);
		return sb.toString();
	}

	/** Null, a valid CPF with or without mask, or hostile digits. */
	static String cpf(Random random) {
		switch (random.nextInt(4)) {
		case 0:
			return null;
		case 1:
			return "12345678909";
		case 2:
			return "123.456.789-09";
		default:
			return number(random);
		}
	}

	/** The ASCII digits only: what the XSD types of CIOT and CPF accept. */
	static String asciiDigits(String s) {
		return s == null ? "" : s.replaceAll("[^0-9]", "");
	}

	/** Printable form for failure messages: non-ASCII and control characters as \\uXXXX. */
	static String escape(String s) {
		if (s == null)
			return "null";
		StringBuilder sb = new StringBuilder();
		s.codePoints().forEach(cp -> {
			if (cp >= 0x20 && cp < 0x7F)
				sb.appendCodePoint(cp);
			else
				sb.append(String.format("\\u%04X", cp));
		});
		return sb.toString();
	}

	/** Appends noise while a 1-in-{@code oneIn} draw hits. */
	private static void noise(Random random, StringBuilder sb, int oneIn) {
		while (random.nextInt(oneIn) == 0)
			sb.append(NOISE[random.nextInt(NOISE.length)]);
	}
}
