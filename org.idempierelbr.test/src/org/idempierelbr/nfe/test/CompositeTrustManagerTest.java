package org.idempierelbr.nfe.test;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatCode;
import static org.assertj.core.api.Assertions.assertThatThrownBy;
import static org.mockito.Mockito.mock;

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

	private static final X509Certificate ISSUER_A = mock(X509Certificate.class);
	private static final X509Certificate ISSUER_B = mock(X509Certificate.class);

	private static final X509TrustManager ACCEPTS = new StubTrustManager(false, new X509Certificate[]{ ISSUER_A });
	private static final X509TrustManager REJECTS = new StubTrustManager(true,  new X509Certificate[]{ ISSUER_B });

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
		assertThat(tm.getAcceptedIssuers())
			.as("union of accepted issuers from each delegate")
			.containsExactlyInAnyOrder(ISSUER_A, ISSUER_B);
	}

	// ---------------------------------------------------------------------------------------------
	// Stub implementation: no real cert parsing; behavior selected by constructor flag.
	// ---------------------------------------------------------------------------------------------
	private static final class StubTrustManager implements X509TrustManager {
		private final boolean rejects;
		private final X509Certificate[] acceptedIssuers;

		StubTrustManager(boolean rejects, X509Certificate[] acceptedIssuers) {
			this.rejects = rejects;
			this.acceptedIssuers = acceptedIssuers;
		}

		@Override
		public void checkClientTrusted(X509Certificate[] chain, String authType) throws CertificateException {
			if (rejects) throw new CertificateException("stub rejected client");
		}

		@Override
		public void checkServerTrusted(X509Certificate[] chain, String authType) throws CertificateException {
			if (rejects) throw new CertificateException("stub rejected server");
		}

		@Override
		public X509Certificate[] getAcceptedIssuers() {
			return acceptedIssuers;
		}
	}
}
