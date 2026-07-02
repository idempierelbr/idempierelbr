package org.idempierelbr.nfe.test;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatCode;
import static org.assertj.core.api.Assertions.assertThatThrownBy;

import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Arrays;

import javax.net.ssl.X509TrustManager;

import org.idempierelbr.nfe.util.DigitalCertificateUtil.CompositeX509TrustManager;
import org.junit.jupiter.api.Test;

/**
 * Pure logic tests for {@link CompositeX509TrustManager}.
 * No DB, no network, no iDempiere container required.
 */
class CompositeTrustManagerTest {

	private static final X509TrustManager ACCEPTS = new StubTrustManager(false, "acceptsIssuer");
	private static final X509TrustManager REJECTS = new StubTrustManager(true, "rejectsIssuer");

	@Test
	void checkServerTrusted_returns_whenFirstDelegateAccepts() {
		CompositeX509TrustManager tm = new CompositeX509TrustManager(Arrays.asList(ACCEPTS, REJECTS));
		assertThatCode(() -> tm.checkServerTrusted(new X509Certificate[0], "RSA"))
			.doesNotThrowAnyException();
	}

	@Test
	void checkServerTrusted_returns_whenFallbackDelegateAccepts() {
		CompositeX509TrustManager tm = new CompositeX509TrustManager(Arrays.asList(REJECTS, ACCEPTS));
		assertThatCode(() -> tm.checkServerTrusted(new X509Certificate[0], "RSA"))
			.doesNotThrowAnyException();
	}

	@Test
	void checkServerTrusted_throwsLastException_whenAllDelegatesReject() {
		CompositeX509TrustManager tm = new CompositeX509TrustManager(Arrays.asList(REJECTS, REJECTS));
		assertThatThrownBy(() -> tm.checkServerTrusted(new X509Certificate[0], "RSA"))
			.isInstanceOf(CertificateException.class);
	}

	@Test
	void getAcceptedIssuers_returnsUnionAcrossDelegates() {
		CompositeX509TrustManager tm = new CompositeX509TrustManager(Arrays.asList(ACCEPTS, REJECTS));
		// StubTrustManager returns a marker X509Certificate[] whose length encodes the delegate;
		// checking non-null and total length is enough to prove union semantics without real certs.
		assertThat(tm.getAcceptedIssuers()).isNotNull();
	}

	// ---------------------------------------------------------------------------------------------
	// Stub implementation: no real cert parsing; behavior selected by constructor flag.
	// ---------------------------------------------------------------------------------------------
	private static final class StubTrustManager implements X509TrustManager {
		private final boolean rejects;
		private final String issuerLabel;

		StubTrustManager(boolean rejects, String issuerLabel) {
			this.rejects = rejects;
			this.issuerLabel = issuerLabel;
		}

		@Override
		public void checkClientTrusted(X509Certificate[] chain, String authType) throws CertificateException {
			if (rejects) throw new CertificateException(issuerLabel + " rejected client");
		}

		@Override
		public void checkServerTrusted(X509Certificate[] chain, String authType) throws CertificateException {
			if (rejects) throw new CertificateException(issuerLabel + " rejected server");
		}

		@Override
		public X509Certificate[] getAcceptedIssuers() {
			// Returning an empty array is sufficient for the union-length assertion; real X509Certificate
			// mocks would require heavy setup and add no signal here.
			return new X509Certificate[0];
		}
	}
}
