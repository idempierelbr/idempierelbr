package org.idempierelbr.nfs.nacional;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.time.OffsetDateTime;
import java.time.format.DateTimeFormatter;

import org.compiere.model.MBPartner;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MSysConfig;
import org.compiere.util.CLogger;
import org.idempierelbr.base.model.MLBRNFS;
import org.idempierelbr.base.model.MLBRNFSConfig;
import org.idempierelbr.base.model.MLBRNFSLot;
import org.idempierelbr.base.model.MLBRNFSeWS;
import org.idempierelbr.base.model.X_LBR_NFS;
import org.idempierelbr.nfe.util.AssinaturaDigital;
import org.idempierelbr.nfs.factory.INFSe;
import org.idempierelbr.nfs.nacional.report.DanfeNacionalUtil;
import org.idempierelbr.nfs.nacional.util.AdnHttpClient;
import org.idempierelbr.nfs.nacional.util.AttachmentUtil;
import org.idempierelbr.nfs.nacional.util.XmlSigner;
import org.idempierelbr.nfs.nacional.xml.CancelamentoData;
import org.idempierelbr.nfs.nacional.xml.DPSData;
import org.idempierelbr.nfs.nacional.xml.DPSXmlBuilder;
import org.idempierelbr.nfs.nacional.xml.DPSXmlWriter;
import org.idempierelbr.nfs.nacional.xml.EventoXmlWriter;

/**
 * Implementacao de {@link INFSe} para o padrao nacional de NFS-e (Sistema
 * Nacional NFS-e / Ambiente de Dados Nacional - ADN), administrado pelo
 * governo federal.
 *
 * Fluxo geral (ver https://www.gov.br/nfse):
 *   1. generateXML  -> monta o DPS e assina digitalmente
 *   2. sendNFSe     -> envia o DPS assinado a Sefin Nacional e grava o
 *                      retorno (numero da NFS-e, chave de acesso, XML). Se a
 *                      resposta se perder (timeout) ou o DPS ja tiver sido
 *                      processado, recupera a NFS-e pelo Id do DPS.
 *   3. cancelNFSe   -> envia o pedido de registro do evento de cancelamento
 *   4. queryNFSeByRPS -> baixa o XML da NFS-e e atualiza numero/situacao
 *   5. printDANFE   -> gera o DANFSe a partir do XML autorizado
 *
 * Situacao atual:
 *   - generateXML: PRONTO (DPS validado contra o XSD v1.01 e assinado).
 *   - sendNFSe / cancelNFSe / queryNFSeByRPS: conforme o contrato da API
 *     Sefin Nacional; nunca testados contra a homologacao real.
 *   - substituteNFSe: PRONTO (DPS com grupo subst); falta so' um status
 *     proprio de "substituida" no LBR_NFS para acionar a marca d'agua.
 *   - Lote (sendRPSLot/queryRPSLot) nao se aplica ao padrao nacional.
 *
 * Colunas opcionais do LBR_NFS (lidas so' se existirem na tabela):
 *   - LBR_NFSeCancelMotivo: codigo do motivo do cancelamento (1 Erro na
 *     emissao, 2 Servico nao prestado, 9 Outros). Sem ela, usa o MSysConfig
 *     LBR_NFSE_NAC_CANCEL_MOTIVO (padrao 9).
 */
public class NFSeNacional implements INFSe {

	private static final CLogger log = CLogger.getCLogger(NFSeNacional.class);

	private static final String VER_APLIC = "idempierelbr-nfs-nac-1.0";

	@Override
	public String generateXML(MLBRNFS m_nfs) throws Exception {
		getConfig(m_nfs);
		return signDps(m_nfs, new DPSXmlBuilder(m_nfs).buildData());
	}

	@Override
	public void sendNFSe(MLBRNFS m_nfs) throws Exception {

		// Verifica a chave diretamente (hasImmutableStatus depende tambem da
		// flag LBR_IsDocIssuedByOrg e deixaria reenviar uma nota autorizada)
		if (hasChave(m_nfs))
			throw new Exception("NFS-e ja transmitida (chave de acesso " + m_nfs.getLBR_NFSeID() + ")");

		MLBRNFSConfig config = getConfig(m_nfs);
		MLBRNFSeWS ws = getWS(m_nfs, config);

		DPSData dps = new DPSXmlBuilder(m_nfs).buildData();
		String xmlAssinado = signDps(m_nfs, dps);

		AdnHttpClient client = new AdnHttpClient(m_nfs.getCtx(), m_nfs.getAD_Org_ID());
		AdnHttpClient.Response resp;
		try {
			resp = client.postDps(ws.getURL(), xmlAssinado);
		} catch (IOException e) {
			// Timeout ou queda de conexao: o DPS pode ter sido processado mesmo
			// assim. Tenta localizar a NFS-e gerada antes de dar erro.
			log.warning("Falha de comunicacao ao enviar o DPS " + dps.id + ": " + e + " - tentando recuperar");
			if (recoverByDpsId(m_nfs, client, ws.getURL(), dps.id))
				return;
			throw new Exception("Falha de comunicacao com a Sefin Nacional (" + e.getMessage()
					+ "). O DPS " + dps.id + " nao foi localizado; tente enviar novamente.", e);
		}

		if (!resp.isSuccess()) {
			// Um reenvio do mesmo DPS (ex.: depois de um timeout) e' rejeitado
			// como duplicado: nesse caso a NFS-e ja existe e e' recuperada.
			if (recoverByDpsId(m_nfs, client, ws.getURL(), dps.id))
				return;
			// Corpo de erro da API: {"erros":[{"codigo","descricao","complemento"}]}
			throw new Exception("Sefin Nacional rejeitou o DPS (HTTP " + resp.status + "): " + resp.body);
		}

		String chave = AdnHttpClient.jsonString(resp.body, "chaveAcesso");
		String nfseB64 = AdnHttpClient.jsonString(resp.body, "nfseXmlGZipB64");
		if (chave == null || nfseB64 == null)
			throw new Exception("Resposta inesperada da Sefin Nacional: " + resp.body);

		saveAutorizada(m_nfs, chave, AdnHttpClient.gunzipBase64(nfseB64));
	}

	@Override
	public void cancelNFSe(MLBRNFS m_nfs) throws Exception {

		if (!hasChave(m_nfs))
			throw new Exception("NFS-e ainda nao foi transmitida, nao ha o que cancelar");
		if (X_LBR_NFS.LBR_NFSESTATUS_Cancelado.equals(m_nfs.getLBR_NFSeStatus()))
			throw new Exception("NFS-e ja esta cancelada");

		String motivo = m_nfs.getLBR_MotivoCancelamentoNFS();
		if (motivo == null || motivo.trim().length() < 15)
			throw new Exception("Motivo do cancelamento (LBR_MotivoCancelamentoNFS) deve ter pelo menos 15 caracteres");
		motivo = motivo.trim();
		if (motivo.length() > 255)
			motivo = motivo.substring(0, 255);

		MLBRNFSConfig config = getConfig(m_nfs);
		MLBRNFSeWS ws = getWS(m_nfs, config);
		String chave = m_nfs.getLBR_NFSeID();

		CancelamentoData d = new CancelamentoData();
		d.idPedReg = EventoXmlWriter.buildIdPedReg(chave);
		d.tpAmb = DPSXmlBuilder.getAmbiente(m_nfs);
		d.verAplic = VER_APLIC;
		d.dhEvento = nowOffset();
		d.chNFSe = chave;

		MBPartner prestador = DPSXmlBuilder.getPrestador(m_nfs);
		String cnpj = DPSXmlBuilder.digits(prestador.get_ValueAsString("LBR_CNPJ"));
		if (cnpj.length() == 14)
			d.cnpjAutor = cnpj;
		else {
			d.cpfAutor = DPSXmlBuilder.digits(prestador.get_ValueAsString("LBR_CPF"));
			if (d.cpfAutor.length() != 11)
				throw new Exception("Prestador sem CNPJ/CPF valido para autoria do evento");
		}

		d.cMotivo = getCancelMotivo(m_nfs);
		d.xMotivo = motivo;

		MOrgInfo orgInfo = MOrgInfo.get(m_nfs.getCtx(), m_nfs.getAD_Org_ID(), m_nfs.get_TrxName());
		String signed = XmlSigner.sign(EventoXmlWriter.toXml(d), EventoXmlWriter.TAG_ASSINADA, orgInfo);

		AdnHttpClient client = new AdnHttpClient(m_nfs.getCtx(), m_nfs.getAD_Org_ID());
		AdnHttpClient.Response resp = client.postEvento(ws.getURL(), chave, signed);

		if (!resp.isSuccess())
			throw new Exception("Sefin Nacional rejeitou o cancelamento (HTTP " + resp.status + "): " + resp.body);

		m_nfs.setLBR_NFSeStatus(X_LBR_NFS.LBR_NFSESTATUS_Cancelado);
		m_nfs.saveEx();

		// Guarda o evento registrado (devolvido pela Sefin) junto da nota
		String eventoB64 = AdnHttpClient.jsonString(resp.body, "eventoXmlGZipB64");
		if (eventoB64 != null) {
			try {
				AttachmentUtil.put(m_nfs, "Evento-Cancelamento-" + chave + ".xml",
						AdnHttpClient.gunzipBase64(eventoB64).getBytes(StandardCharsets.UTF_8));
			} catch (Exception e) {
				log.severe("NFS-e " + chave + " CANCELADA mas falhou ao anexar o XML do evento - " + e);
			}
		}

		log.info("NFS-e " + chave + " cancelada. Retorno: " + resp.body);
	}

	@Override
	public void sendRPSLot(MLBRNFSLot m_nfslot) throws Exception {
		throw new UnsupportedOperationException(
				"O padrao nacional gera a NFS-e de forma sincrona (POST /nfse), sem lote de RPS. Use o envio individual.");
	}

	@Override
	public void queryRPSLot(MLBRNFSLot m_nfslot) throws Exception {
		throw new UnsupportedOperationException(
				"O padrao nacional nao usa lote de RPS; nao ha consulta de lote.");
	}

	@Override
	public void substituteNFSe(MLBRNFS m_nfs) throws Exception {

		if (m_nfs.getLBR_NFSeSubstituida() == null || m_nfs.getLBR_NFSeSubstituida().trim().isEmpty())
			throw new Exception("Informe LBR_NFSeSubstituida com a chave de acesso (50 digitos) da NFS-e a substituir");

		// No padrao nacional a substituicao NAO e' um evento: e' um DPS novo,
		// igual a qualquer outro, so' que com o grupo <subst> preenchido
		// (chSubstda/cMotivo/xMotivo). O DPSXmlBuilder ja' adiciona esse
		// grupo sozinho quando LBR_NFSeSubstituida esta preenchido, entao o
		// fluxo de envio e' o mesmo do sendNFSe.
		sendNFSe(m_nfs);

		// TODO: a NFS-e antiga (identificada por LBR_NFSeSubstituida) deveria
		// ficar marcada de alguma forma como substituida, para o DANFSe dela
		// passar a exibir a marca d'agua "SUBSTITUIDA" (ver
		// DanfeNacionalUtil.generateWatermark). Isso exige um valor novo na
		// lista de referencia LBR_NFSeStatus (AD_Ref_List 800030) - hoje so'
		// existem Normal e Cancelado - por isso a nota antiga NAO e' tocada
		// aqui de proposito, em vez de marca-la com um status que nao seria
		// exatamente correto (ela nao foi "cancelada", foi "substituida").
	}

	@Override
	public void printDANFE(MLBRNFS m_nfs) throws Exception {

		byte[] pdf = DanfeNacionalUtil.gerarDanfePdf(m_nfs);
		AttachmentUtil.put(m_nfs, "DANFSe-" + m_nfs.getLBR_NFSeID() + ".pdf", pdf);
	}

	/**
	 * Consulta a NFS-e pela chave de acesso: baixa o XML autorizado (anexando-o
	 * se ainda nao estiver anexado, como quando a nota foi recuperada sem o
	 * XML), preenche o numero e marca a nota como cancelada se houver evento
	 * de cancelamento registrado.
	 */
	@Override
	public void queryNFSeByRPS(MLBRNFS m_nfs) throws Exception {

		MLBRNFSConfig config = getConfig(m_nfs);
		MLBRNFSeWS ws = getWS(m_nfs, config);
		AdnHttpClient client = new AdnHttpClient(m_nfs.getCtx(), m_nfs.getAD_Org_ID());

		// Sem chave: talvez o envio tenha se perdido; procura pelo Id do DPS
		if (!hasChave(m_nfs)) {
			DPSData dps = new DPSXmlBuilder(m_nfs).buildData();
			if (!recoverByDpsId(m_nfs, client, ws.getURL(), dps.id))
				throw new Exception("Nenhuma NFS-e encontrada para o DPS " + dps.id);
			return;
		}

		String chave = m_nfs.getLBR_NFSeID();
		AdnHttpClient.Response resp = client.getNfse(ws.getURL(), chave);
		if (!resp.isSuccess())
			throw new Exception("Consulta rejeitada (HTTP " + resp.status + "): " + resp.body);

		String nfseB64 = AdnHttpClient.jsonString(resp.body, "nfseXmlGZipB64");
		if (nfseB64 != null) {
			String nfseXml = AdnHttpClient.gunzipBase64(nfseB64);
			String numero = xmlValue(nfseXml, "nNFSe");
			if (numero != null && (m_nfs.getLBR_NFSeNumero() == null || m_nfs.getLBR_NFSeNumero().isEmpty()))
				m_nfs.setLBR_NFSeNumero(numero);
			AttachmentUtil.put(m_nfs, AttachmentUtil.nfseXmlName(chave), nfseXml.getBytes(StandardCharsets.UTF_8));
		}

		// Cancelamento feito fora do iDempiere (ex.: no portal nacional)
		AdnHttpClient.Response evt = client.getEvento(ws.getURL(), chave, EventoXmlWriter.COD_EVENTO_CANCELAMENTO, 1);
		if (evt.isSuccess()) {
			if (!X_LBR_NFS.LBR_NFSESTATUS_Cancelado.equals(m_nfs.getLBR_NFSeStatus())) {
				m_nfs.setLBR_NFSeStatus(X_LBR_NFS.LBR_NFSESTATUS_Cancelado);
				log.info("NFS-e " + chave + " consta como cancelada na Sefin Nacional");
			}
		} else if (evt.status != 404)
			log.warning("Consulta do evento de cancelamento da NFS-e " + chave + ": HTTP " + evt.status + " - " + evt.body);

		m_nfs.saveEx();
	}

	// -------------------------------------------------------------------

	private String signDps(MLBRNFS m_nfs, DPSData dps) throws Exception {
		MOrgInfo orgInfo = MOrgInfo.get(m_nfs.getCtx(), m_nfs.getAD_Org_ID(), m_nfs.get_TrxName());
		return AssinaturaDigital.Assinar(new StringBuilder(DPSXmlWriter.toXml(dps)), orgInfo,
				AssinaturaDigital.DPS).toString();
	}

	/**
	 * Procura a NFS-e gerada a partir do DPS {@code idDps} (GET /dps/{id}) e,
	 * se existir, grava a chave e o XML na nota.
	 *
	 * @return true se a NFS-e foi encontrada e gravada
	 */
	private boolean recoverByDpsId(MLBRNFS m_nfs, AdnHttpClient client, String baseUrl, String idDps) {
		String chave = null;
		try {
			AdnHttpClient.Response r = client.getDps(baseUrl, idDps);
			if (!r.isSuccess())
				return false;
			chave = AdnHttpClient.jsonString(r.body, "chaveAcesso");
			if (chave == null)
				return false;

			log.warning("DPS " + idDps + " ja havia gerado a NFS-e " + chave + " - recuperando");

			String nfseXml = null;
			AdnHttpClient.Response n = client.getNfse(baseUrl, chave);
			String nfseB64 = n.isSuccess() ? AdnHttpClient.jsonString(n.body, "nfseXmlGZipB64") : null;
			if (nfseB64 != null)
				nfseXml = AdnHttpClient.gunzipBase64(nfseB64);
			else
				log.severe("NFS-e " + chave + " localizada mas o XML nao pode ser baixado (HTTP " + n.status
						+ "). Grave a chave e use a consulta para baixar o XML depois.");

			saveAutorizada(m_nfs, chave, nfseXml);
			return true;
		} catch (Exception e) {
			if (chave != null)
				log.severe("NFS-e AUTORIZADA (DPS " + idDps + ") mas falhou ao gravar retorno. Chave de acesso: "
						+ chave + " - " + e);
			else
				log.warning("Nao foi possivel consultar o DPS " + idDps + ": " + e);
			return false;
		}
	}

	/**
	 * Grava o retorno de uma NFS-e autorizada. A partir daqui a nota EXISTE:
	 * qualquer falha precisa deixar a chave no log para recuperacao manual.
	 *
	 * @param nfseXml XML autorizado, ou null se nao foi possivel obte-lo
	 */
	private void saveAutorizada(MLBRNFS m_nfs, String chave, String nfseXml) throws Exception {
		try {
			m_nfs.setLBR_NFSeID(chave);
			if (nfseXml != null) {
				String numero = xmlValue(nfseXml, "nNFSe");
				if (numero != null)
					m_nfs.setLBR_NFSeNumero(numero);
			}
			m_nfs.setLBR_NFSeStatus(X_LBR_NFS.LBR_NFSESTATUS_Normal);
			m_nfs.saveEx();

			// Guarda o XML autorizado (obrigacao de guarda do documento fiscal)
			if (nfseXml != null)
				AttachmentUtil.put(m_nfs, AttachmentUtil.nfseXmlName(chave), nfseXml.getBytes(StandardCharsets.UTF_8));
		} catch (Exception e) {
			log.severe("NFS-e AUTORIZADA mas falhou ao gravar retorno. Chave de acesso: " + chave + " - " + e);
			throw e;
		}
	}

	/**
	 * Codigo do motivo do cancelamento (TE101101/cMotivo): coluna opcional
	 * LBR_NFSeCancelMotivo do LBR_NFS ou, na falta dela, o MSysConfig
	 * LBR_NFSE_NAC_CANCEL_MOTIVO (padrao 9 - Outros, com o texto livre em xMotivo).
	 */
	private static String getCancelMotivo(MLBRNFS m_nfs) throws Exception {
		String cMotivo = DPSXmlBuilder.digits(DPSXmlBuilder.optionalColumn(m_nfs, "LBR_NFSeCancelMotivo"));
		if (cMotivo.isEmpty())
			cMotivo = MSysConfig.getValue("LBR_NFSE_NAC_CANCEL_MOTIVO", "9", m_nfs.getAD_Client_ID(),
					m_nfs.getAD_Org_ID()).trim();
		if (!cMotivo.matches("[129]"))
			throw new Exception("Motivo do cancelamento deve ser 1 (erro na emissao), 2 (servico nao prestado) ou 9 (outros): "
					+ cMotivo);
		return cMotivo;
	}

	private static boolean hasChave(MLBRNFS m_nfs) {
		return m_nfs.getLBR_NFSeID() != null && !m_nfs.getLBR_NFSeID().trim().isEmpty();
	}

	/** Valor do primeiro elemento com esse nome (sem namespace) */
	private static String xmlValue(String xml, String tag) {
		java.util.regex.Matcher m = java.util.regex.Pattern.compile("<" + tag + ">([^<]*)</" + tag + ">").matcher(xml);
		return m.find() ? m.group(1) : null;
	}

	/** Data/hora atual no formato AAAA-MM-DDThh:mm:ss+hh:mm */
	private static String nowOffset() {
		return OffsetDateTime.now().withNano(0)
				.format(DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ssxxx"));
	}

	private static MLBRNFSConfig getConfig(MLBRNFS m_nfs) throws Exception {
		MLBRNFSConfig config = m_nfs.getNFSConfig();
		if (config == null)
			throw new Exception("LBR_NFSConfig nao definido no tipo de documento");
		return config;
	}

	private MLBRNFSeWS getWS(MLBRNFS m_nfs, MLBRNFSConfig config) throws Exception {
		String env = DPSXmlBuilder.getAmbiente(m_nfs);
		MLBRNFSeWS ws = MLBRNFSeWS.getWS(m_nfs.getCtx(), config, env, m_nfs.get_TrxName());
		if (ws == null)
			throw new Exception("Webservice (LBR_NFSeWS) nao cadastrado para a configuracao de NFS-e e ambiente " + env);
		return ws;
	}

}
