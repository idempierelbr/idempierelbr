/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil                      *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.idempierelbr.nfe.util;

import java.io.ByteArrayInputStream;
import java.io.StringReader;
import java.sql.Savepoint;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;
import java.util.zip.GZIPInputStream;

import javax.net.ssl.SSLContext;
import javax.xml.parsers.DocumentBuilder;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MBPartner;
import org.compiere.model.MLocation;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MRegion;
import org.compiere.model.MSysConfig;
import org.compiere.model.Query;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Trx;
import org.idempierelbr.base.model.MLBRDFeControl;
import org.idempierelbr.base.model.MLBRNFeWebService;
import org.idempierelbr.base.model.MLBRNFeXML;
import org.idempierelbr.base.model.MLBRNotaFiscal;
import org.idempierelbr.base.model.MLBRNotaFiscalEventRec;
import org.idempierelbr.base.util.TextUtil;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

/**
 * Distribuição de DF-e (NFeDistribuicaoDFe): baixa da SEFAZ os documentos
 * fiscais emitidos contra o CNPJ da organização e os materializa na caixa de
 * entrada ({@link MLBRNFeXML}) e, no caso dos eventos, também em
 * {@link MLBRNotaFiscalEventRec}.
 *
 * <p>São três modos de consulta, e a SEFAZ trata cada um de um jeito:
 * <ul>
 * <li><b>distNSU</b> — a fila, lida a partir do último NSU conhecido. Este é o
 *     modo normal, e é paginado: cada resposta traz no máximo 50 documentos ou
 *     1 MB, então a consulta se repete até {@code ultNSU = maxNSU}.</li>
 * <li><b>consNSU</b> — um NSU específico, para recuperar um documento perdido.</li>
 * <li><b>consChNFe</b> — uma chave de acesso, quando se sabe qual nota se quer.</li>
 * </ul>
 *
 * <p>Os dois últimos são limitados a {@value MLBRDFeControl#MAX_QUERIES_PER_HOUR}
 * consultas por hora; o primeiro provoca bloqueio de 1 hora (cStat 656, consumo
 * indevido) se for repetido depois de a fila ter acabado. O estado que evita
 * esbarrar nesses limites vive em {@link MLBRDFeControl}, e é consultado antes
 * de a chamada sair — não depois de a SEFAZ reclamar.
 *
 * <p>Todo o trabalho de uma execução acontece na transação do chamador: ou o
 * lote inteiro entra com o ponto de leitura avançado, ou nada entra e a SEFAZ
 * reentrega os mesmos documentos na execução seguinte.
 *
 * @author Alan Lescano
 */
public class NFeDistDFeUtil {

	private static final CLogger log = CLogger.getCLogger(NFeDistDFeUtil.class);

	/** Documento(s) localizado(s) para o destinatário */
	public static final String CSTAT_DOCUMENTOS_LOCALIZADOS = "138";
	/** Nenhum documento localizado para o destinatário */
	public static final String CSTAT_NENHUM_DOCUMENTO = "137";
	/** Consumo indevido: o CNPJ fica 1 hora sem poder consultar a distribuição */
	public static final String CSTAT_CONSUMO_INDEVIDO = "656";

	/** Teto de páginas lidas por execução */
	public static final String SYSCONFIG_MAX_PAGES = "LBR_DFE_MAX_PAGES_PER_RUN";
	private static final int DEFAULT_MAX_PAGES = 20;

	/** Intervalo entre páginas, para não martelar o serviço */
	private static final long PAGE_INTERVAL_MS = 500;

	/** Situação da NF-e no resumo (cSitNFe) x situação na SEFAZ (cStat) */
	private static final String CSITNFE_AUTORIZADA = "1";
	private static final String CSITNFE_DENEGADA = "2";
	private static final String CSITNFE_CANCELADA = "3";

	private final Properties ctx;
	private final int AD_Org_ID;
	private final String tpAmb;
	private final String trxName;
	private final MLBRDFeControl control;

	private final MRegion orgRegion;
	private final String orgCNPJ;

	/** NSU do último documento efetivamente tratado nesta execução */
	private String lastProcessedNSU = null;

	/** Ocorrências desta execução, para o processo mostrar a quem executou */
	private final List<String> messages = new ArrayList<String>();

	private int created = 0;
	private int updated = 0;
	private int skipped = 0;
	private int failed = 0;
	private int eventsCreated = 0;

	/**
	 * @param ctx contexto
	 * @param AD_Org_ID organização destinatária dos documentos
	 * @param tpAmb ambiente da SEFAZ (1=produção, 2=homologação)
	 * @param trxName transação do chamador — a execução inteira é atômica nela
	 */
	public NFeDistDFeUtil(Properties ctx, int AD_Org_ID, String tpAmb, String trxName) {
		if (AD_Org_ID <= 0)
			throw new AdempiereException("Sem organização definida!");

		if (tpAmb == null || tpAmb.trim().isEmpty())
			throw new AdempiereException("Ambiente da Sefaz não definido!");

		this.ctx = ctx;
		this.AD_Org_ID = AD_Org_ID;
		this.tpAmb = tpAmb;
		this.trxName = trxName;

		MOrg org = new MOrg(ctx, AD_Org_ID, trxName);
		MOrgInfo orgInfo = MOrgInfo.get(ctx, org.get_ID(), trxName);
		MLocation orgLoc = new MLocation(ctx, orgInfo.getC_Location_ID(), trxName);

		this.orgRegion = new MRegion(ctx, orgLoc.getC_Region_ID(), trxName);

		MBPartner bpLinked2Org = new MBPartner(ctx, org.getLinkedC_BPartner_ID(trxName), trxName);
		this.orgCNPJ = TextUtil.removeCNPJMask(bpLinked2Org.get_ValueAsString("LBR_CNPJ"));

		if (orgCNPJ == null || orgCNPJ.trim().isEmpty())
			throw new AdempiereException("Organização sem CNPJ: " + org.getName());

		this.control = MLBRDFeControl.get(ctx, AD_Org_ID, tpAmb, trxName);

		if (control.get_ID() <= 0)
			control.setLBR_LastNSU(getLastReceivedNSU());
	}

	/**
	 * Ponto de leitura de quem já baixava DF-e antes de existir o controle: o
	 * maior NSU que a organização tem na caixa de entrada. Sem isso a primeira
	 * execução pediria a fila inteira de volta.
	 */
	private String getLastReceivedNSU() {
		String lastNSU = DB.getSQLValueString(trxName,
				"SELECT MAX(LBR_NSU) FROM LBR_NFeXML WHERE AD_Client_ID=? AND AD_Org_ID=?",
				Env.getAD_Client_ID(ctx), AD_Org_ID);

		if (lastNSU == null || lastNSU.trim().length() != 15)
			return MLBRDFeControl.FIRST_NSU;

		return lastNSU;
	}

	/**
	 * Lê a fila a partir do ponto de leitura gravado, paginando até acabar ou
	 * até o teto de páginas da execução.
	 *
	 * @return resumo do que foi recebido
	 */
	public String download() throws Exception {
		return download(null);
	}

	/**
	 * Lê a fila a partir do NSU informado, reposicionando o ponto de leitura.
	 *
	 * @param fromNSU NSU de partida, ou nulo para continuar de onde parou
	 * @return resumo do que foi recebido
	 */
	public String download(String fromNSU) throws Exception {
		if (control.isBlocked()) {
			// espera local: a SEFAZ bloqueia o CNPJ por 1 hora (cStat 656) de
			// quem consulta a distribuição depois de a fila ter acabado
			messages.add("Em espera porque " + control.getBlockReason() + ".");
			messages.add("Para buscar um documento específico agora, informe a chave de acesso"
					+ " ou o NSU — a consulta pontual não depende desta espera.");

			return "Nova consulta à SEFAZ liberada às "
				+ TextUtil.timeToString(control.getLBR_BlockedUntil(), "HH:mm")
				+ " (em " + control.getBlockedMinutes() + " min): " + control.getBlockReason()
				+ ". Último NSU: " + control.getLastNSU();
		}

		String lastNSU = fromNSU != null && fromNSU.trim().length() == 15
				? fromNSU.trim() : control.getLastNSU();

		int maxPages = Math.max(1, MSysConfig.getIntValue(SYSCONFIG_MAX_PAGES, DEFAULT_MAX_PAGES,
				Env.getAD_Client_ID(ctx), AD_Org_ID));

		String cStat = null;
		String xMotivo = null;
		String maxNSU = null;
		int pages = 0;
		boolean backlog = false;
		String failedNSU = null;

		while (pages < maxPages) {
			pages++;

			Document response = request(lastNSU, null, null);

			cStat = NFeDomUtil.value(response, "cStat");
			xMotivo = NFeDomUtil.value(response, "xMotivo");
			String ultNSU = NFeDomUtil.value(response, "ultNSU");
			maxNSU = NFeDomUtil.value(response, "maxNSU");

			log.info("DistDFe distNSU — cStat=" + cStat + " xMotivo=" + xMotivo
					+ " ultNSU=" + ultNSU + " maxNSU=" + maxNSU + " página=" + pages);

			control.registerRequest(cStat);

			if (CSTAT_CONSUMO_INDEVIDO.equals(cStat)) {
				control.block();
				break;
			}

			if (!CSTAT_DOCUMENTOS_LOCALIZADOS.equals(cStat)) {
				// 137 (nada localizado) e qualquer rejeição encerram a execução;
				// insistir depois de 137 é o que provoca o bloqueio de 1 hora
				if (CSTAT_NENHUM_DOCUMENTO.equals(cStat))
					control.block();

				break;
			}

			failedNSU = process(response.getElementsByTagName("docZip"));

			if (failedNSU != null) {
				// o ponto de leitura para no último documento que entrou: o
				// que falhou volta na próxima execução, em vez de se perder
				if (isValidNSU(lastProcessedNSU))
					control.setLBR_LastNSU(lastProcessedNSU);

				break;
			}

			if (isValidNSU(ultNSU)) {
				control.setLBR_LastNSU(ultNSU);
				lastNSU = ultNSU;
			}

			if (isValidNSU(maxNSU))
				control.setLBR_MaxNSU(maxNSU);

			if (isEndOfQueue(ultNSU, maxNSU)) {
				// fim da fila: a SEFAZ bloqueia quem consultar de novo dentro de 1 hora
				control.block();
				break;
			}

			backlog = true;

			if (pages < maxPages)
				pause();
		}

		control.saveEx();

		String summary = buildSummary(cStat, xMotivo, control.getLastNSU(), maxNSU, pages,
				backlog && pages >= maxPages);

		if (failedNSU != null) {
			summary += ". A leitura parou no NSU " + failedNSU + " (veja o motivo abaixo)."
					+ " Corrija e execute de novo: o documento continua na fila."
					+ " Para pular este documento de propósito, informe " + failedNSU
					+ " em 'Último NSU'";

			messages.add("O documento que falhou continua na fila — nada foi perdido."
					+ " Assim que a causa for corrigida, execute o processo novamente.");
		}

		return summary;
	}

	/**
	 * Recupera um documento pelo NSU. Conta contra o limite de consultas
	 * pontuais por hora.
	 *
	 * @return resumo do que foi recebido
	 */
	public String downloadByNSU(String NSU) throws Exception {
		if (NSU == null || NSU.trim().isEmpty())
			throw new AdempiereException("NSU não informado!");

		return downloadSingle(NSU.trim(), null);
	}

	/**
	 * Recupera um documento pela chave de acesso. Conta contra o limite de
	 * consultas pontuais por hora.
	 *
	 * @return resumo do que foi recebido
	 */
	public String downloadByNFeID(String chNFe) throws Exception {
		if (chNFe == null || chNFe.trim().length() != 44)
			throw new AdempiereException("Chave de acesso inválida: " + chNFe);

		return downloadSingle(null, chNFe.trim());
	}

	private String downloadSingle(String NSU, String chNFe) throws Exception {
		if (control.isQueryLimitReached())
			return "Limite de " + MLBRDFeControl.MAX_QUERIES_PER_HOUR
				+ " consultas por hora atingido. Tente novamente na próxima hora.";

		Document response = request(null, NSU, chNFe);

		String cStat = NFeDomUtil.value(response, "cStat");
		String xMotivo = NFeDomUtil.value(response, "xMotivo");

		log.info("DistDFe consulta pontual — cStat=" + cStat + " xMotivo=" + xMotivo
				+ " NSU=" + NSU + " chNFe=" + chNFe);

		control.registerRequest(cStat);
		control.incrementQueryCount();

		if (CSTAT_CONSUMO_INDEVIDO.equals(cStat))
			control.block();
		else if (CSTAT_DOCUMENTOS_LOCALIZADOS.equals(cStat))
			process(response.getElementsByTagName("docZip"));

		control.saveEx();

		return buildSummary(cStat, xMotivo, control.getLastNSU(), control.getLBR_MaxNSU(), 1, false);
	}

	/**
	 * Monta e envia a consulta, devolvendo a resposta já parseada.
	 */
	private Document request(String lastNSU, String NSU, String chNFe) throws Exception {
		StringBuilder xml = new StringBuilder()
			.append("<distDFeInt versao=\"1.01\" xmlns=\"http://www.portalfiscal.inf.br/nfe\">")
			.append("<tpAmb>").append(tpAmb).append("</tpAmb>")
			.append("<cUFAutor>").append(orgRegion.get_ValueAsString("LBR_RegionCode")).append("</cUFAutor>")
			.append("<CNPJ>").append(orgCNPJ).append("</CNPJ>");

		if (NSU != null)
			xml.append("<consNSU><NSU>").append(NSU).append("</NSU></consNSU>");
		else if (chNFe != null)
			xml.append("<consChNFe><chNFe>").append(chNFe).append("</chNFe></consChNFe>");
		else
			xml.append("<distNSU><ultNSU>").append(lastNSU).append("</ultNSU></distNSU>");

		xml.append("</distDFeInt>");

		SSLContext sslContext;
		try {
			sslContext = DigitalCertificateUtil.buildSSLContext(ctx, AD_Org_ID);
		} catch (Exception e) {
			throw new AdempiereException(e);
		}

		SefazHttpClient client = new SefazHttpClient(sslContext, NFeUtil.VERSAO_DISTRIBUICAO,
				orgRegion.get_ID(), MLBRNFeWebService.SERVICE_NFE_DISTRIBUICAO_DFE,
				NFeUtil.ENV_HOMOLOGACAO.equals(tpAmb), MLBRNotaFiscal.MODEL_NFE, null);

		String result = client.send(xml.toString());

		if (result == null || result.trim().isEmpty())
			throw new AdempiereException("Sem resposta do webservice de Distribuição de DF-e");

		// resposta da SEFAZ é entrada não confiável
		DocumentBuilder builder = SefazSoapUtils.newHardenedDocumentBuilder();
		return builder.parse(new InputSource(new StringReader(result)));
	}

	/**
	 * Materializa os documentos da resposta, na ordem em que vieram, e para no
	 * primeiro que não puder ser gravado.
	 *
	 * <p>Parar é o que protege o documento: a distribuição só entrega cada NSU
	 * uma vez, então avançar o ponto de leitura por cima de uma falha perderia
	 * aquele documento em definitivo. O que já entrou fica — cada documento é
	 * gravado sob savepoint próprio —, e o ponto de leitura avança até o último
	 * que entrou, nem um NSU além.
	 *
	 * @return NSU do documento que falhou, ou nulo se todos foram tratados
	 */
	private String process(NodeList docZipList) throws Exception {
		Trx trx = trxName == null ? null : Trx.get(trxName, false);

		for (int i = 0; i < docZipList.getLength(); i++) {
			Node node = docZipList.item(i);
			String NSU = getAttribute(node, "NSU");
			Savepoint savepoint = trx == null ? null : trx.setSavepoint(null);

			try {
				processDocZip(node);

				if (savepoint != null)
					trx.releaseSavepoint(savepoint);

				lastProcessedNSU = NSU;
			} catch (Exception e) {
				if (savepoint != null)
					trx.rollback(savepoint);

				failed++;
				log.log(Level.SEVERE, "DF-e do NSU " + NSU + " não pôde ser gravado", e);
				messages.add("NSU " + NSU + " (" + schema(node) + ") não pôde ser gravado: "
						+ getReason(e));

				return NSU;
			}
		}

		return null;
	}

	/**
	 * Materializa um documento da resposta: descompacta, classifica pelo
	 * schema, deduplica e grava com o XML anexado.
	 */
	private void processDocZip(Node node) throws Exception {
		if (node.getNodeType() != Node.ELEMENT_NODE)
			return;

		String NSU = getAttribute(node, "NSU");
		String schema = getAttribute(node, "schema");
		String xml = decompress(node.getTextContent());

		// conteúdo do docZip é entrada não confiável
		DocumentBuilder builder = SefazSoapUtils.newHardenedDocumentBuilder();
		Document doc = builder.parse(new InputSource(new StringReader(xml)));

		String dfeType = getDFeType(schema);
		boolean isComplete = isCompleteSchema(schema);
		String chNFe = getNFeID(doc);

		log.fine("DistDFe docZip — NSU=" + NSU + " schema=" + schema + " chNFe=" + chNFe);

		MLBRNFeXML dfe = findTarget(NSU, chNFe, dfeType, isComplete);

		if (dfe == null) {
			skipped++;
			return;
		}

		boolean isNewRecord = dfe.get_ID() <= 0;

		if (!isNewRecord)
			dfe.deleteAttachments();

		dfe.setLBR_NSU(NSU);
		dfe.setLBR_NFeID(chNFe);
		dfe.setLBR_SchemaName(schema);
		dfe.setLBR_DFeType(dfeType);
		dfe.setLBR_IsXMLComplete(isComplete);

		if (dfe.isEvento())
			fillFromEvento(dfe, doc);
		else if (isComplete)
			fillFromProcNFe(dfe, doc);
		else
			fillFromResNFe(dfe, doc);

		dfe.saveEx();
		dfe.attachXML((chNFe != null ? chNFe : NSU) + ".xml", xml);

		linkBackToNotaFiscal(dfe);

		if (dfe.isEvento())
			saveEventRec(dfe, doc);

		if (isNewRecord)
			created++;
		else
			updated++;
	}

	/**
	 * Fecha o vínculo do lado da nota, quando o DF-e chegou depois de a nota já
	 * ter sido importada por outro caminho.
	 */
	private void linkBackToNotaFiscal(MLBRNFeXML dfe) {
		if (dfe.getLBR_NotaFiscal_ID() <= 0)
			return;

		MLBRNotaFiscal nf = new MLBRNotaFiscal(ctx, dfe.getLBR_NotaFiscal_ID(), trxName);

		if (nf.getLBR_NFeXML_ID() > 0)
			return;

		nf.setLBR_NFeXML_ID(dfe.getLBR_NFeXML_ID());
		nf.saveEx();
	}

	/**
	 * Escolhe o registro que vai receber o documento, aplicando a deduplicação
	 * por NSU e por chave de acesso.
	 *
	 * @return o registro a gravar, ou nulo quando o documento deve ser
	 *         descartado por já existir versão melhor
	 */
	private MLBRNFeXML findTarget(String NSU, String chNFe, String dfeType, boolean isComplete) {
		MLBRNFeXML byNSU = MLBRNFeXML.getByNSU(ctx, AD_Org_ID, NSU, trxName);

		if (byNSU != null)
			return byNSU;

		if (chNFe != null && !MLBRNFeXML.LBR_DFETYPE_Evento.equals(dfeType)) {
			MLBRNFeXML byKey = MLBRNFeXML.getByNFeID(ctx, chNFe, trxName);

			if (byKey != null) {
				// o resumo não acrescenta nada a uma nota que já veio completa
				if (!isComplete && byKey.isLBR_IsXMLComplete())
					return null;

				return byKey;
			}
		}

		MLBRNFeXML dfe = new MLBRNFeXML(ctx, 0, trxName);
		dfe.setAD_Org_ID(AD_Org_ID);

		return dfe;
	}

	/**
	 * Resumo da NF-e (resNFe): chave, emitente, data, valor e situação. Número,
	 * série e modelo saem da própria chave de acesso.
	 */
	private void fillFromResNFe(MLBRNFeXML dfe, Document doc) {
		Element resNFe = NFeDomUtil.element(doc, "resNFe");

		if (resNFe == null)
			return;

		String emitDoc = firstNotEmpty(NFeDomUtil.childValue(resNFe, "CNPJ"), NFeDomUtil.childValue(resNFe, "CPF"));

		dfe.setLBR_EmitCNPJ(emitDoc);
		dfe.setLBR_EmitName(NFeDomUtil.childText(resNFe, "xNome"));
		dfe.setDateDoc(NFeDomUtil.childDate(resNFe, "dhEmi"));
		dfe.setGrandTotal(NFeDomUtil.childAmt(resNFe, "vNF"));
		dfe.setLBR_NFeStatus(toNFeStatus(NFeDomUtil.childValue(resNFe, "cSitNFe")));
		dfe.setDocumentDataFromKey();

		resolveBPartner(dfe, emitDoc);
		resolveStatus(dfe, false);
	}

	/**
	 * NF-e completa (procNFe): mesma informação do resumo, mais o que só o XML
	 * autorizado traz.
	 */
	private void fillFromProcNFe(MLBRNFeXML dfe, Document doc) {
		Element emit = NFeDomUtil.element(doc, "emit");
		Element ide = NFeDomUtil.element(doc, "ide");
		Element icmsTot = NFeDomUtil.element(doc, "ICMSTot");
		Element infProt = NFeDomUtil.element(doc, "infProt");

		String emitDoc = null;

		if (emit != null) {
			emitDoc = firstNotEmpty(NFeDomUtil.childValue(emit, "CNPJ"), NFeDomUtil.childValue(emit, "CPF"));
			dfe.setLBR_EmitCNPJ(emitDoc);
			dfe.setLBR_EmitName(NFeDomUtil.childText(emit, "xNome"));
		}

		if (ide != null)
			dfe.setDateDoc(NFeDomUtil.childDate(ide, "dhEmi"));

		if (icmsTot != null)
			dfe.setGrandTotal(NFeDomUtil.childAmt(icmsTot, "vNF"));

		if (infProt != null)
			dfe.setLBR_NFeStatus(NFeDomUtil.childValue(infProt, "cStat"));

		dfe.setDocumentDataFromKey();

		resolveBPartner(dfe, emitDoc);
		resolveStatus(dfe, true);
	}

	/**
	 * Evento (resEvento ou procEventoNFe): o registro da caixa de entrada serve
	 * de transporte; o dado de negócio vai para {@link MLBRNotaFiscalEventRec}.
	 */
	private void fillFromEvento(MLBRNFeXML dfe, Document doc) {
		Element infEvento = NFeDomUtil.element(doc, "infEvento");

		if (infEvento == null)
			return;

		dfe.setLBR_EmitCNPJ(firstNotEmpty(NFeDomUtil.childValue(infEvento, "CNPJ"), NFeDomUtil.childValue(infEvento, "CPF")));
		dfe.setDateDoc(NFeDomUtil.toTimestamp(firstNotEmpty(NFeDomUtil.childValue(infEvento, "dhEvento"),
				NFeDomUtil.childValue(infEvento, "dhRegEvento"))));
		dfe.setDescription(getEventDescription(doc));
		dfe.setDocumentDataFromKey();

		// evento não vira nota: nasce e morre processado
		dfe.setLBR_DFeStatus(MLBRNFeXML.LBR_DFESTATUS_Importado);
		dfe.setProcessed(true);
	}

	/**
	 * Grava o evento como registro de negócio, deduplicando por chave, tipo e
	 * sequência — o mesmo evento chega duas vezes, resumo e completo, em NSUs
	 * diferentes.
	 */
	private void saveEventRec(MLBRNFeXML dfe, Document doc) {
		Element infEvento = NFeDomUtil.element(doc, "infEvento");

		if (infEvento == null || dfe.getLBR_NFeID() == null)
			return;

		String tpEvento = NFeDomUtil.childValue(infEvento, "tpEvento");
		int nSeqEvento = NFeDomUtil.toInt(NFeDomUtil.childValue(infEvento, "nSeqEvento"), 1);

		if (tpEvento == null || tpEvento.isEmpty())
			return;

		MLBRNotaFiscalEventRec event = MLBRNotaFiscalEventRec.get(ctx, dfe.getLBR_NFeID(),
				tpEvento, nSeqEvento, trxName);

		boolean isNewRecord = event == null;

		if (isNewRecord) {
			event = new MLBRNotaFiscalEventRec(ctx, 0, trxName);
			event.setAD_Org_ID(AD_Org_ID);
			event.setLBR_NFeID(dfe.getLBR_NFeID());
			event.setLBR_EventCode(tpEvento);
			event.setLBR_EventSeqNo(nSeqEvento);
		}

		event.setLBR_NFeXML_ID(dfe.getLBR_NFeXML_ID());
		event.setLBR_EventAuthor(firstNotEmpty(NFeDomUtil.childValue(infEvento, "CNPJ"),
				NFeDomUtil.childValue(infEvento, "CPF")));
		event.setLBR_EventDate(NFeDomUtil.toTimestamp(firstNotEmpty(NFeDomUtil.childValue(infEvento, "dhEvento"),
				NFeDomUtil.childValue(infEvento, "dhRegEvento"))));
		event.setDescription(getEventDescription(doc));

		String nProt = NFeDomUtil.value(doc, "nProt");

		if (nProt != null && !nProt.isEmpty())
			event.setLBR_EventProt(nProt);

		MLBRNotaFiscal nf = findNotaFiscal(dfe.getLBR_NFeID());

		if (nf != null)
			event.setLBR_NotaFiscal_ID(nf.getLBR_NotaFiscal_ID());

		event.saveEx();

		if (isNewRecord)
			eventsCreated++;

		applyManifestacao(event);
	}

	/**
	 * Nota já existente para a chave. Não usa
	 * {@link MLBRNotaFiscal#getNFe(String, String)} porque aquele registra
	 * aviso quando não encontra — e aqui não encontrar é o caso normal: quase
	 * todo DF-e baixado ainda não virou nota.
	 */
	private MLBRNotaFiscal findNotaFiscal(String chNFe) {
		if (chNFe == null)
			return null;

		return new Query(ctx, MLBRNotaFiscal.Table_Name, "LBR_NFeID=?", trxName)
			.setParameters(chNFe)
			.setClient_ID()
			.first();
	}

	/**
	 * Reflete no documento da caixa de entrada a manifestação que nós mesmos
	 * demos — inclusive a que tenha saído por fora do iDempiere, pelo portal
	 * da SEFAZ ou por outro sistema.
	 */
	private void applyManifestacao(MLBRNotaFiscalEventRec event) {
		if (!event.isManifestacao() || !orgCNPJ.equals(event.getLBR_EventAuthor()))
			return;

		MLBRNFeXML nfe = MLBRNFeXML.getByNFeID(ctx, event.getLBR_NFeID(), trxName);

		if (nfe == null || nfe.get_ID() <= 0)
			return;

		nfe.setLBR_UltimaManifestacao(event.getLBR_EventCode());

		String code = event.getLBR_EventCode();

		if (MLBRNotaFiscalEventRec.EVENT_DESCONHECIMENTO.equals(code)
				|| MLBRNotaFiscalEventRec.EVENT_NAO_REALIZADA.equals(code)) {
			nfe.setLBR_DFeStatus(MLBRNFeXML.LBR_DFESTATUS_Ignorado);
			nfe.setProcessed(true);
		}
		else if (MLBRNotaFiscalEventRec.EVENT_CIENCIA.equals(code)
				&& MLBRNFeXML.LBR_DFESTATUS_Novo.equals(nfe.getLBR_DFeStatus())) {
			nfe.setLBR_DFeStatus(MLBRNFeXML.LBR_DFESTATUS_AguardandoXMLCompleto);
		}

		nfe.saveEx();
	}

	/**
	 * Define onde o documento entra no ciclo de vida da fila. Documento já
	 * ignorado ou já importado não regride: quem decidiu isso foi o usuário ou
	 * uma importação concluída.
	 */
	private void resolveStatus(MLBRNFeXML dfe, boolean isComplete) {
		String current = dfe.getLBR_DFeStatus();

		if (MLBRNFeXML.LBR_DFESTATUS_Ignorado.equals(current)
				|| MLBRNFeXML.LBR_DFESTATUS_Importado.equals(current))
			return;

		// CT-e é guardado para não se perder, mas não há importação para ele
		if (MLBRNFeXML.LBR_DFETYPE_ConhecimentoDeTransporte.equals(dfe.getLBR_DFeType())) {
			if (current == null)
				dfe.setLBR_DFeStatus(MLBRNFeXML.LBR_DFESTATUS_Novo);

			return;
		}

		// denegada ou cancelada não vira documento nosso — o motivo fica
		// visível em LBR_NFeStatus
		String nfeStatus = dfe.getLBR_NFeStatus();

		if (nfeStatus != null && !isAutorizada(nfeStatus)) {
			dfe.setLBR_DFeStatus(MLBRNFeXML.LBR_DFESTATUS_Ignorado);
			dfe.setProcessed(true);
			return;
		}

		// a nota pode ter entrado por upload antes de o DF-e ser baixado
		MLBRNotaFiscal nf = findNotaFiscal(dfe.getLBR_NFeID());

		if (nf != null) {
			dfe.setLBR_NotaFiscal_ID(nf.getLBR_NotaFiscal_ID());
			dfe.setLBR_DFeStatus(MLBRNFeXML.LBR_DFESTATUS_Importado);
			dfe.setProcessed(true);
			return;
		}

		if (isComplete)
			dfe.setLBR_DFeStatus(MLBRNFeXML.LBR_DFESTATUS_ProntoParaImportar);
		else if (dfe.getLBR_UltimaManifestacao() != null)
			dfe.setLBR_DFeStatus(MLBRNFeXML.LBR_DFESTATUS_AguardandoXMLCompleto);
		else if (current == null)
			dfe.setLBR_DFeStatus(MLBRNFeXML.LBR_DFESTATUS_Novo);
	}

	/**
	 * Resolve o emitente pelo CNPJ/CPF do XML. Não encontrar é normal na
	 * primeira nota de um fornecedor novo — o vínculo se resolve na importação.
	 */
	private void resolveBPartner(MLBRNFeXML dfe, String emitDoc) {
		if (emitDoc == null || emitDoc.trim().isEmpty() || dfe.getC_BPartner_ID() > 0)
			return;

		String where = emitDoc.length() == 11 ? "LBR_CPF=?" : "LBR_CNPJ=?";

		MBPartner bp = new Query(ctx, MBPartner.Table_Name, where, trxName)
			.setParameters(emitDoc)
			.setClient_ID()
			.setOnlyActiveRecords(true)
			.first();

		if (bp != null)
			dfe.setC_BPartner_ID(bp.get_ID());
	}

	private String buildSummary(String cStat, String xMotivo, String lastNSU, String maxNSU,
			int pages, boolean hasBacklog) {

		StringBuilder msg = new StringBuilder();

		if (cStat != null)
			msg.append(cStat).append(" - ").append(xMotivo).append(". ");

		msg.append(created).append(" novo(s), ")
			.append(updated).append(" atualizado(s), ")
			.append(skipped).append(" ignorado(s)");

		if (failed > 0)
			msg.append(", ").append(failed).append(" com erro (ver log)");

		if (eventsCreated > 0)
			msg.append(", ").append(eventsCreated).append(" evento(s)");

		msg.append(". NSU ").append(lastNSU);

		if (isValidNSU(maxNSU))
			msg.append(" de ").append(maxNSU);

		if (pages > 1)
			msg.append(" (").append(pages).append(" consultas)");

		if (hasBacklog)
			msg.append(". Ainda há documentos na fila — execute novamente");

		if (control.isBlocked())
			msg.append(". Próxima distribuição em ").append(control.getBlockedMinutes()).append(" min");

		return msg.toString();
	}

	/**
	 * Fim da fila: a SEFAZ já entregou tudo o que tinha.
	 */
	private static boolean isEndOfQueue(String ultNSU, String maxNSU) {
		if (!isValidNSU(ultNSU) || !isValidNSU(maxNSU))
			return true;

		return ultNSU.compareTo(maxNSU) >= 0;
	}

	private static boolean isValidNSU(String NSU) {
		return NSU != null && !NSU.trim().isEmpty();
	}

	private void pause() {
		try {
			Thread.sleep(PAGE_INTERVAL_MS);
		} catch (InterruptedException e) {
			Thread.currentThread().interrupt();
		}
	}

	private static String decompress(String base64Gzip) throws Exception {
		byte[] decoded = Base64.getDecoder().decode(base64Gzip);

		try (GZIPInputStream gzis = new GZIPInputStream(new ByteArrayInputStream(decoded))) {
			return new String(gzis.readAllBytes(), java.nio.charset.StandardCharsets.UTF_8);
		}
	}

	/**
	 * Tipo do DF-e a partir do nome do schema devolvido no docZip
	 * (resNFe_v1.01.xsd, procNFe_v4.00.xsd, resEvento_v1.01.xsd,
	 * procEventoNFe_v1.00.xsd).
	 */
	public static String getDFeType(String schema) {
		if (schema == null)
			return MLBRNFeXML.LBR_DFETYPE_NF_E;

		if (schema.contains("Evento") || schema.contains("evento"))
			return MLBRNFeXML.LBR_DFETYPE_Evento;

		if (schema.contains("CTe") || schema.contains("cte"))
			return MLBRNFeXML.LBR_DFETYPE_ConhecimentoDeTransporte;

		return MLBRNFeXML.LBR_DFETYPE_NF_E;
	}

	/** @return true quando o docZip traz o documento inteiro, não o resumo */
	public static boolean isCompleteSchema(String schema) {
		return schema != null && schema.startsWith("proc");
	}

	/**
	 * Chave de acesso do documento, venha ela do resumo, do protocolo ou do
	 * atributo Id da NF-e.
	 */
	public static String getNFeID(Document doc) {
		String chNFe = NFeDomUtil.value(doc, "chNFe");

		if (chNFe != null && chNFe.length() == 44)
			return chNFe;

		Element infNFe = NFeDomUtil.element(doc, "infNFe");

		if (infNFe != null) {
			String id = infNFe.getAttribute("Id");

			if (id != null && id.length() == 47)
				return id.substring(3);
		}

		return null;
	}

	/**
	 * Descrição do evento: o texto do próprio evento, acrescido da justificativa
	 * ou da correção quando houver.
	 */
	private static String getEventDescription(Document doc) {
		String description = firstNotEmpty(NFeDomUtil.value(doc, "xEvento"), NFeDomUtil.value(doc, "descEvento"));
		String detail = firstNotEmpty(NFeDomUtil.value(doc, "xJust"), NFeDomUtil.value(doc, "xCorrecao"));

		if (detail != null && !detail.isEmpty())
			description = (description == null ? "" : description + " - ") + detail;

		if (description == null)
			return null;

		return description.length() > 255 ? description.substring(0, 255) : description;
	}

	private static String toNFeStatus(String cSitNFe) {
		if (CSITNFE_AUTORIZADA.equals(cSitNFe))
			return MLBRNFeXML.LBR_NFESTATUS_100_AutorizadoOUsoDaNF_E;

		if (CSITNFE_DENEGADA.equals(cSitNFe))
			return MLBRNFeXML.LBR_NFESTATUS_110_UsoDenegado;

		if (CSITNFE_CANCELADA.equals(cSitNFe))
			return MLBRNFeXML.LBR_NFESTATUS_101_CancelamentoDeNF_EHomologado;

		return null;
	}

	/** @return true se a NF-e está autorizada — 100, ou 150 fora de prazo */
	private static boolean isAutorizada(String cStat) {
		return MLBRNFeXML.LBR_NFESTATUS_100_AutorizadoOUsoDaNF_E.equals(cStat)
			|| MLBRNFeXML.LBR_NFESTATUS_150_AutorizadoOUsoDaNF_E.equals(cStat);
	}

	private static String firstNotEmpty(String first, String second) {
		if (first != null && !first.trim().isEmpty())
			return first.trim();

		if (second != null && !second.trim().isEmpty())
			return second.trim();

		return null;
	}

	/**
	 * Ocorrências desta execução, na ordem em que aconteceram, para o processo
	 * mostrar a quem executou — quem opera o dia a dia não lê log de servidor.
	 */
	public List<String> getMessages() {
		return messages;
	}

	private static String schema(Node node) {
		String schema = getAttribute(node, "schema");

		return schema == null ? "documento" : schema;
	}

	/**
	 * Motivo da falha em uma linha. A causa útil costuma estar na exceção mais
	 * funda — a de cima só diz que a gravação falhou.
	 */
	private static String getReason(Throwable e) {
		Throwable cause = e;

		while (cause.getCause() != null && cause.getCause() != cause)
			cause = cause.getCause();

		String reason = cause.getLocalizedMessage();

		if (reason == null || reason.trim().isEmpty())
			reason = cause.getClass().getSimpleName();

		return reason.length() > 500 ? reason.substring(0, 500) : reason;
	}

	private static String getAttribute(Node node, String name) {
		Node attribute = node.getAttributes().getNamedItem(name);
		return attribute == null ? null : attribute.getNodeValue();
	}

}	//	NFeDistDFeUtil
