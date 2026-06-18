package org.idempierelbr.nfe.util;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.Socket;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MRegion;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.idempierelbr.base.model.MLBRNFeWebService;

/**
 * SOAP 1.2 / HTTPS transport client for SEFAZ NF-e 4.0 web services.
 * <p>
 * Replaces the Apache Axis2 1.6.2 stack, which is incompatible with Java 17 JPMS.
 * Posts SOAP envelopes built by {@link SefazSoapUtils} via {@link HttpsURLConnection}
 * with mutual TLS, and returns the inner NF-e response XML.
 * <p>
 * One instance per request is the intended usage — the constructor resolves the target
 * region and validates the service name eagerly.
 */
public class SefazHttpClient {

	private static final CLogger log = CLogger.getCLogger(SefazHttpClient.class);

	private static final String CONTENT_TYPE_SOAP = "application/soap+xml; charset=UTF-8";

	private static final int CONNECT_TIMEOUT_MS = 30_000;
	private static final int READ_TIMEOUT_MS    = 60_000;
	private static final int READ_BUFFER_SIZE   = 4_096;
	private static final int MAX_RESPONSE_BYTES = 10 * 1024 * 1024; // 10 MB

	private static final String[] REQUIRED_TLS_PROTOCOLS = { "TLSv1.2", "TLSv1.3" };
	private static final String[] REQUIRED_CIPHER_SUITES = {
		// TLS 1.3 — fixed suites per RFC 8446
		"TLS_AES_128_GCM_SHA256",
		"TLS_AES_256_GCM_SHA384",
		"TLS_CHACHA20_POLY1305_SHA256",
		// TLS 1.2 — ECDHE + AES-GCM only
		"TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256",
		"TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384",
		"TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256",
		"TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384",
	};

	private static final HttpConnectionFactory DEFAULT_CONNECTION_FACTORY =
		url -> (HttpsURLConnection) new URL(url).openConnection();

	private final SSLContext            sslContext;
	private final String                versionNo;
	private final String                service;
	private final String                envType;
	private final MRegion               region;
	private final String                LBR_NFeModel;
	private final String                autorizador;
	private final HttpConnectionFactory connectionFactory;

	/**
	 * @param sslContext    mutual-TLS context produced by {@link DigitalCertificateUtil#buildSSLContext}
	 * @param isHomologacao {@code true} maps to SEFAZ environment type "2" (homologação),
	 *                      {@code false} to "1" (produção)
	 * @param LBR_NFeModel  NF-e model code used for URL resolution ("55" = NF-e, "65" = NFC-e)
	 * @param autorizador   {@code "AN"} for SVC-AN, {@code "RS"} for SVC-RS,
	 *                      {@code null} for the primary state SEFAZ
	 */
	public SefazHttpClient(SSLContext sslContext, String versionNo, int C_Region_ID,
			String service, boolean isHomologacao, String LBR_NFeModel, String autorizador) {

		if (sslContext == null || versionNo == null || service == null || C_Region_ID <= 0)
			throw new IllegalArgumentException("sslContext, versionNo, service and C_Region_ID are required");

		if (!SefazSoapUtils.isKnownService(service))
			throw new AdempiereException("Unsupported SEFAZ service: " + service);

		this.sslContext        = sslContext;
		this.versionNo         = versionNo;
		this.service           = service;
		this.envType           = isHomologacao ? NFeUtil.ENV_HOMOLOGACAO : NFeUtil.ENV_PRODUCAO;
		this.region            = new MRegion(Env.getCtx(), C_Region_ID, null);
		this.LBR_NFeModel      = LBR_NFeModel;
		this.autorizador       = autorizador;
		this.connectionFactory = DEFAULT_CONNECTION_FACTORY;
	}

	/**
	 * For testing only — skips the {@link MRegion} database lookup.
	 * Only {@code sslContext} and {@code connectionFactory} are used by {@link #post};
	 * the remaining fields are irrelevant for transport-layer tests.
	 */
	public SefazHttpClient(SSLContext sslContext, String service, String envType,
			HttpConnectionFactory connectionFactory) {

		if (!SefazSoapUtils.isKnownService(service))
			throw new AdempiereException("Unsupported SEFAZ service: " + service);

		this.sslContext        = sslContext;
		this.versionNo         = null;
		this.service           = service;
		this.envType           = envType;
		this.region            = null;
		this.LBR_NFeModel      = null;
		this.autorizador       = null;
		this.connectionFactory = connectionFactory;
	}

	/**
	 * Validates {@code xmlPayload} as well-formed XML, resolves the SEFAZ endpoint URL,
	 * builds a SOAP 1.2 envelope, and returns the inner NF-e result element as a string.
	 *
	 * @param xmlPayload the NF-e XML to send; must be well-formed and non-blank.
	 *                   A {@code <nfeDadosMsg>} wrapper is stripped if present — callers
	 *                   may pass pre-wrapped payloads from legacy code paths.
	 * @return the inner response XML element extracted from the SOAP Body, without the
	 *         SOAP envelope or the service-level wrapper
	 * @throws IllegalArgumentException if {@code xmlPayload} is null, blank, or not well-formed XML
	 * @throws AdempiereException       if no URL is configured for this service (thrown by
	 *                                  {@link MLBRNFeWebService#getURL}), or if the server returns a SOAP Fault
	 */
	public String send(String xmlPayload) throws Exception {
		if (xmlPayload == null || xmlPayload.isBlank())
			throw new IllegalArgumentException("xmlPayload must not be null or blank");

		try {
			SefazSoapUtils.newHardenedDocumentBuilder().parse(
					new ByteArrayInputStream(xmlPayload.trim().getBytes(StandardCharsets.UTF_8)));
		} catch (Exception e) {
			throw new IllegalArgumentException("xmlPayload is not well-formed XML");
		}

		String url = MLBRNFeWebService.getURL(service, envType, versionNo, region.getC_Region_ID(), LBR_NFeModel, autorizador);

		// Log only service and env, never the full URL
		log.fine("SEFAZ POST — service=" + service + " env=" + envType);

		return post(url, SefazSoapUtils.getSoapAction(service), SefazSoapUtils.buildEnvelope(service, xmlPayload));
	}

	public String post(String endpoint, String soapAction, String envelope) throws Exception {
		// Enforce HTTPS — must not send fiscal data over plain HTTP
		if (!endpoint.startsWith("https://"))
			throw new AdempiereException("SEFAZ endpoint must use HTTPS: " + endpoint);

		byte[] body = envelope.getBytes(StandardCharsets.UTF_8);

		HttpsURLConnection conn = connectionFactory.open(endpoint);
		// Restrict to TLS 1.2/1.3 and modern cipher suites
		conn.setSSLSocketFactory(new TlsSocketFactory(sslContext.getSocketFactory()));
		conn.setConnectTimeout(CONNECT_TIMEOUT_MS);
		conn.setReadTimeout(READ_TIMEOUT_MS);
		conn.setDoOutput(true);
		conn.setRequestMethod("POST");
		conn.setRequestProperty("Content-Type",   CONTENT_TYPE_SOAP);
		conn.setRequestProperty("SOAPAction",     soapAction);
		conn.setRequestProperty("Content-Length", String.valueOf(body.length));

		try {
			try (OutputStream out = conn.getOutputStream()) {
				out.write(body);
			}

			int status = conn.getResponseCode();
			InputStream responseStream = (status >= 200 && status < 300)
					? conn.getInputStream() : conn.getErrorStream();

			if (responseStream == null)
				throw new AdempiereException("SEFAZ returned HTTP " + status + " with no response body");

			// Cap response size to prevent heap exhaustion
			byte[] responseBytes;
			try (ByteArrayOutputStream buf = new ByteArrayOutputStream()) {
				byte[] chunk = new byte[READ_BUFFER_SIZE];
				int read;
				while ((read = responseStream.read(chunk)) != -1) {
					buf.write(chunk, 0, read);
					if (buf.size() > MAX_RESPONSE_BYTES)
						throw new AdempiereException("SEFAZ response exceeds maximum allowed size ("
								+ MAX_RESPONSE_BYTES + " bytes)");
				}
				responseBytes = buf.toByteArray();
			}

			return SefazSoapUtils.extractSoapBodyContent(new String(responseBytes, StandardCharsets.UTF_8));
		} finally {
			conn.disconnect();
		}
	}

	/**
	 * Returns an {@link SSLSocketFactory} that restricts every created socket to TLS 1.2/1.3
	 * and the cipher-suite allowlist. Exposed for testing — allows verifying TLS enforcement
	 * without opening a network connection.
	 */
	public static SSLSocketFactory createTlsSocketFactory(SSLContext ctx) {
		return new TlsSocketFactory(ctx.getSocketFactory());
	}

	/**
	 * Delegating {@link SSLSocketFactory} that restricts every created socket to TLS 1.2/1.3
	 * and a curated cipher-suite allowlist (AES-GCM + ChaCha20-Poly1305).
	 * <p>
	 * {@link HttpsURLConnection} does not expose an {@code SSLParameters} setter, so the only
	 * way to enforce protocol and cipher restrictions per-connection is to wrap the factory
	 * and call {@link SSLSocket#setEnabledProtocols} / {@link SSLSocket#setEnabledCipherSuites}
	 * on every socket before it is handed back to the caller.
	 */
	private static final class TlsSocketFactory extends SSLSocketFactory {
		private final SSLSocketFactory delegate;

		TlsSocketFactory(SSLSocketFactory delegate) {
			this.delegate = delegate;
		}

		private Socket restrict(Socket s) {
			SSLSocket ssl = (SSLSocket) s;
			ssl.setEnabledProtocols(REQUIRED_TLS_PROTOCOLS);
			ssl.setEnabledCipherSuites(intersect(ssl.getSupportedCipherSuites(), REQUIRED_CIPHER_SUITES));
			return ssl;
		}

		/**
		 * Returns the subset of {@code wanted} suites that appear in {@code supported}.
		 * Not all JVM distributions include every suite in {@link #REQUIRED_CIPHER_SUITES};
		 * requesting an unsupported suite directly would cause an immediate handshake failure
		 * rather than a graceful skip.
		 */
		private static String[] intersect(String[] supported, String[] wanted) {
			Set<String> supportedSet = new HashSet<>(Arrays.asList(supported));
			List<String> result = new ArrayList<>();
			for (String cipher : wanted)
				if (supportedSet.contains(cipher)) result.add(cipher);
			if (result.isEmpty())
				throw new IllegalStateException("No acceptable TLS cipher suites supported by this JVM");
			return result.toArray(String[]::new);
		}

		@Override public String[] getDefaultCipherSuites() { return delegate.getDefaultCipherSuites(); }
		@Override public String[] getSupportedCipherSuites() { return delegate.getSupportedCipherSuites(); }

		@Override
		public Socket createSocket() throws IOException {
			return restrict(delegate.createSocket());
		}

		@Override
		public Socket createSocket(Socket s, String host, int port, boolean autoClose) throws IOException {
			return restrict(delegate.createSocket(s, host, port, autoClose));
		}

		@Override
		public Socket createSocket(String host, int port) throws IOException {
			return restrict(delegate.createSocket(host, port));
		}

		@Override
		public Socket createSocket(String host, int port, InetAddress localHost, int localPort) throws IOException {
			return restrict(delegate.createSocket(host, port, localHost, localPort));
		}

		@Override
		public Socket createSocket(InetAddress host, int port) throws IOException {
			return restrict(delegate.createSocket(host, port));
		}

		@Override
		public Socket createSocket(InetAddress address, int port, InetAddress localAddress, int localPort) throws IOException {
			return restrict(delegate.createSocket(address, port, localAddress, localPort));
		}
	}
}
