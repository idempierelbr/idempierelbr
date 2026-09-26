package org.idempierelbr.base.model;

import java.sql.ResultSet;
import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.List;
import java.util.Properties;

import org.compiere.model.MAttachment;
import org.compiere.model.MAttachmentEntry;
import org.compiere.model.Query;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * Uma solicitação assíncrona feita às APIs de apuração do fisco: da abertura,
 * que devolve o tíquete, até a importação do arquivo baixado.
 *
 * <p>O ciclo é {@code SENT → PENDING → PROCESSING → DONE → IMPORTED}, podendo
 * terminar em {@code ERROR} (a Receita recusou ou estourou o prazo) ou em
 * {@code EXPIRED} (a URL assinada venceu antes do download). O JSON baixado
 * fica anexado ao registro, tal como veio.
 *
 * <p>A {@code LBR_SignedURL} é um segredo temporário: autoriza o download por
 * 48 horas. Não vai para log e é apagada assim que o arquivo é baixado.
 *
 * @author Alan Lescano
 */
public class MLBRRTCFiscoRequest extends X_LBR_RTCFiscoRequest {
	private static final long serialVersionUID = 1L;

	/** Estados em que ainda há o que buscar na Receita */
	private static final String OPEN_STATUSES = "('" + LBR_RTCFISCOREQSTATUS_Enviada + "','"
			+ LBR_RTCFISCOREQSTATUS_Pendente + "','" + LBR_RTCFISCOREQSTATUS_EmProcessamento + "','"
			+ LBR_RTCFISCOREQSTATUS_Concluída + "')";

	/** Fuso em que a Receita conta o limite diário de aberturas */
	private static final ZoneId ZONE_BRASILIA = ZoneId.of("America/Sao_Paulo");

	public MLBRRTCFiscoRequest(Properties ctx, int LBR_RTCFiscoRequest_ID, String trxName) {
		super(ctx, LBR_RTCFiscoRequest_ID, trxName);
	}

	public MLBRRTCFiscoRequest(Properties ctx, int LBR_RTCFiscoRequest_ID, String trxName, String... virtualColumns) {
		super(ctx, LBR_RTCFiscoRequest_ID, trxName, virtualColumns);
	}

	public MLBRRTCFiscoRequest(Properties ctx, String LBR_RTCFiscoRequest_UU, String trxName) {
		super(ctx, LBR_RTCFiscoRequest_UU, trxName);
	}

	public MLBRRTCFiscoRequest(Properties ctx, String LBR_RTCFiscoRequest_UU, String trxName,
			String... virtualColumns) {
		super(ctx, LBR_RTCFiscoRequest_UU, trxName, virtualColumns);
	}

	public MLBRRTCFiscoRequest(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}

	/**
	 * Nova solicitação, ainda sem tíquete, para a configuração e o serviço.
	 * Não é gravada aqui.
	 */
	public static MLBRRTCFiscoRequest create(MLBRRTCFiscoConfig config, String service, String trxName) {
		MLBRRTCFiscoRequest request = new MLBRRTCFiscoRequest(config.getCtx(), 0, trxName);
		request.setAD_Org_ID(0);
		request.setLBR_RTCFiscoConfig_ID(config.getLBR_RTCFiscoConfig_ID());
		request.setLBR_RTCTaxType(config.getLBR_RTCTaxType());
		request.setLBR_RTCFiscoService(service);
		request.setLBR_RTCFiscoReqStatus(LBR_RTCFISCOREQSTATUS_Enviada);
		request.setLBR_DateRequested(new Timestamp(System.currentTimeMillis()));
		request.setProcessed(false);

		return request;
	}

	/**
	 * Solicitação do tíquete, no tenant informado. O tíquete é único por
	 * tenant, não no banco inteiro.
	 */
	public static MLBRRTCFiscoRequest getByTicket(Properties ctx, int AD_Client_ID, String ticket, String trxName) {
		if (ticket == null || ticket.trim().isEmpty())
			return null;

		return new Query(ctx, Table_Name, "AD_Client_ID=? AND LBR_Ticket=?", trxName)
			.setParameters(AD_Client_ID, ticket.trim())
			.firstOnly();
	}

	/**
	 * Solicitações do tenant que ainda não terminaram, das mais antigas para as
	 * mais novas.
	 */
	public static List<MLBRRTCFiscoRequest> getOpen(Properties ctx, String trxName) {
		return new Query(ctx, Table_Name, "LBR_RTCFiscoReqStatus IN " + OPEN_STATUSES, trxName)
			.setClient_ID()
			.setOnlyActiveRecords(true)
			.setOrderBy("LBR_DateRequested, LBR_RTCFiscoRequest_ID")
			.list();
	}

	/**
	 * Solicitação ainda em andamento para a configuração e o serviço, se
	 * houver. Abrir outra por cima só gastaria uma das chamadas do dia.
	 */
	public static MLBRRTCFiscoRequest getOpen(Properties ctx, int LBR_RTCFiscoConfig_ID, String service,
			String trxName) {
		return new Query(ctx, Table_Name, "LBR_RTCFiscoConfig_ID=? AND LBR_RTCFiscoService=?"
				+ " AND LBR_RTCFiscoReqStatus IN " + OPEN_STATUSES, trxName)
			.setParameters(LBR_RTCFiscoConfig_ID, service)
			.setClient_ID()
			.setOnlyActiveRecords(true)
			.setOrderBy("LBR_DateRequested DESC")
			.first();
	}

	/**
	 * Quantas aberturas já foram tentadas hoje (horário de Brasília) para a
	 * configuração e o serviço. Conta todas, inclusive as recusadas: não há
	 * como saber quais a Receita descontou do limite, então a conta é pelo lado
	 * seguro.
	 */
	public static int countOpenedToday(Properties ctx, int LBR_RTCFiscoConfig_ID, String service,
			String trxName) {
		Timestamp startOfDay = Timestamp.from(LocalDate.now(ZONE_BRASILIA).atStartOfDay(ZONE_BRASILIA).toInstant());

		return DB.getSQLValueEx(trxName,
				"SELECT COUNT(*) FROM " + Table_Name
					+ " WHERE AD_Client_ID=? AND LBR_RTCFiscoConfig_ID=? AND LBR_RTCFiscoService=?"
					+ " AND LBR_DateRequested>=?",
				Env.getAD_Client_ID(ctx), LBR_RTCFiscoConfig_ID, service, startOfDay);
	}

	/**
	 * Data da abertura da última solicitação importada com sucesso para a
	 * configuração e o serviço — é a partir dela que a Receita conta a janela
	 * incremental.
	 *
	 * @return a data, ou nulo se nunca houve importação
	 */
	public static Timestamp getLastImportedDate(Properties ctx, int LBR_RTCFiscoConfig_ID, String service,
			String trxName) {
		return DB.getSQLValueTSEx(trxName,
				"SELECT MAX(LBR_DateRequested) FROM " + Table_Name
					+ " WHERE AD_Client_ID=? AND LBR_RTCFiscoConfig_ID=? AND LBR_RTCFiscoService=?"
					+ " AND LBR_RTCFiscoReqStatus=?",
				Env.getAD_Client_ID(ctx), LBR_RTCFiscoConfig_ID, service, LBR_RTCFISCOREQSTATUS_Importada);
	}

	/** Ainda há o que buscar ou importar? */
	public boolean isOpen() {
		String status = getLBR_RTCFiscoReqStatus();

		return LBR_RTCFISCOREQSTATUS_Enviada.equals(status)
			|| LBR_RTCFISCOREQSTATUS_Pendente.equals(status)
			|| LBR_RTCFISCOREQSTATUS_EmProcessamento.equals(status)
			|| LBR_RTCFISCOREQSTATUS_Concluída.equals(status);
	}

	/** A URL assinada existe e ainda vale? */
	public boolean hasValidSignedURL() {
		if (getLBR_SignedURL() == null || getLBR_SignedURL().trim().isEmpty())
			return false;

		Timestamp expiresAt = getLBR_SignedURLExpiresAt();

		return expiresAt == null || expiresAt.after(new Timestamp(System.currentTimeMillis()));
	}

	/** Processamento concluído: guarda a URL de download e quando ela vence. */
	public void setDone(String signedURL, Timestamp expiresAt) {
		setLBR_SignedURL(signedURL);
		setLBR_SignedURLExpiresAt(expiresAt);
		setLBR_RTCFiscoReqStatus(LBR_RTCFISCOREQSTATUS_Concluída);
		setLBR_ErrorCode(null);
		setLBR_ErrorMsg(null);
	}

	/** Encerra a solicitação em erro, com o motivo que a Receita ou o LBR deu. */
	public void setError(String errorCode, String errorMsg) {
		setLBR_ErrorCode(truncate(errorCode, 20));
		setLBR_ErrorMsg(truncate(errorMsg, 2000));
		setLBR_RTCFiscoReqStatus(LBR_RTCFISCOREQSTATUS_Erro);
		clearSignedURL();
		setProcessed(true);
	}

	/** A URL assinada venceu sem que o arquivo tenha sido baixado. */
	public void setExpired() {
		setLBR_RTCFiscoReqStatus(LBR_RTCFISCOREQSTATUS_Expirada);
		setLBR_ErrorMsg("A URL de download venceu antes de o arquivo ser baixado. "
				+ "É preciso abrir uma nova solicitação.");
		clearSignedURL();
		setProcessed(true);
	}

	/** Arquivo importado: a solicitação termina aqui e a URL deixa de ser necessária. */
	public void setImported() {
		setLBR_RTCFiscoReqStatus(LBR_RTCFISCOREQSTATUS_Importada);
		setLBR_ErrorCode(null);
		setLBR_ErrorMsg(null);
		clearSignedURL();
		setProcessed(true);
	}

	/**
	 * Registra que a situação foi consultada agora. O intervalo mínimo entre
	 * consultas conta a partir de {@code Updated}, e sem isto uma consulta que
	 * não muda o estado não gravaria nada.
	 */
	public void markPolled() {
		set_ValueNoCheck(COLUMNNAME_Updated, new Timestamp(System.currentTimeMillis()));
	}

	/** Descarta a URL assinada: ela autoriza o download e não deve ficar guardada. */
	public void clearSignedURL() {
		setLBR_SignedURL(null);
	}

	/**
	 * Anexa o arquivo recebido da Receita, tal como veio.
	 *
	 * <p>Usa o anexo na transação deste registro, e não
	 * {@link org.compiere.model.PO#createAttachment()}, que trabalha sem
	 * transação e não enxerga um registro ainda não confirmado.
	 */
	public void attachFile(String name, byte[] content) {
		MAttachment attachment = getFileAttachment();

		if (attachment == null)
			attachment = new MAttachment(getCtx(), Table_ID, get_ID(), get_UUID(), get_TrxName());

		attachment.addEntry(new MAttachmentEntry(name, content));
		attachment.saveEx();
	}

	/**
	 * Último arquivo anexado a esta solicitação.
	 *
	 * @return o conteúdo, ou nulo se ainda não há anexo
	 */
	public byte[] getAttachedFile() {
		MAttachment attachment = getFileAttachment();

		if (attachment == null || attachment.getEntryCount() == 0)
			return null;

		MAttachmentEntry entry = attachment.getEntry(attachment.getEntryCount() - 1);

		return entry == null ? null : entry.getData();
	}

	private MAttachment getFileAttachment() {
		if (get_ID() <= 0)
			return null;

		return MAttachment.get(getCtx(), Table_ID, get_ID(), get_UUID(), get_TrxName());
	}

	@Override
	protected boolean beforeSave(boolean newRecord) {
		// o dado é da raiz de CNPJ, não de uma organização
		setAD_Org_ID(0);

		if (getLBR_DateRequested() == null)
			setLBR_DateRequested(new Timestamp(System.currentTimeMillis()));

		return true;
	}

	private static String truncate(String value, int length) {
		if (value == null)
			return null;

		return value.length() > length ? value.substring(0, length) : value;
	}
}
