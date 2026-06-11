package org.idempierelbr.base.util;

/**
 * Utility for reading iDempiereLBR system environment variables.
 */
public class SystemEnvUtil {

	/** OS environment variable that controls the iDempiere runtime environment. */
	public static final String ENV_VAR_NAME = "IDEMPIERE_ENV_TYPE";

	/** Value indicating a development/test environment. */
	public static final String ENV_DEV  = "DEV";

	/** Value indicating a production environment. */
	public static final String ENV_PROD = "PROD";

	private SystemEnvUtil() {}

	/**
	 * Returns the value of {@code IDEMPIERE_ENV_TYPE}, or {@link #ENV_PROD} if not set.
	 */
	public static String getEnvType() {
		String value = System.getenv(ENV_VAR_NAME);
		return (value != null && !value.isBlank()) ? value : ENV_PROD;
	}

	/**
	 * Returns {@code true} when {@code IDEMPIERE_ENV_TYPE=DEV}.
	 */
	public static boolean isDev() {
		return ENV_DEV.equals(getEnvType());
	}

	/**
	 * Returns {@code true} when {@code IDEMPIERE_ENV_TYPE=PROD} or the variable is absent.
	 */
	public static boolean isProd() {
		return ENV_PROD.equals(getEnvType());
	}
}
