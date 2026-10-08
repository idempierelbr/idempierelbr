package org.idempierelbr.nfs.nacional;

import org.compiere.model.MAttachment;
import org.compiere.model.MDocType;
import org.compiere.model.MOrgInfo;
import org.compiere.util.CLogger;
import org.idempierelbr.base.model.MLBRNFS;
import org.idempierelbr.base.model.MLBRNFSConfig;
import org.idempierelbr.base.model.MLBRNFSLot;
import org.idempierelbr.base.model.MLBRNFSeWS;
import org.idempierelbr.base.model.X_LBR_NFS;
import org.idempierelbr.nfe.util.AssinaturaDigital;
import org.idempierelbr.nfs.factory.INFSe;
import org.idempierelbr.nfs.nacional.util.AdnHttpClient;
import org.idempierelbr.nfs.nacional.xml.CancelamentoData;
import org.idempierelbr.nfs.nacional.xml.DPSXmlBuilder;
import org.idempierelbr.nfs.nacional.report.DanfeNacionalUtil;
import org.idempierelbr.nfs.nacional.xml.EventoXmlWriter;
import org.compiere.model.MBPartner;
import java.time.OffsetDateTime;
import java.time.format.DateTimeFormatter;

/**
 * Implementacao de {@link INFSe} para o padrao nacional de NFS-e (Sistema
 * Nacional NFS-e / Ambiente de Dados Nacional - ADN), administrado pelo
 * governo federal.
 *
 * Fluxo geral (ver https://www.gov.br/nfse):
 *   1. generateXML  -> monta o DPS e assina digitalmente
 *   2. sendNFSe     -> envia o DPS assinado ao webservice (municipal ou
 *                      direto ao ADN, conforme LBR_NFSeWS.URL) e grava o
 *                      retorno (numero da NFS-e, chave de acesso, status)
 *   3. cancelNFSe   -> envia evento de cancelamento
 *   4. queryNFSeByRPS / printDANFE / substituteNFSe -> ver TODOs abaixo
 *
 * Situacao atual:
 *   - generateXML: PRONTO (DPS validado contra o XSD v1.01 e assinado).
 *   - sendNFSe: PRONTO conforme o contrato da API Sefin Nacional; nunca foi
 *     testado contra a homologacao real.
 *   - queryNFSeByRPS (consulta por chave): basico.
 *   - cancelNFSe: PRONTO (evento e101101, validado contra o XSD).
 *   - substituteNFSe: PRONTO (DPS com grupo subst); falta so' um status
 *     proprio de "substituida" no LBR_NFS para acionar a marca d'agua.
 *   - printDANFE: PRONTO para os blocos obrigatorios do leiaute.
 *   - Lote (sendRPSLot/queryRPSLot) nao se aplica ao padrao nacional.
 */
public class NFSeNacional implements INFSe {

	private static final CLogger log = CLogger.getCLogger(NFSeNacional.class);

	@Override
	public String generateXML(MLBRNFS m_nfs) throws Exception {

		MLBRNFSConfig config = m_nfs.getNFSConfig();
		if (config == null)
			throw new Exception("LBR_NFSConfig nao definido no tipo de documento");

		String xml = new DPSXmlBuilder(m_nfs).build();

		// Assina o infDPS com o certificado configurado para o Org
		MOrgInfo orgInfo = MOrgInfo.get(m_nfs.getCtx(), m_nfs.getAD_Org_ID(), m_nfs.get_TrxName());
		StringBuilder signed = AssinaturaDigital.Assinar(new StringBuilder(xml), orgInfo,
				AssinaturaDigital.DPS);

		return signed.toString();
	}

	@Override
	public void sendNFSe(MLBRNFS m_nfs) throws Exception {

		if (m_nfs.hasImmutableStatus())
			throw new Exception("NFS-e ja transmitida (chave de acesso preenchida)");

		MLBRNFSConfig config = m_nfs.getNFSConfig();
		MLBRNFSeWS ws = getWS(m_nfs, config);

		String xmlAssinado = generateXML(m_nfs);

		AdnHttpClient client = new AdnHttpClient(m_nfs.getCtx(), m_nfs.getAD_Org_ID());
		AdnHttpClient.Response resp = client.postDps(ws.getURL(), xmlAssinado);

		if (!resp.isSuccess())
			// Corpo de erro da API: {"erros":[{"codigo","descricao","complemento"}]}
			throw new Exception("Sefin Nacional rejeitou o DPS (HTTP " + resp.status + "): " + resp.body);

		String chave = AdnHttpClient.jsonString(resp.body, "chaveAcesso");
		String nfseB64 = AdnHttpClient.jsonString(resp.body, "nfseXmlGZipB64");
		if (chave == null || nfseB64 == null)
			throw new Exception("Resposta inesperada da Sefin Nacional: " + resp.body);

		String nfseXml = AdnHttpClient.gunzipBase64(nfseB64);

		// Depois de autorizada a nota EXISTE: qualquer falha daqui pra frente
		// precisa deixar a chave no log para recuperacao manual.
		try {
			m_nfs.setLBR_NFSeID(chave);
			m_nfs.setLBR_NFSeNumero(xmlValue(nfseXml, "nNFSe"));
			m_nfs.setLBR_NFSeStatus(X_LBR_NFS.LBR_NFSESTATUS_Normal);
			m_nfs.saveEx();

			// Guarda o XML autorizado (obrigacao de guarda do documento fiscal)
			MAttachment att = m_nfs.createAttachment();
			att.addEntry("NFSe-" + chave + ".xml", nfseXml.getBytes("UTF-8"));
			att.saveEx();
		} catch (Exception e) {
			log.severe("NFS-e AUTORIZADA mas falhou ao gravar retorno. Chave de acesso: " + chave + " - " + e);
			throw e;
		}
	}

	@Override
	public void cancelNFSe(MLBRNFS m_nfs) throws Exception {

		if (m_nfs.getLBR_NFSeID() == null || m_nfs.getLBR_NFSeID().isEmpty())
			throw new Exception("NFS-e ainda nao foi transmitida, nao ha o que cancelar");

		String motivo = m_nfs.getLBR_MotivoCancelamentoNFS();
		if (motivo == null || motivo.trim().length() < 15)
			throw new Exception("Motivo do cancelamento (LBR_MotivoCancelamentoNFS) deve ter pelo menos 15 caracteres");
		if (motivo.length() > 255)
			motivo = motivo.substring(0, 255);

		MLBRNFSConfig config = m_nfs.getNFSConfig();
		MLBRNFSeWS ws = getWS(m_nfs, config);
		String chave = m_nfs.getLBR_NFSeID();

		CancelamentoData d = new CancelamentoData();
		d.verAplic = "idempierelbr-nfs-nac-1.0";
		d.ambGer = "2"; // Sefin Nacional NFS-e - TODO: confirmar se deve variar por ambiente/convenio
		d.nSeqEvento = "001"; // cancelamento ocorre uma unica vez
		d.dhProc = nowOffset();
		d.nDFSe = "1"; // TODO: confirmar origem - numero sequencial do doc gerado pelo municipio
		d.tpAmb = MDocType.get(m_nfs.getCtx(), m_nfs.getC_DocType_ID()).get_ValueAsString("LBR_NFeEnv");
		d.dhEvento = d.dhProc;
		d.chNFSe = chave;

		MBPartner prestador = m_nfs.getPrestador();
		String cnpj = prestador.get_ValueAsString("LBR_CNPJ");
		cnpj = cnpj == null ? "" : cnpj.replaceAll("[^0-9]", "");
		if (cnpj.length() == 14)
			d.cnpjAutor = cnpj;
		else {
			String cpf = prestador.get_ValueAsString("LBR_CPF");
			d.cpfAutor = cpf == null ? "" : cpf.replaceAll("[^0-9]", "");
			if (d.cpfAutor.length() != 11)
				throw new Exception("Prestador sem CNPJ/CPF valido para autoria do evento");
		}

		d.cMotivo = "1"; // TODO: mapear o motivo real (1 Erro na Emissao / 2 Servico nao Prestado / 9 Outros)
		                   // a partir de um campo proprio, em vez de fixo
		d.xMotivo = motivo;

		d.idEvento = EventoXmlWriter.buildIdEvento(chave, d.nSeqEvento);
		d.idPedReg = EventoXmlWriter.buildIdPedReg(chave);

		String xml = EventoXmlWriter.toXml(d);

		MOrgInfo orgInfo = MOrgInfo.get(m_nfs.getCtx(), m_nfs.getAD_Org_ID(), m_nfs.get_TrxName());
		StringBuilder signed = AssinaturaDigital.Assinar(new StringBuilder(xml), orgInfo,
				AssinaturaDigital.EVENTO_NFSE);

		AdnHttpClient client = new AdnHttpClient(m_nfs.getCtx(), m_nfs.getAD_Org_ID());
		AdnHttpClient.Response resp = client.postEvento(ws.getURL(), chave, signed.toString());

		if (!resp.isSuccess())
			throw new Exception("Sefin Nacional rejeitou o cancelamento (HTTP " + resp.status + "): " + resp.body);

		m_nfs.setLBR_NFSeStatus(X_LBR_NFS.LBR_NFSESTATUS_Cancelado);
		m_nfs.saveEx();

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

		MAttachment att = m_nfs.createAttachment();
		att.addEntry("DANFSe-" + m_nfs.getLBR_NFSeID() + ".pdf", pdf);
		att.saveEx();
	}

	@Override
	public void queryNFSeByRPS(MLBRNFS m_nfs) throws Exception {

		MLBRNFSConfig config = m_nfs.getNFSConfig();
		MLBRNFSeWS ws = getWS(m_nfs, config);

		if (m_nfs.getLBR_NFSeID() == null || m_nfs.getLBR_NFSeID().isEmpty())
			throw new Exception("NFS-e ainda nao possui chave de acesso para consulta");

		AdnHttpClient client = new AdnHttpClient(m_nfs.getCtx(), m_nfs.getAD_Org_ID());
		AdnHttpClient.Response resp = client.getNfse(ws.getURL(), m_nfs.getLBR_NFSeID());
		if (!resp.isSuccess())
			throw new Exception("Consulta rejeitada (HTTP " + resp.status + "): " + resp.body);

		log.info("Consulta NFS-e " + m_nfs.getLBR_NFSeID() + ": HTTP " + resp.status);
		// TODO: atualizar o status local conforme a situacao/eventos da nota
	}

	/** Valor do primeiro elemento com esse nome (sem namespace) */
	private static String xmlValue(String xml, String tag) {
		java.util.regex.Matcher m = java.util.regex.Pattern.compile("<" + tag + ">([^<]*)</" + tag + ">").matcher(xml);
		return m.find() ? m.group(1) : null;
	}

	// -------------------------------------------------------------------

	/**
	 * Ambiente (1 = producao, 2 = homologacao): vem do tipo de documento
	 * (C_DocType.LBR_NFeEnv), o mesmo campo usado pelo NF-e.
	 */
	private static String nowOffset() {
		return OffsetDateTime.now().withNano(0)
				.format(DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ssxxx"));
	}

	private MLBRNFSeWS getWS(MLBRNFS m_nfs, MLBRNFSConfig config) throws Exception {
		String env = MDocType.get(m_nfs.getCtx(), m_nfs.getC_DocType_ID()).get_ValueAsString("LBR_NFeEnv");
		MLBRNFSeWS ws = MLBRNFSeWS.getWS(m_nfs.getCtx(), config, env, m_nfs.get_TrxName());
		if (ws == null)
			throw new Exception("Webservice (LBR_NFSeWS) nao cadastrado para a configuracao de NFS-e e ambiente " + env);
		return ws;
	}

}
