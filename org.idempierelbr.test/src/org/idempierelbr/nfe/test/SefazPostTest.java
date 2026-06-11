package org.idempierelbr.nfe.test;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatThrownBy;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.never;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;

import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;

import org.adempiere.exceptions.AdempiereException;
import org.idempierelbr.base.model.MLBRNFeWebService;
import org.idempierelbr.nfe.util.NFeUtil;
import org.idempierelbr.nfe.util.SefazHttpClient;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.junit.jupiter.MockitoExtension;

/**
 * HTTP transport tests for {@link SefazHttpClient#post}.
 * Uses Mockito-mocked {@link HttpsURLConnection}; no DB or network required.
 */
@ExtendWith(MockitoExtension.class)
class SefazPostTest {

	private static final String ENDPOINT    = "https://fake.sefaz.gov.br/service";
	private static final String SOAP_ACTION = "nfeStatusServicoNF";
	private static final String ENVELOPE    =
		"<soap12:Envelope xmlns:soap12=\"http://www.w3.org/2003/05/soap-envelope\">"
		+ "<soap12:Body><payload/></soap12:Body></soap12:Envelope>";

	private static SSLContext dummySslContext() throws Exception {
		SSLContext ctx = SSLContext.getInstance("TLS");
		ctx.init(null, null, null);
		return ctx;
	}

	private SefazHttpClient clientWith(HttpsURLConnection mockConn) throws Exception {
		return new SefazHttpClient(dummySslContext(),
			MLBRNFeWebService.SERVICE_NFE_STATUS_SERVICO, NFeUtil.ENV_PRODUCAO,
			url -> mockConn);
	}

	private SefazHttpClient clientForSend() throws Exception {
		return new SefazHttpClient(dummySslContext(),
			MLBRNFeWebService.SERVICE_NFE_STATUS_SERVICO, NFeUtil.ENV_HOMOLOGACAO,
			url -> { throw new AssertionError("should not open connection"); });
	}

	private static String wrapSoap(String innerXml) {
		return "<soap12:Envelope xmlns:soap12=\"http://www.w3.org/2003/05/soap-envelope\">"
			+ "<soap12:Body>" + innerXml + "</soap12:Body></soap12:Envelope>";
	}

	// -------------------------------------------------------------------------
	// HTTPS enforcement
	// -------------------------------------------------------------------------

	@Test
	void post_throwsAdempiereException_whenEndpointIsHttp() throws Exception {
		HttpsURLConnection conn = mock(HttpsURLConnection.class);
		SefazHttpClient client = clientWith(conn);
		assertThatThrownBy(() -> client.post("http://insecure.example.com", SOAP_ACTION, ENVELOPE))
			.isInstanceOf(AdempiereException.class)
			.hasMessageContaining("HTTPS");
		verify(conn, never()).disconnect();
	}

	// -------------------------------------------------------------------------
	// Successful 200 response
	// -------------------------------------------------------------------------

	@Test
	void post_returnsInnerXml_whenResponseIs200() throws Exception {
		String inner = "<retConsStatServ><cStat>107</cStat></retConsStatServ>";
		byte[] body = wrapSoap(inner).getBytes(StandardCharsets.UTF_8);

		HttpsURLConnection conn = mock(HttpsURLConnection.class);
		when(conn.getOutputStream()).thenReturn(new ByteArrayOutputStream());
		when(conn.getResponseCode()).thenReturn(200);
		when(conn.getInputStream()).thenReturn(new ByteArrayInputStream(body));

		String result = clientWith(conn).post(ENDPOINT, SOAP_ACTION, ENVELOPE);

		assertThat(result).contains("cStat");
		verify(conn).disconnect();
	}

	// -------------------------------------------------------------------------
	// HTTP 500 paths
	// -------------------------------------------------------------------------

	@Test
	void post_throwsAdempiereException_whenResponseIs500WithSoapFault() throws Exception {
		String fault = wrapSoap(
			"<soap12:Fault>"
			+ "<soap12:Code><soap12:Value>env:Receiver</soap12:Value></soap12:Code>"
			+ "<soap12:Reason><soap12:Text>Serviço Paralisado</soap12:Text></soap12:Reason>"
			+ "</soap12:Fault>");
		byte[] body = fault.getBytes(StandardCharsets.UTF_8);

		HttpsURLConnection conn = mock(HttpsURLConnection.class);
		when(conn.getOutputStream()).thenReturn(new ByteArrayOutputStream());
		when(conn.getResponseCode()).thenReturn(500);
		when(conn.getErrorStream()).thenReturn(new ByteArrayInputStream(body));

		assertThatThrownBy(() -> clientWith(conn).post(ENDPOINT, SOAP_ACTION, ENVELOPE))
			.isInstanceOf(AdempiereException.class)
			.hasMessageContaining("Serviço Paralisado");
		verify(conn).disconnect();
	}

	@Test
	void post_throwsAdempiereException_whenResponseIs500WithNullErrorStream() throws Exception {
		HttpsURLConnection conn = mock(HttpsURLConnection.class);
		when(conn.getOutputStream()).thenReturn(new ByteArrayOutputStream());
		when(conn.getResponseCode()).thenReturn(500);
		when(conn.getErrorStream()).thenReturn(null);

		assertThatThrownBy(() -> clientWith(conn).post(ENDPOINT, SOAP_ACTION, ENVELOPE))
			.isInstanceOf(AdempiereException.class)
			.hasMessageContaining("no response body");
		verify(conn).disconnect();
	}

	// -------------------------------------------------------------------------
	// Response size cap
	// -------------------------------------------------------------------------

	@Test
	void post_throwsAdempiereException_whenResponseExceedsMaxBytes() throws Exception {
		HttpsURLConnection conn = mock(HttpsURLConnection.class);
		when(conn.getOutputStream()).thenReturn(new ByteArrayOutputStream());
		when(conn.getResponseCode()).thenReturn(200);
		when(conn.getInputStream()).thenReturn(new InfiniteStream());

		assertThatThrownBy(() -> clientWith(conn).post(ENDPOINT, SOAP_ACTION, ENVELOPE))
			.isInstanceOf(AdempiereException.class)
			.hasMessageContaining("maximum allowed size");
		verify(conn).disconnect();
	}

	// -------------------------------------------------------------------------
	// IOException propagation
	// -------------------------------------------------------------------------

	@Test
	void post_propagatesIOException_whenReadFails() throws Exception {
		HttpsURLConnection conn = mock(HttpsURLConnection.class);
		when(conn.getOutputStream()).thenReturn(new ByteArrayOutputStream());
		when(conn.getResponseCode()).thenReturn(200);
		when(conn.getInputStream()).thenReturn(new InputStream() {
			@Override public int read() throws IOException { throw new IOException("network error"); }
		});

		assertThatThrownBy(() -> clientWith(conn).post(ENDPOINT, SOAP_ACTION, ENVELOPE))
			.isInstanceOf(IOException.class)
			.hasMessageContaining("network error");
		verify(conn).disconnect();
	}

	// -------------------------------------------------------------------------
	// send() payload validation
	// -------------------------------------------------------------------------

	@Test
	void send_throwsIllegalArgumentException_whenPayloadIsNull() throws Exception {
		assertThatThrownBy(() -> clientForSend().send(null))
			.isInstanceOf(IllegalArgumentException.class)
			.hasMessageContaining("must not be null or blank");
	}

	@Test
	void send_throwsIllegalArgumentException_whenPayloadIsBlank() throws Exception {
		assertThatThrownBy(() -> clientForSend().send("   "))
			.isInstanceOf(IllegalArgumentException.class)
			.hasMessageContaining("must not be null or blank");
	}

	@Test
	void send_throwsIllegalArgumentException_whenPayloadIsNotWellFormedXml() throws Exception {
		assertThatThrownBy(() -> clientForSend().send("<unclosed"))
			.isInstanceOf(IllegalArgumentException.class)
			.hasMessageContaining("not well-formed XML");
	}

	// -------------------------------------------------------------------------
	// helpers
	// -------------------------------------------------------------------------

	/** InputStream that returns bytes indefinitely — used to trigger the size cap. */
	private static final class InfiniteStream extends InputStream {
		@Override public int read() { return 'X'; }
	}
}
