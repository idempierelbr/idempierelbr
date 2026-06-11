package org.idempierelbr.nfe.test;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatThrownBy;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.eq;
import static org.mockito.ArgumentMatchers.isNull;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.mockConstruction;
import static org.mockito.Mockito.mockStatic;
import static org.mockito.Mockito.when;

import java.io.InputStream;
import java.util.Properties;

import javax.net.ssl.SSLContext;

import org.compiere.model.MAttachment;
import org.compiere.model.MAttachmentEntry;
import org.compiere.model.MOrgInfo;
import org.idempierelbr.base.model.MLBRDigitalCertificate;
import org.idempierelbr.nfe.util.DigitalCertificateUtil;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.MockedConstruction;
import org.mockito.MockedStatic;
import org.mockito.junit.jupiter.MockitoExtension;

/**
 * Tests for {@link DigitalCertificateUtil#buildSSLContext}.
 * Uses Mockito static and construction mocking — no DB or OSGi container required.
 */
@ExtendWith(MockitoExtension.class)
class DigitalCertificateUtilTest {

	private static final int ORG_ID      = 1;
	private static final int CERT_ORG_ID = 10;
	private static final int CERT_WS_ID  = 20;

	private static InputStream resource(String name) {
		return DigitalCertificateUtilTest.class.getResourceAsStream("/resources/test/" + name);
	}

	private static MAttachment stubAttachment(InputStream stream) {
		MAttachmentEntry entry = mock(MAttachmentEntry.class);
		when(entry.getInputStream()).thenReturn(stream);
		MAttachment attachment = mock(MAttachment.class);
		when(attachment.getEntry(0)).thenReturn(entry);
		return attachment;
	}

	private static void stubOrgInfo(MockedStatic<MOrgInfo> orgInfoMock) {
		MOrgInfo mockOrgInfo = mock(MOrgInfo.class);
		orgInfoMock.when(() -> MOrgInfo.get(any(Properties.class), eq(ORG_ID), isNull()))
		           .thenReturn(mockOrgInfo);
		when(mockOrgInfo.get_ValueAsInt("LBR_DC_Org_ID")).thenReturn(CERT_ORG_ID);
		when(mockOrgInfo.get_ValueAsInt("LBR_DC_WS_ID")).thenReturn(CERT_WS_ID);
	}

	// -------------------------------------------------------------------------
	// ICP path
	// -------------------------------------------------------------------------

	@Test
	void buildSSLContext_returnsValidContext_whenIcpPathWithPkcs12AndJksTrustStore() throws Exception {
		try (
			MockedStatic<MOrgInfo>              orgInfoMock   = mockStatic(MOrgInfo.class);
			MockedStatic<MLBRDigitalCertificate> certStaticMock = mockStatic(MLBRDigitalCertificate.class);
			MockedConstruction<MLBRDigitalCertificate> ignored = mockConstruction(
				MLBRDigitalCertificate.class, (mock, context) -> {
					int id = (Integer) context.arguments().get(1);
					if (id == CERT_ORG_ID) {
						MAttachment orgAtt = stubAttachment(resource("test-org-cert.p12"));
						when(mock.getLBR_CertType()).thenReturn(MLBRDigitalCertificate.LBR_CERTTYPE_PKCS12);
						when(mock.getPassword()).thenReturn("changeit");
						when(mock.getAlias()).thenReturn(null);
						when(mock.getAttachment(true)).thenReturn(orgAtt);
					}
				})
		) {
			stubOrgInfo(orgInfoMock);

			MAttachment icpAtt = stubAttachment(resource("test-icp-truststore.jks"));
			MLBRDigitalCertificate mockIcpCert = mock(MLBRDigitalCertificate.class);
			when(mockIcpCert.getPassword()).thenReturn("changeit");
			when(mockIcpCert.getAttachment(true)).thenReturn(icpAtt);
			certStaticMock.when(MLBRDigitalCertificate::getICPTrustStore).thenReturn(mockIcpCert);

			SSLContext ctx = DigitalCertificateUtil.buildSSLContext(new Properties(), ORG_ID);

			assertThat(ctx).isNotNull();
			assertThat(ctx.getSocketFactory()).isNotNull();
		}
	}

	@Test
	void buildSSLContext_throwsException_whenOrgCertTypeIsPkcs11() throws Exception {
		try (
			MockedStatic<MOrgInfo>               orgInfoMock    = mockStatic(MOrgInfo.class);
			MockedStatic<MLBRDigitalCertificate>  certStaticMock = mockStatic(MLBRDigitalCertificate.class);
			MockedConstruction<MLBRDigitalCertificate> ignored   = mockConstruction(
				MLBRDigitalCertificate.class, (mock, context) -> {
					int id = (Integer) context.arguments().get(1);
					if (id == CERT_ORG_ID)
						when(mock.getLBR_CertType()).thenReturn(MLBRDigitalCertificate.LBR_CERTTYPE_PKCS11);
				})
		) {
			stubOrgInfo(orgInfoMock);
			certStaticMock.when(MLBRDigitalCertificate::getICPTrustStore)
			              .thenReturn(mock(MLBRDigitalCertificate.class));

			assertThatThrownBy(() -> DigitalCertificateUtil.buildSSLContext(new Properties(), ORG_ID))
				.isInstanceOf(Exception.class)
				.hasMessageContaining("PKCS11 certificates are not yet supported");
		}
	}

	@Test
	void buildSSLContext_throwsException_whenOrgCertPasswordIsWrong_onIcpPath() throws Exception {
		try (
			MockedStatic<MOrgInfo>               orgInfoMock    = mockStatic(MOrgInfo.class);
			MockedStatic<MLBRDigitalCertificate>  certStaticMock = mockStatic(MLBRDigitalCertificate.class);
			MockedConstruction<MLBRDigitalCertificate> ignored   = mockConstruction(
				MLBRDigitalCertificate.class, (mock, context) -> {
					int id = (Integer) context.arguments().get(1);
					if (id == CERT_ORG_ID) {
						MAttachment orgAtt = stubAttachment(resource("test-org-cert.p12"));
						when(mock.getLBR_CertType()).thenReturn(MLBRDigitalCertificate.LBR_CERTTYPE_PKCS12);
						when(mock.getPassword()).thenReturn("wrong-password");
						when(mock.getAlias()).thenReturn(null);
						when(mock.getAttachment(true)).thenReturn(orgAtt);
					}
				})
		) {
			stubOrgInfo(orgInfoMock);
			certStaticMock.when(MLBRDigitalCertificate::getICPTrustStore)
			              .thenReturn(mock(MLBRDigitalCertificate.class));

			assertThatThrownBy(() -> DigitalCertificateUtil.buildSSLContext(new Properties(), ORG_ID))
				.isInstanceOf(Exception.class)
				.hasMessageContaining("Incorrect certificate password");
		}
	}

	// -------------------------------------------------------------------------
	// WS path
	// -------------------------------------------------------------------------

	@Test
	void buildSSLContext_returnsValidContext_whenWsPathWithPkcs12AndJksTrustStore() throws Exception {
		try (
			MockedStatic<MOrgInfo>               orgInfoMock    = mockStatic(MOrgInfo.class);
			MockedStatic<MLBRDigitalCertificate>  certStaticMock = mockStatic(MLBRDigitalCertificate.class);
			MockedConstruction<MLBRDigitalCertificate> ignored   = mockConstruction(
				MLBRDigitalCertificate.class, (mock, context) -> {
					int id = (Integer) context.arguments().get(1);
					if (id == CERT_ORG_ID) {
						MAttachment orgAtt = stubAttachment(resource("test-org-cert.p12"));
						when(mock.getLBR_CertType()).thenReturn(MLBRDigitalCertificate.LBR_CERTTYPE_PKCS12);
						when(mock.getPassword()).thenReturn("changeit");
						when(mock.getAttachment(true)).thenReturn(orgAtt);
					} else if (id == CERT_WS_ID) {
						MAttachment wsAtt = stubAttachment(resource("test-icp-truststore.jks"));
						when(mock.getLBR_CertType()).thenReturn(MLBRDigitalCertificate.LBR_CERTTYPE_JavaKeyStore);
						when(mock.getPassword()).thenReturn("changeit");
						when(mock.getAttachment(true)).thenReturn(wsAtt);
					}
				})
		) {
			stubOrgInfo(orgInfoMock);
			certStaticMock.when(MLBRDigitalCertificate::getICPTrustStore).thenReturn(null);

			SSLContext ctx = DigitalCertificateUtil.buildSSLContext(new Properties(), ORG_ID);

			assertThat(ctx).isNotNull();
			assertThat(ctx.getSocketFactory()).isNotNull();
		}
	}
}
