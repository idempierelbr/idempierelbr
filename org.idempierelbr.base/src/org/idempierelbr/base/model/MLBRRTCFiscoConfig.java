package org.idempierelbr.base.model;

import java.security.SecureRandom;
import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;

import org.compiere.model.MBPartner;
import org.compiere.model.Query;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * Credencial e endereços da integração com as APIs de apuração do fisco
 * (Receita Integra), por raiz de CNPJ e tributo.
 *
 * <p>A credencial é emitida para o CNPJ matriz e a API consulta pelo CNPJ base
 * de 8 dígitos, devolvendo a apuração de todas as filiais daquela raiz. Por
 * isso o registro é do tenant e não de uma organização: {@code AD_Org_ID} é
 * sempre 0, e o que distingue as configurações é {@code LBR_CNPJBase}.
 *
 * @author Alan Lescano
 */
public class MLBRRTCFiscoConfig extends X_LBR_RTCFiscoConfig {
	private static final long serialVersionUID = 1L;

	/** Endpoint de token do Receita Integra, usado quando LBR_TokenURL está vazio */
	public static final String DEFAULT_TOKEN_URL = "https://api.receitafederal.gov.br/token";

	/** Base das APIs de apuração da CBS em produção, usada quando LBR_APIBaseURL está vazio */
	public static final String DEFAULT_API_BASE_URL = "https://api.receitafederal.gov.br/apuracao-cbs/v2";

	/** Tamanho do segredo do webhook gerado pelo LBR, em bytes (vira o dobro em hexadecimal) */
	private static final int WEBHOOK_SECRET_BYTES = 16;

	public MLBRRTCFiscoConfig(Properties ctx, int LBR_RTCFiscoConfig_ID, String trxName) {
		super(ctx, LBR_RTCFiscoConfig_ID, trxName);
	}

	public MLBRRTCFiscoConfig(Properties ctx, int LBR_RTCFiscoConfig_ID, String trxName, String... virtualColumns) {
		super(ctx, LBR_RTCFiscoConfig_ID, trxName, virtualColumns);
	}

	public MLBRRTCFiscoConfig(Properties ctx, String LBR_RTCFiscoConfig_UU, String trxName) {
		super(ctx, LBR_RTCFiscoConfig_UU, trxName);
	}

	public MLBRRTCFiscoConfig(Properties ctx, String LBR_RTCFiscoConfig_UU, String trxName, String... virtualColumns) {
		super(ctx, LBR_RTCFiscoConfig_UU, trxName, virtualColumns);
	}

	public MLBRRTCFiscoConfig(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}

	/**
	 * Configurações ativas do tenant do contexto.
	 */
	public static List<MLBRRTCFiscoConfig> getActive(Properties ctx, String trxName) {
		return new Query(ctx, Table_Name, null, trxName)
			.setClient_ID()
			.setOnlyActiveRecords(true)
			.setOrderBy("LBR_CNPJBase, LBR_RTCTaxType")
			.list();
	}

	/**
	 * Configurações ativas de todos os tenants. Só para quem ainda não sabe a
	 * que tenant a chamada pertence — o webhook, que descobre isso pelo segredo.
	 */
	public static List<MLBRRTCFiscoConfig> getActiveAllTenants(Properties ctx, String trxName) {
		return new Query(ctx, Table_Name, null, trxName)
			.setOnlyActiveRecords(true)
			.list();
	}

	/**
	 * Endpoint de token: o informado na configuração ou, vazio,
	 * {@link #DEFAULT_TOKEN_URL}.
	 */
	public String getTokenURL() {
		return orDefault(getLBR_TokenURL(), DEFAULT_TOKEN_URL);
	}

	/**
	 * Base das APIs de apuração, sem barra no fim: a informada na configuração
	 * ou, vazia, {@link #DEFAULT_API_BASE_URL}.
	 */
	public String getAPIBaseURL() {
		return orDefault(getLBR_APIBaseURL(), DEFAULT_API_BASE_URL);
	}

	/**
	 * Endereço que vai no {@code urlRetorno} da solicitação: a base do webhook
	 * seguida do segredo, que é o que identifica esta configuração quando a
	 * Receita chamar de volta.
	 */
	public String getWebhookURL() {
		return stripTrailingSlash(getLBR_WebhookBaseURL()) + "/" + getLBR_WebhookSecret();
	}

	/**
	 * Normaliza o CNPJ base: tira a formatação e, se vier o CNPJ completo de 14
	 * dígitos, fica com a raiz.
	 *
	 * @return os 8 dígitos da raiz, ou o texto sem formatação quando ele não
	 *         tiver nem 8 nem 14 dígitos — quem valida é {@link #beforeSave}
	 */
	public static String normalizeCNPJBase(String cnpj) {
		if (cnpj == null)
			return null;

		String digits = cnpj.replaceAll("\\D", "");

		return digits.length() == 14 ? digits.substring(0, 8) : digits;
	}

	@Override
	protected boolean beforeSave(boolean newRecord) {
		// o dado é da raiz de CNPJ, não de uma organização
		setAD_Org_ID(0);

		String cnpjBase = normalizeCNPJBase(getLBR_CNPJBase());

		if (cnpjBase == null || cnpjBase.length() != 8) {
			log.saveError("Error", "O CNPJ base deve ter 8 dígitos (a raiz do CNPJ da matriz).");
			return false;
		}

		setLBR_CNPJBase(cnpjBase);

		for (String url : new String[] { getLBR_WebhookBaseURL(), getLBR_TokenURL(), getLBR_APIBaseURL() }) {
			if (url != null && !url.trim().isEmpty() && !url.trim().toLowerCase().startsWith("https://")) {
				log.saveError("Error", "Os endereços da integração precisam ser HTTPS: " + url.trim());
				return false;
			}
		}

		if (getLBR_WebhookSecret() == null || getLBR_WebhookSecret().trim().isEmpty())
			setLBR_WebhookSecret(newWebhookSecret());
		else if (!getLBR_WebhookSecret().trim().matches("[A-Za-z0-9_-]{16,}")) {
			// o segredo vai no caminho da URL: nada que precise de escape, e
			// comprido o bastante para não ser adivinhado
			log.saveError("Error", "O segredo do webhook deve ter ao menos 16 caracteres, "
					+ "só com letras, números, hífen e sublinhado.");
			return false;
		}

		if (!hasOrgWithCNPJBase(cnpjBase))
			log.saveWarning("Warning", "Nenhuma organização desta empresa tem parceiro de negócios vinculado "
					+ "com a raiz de CNPJ " + cnpjBase + ". Confira se o CNPJ base está correto.");

		return true;
	}

	/**
	 * Há alguma organização do tenant cujo parceiro de negócios vinculado tem
	 * esta raiz de CNPJ? É o mesmo vínculo que a emissão da NF-e usa para
	 * achar o CNPJ da organização.
	 */
	private boolean hasOrgWithCNPJBase(String cnpjBase) {
		int count = DB.getSQLValueEx(get_TrxName(),
				"SELECT COUNT(*) FROM " + MBPartner.Table_Name
					+ " WHERE AD_Client_ID=? AND AD_OrgBP_ID>0 AND IsActive='Y' AND LBR_CNPJ LIKE ?",
				getAD_Client_ID() > 0 ? getAD_Client_ID() : Env.getAD_Client_ID(getCtx()),
				cnpjBase + "%");

		return count > 0;
	}

	private static String newWebhookSecret() {
		byte[] bytes = new byte[WEBHOOK_SECRET_BYTES];
		new SecureRandom().nextBytes(bytes);

		StringBuilder hex = new StringBuilder();
		for (byte b : bytes)
			hex.append(String.format("%02x", b));

		return hex.toString();
	}

	private static String orDefault(String value, String defaultValue) {
		if (value == null || value.trim().isEmpty())
			return defaultValue;

		return stripTrailingSlash(value);
	}

	private static String stripTrailingSlash(String url) {
		String value = url == null ? "" : url.trim();

		while (value.endsWith("/"))
			value = value.substring(0, value.length() - 1);

		return value;
	}
}
