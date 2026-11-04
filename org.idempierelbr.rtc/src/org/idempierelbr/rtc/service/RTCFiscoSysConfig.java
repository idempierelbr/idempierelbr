package org.idempierelbr.rtc.service;

import org.compiere.model.MSysConfig;

/**
 * Parâmetros da integração com a apuração do fisco, lidos do
 * {@code AD_SysConfig} no nível do tenant. Nenhum precisa estar cadastrado: sem
 * registro vale o padrão daqui. Documentados em {@code docs/sysconfig.md}.
 *
 * @author Alan Lescano
 */
public final class RTCFiscoSysConfig {

	/** Teto de aberturas por dia, por configuração e serviço (limite da Receita: 4) */
	public static final String MAX_OPEN_PER_DAY = "LBR_RTC_FISCO_MAX_OPEN_PER_DAY";
	/** Intervalo mínimo entre consultas de uma mesma solicitação à Receita, em minutos */
	public static final String POLL_MINUTES = "LBR_RTC_FISCO_POLL_MINUTES";
	/** Tempo limite de conexão e de resposta das chamadas HTTP, em segundos */
	public static final String HTTP_TIMEOUT_SECONDS = "LBR_RTC_FISCO_HTTP_TIMEOUT_SECONDS";
	/** Tamanho máximo do arquivo baixado da URL assinada, em MB */
	public static final String DOWNLOAD_MAX_MB = "LBR_RTC_FISCO_DOWNLOAD_MAX_MB";
	/** Dias sem importação que disparam o aviso — a janela incremental da Receita é de 8 */
	public static final String WINDOW_WARN_DAYS = "LBR_RTC_FISCO_WINDOW_WARN_DAYS";
	/**
	 * Maior estimativa da Receita, em segundos, que a abertura espera para já
	 * baixar e importar no mesmo processo; zero desliga
	 */
	public static final String OPEN_WAIT_SECONDS = "LBR_RTC_FISCO_OPEN_WAIT_SECONDS";

	public static final int DEFAULT_MAX_OPEN_PER_DAY = 4;
	public static final int DEFAULT_POLL_MINUTES = 15;
	public static final int DEFAULT_HTTP_TIMEOUT_SECONDS = 60;
	public static final int DEFAULT_DOWNLOAD_MAX_MB = 50;
	public static final int DEFAULT_WINDOW_WARN_DAYS = 6;
	public static final int DEFAULT_OPEN_WAIT_SECONDS = 30;

	private RTCFiscoSysConfig() {
	}

	public static int getMaxOpenPerDay(int AD_Client_ID) {
		return positive(MAX_OPEN_PER_DAY, DEFAULT_MAX_OPEN_PER_DAY, AD_Client_ID);
	}

	public static int getPollMinutes(int AD_Client_ID) {
		return positive(POLL_MINUTES, DEFAULT_POLL_MINUTES, AD_Client_ID);
	}

	public static int getHttpTimeoutSeconds(int AD_Client_ID) {
		return positive(HTTP_TIMEOUT_SECONDS, DEFAULT_HTTP_TIMEOUT_SECONDS, AD_Client_ID);
	}

	public static long getDownloadMaxBytes(int AD_Client_ID) {
		return positive(DOWNLOAD_MAX_MB, DEFAULT_DOWNLOAD_MAX_MB, AD_Client_ID) * 1024L * 1024L;
	}

	public static int getWindowWarnDays(int AD_Client_ID) {
		return positive(WINDOW_WARN_DAYS, DEFAULT_WINDOW_WARN_DAYS, AD_Client_ID);
	}

	/** Zero desliga a importação logo depois da abertura */
	public static int getOpenWaitSeconds(int AD_Client_ID) {
		int value = MSysConfig.getIntValue(OPEN_WAIT_SECONDS, DEFAULT_OPEN_WAIT_SECONDS, AD_Client_ID);

		return value < 0 ? DEFAULT_OPEN_WAIT_SECONDS : value;
	}

	/** Valor configurado, ou o padrão quando ausente, zero ou negativo */
	private static int positive(String name, int defaultValue, int AD_Client_ID) {
		int value = MSysConfig.getIntValue(name, defaultValue, AD_Client_ID);

		return value > 0 ? value : defaultValue;
	}
}
