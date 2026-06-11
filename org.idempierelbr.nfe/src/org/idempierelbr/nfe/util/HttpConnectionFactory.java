package org.idempierelbr.nfe.util;

import java.io.IOException;

import javax.net.ssl.HttpsURLConnection;

/**
 * Opens an {@link HttpsURLConnection} for a given URL string.
 * <p>
 * The default implementation calls {@code new URL(url).openConnection()}.
 * Tests inject an alternative that returns a pre-configured mock connection,
 * allowing {@link SefazHttpClient#post} to be exercised without a network.
 */
@FunctionalInterface
public interface HttpConnectionFactory {
	HttpsURLConnection open(String url) throws IOException;
}
