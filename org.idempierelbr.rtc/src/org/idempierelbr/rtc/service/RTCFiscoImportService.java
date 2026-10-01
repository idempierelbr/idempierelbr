package org.idempierelbr.rtc.service;

import java.sql.Savepoint;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.util.CLogger;
import org.compiere.util.Trx;
import org.idempierelbr.base.model.MLBRRTCFiscoApurDoc;
import org.idempierelbr.base.model.MLBRRTCFiscoApuracao;
import org.idempierelbr.base.model.MLBRRTCFiscoConfig;
import org.idempierelbr.base.model.MLBRRTCFiscoPayComp;
import org.idempierelbr.base.model.MLBRRTCFiscoPayment;
import org.idempierelbr.base.model.MLBRRTCFiscoRequest;
import org.idempierelbr.rtc.json.RTCFiscoJsonParser;
import org.idempierelbr.rtc.json.dto.FiscoApuracaoFileDTO;
import org.idempierelbr.rtc.json.dto.FiscoApuracaoFileDTO.Apropriacao;
import org.idempierelbr.rtc.json.dto.FiscoApuracaoFileDTO.Composicao;
import org.idempierelbr.rtc.json.dto.FiscoApuracaoFileDTO.Documento;
import org.idempierelbr.rtc.json.dto.FiscoApuracaoFileDTO.NaoUtilizado;
import org.idempierelbr.rtc.json.dto.FiscoApuracaoFileDTO.Pagamento;
import org.idempierelbr.rtc.json.dto.FiscoApuracaoFileDTO.Periodo;
import org.idempierelbr.rtc.json.dto.FiscoApuracaoFileDTO.Utilizacao;
import org.idempierelbr.rtc.json.dto.FiscoApuracaoFileDTO.Valores;
import org.idempierelbr.rtc.provider.RTCFiscoApuracaoCBSProvider;
import org.idempierelbr.rtc.util.RTCUtil;

/**
 * Grava o arquivo baixado da Receita: débitos e créditos em
 * {@link MLBRRTCFiscoApuracao} e {@link MLBRRTCFiscoApurDoc}; pagamentos e
 * recolhimentos em {@link MLBRRTCFiscoPayment} e {@link MLBRRTCFiscoPayComp}.
 *
 * <ul>
 * <li><b>Fidelidade ao arquivo:</b> grava o que veio, sem completar nem
 *     interpretar. Nenhuma busca por nota fiscal; o único cálculo é o dos
 *     totais do período.
 * <li><b>Idempotência:</b> cada registro é localizado pela chave natural.
 *     Documentos só são sobrescritos quando a {@code atualizacao} do arquivo
 *     é mais recente que a gravada; pagamentos, que não trazem essa data,
 *     ficam com o que veio no último arquivo. Reimportar o mesmo arquivo não
 *     duplica nem regride.
 * <li><b>Falha isolada:</b> cada documento — ou cada DARF, com sua
 *     composição — é gravado sob savepoint próprio. Um que falhe não leva os
 *     outros junto, e o motivo fica em {@link #getMessages()} para o processo
 *     mostrar.
 * </ul>
 *
 * @author Alan Lescano
 */
public class RTCFiscoImportService {
	private static final CLogger log = CLogger.getCLogger(RTCFiscoImportService.class);

	private final Properties ctx;
	private final String trxName;

	/** Ocorrências desta execução, para o processo mostrar a quem executou */
	private final List<String> messages = new ArrayList<String>();

	private int created = 0;
	private int updated = 0;
	private int unchanged = 0;
	private int failed = 0;
	private int periods = 0;

	/**
	 * @param trxName transação do chamador — obrigatória, porque é nela que
	 *        ficam os savepoints de cada documento
	 */
	public RTCFiscoImportService(Properties ctx, String trxName) {
		if (trxName == null)
			throw new IllegalArgumentException("A importação precisa de uma transação.");

		this.ctx = ctx;
		this.trxName = trxName;
	}

	/**
	 * Importa um arquivo de qualquer dos quatro serviços.
	 *
	 * @param request solicitação de onde o arquivo veio, ou nulo quando ele foi
	 *        carregado à mão
	 * @return resumo do que foi gravado
	 * @throws AdempiereException se o arquivo for ilegível ou não for da
	 *         configuração e do serviço informados
	 */
	public String importFile(MLBRRTCFiscoConfig config, String service, MLBRRTCFiscoRequest request, byte[] content) {
		RTCFiscoRequestService.checkImportable(service);

		FiscoApuracaoFileDTO file = RTCFiscoJsonParser.parse(content);

		String fileCNPJBase = RTCUtil.toCNPJBase(file.ni);

		if (fileCNPJBase == null)
			throw new AdempiereException("O arquivo não informa o CNPJ base do contribuinte (campo \"ni\").");

		if (!fileCNPJBase.equals(config.getLBR_CNPJBase()))
			throw new AdempiereException("O arquivo é do CNPJ base " + fileCNPJBase + ", mas a configuração é do "
					+ config.getLBR_CNPJBase() + ".");

		if (request != null && file.tiqueteSolicitacao != null && request.getLBR_Ticket() != null
				&& !file.tiqueteSolicitacao.trim().equals(request.getLBR_Ticket()))
			throw new AdempiereException("O arquivo é do tíquete " + file.tiqueteSolicitacao.trim()
					+ ", e não do tíquete " + request.getLBR_Ticket() + " desta solicitação.");

		if (isPaymentService(service))
			importPayments(file, config, service, request);
		else
			importDocuments(file, config, service, request);

		if (request != null)
			request.setLBR_GeneratedAt(parseDateTime(file.geradoEm, "geradoEm"));

		return getSummary(service);
	}

	/** Pagamentos e recolhimentos vêm como DARFs; débitos e créditos, como documentos */
	private static boolean isPaymentService(String service) {
		return MLBRRTCFiscoRequest.LBR_RTCFISCOSERVICE_Pagamentos.equals(service)
			|| MLBRRTCFiscoRequest.LBR_RTCFISCOSERVICE_Recolhimentos.equals(service);
	}

	private void importDocuments(FiscoApuracaoFileDTO file, MLBRRTCFiscoConfig config, String service,
			MLBRRTCFiscoRequest request) {
		boolean isDebit = MLBRRTCFiscoRequest.LBR_RTCFISCOSERVICE_Débitos.equals(service);
		String docType = isDebit ? MLBRRTCFiscoApurDoc.LBR_RTCFISCODOCTYPE_Débito
				: MLBRRTCFiscoApurDoc.LBR_RTCFISCODOCTYPE_Crédito;

		for (Periodo periodo : file.apuracao) {
			if (periodo == null)
				continue;

			List<Documento> documentos = isDebit ? periodo.debitos : periodo.creditos;

			if (documentos == null || documentos.isEmpty())
				continue;

			if (!RTCUtil.isValidPA(periodo.pa)) {
				failed += documentos.size();
				messages.add("Período \"" + periodo.pa + "\" fora do formato MM/AAAA: " + documentos.size()
						+ " documento(s) ignorado(s).");
				continue;
			}

			MLBRRTCFiscoApuracao apuracao = MLBRRTCFiscoApuracao.getOrCreate(ctx, config.getLBR_CNPJBase(),
					config.getLBR_RTCTaxType(), periodo.pa, trxName);

			for (Documento documento : documentos)
				if (documento != null)
					importDocument(apuracao, docType, documento, request);

			apuracao.updateTotals();
			periods++;
		}
	}

	/**
	 * Grava os DARFs de um arquivo de pagamentos ou de recolhimentos.
	 *
	 * <p>Só os <b>pagamentos</b> extinguem débitos do próprio contribuinte: a
	 * composição deles é ligada ao período de apuração pelo {@code pa} e entra
	 * no Total Pago. Os <b>recolhimentos</b> são feitos como adquirente, sobre
	 * débitos de fornecedores — o {@code pa} ali é o do fornecedor, e somá-lo
	 * à apuração do contribuinte estaria errado.
	 */
	private void importPayments(FiscoApuracaoFileDTO file, MLBRRTCFiscoConfig config, String service,
			MLBRRTCFiscoRequest request) {
		boolean isPayment = MLBRRTCFiscoRequest.LBR_RTCFISCOSERVICE_Pagamentos.equals(service);
		Map<String, MLBRRTCFiscoApuracao> apuracoes = new LinkedHashMap<String, MLBRRTCFiscoApuracao>();

		for (Periodo periodo : file.apuracao) {
			if (periodo == null || periodo.pagamentos == null || periodo.pagamentos.isEmpty())
				continue;

			Timestamp dateCollection = RTCUtil.toDate(RTCUtil.parseDateTimeOrNull(periodo.dataArrecadacao));

			if (dateCollection == null) {
				failed += periodo.pagamentos.size();
				messages.add("Data de arrecadação \"" + periodo.dataArrecadacao + "\" ausente ou inválida: "
						+ periodo.pagamentos.size() + " pagamento(s) ignorado(s).");
				continue;
			}

			for (Pagamento pagamento : periodo.pagamentos) {
				if (pagamento == null)
					continue;

				// o período é resolvido fora do savepoint do pagamento: se ele
				// falhar, o período criado não pode sumir junto e deixar o mapa
				// apontando para um registro desfeito
				if (isPayment && pagamento.composicao != null)
					for (Composicao item : pagamento.composicao)
						if (item != null && RTCUtil.isValidPA(trim(item.pa)) && !apuracoes.containsKey(trim(item.pa)))
							apuracoes.put(trim(item.pa), MLBRRTCFiscoApuracao.getOrCreate(ctx,
									config.getLBR_CNPJBase(), config.getLBR_RTCTaxType(), trim(item.pa), trxName));

				importPayment(config, service, pagamento, dateCollection, request, isPayment, apuracoes);
			}

			periods++;
		}

		for (MLBRRTCFiscoApuracao apuracao : apuracoes.values())
			apuracao.updateTotals();
	}

	private void importPayment(MLBRRTCFiscoConfig config, String service, Pagamento pagamento,
			Timestamp dateCollection, MLBRRTCFiscoRequest request, boolean isPayment,
			Map<String, MLBRRTCFiscoApuracao> apuracoes) {
		String darfNo = trim(pagamento.numeroDARF);
		String description = "DARF " + (darfNo == null ? "sem número" : darfNo) + " arrecadado em "
				+ dateCollection.toLocalDateTime().toLocalDate();

		// o número do DARF é o que identifica o pagamento: sem ele, reimportar
		// o arquivo duplicaria o registro
		if (darfNo == null) {
			failed++;
			messages.add(description + " não pôde ser gravado: o arquivo não traz o número do DARF.");
			return;
		}

		Trx trx = Trx.get(trxName, false);
		Savepoint savepoint = null;

		try {
			savepoint = trx.setSavepoint(null);

			MLBRRTCFiscoPayment payment = MLBRRTCFiscoPayment.get(ctx, config.getLBR_CNPJBase(), darfNo,
					dateCollection, trxName);

			boolean isNew = payment == null;

			if (!isNew && !service.equals(payment.getLBR_RTCFiscoService()))
				throw new AdempiereException("o mesmo DARF já foi importado como "
						+ RTCFiscoApuracaoCBSProvider.getServiceLabel(payment.getLBR_RTCFiscoService()) + ".");

			if (isNew) {
				payment = new MLBRRTCFiscoPayment(ctx, 0, trxName);
				payment.setAD_Org_ID(0);
				payment.setLBR_CNPJBase(config.getLBR_CNPJBase());
				payment.setLBR_RTCTaxType(config.getLBR_RTCTaxType());
				payment.setLBR_RTCFiscoService(service);
				payment.setLBR_DARFNo(darfNo);
				payment.setLBR_DateCollection(dateCollection);
			}

			// o tipo vai como veio: os códigos só serão mapeados quando a
			// Receita os documentar
			payment.set_ValueOfColumn(MLBRRTCFiscoPayment.COLUMNNAME_LBR_PaymentType, pagamento.tipo);
			payment.setLBR_NI(isPayment ? trim(pagamento.niAdquirente) : null);

			boolean changed = payment.is_Changed();

			if (request != null && changed)
				payment.setLBR_RTCFiscoRequest_ID(request.getLBR_RTCFiscoRequest_ID());

			payment.saveEx();

			List<Composicao> composicao = pagamento.composicao == null ? new ArrayList<Composicao>()
					: pagamento.composicao;

			for (int i = 0; i < composicao.size(); i++) {
				Composicao item = composicao.get(i);

				if (item != null)
					changed |= importPaymentItem(payment, item, i, isPayment, apuracoes);
			}

			payment.updateTotal();
			trx.releaseSavepoint(savepoint);

			if (isNew)
				created++;
			else if (changed)
				updated++;
			else
				unchanged++;
		} catch (Exception e) {
			if (savepoint != null) {
				try {
					trx.rollback(savepoint);
				} catch (Exception e2) {
					log.log(Level.SEVERE, "Não foi possível desfazer o " + description, e2);
				}
			}

			failed++;
			log.log(Level.SEVERE, "Pagamento não pôde ser gravado: " + description, e);
			messages.add(description + " não pôde ser gravado: " + getReason(e));
		}
	}

	/**
	 * Grava um item da composição, localizado pelo sequencial.
	 *
	 * @param position posição no arquivo, usada quando o item não traz o
	 *        sequencial
	 * @param isPayment pagamento (liga o item ao período) ou recolhimento (não liga)
	 * @return true se o item é novo ou mudou
	 */
	private boolean importPaymentItem(MLBRRTCFiscoPayment payment, Composicao item, int position,
			boolean isPayment, Map<String, MLBRRTCFiscoApuracao> apuracoes) {
		int seqNo = item.sequencial == null ? position : item.sequencial;

		MLBRRTCFiscoPayComp comp = MLBRRTCFiscoPayComp.get(ctx, payment.getLBR_RTCFiscoPayment_ID(), seqNo, trxName);

		if (comp == null) {
			comp = new MLBRRTCFiscoPayComp(ctx, 0, trxName);
			comp.setAD_Org_ID(0);
			comp.setLBR_RTCFiscoPayment_ID(payment.getLBR_RTCFiscoPayment_ID());
			comp.setSeqNo(seqNo);
		}

		String pa = trim(item.pa);
		MLBRRTCFiscoApuracao apuracao = isPayment && pa != null ? apuracoes.get(pa) : null;

		comp.setLBR_PA(pa);
		comp.setDueDate(RTCUtil.toDate(parseDateTime(item.vencimento, "vencimento")));
		comp.setLBR_NI(isPayment ? trim(item.niContribuinte) : trim(item.niFornecedor));
		comp.setLBR_DFeChave(trim(item.chaveDFE));
		comp.setLBR_PrincipalAmt(item.principal);
		comp.setLBR_FineAmt(item.multa);
		comp.setLBR_InterestAmt(item.juros);
		comp.setTotalAmt(item.total);
		comp.setLBR_RTCFiscoApuracao_ID(apuracao == null ? 0 : apuracao.getLBR_RTCFiscoApuracao_ID());

		boolean changed = comp.get_ID() == 0 || comp.is_Changed();
		comp.saveEx();

		return changed;
	}

	/** Texto sem espaços nas pontas, ou nulo se vazio — a Receita manda "" para campo sem valor */
	private static String trim(String value) {
		if (value == null)
			return null;

		String trimmed = value.trim();

		return trimmed.isEmpty() ? null : trimmed;
	}

	/**
	 * Decide se o documento do arquivo substitui o gravado.
	 *
	 * @param stored {@code LBR_DateUpdated} gravado, ou nulo
	 * @param incoming {@code atualizacao} do arquivo, ou nulo
	 * @return true se o do arquivo é mais recente — o mesmo instante não conta,
	 *         para que reimportar o arquivo não mexa em nada
	 */
	public static boolean shouldOverwrite(Timestamp stored, Timestamp incoming) {
		if (stored == null)
			return true;

		if (incoming == null)
			return false;

		return incoming.after(stored);
	}

	private void importDocument(MLBRRTCFiscoApuracao apuracao, String docType, Documento documento,
			MLBRRTCFiscoRequest request) {
		int origem = documento.origem == null ? 0 : documento.origem;
		int modelo = documento.documento == null ? 0 : documento.documento;
		String chave = documento.chave == null || documento.chave.trim().isEmpty() ? MLBRRTCFiscoApurDoc.NO_DFE_KEY
				: documento.chave.trim();

		String description = "PA " + apuracao.getLBR_PA() + ", chave " + chave + " (origem " + origem
				+ ", documento " + modelo + ")";

		Trx trx = Trx.get(trxName, false);
		Savepoint savepoint = null;

		try {
			savepoint = trx.setSavepoint(null);

			Timestamp atualizacao = parseDateTime(documento.atualizacao, "atualizacao");

			MLBRRTCFiscoApurDoc doc = MLBRRTCFiscoApurDoc.get(ctx, apuracao.getLBR_RTCFiscoApuracao_ID(), docType,
					chave, origem, modelo, trxName);

			boolean isNew = doc == null;

			if (!isNew && !shouldOverwrite(doc.getLBR_DateUpdated(), atualizacao)) {
				unchanged++;
				trx.releaseSavepoint(savepoint);
				return;
			}

			if (isNew) {
				doc = new MLBRRTCFiscoApurDoc(ctx, 0, trxName);
				doc.setAD_Org_ID(0);
				doc.setLBR_RTCFiscoApuracao_ID(apuracao.getLBR_RTCFiscoApuracao_ID());
				doc.setLBR_RTCFiscoDocType(docType);
				doc.setLBR_DFeChave(chave);
				doc.setLBR_Origem(origem);
				doc.setLBR_Documento(modelo);
			}

			if (request != null)
				doc.setLBR_RTCFiscoRequest_ID(request.getLBR_RTCFiscoRequest_ID());

			doc.setLBR_DateIssued(parseDateTime(documento.emissao, "emissao"));
			doc.setLBR_DateRegistered(parseDateTime(documento.registro, "registro"));
			doc.setLBR_DateUpdated(atualizacao);

			setAmounts(doc, docType, documento.cbs);

			doc.saveEx();
			trx.releaseSavepoint(savepoint);

			if (isNew)
				created++;
			else
				updated++;
		} catch (Exception e) {
			if (savepoint != null) {
				try {
					trx.rollback(savepoint);
				} catch (Exception e2) {
					log.log(Level.SEVERE, "Não foi possível desfazer o documento " + description, e2);
				}
			}

			failed++;
			log.log(Level.SEVERE, "Documento apurado não pôde ser gravado: " + description, e);
			messages.add(description + " não pôde ser gravado: " + getReason(e));
		}
	}

	/**
	 * Copia os valores do grupo {@code cbs}. Todos os campos são gravados,
	 * inclusive os nulos: um documento atualizado que deixou de trazer um
	 * valor não pode manter o valor antigo.
	 */
	private static void setAmounts(MLBRRTCFiscoApurDoc doc, String docType, Valores cbs) {
		Valores valores = cbs == null ? new Valores() : cbs;

		doc.setLBR_AssessedAmt(valores.apurado);
		doc.setLBR_ExcessAmt(valores.getExcedente());

		if (MLBRRTCFiscoApurDoc.LBR_RTCFISCODOCTYPE_Débito.equals(docType)) {
			doc.setLBR_NonEnforceableAmt(valores.inexigivel);
			doc.setLBR_SuspendedAmt(valores.suspenso);
			doc.setLBR_ExtinguishedAmt(valores.extinto);
			doc.setLBR_DebitBalanceAmt(valores.saldoDevedor);
			return;
		}

		Apropriacao apropriacao = valores.apropriacao == null ? new Apropriacao() : valores.apropriacao;
		Utilizacao utilizacao = apropriacao.utilizacao == null ? new Utilizacao() : apropriacao.utilizacao;
		NaoUtilizado naoUtilizado = utilizacao.naoUtilizado == null ? new NaoUtilizado() : utilizacao.naoUtilizado;

		doc.setLBR_NonAppropriableAmt(apropriacao.inapropriavel);
		doc.setLBR_SuspendedAmt(apropriacao.suspenso);
		doc.setLBR_PrescribedAmt(apropriacao.prescrito);
		doc.setLBR_ToAppropriateAmt(apropriacao.aApropriar);
		doc.setLBR_AppropriatedAmt(apropriacao.apropriado);
		doc.setLBR_NonUsableAmt(utilizacao.inutilizavel);
		doc.setLBR_UsedAmt(utilizacao.utilizado);
		doc.setLBR_RestoredAmt(utilizacao.restabelecido);
		doc.setLBR_CreditBalanceAmt(naoUtilizado.saldoCredor);
		doc.setLBR_RefundRequestAmt(naoUtilizado.pedidoRessarcimento);
	}

	private static Timestamp parseDateTime(String value, String field) {
		try {
			return RTCUtil.parseDateTime(value);
		} catch (IllegalArgumentException e) {
			throw new AdempiereException("Campo \"" + field + "\" com data e hora inválida: " + value);
		}
	}

	/** Resumo desta execução, em uma frase */
	public String getSummary(String service) {
		return capitalize(RTCFiscoApuracaoCBSProvider.getServiceLabel(service)) + ": " + created + " novo(s), "
				+ updated + " atualizado(s), " + unchanged + " sem alteração"
				+ (failed > 0 ? ", " + failed + " com falha" : "") + ", em " + periods
				+ (isPaymentService(service) ? " data(s) de arrecadação." : " período(s).");
	}

	/**
	 * Ocorrências desta execução, na ordem em que aconteceram — quem opera não
	 * lê log de servidor.
	 */
	public List<String> getMessages() {
		return messages;
	}

	public int getFailed() {
		return failed;
	}

	private static String capitalize(String text) {
		return text == null || text.isEmpty() ? "" : Character.toUpperCase(text.charAt(0)) + text.substring(1);
	}

	/**
	 * Motivo da falha em uma linha. A causa útil costuma estar na exceção mais
	 * funda — a de cima só diz que a gravação falhou.
	 */
	static String getReason(Throwable e) {
		Throwable cause = e;

		while (cause.getCause() != null && cause.getCause() != cause)
			cause = cause.getCause();

		String reason = cause.getLocalizedMessage();

		if (reason == null || reason.trim().isEmpty())
			reason = cause.getClass().getSimpleName();

		return reason.length() > 500 ? reason.substring(0, 500) : reason;
	}
}
