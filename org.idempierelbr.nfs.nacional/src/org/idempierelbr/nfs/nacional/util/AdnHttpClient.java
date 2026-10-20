package org.idempierelbr.nfs.nacional.util;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.nio.charset.StandardCharsets;
import java.util.Base64;
import java.util.Properties;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;

import org.idempierelbr.nfe.util.DigitalCertificateUtil;
import org.idempierelbr.nfe.util.SefazHttpClient;

/**
 * Cliente da API Sefin Nacional NFS-e (Emissor Publico Nacional).
 *
 * Contrato conforme o "Manual dos Contribuintes - Sistema Nacional NFS-e,
 * API do Emissor Publico Nacional" (v1.2, out/2025):
 *
 *   POST {base}/nfse                          gera NFS-e (sincrono) a partir do DPS
 *   GET  {base}/nfse/{chaveAcesso}            consulta NFS-e
 *   GET  {base}/dps/{id}                      recupera a chave de acesso pelo Id do DPS
 *   POST {base}/nfse/{chaveAcesso}/eventos    registra evento (ex.: cancelamento)
 *
 * Mensagens em JSON. O XML (DPS/NFS-e) trafega compactado em GZip e
 * codificado em Base64, nos campos dpsXmlGZipB64 (envio) e nfseXmlGZipB64
 * (retorno). Esses nomes de campo NAO estao no manual em PDF: vem do
 * Swagger oficial (copias publicas do JSON e varias bibliotecas abertas
 * concordam) e devem ser conferidos no Swagger de homologacao.
 *
 * {base} e' o valor de LBR_NFSeWS.URL (sem barra final, SEM "/nfse" no
 * final - o codigo acrescenta isso sozinho pra cada operacao). Conforme uma
 * biblioteca de terceiros que documenta esse mesmo formato base+sufixo
 * (nao confirmado contra o Swagger oficial, que bloqueia acesso automatizado):
 *   - Homologacao (Producao Restrita): https://sefin.producaorestrita.nfse.gov.br/API/SefinNacional
 *   - Producao:                        https://sefin.nfse.gov.br/SefinNacional
 * Repare que homologacao tem um "/API" a mais no meio que producao nao tem.
 *
 * Autenticacao: certificado digital (mTLS), o mesmo do NF-e.
 */
public class AdnHttpClient {

	private final SSLContext sslContext;

	public AdnHttpClient(Properties ctx, int AD_Org_ID) throws Exception {
		this.sslContext = DigitalCertificateUtil.buildSSLContext(ctx, AD_Org_ID);
	}

	/** Resposta HTTP simples */
	public static class Response {
		public final int status;
		public final String body;

		Response(int status, String body) {
			this.status = status;
			this.body = body;
		}

		public boolean isSuccess() {
			return status >= 200 && status < 300;
		}
	}

	/** POST /nfse: envia o DPS ja assinado (XML) */
	public Response postDps(String baseUrl, String dpsXmlAssinado) throws Exception {
		String json = "{\"dpsXmlGZipB64\":\"" + gzipBase64(dpsXmlAssinado) + "\"}";
		return request(join(baseUrl, "nfse"), "POST", json);
	}

	/** GET /nfse/{chaveAcesso} */
	public Response getNfse(String baseUrl, String chaveAcesso) throws Exception {
		return request(join(baseUrl, "nfse/" + chaveAcesso), "GET", null);
	}

	/** GET /dps/{id}: recupera a chave de acesso a partir do Id do DPS */
	public Response getDps(String baseUrl, String idDps) throws Exception {
		return request(join(baseUrl, "dps/" + idDps), "GET", null);
	}

	/**
	 * POST /nfse/{chaveAcesso}/eventos: registra um evento (cancelamento etc.)
	 * a partir do pedido de registro (pedRegEvento) com o infPedReg assinado.
	 * O retorno traz o evento registrado em eventoXmlGZipB64.
	 *
	 * TODO: conferir no Swagger de homologacao o nome do campo de envio
	 * (pedidoRegistroEventoXmlGZipB64, o mesmo usado por bibliotecas abertas
	 * do padrao nacional) e o de retorno.
	 */
	public Response postEvento(String baseUrl, String chaveAcesso, String pedRegEventoXmlAssinado) throws Exception {
		String json = "{\"pedidoRegistroEventoXmlGZipB64\":\"" + gzipBase64(pedRegEventoXmlAssinado) + "\"}";
		return request(join(baseUrl, "nfse/" + chaveAcesso + "/eventos"), "POST", json);
	}

	/**
	 * GET /nfse/{chaveAcesso}/eventos/{tipoEvento}/{nSeqEvento}: consulta um
	 * evento registrado (HTTP 404 quando nao existe).
	 *
	 * TODO: conferir o formato da rota no Swagger de homologacao.
	 */
	public Response getEvento(String baseUrl, String chaveAcesso, String tipoEvento, int nSeqEvento)
			throws Exception {
		return request(join(baseUrl, "nfse/" + chaveAcesso + "/eventos/" + tipoEvento + "/" + nSeqEvento), "GET",
				null);
	}

	// ------------------------------------------------------------------

	/**
	 * Executa a requisicao. Falhas de comunicacao (conexao recusada, timeout
	 * etc.) saem como {@link IOException}, para o chamador poder distingui-las
	 * de uma resposta de erro da API.
	 */
	private Response request(String endpoint, String method, String body) throws Exception {

		HttpsURLConnection conn = (HttpsURLConnection) URI.create(endpoint).toURL().openConnection();
		try {
			conn.setSSLSocketFactory(SefazHttpClient.createTlsSocketFactory(sslContext));
			conn.setRequestMethod(method);
			conn.setConnectTimeout(30000);
			conn.setReadTimeout(60000);
			conn.setRequestProperty("Accept", "application/json");
			conn.setRequestProperty("Content-Type", "application/json; charset=UTF-8");

			if (body != null) {
				conn.setDoOutput(true);
				try (OutputStream os = conn.getOutputStream()) {
					os.write(body.getBytes(StandardCharsets.UTF_8));
				}
			}

			int status = conn.getResponseCode();
			try (InputStream is = status >= 400 ? conn.getErrorStream() : conn.getInputStream()) {
				return new Response(status, readAll(is));
			}
		} finally {
			conn.disconnect();
		}
	}

	private static String join(String base, String path) {
		String b = base.trim();
		while (b.endsWith("/"))
			b = b.substring(0, b.length() - 1);
		return b + "/" + path;
	}

	private static String readAll(InputStream is) throws IOException {
		if (is == null)
			return "";
		ByteArrayOutputStream bos = new ByteArrayOutputStream();
		byte[] buffer = new byte[4096];
		int n;
		while ((n = is.read(buffer)) != -1)
			bos.write(buffer, 0, n);
		return new String(bos.toByteArray(), StandardCharsets.UTF_8);
	}

	// ------------------------------------------------------------------
	// Utilitarios de payload

	/** XML -> GZip -> Base64 */
	public static String gzipBase64(String xml) throws IOException {
		ByteArrayOutputStream bos = new ByteArrayOutputStream();
		try (GZIPOutputStream gz = new GZIPOutputStream(bos)) {
			gz.write(xml.getBytes(StandardCharsets.UTF_8));
		}
		return Base64.getEncoder().encodeToString(bos.toByteArray());
	}

	/** Base64 -> GZip -> XML */
	public static String gunzipBase64(String b64) throws IOException {
		byte[] zipped = Base64.getDecoder().decode(b64);
		try (GZIPInputStream gz = new GZIPInputStream(new ByteArrayInputStream(zipped))) {
			return readAll(gz);
		}
	}

	/**
	 * Extrai o valor de um campo string de primeiro nivel do JSON de resposta.
	 * Leitura manual (e nao regex): o Base64 da NFS-e pode ter dezenas de KB e
	 * uma regex com repeticao estoura a pilha nesse tamanho.
	 */
	public static String jsonString(String json, String field) {
		String key = "\"" + field + "\"";
		int i = json.indexOf(key);
		while (i >= 0) {
			int p = i + key.length();
			while (p < json.length() && Character.isWhitespace(json.charAt(p)))
				p++;
			if (p < json.length() && json.charAt(p) == ':') {
				p++;
				while (p < json.length() && Character.isWhitespace(json.charAt(p)))
					p++;
				if (p < json.length() && json.charAt(p) == '"') {
					StringBuilder sb = new StringBuilder();
					for (p++; p < json.length(); p++) {
						char c = json.charAt(p);
						if (c == '"')
							return sb.toString();
						if (c == '\\' && p + 1 < json.length()) {
							char n = json.charAt(++p);
							switch (n) {
							case 'n': sb.append('\n'); break;
							case 'r': sb.append('\r'); break;
							case 't': sb.append('\t'); break;
							case 'u':
								if (p + 4 < json.length()) {
									sb.append((char) Integer.parseInt(json.substring(p + 1, p + 5), 16));
									p += 4;
								}
								break;
							default: sb.append(n); // \" \\ \/
							}
						} else
							sb.append(c);
					}
				}
				return null; // campo existe mas nao e' string
			}
			i = json.indexOf(key, i + 1);
		}
		return null;
	}

}
