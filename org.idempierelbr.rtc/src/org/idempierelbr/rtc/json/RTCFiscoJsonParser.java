package org.idempierelbr.rtc.json;

import java.nio.charset.StandardCharsets;

import org.adempiere.exceptions.AdempiereException;
import org.idempierelbr.rtc.json.dto.FiscoApuracaoFileDTO;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonParseException;

/**
 * Lê o arquivo de apuração baixado da Receita.
 *
 * @author Alan Lescano
 */
public final class RTCFiscoJsonParser {

	private static final Gson gson = new GsonBuilder().create();

	private RTCFiscoJsonParser() {
	}

	/**
	 * @param content o arquivo como veio, em UTF-8
	 * @return o conteúdo lido, nunca nulo
	 * @throws AdempiereException se o arquivo não for um JSON de apuração
	 */
	public static FiscoApuracaoFileDTO parse(byte[] content) {
		if (content == null || content.length == 0)
			throw new AdempiereException("O arquivo de apuração está vazio.");

		String text = new String(content, StandardCharsets.UTF_8);

		// BOM de arquivo salvo em editor do Windows
		if (text.startsWith("﻿"))
			text = text.substring(1);

		FiscoApuracaoFileDTO file;

		try {
			file = gson.fromJson(text, FiscoApuracaoFileDTO.class);
		} catch (JsonParseException e) {
			throw new AdempiereException("O arquivo de apuração não é um JSON válido: " + e.getMessage(), e);
		}

		if (file == null || file.apuracao == null)
			throw new AdempiereException("O arquivo não tem o grupo \"apuracao\": não parece um arquivo de "
					+ "apuração da Receita Federal.");

		return file;
	}
}
