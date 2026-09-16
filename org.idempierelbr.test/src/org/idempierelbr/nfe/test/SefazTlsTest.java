package org.idempierelbr.nfe.test;

import static org.assertj.core.api.Assertions.assertThat;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

import org.idempierelbr.nfe.util.SefazHttpClient;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

/**
 * TLS enforcement tests for {@link SefazHttpClient#createTlsSocketFactory}.
 * Uses the real JDK TLS stack to verify protocol and cipher restrictions.
 * No network connection is opened — sockets are inspected and immediately closed.
 */
class SefazTlsTest {

	private SSLSocketFactory factory;

	@BeforeEach
	void setUp() throws Exception {
		SSLContext ctx = SSLContext.getInstance("TLS");
		ctx.init(null, null, null);
		factory = SefazHttpClient.createTlsSocketFactory(ctx);
	}

	@Test
	void createSocket_enablesOnlyTls12AndTls13_whenSocketCreated() throws Exception {
		try (SSLSocket socket = (SSLSocket) factory.createSocket()) {
			assertThat(socket.getEnabledProtocols())
				.containsExactlyInAnyOrder("TLSv1.2", "TLSv1.3");
		}
	}

	@Test
	void createSocket_excludesLegacyProtocols_whenSocketCreated() throws Exception {
		try (SSLSocket socket = (SSLSocket) factory.createSocket()) {
			assertThat(socket.getEnabledProtocols())
				.doesNotContain("TLSv1", "TLSv1.1", "SSLv3");
		}
	}

	@Test
	void createSocket_restrictsToApprovedCipherSuites_whenSocketCreated() throws Exception {
		Set<String> allowlist = new HashSet<>(Arrays.asList(
			"TLS_AES_128_GCM_SHA256",
			"TLS_AES_256_GCM_SHA384",
			"TLS_CHACHA20_POLY1305_SHA256",
			"TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256",
			"TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384",
			"TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256",
			"TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384",
			"TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384",
			"TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256",
			"TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384",
			"TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256",
			"TLS_DHE_RSA_WITH_AES_128_GCM_SHA256",
			"TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"
		));
		try (SSLSocket socket = (SSLSocket) factory.createSocket()) {
			for (String suite : socket.getEnabledCipherSuites())
				assertThat(allowlist)
					.as("cipher suite not in allowlist: %s", suite)
					.contains(suite);
		}
	}

	/**
	 * Guards the suites that some SEFAZ front ends accept and nothing else: the Ambiente
	 * Nacional (manifestação do destinatário) and SEFAZ-BA only do ECDHE with AES-CBC,
	 * SEFAZ-GO only does DHE with AES-GCM. Dropping them resets the connection instead of
	 * failing the handshake, which is a lot harder to diagnose.
	 */
	@Test
	void createSocket_keepsSuitesRequiredBySefazEndpoints_whenSocketCreated() throws Exception {
		try (SSLSocket socket = (SSLSocket) factory.createSocket()) {
			assertThat(socket.getEnabledCipherSuites())
				.contains(
					"TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384",
					"TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256",
					"TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"
				);
		}
	}

	@Test
	void createSocket_excludesWeakCipherSuites_whenSocketCreated() throws Exception {
		try (SSLSocket socket = (SSLSocket) factory.createSocket()) {
			assertThat(socket.getEnabledCipherSuites())
				.doesNotContain(
					"SSL_RSA_WITH_RC4_128_MD5",
					"SSL_RSA_WITH_RC4_128_SHA",
					"SSL_RSA_WITH_3DES_EDE_CBC_SHA",
					"TLS_RSA_WITH_AES_128_CBC_SHA",
					"TLS_RSA_WITH_AES_256_CBC_SHA"
				);
		}
	}
}
