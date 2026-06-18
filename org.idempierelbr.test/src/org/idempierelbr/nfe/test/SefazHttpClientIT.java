package org.idempierelbr.nfe.test;

import static org.assertj.core.api.Assertions.assertThatThrownBy;

import javax.net.ssl.SSLContext;

import org.adempiere.exceptions.AdempiereException;
import org.idempiere.test.DictionaryIDs;
import org.idempierelbr.base.model.MLBRNFeWebService;
import org.idempierelbr.nfe.util.HttpConnectionFactory;
import org.idempierelbr.nfe.util.NFeUtil;
import org.idempierelbr.nfe.util.SefazHttpClient;
import org.idempierelbr.test.AbstractLBRTestCase;
import org.junit.jupiter.api.Test;

/**
 * DB integration tests for {@link SefazHttpClient} constructor validation.
 * Requires a running iDempiere container with Garden World data.
 * SSL wiring logic for {@code DigitalCertificateUtil} is covered in {@link DigitalCertificateUtilTest}.
 */
class SefazHttpClientIT extends AbstractLBRTestCase {

	// -------------------------------------------------------------------------
	// SefazHttpClient constructor
	// -------------------------------------------------------------------------

	@Test
	void constructor_throwsIllegalArgumentException_whenSslContextIsNull() {
		assertThatThrownBy(() -> new SefazHttpClient(
				null, "1.0", 100,
				MLBRNFeWebService.SERVICE_NFE_STATUS_SERVICO, false, "55", null))
			.isInstanceOf(IllegalArgumentException.class);
	}

	@Test
	void constructor_throwsAdempiereException_whenServiceIsUnknown() throws Exception {
		SSLContext ctx = SSLContext.getInstance("TLS");
		ctx.init(null, null, null);
		assertThatThrownBy(() -> new SefazHttpClient(ctx, "1.0", 100, "InvalidService", false, "55", null))
			.isInstanceOf(AdempiereException.class)
			.hasMessageContaining("Unsupported SEFAZ service");
	}

	@Test
	void testingConstructor_throwsAdempiereException_whenServiceIsUnknown() throws Exception {
		SSLContext ctx = SSLContext.getInstance("TLS");
		ctx.init(null, null, null);
		HttpConnectionFactory factory = url -> { throw new AssertionError("should not open connection"); };
		assertThatThrownBy(() -> new SefazHttpClient(ctx, "InvalidService", NFeUtil.ENV_HOMOLOGACAO, factory))
			.isInstanceOf(AdempiereException.class)
			.hasMessageContaining("Unsupported SEFAZ service");
	}

	// -------------------------------------------------------------------------
	// SefazHttpClient.send() — URL resolution (requires DB)
	// -------------------------------------------------------------------------

	@Test
	void send_throwsAdempiereException_whenNoUrlConfiguredForService() throws Exception {
		SSLContext ctx = SSLContext.getInstance("TLS");
		ctx.init(null, null, null);
		SefazHttpClient client = new SefazHttpClient(
			ctx, "4.00", DictionaryIDs.C_Region.CT.id,
			MLBRNFeWebService.SERVICE_NFE_STATUS_SERVICO, true, "55", null);

		assertThatThrownBy(() -> client.send("<root/>"))
			.isInstanceOf(AdempiereException.class)
			.hasMessageContaining("Webservice not found for region");
	}
}
