package org.idempierelbr.nfe.process;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;

import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.idempierelbr.base.model.MLBRNFeXML;
import org.idempierelbr.base.model.MLBRNotaFiscal;
import org.idempierelbr.base.model.MLBRNotaFiscalEvent;
import org.idempierelbr.base.model.MLBRNotaFiscalEventLine;
import org.idempierelbr.nfe.util.NFeEventUtil;

/**
 * Manifestação do destinatário sobre os documentos selecionados no Monitor de
 * DF-e.
 *
 * <p>A manifestação acontece antes de existir qualquer nota fiscal, e é assim
 * de propósito: é preciso poder desconhecer uma nota fria emitida contra o
 * nosso CNPJ, que jamais virará documento nosso. O que ela produz é um evento
 * enviado à SEFAZ; do lado de cá, move o documento na fila — Ciência passa a
 * aguardar o XML completo, Desconhecimento e Operação não Realizada encerram o
 * documento.
 *
 * <p>Cada documento vai num lote próprio: um erro de um não impede os demais.
 *
 * @author Alan Lescano
 */
public class ManifestNFeXML extends SvrProcess {

	/** Evento aceito e vinculado à NF-e */
	private static final String CSTAT_EVENTO_REGISTRADO = "135";
	/** Evento aceito, mas ainda não vinculado à NF-e */
	private static final String CSTAT_EVENTO_REGISTRADO_SEM_VINCULO = "136";

	private String p_LBR_NovaManifestacao = null;

	@Override
	protected void prepare() {
		ProcessInfoParameter[] para = getParameter();

		for (int i = 0; i < para.length; i++) {
			String name = para[i].getParameterName();

			if (para[i].getParameter() == null)
				;
			else if (name.equals("LBR_NovaManifestacao"))
				p_LBR_NovaManifestacao = para[i].getParameterAsString();
			else {
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
			}
		}
	}

	@Override
	protected String doIt() throws Exception {
		if (p_LBR_NovaManifestacao == null)
			throw new Exception("Informe a manifestação a ser enviada!");

		List<Integer> ids = getSelectedIDs();

		if (ids.isEmpty())
			throw new Exception("Selecione ao menos um documento para manifestar!");

		int sent = 0;
		int rejected = 0;

		for (int LBR_NFeXML_ID : ids) {
			MLBRNFeXML dfe = new MLBRNFeXML(getCtx(), LBR_NFeXML_ID, get_TrxName());

			String error = validate(dfe);

			if (error != null) {
				addLog(dfe.getLBR_NFeID() + ": " + error);
				rejected++;
				continue;
			}

			manifest(dfe);
			sent++;
		}

		return sent + " manifestação(ões) enviada(s), " + rejected + " recusada(s)";
	}

	/**
	 * Documentos escolhidos na grade — ou o único documento da aba, quando o
	 * processo é acionado sem seleção múltipla.
	 */
	private List<Integer> getSelectedIDs() {
		List<Integer> ids = getRecord_IDs();

		if (ids != null && !ids.isEmpty())
			return ids;

		ids = new ArrayList<Integer>();

		if (getRecord_ID() > 0)
			ids.add(getRecord_ID());

		return ids;
	}

	/**
	 * Recusa o que a SEFAZ recusaria — ou o que não faz sentido manifestar.
	 *
	 * @return o motivo da recusa, ou nulo se o documento pode ser manifestado
	 */
	private String validate(MLBRNFeXML dfe) {
		if (dfe.getLBR_NFeID() == null || dfe.getLBR_NFeID().trim().length() != 44)
			return "documento sem chave de acesso";

		if (dfe.isEvento())
			return "eventos não são manifestados";

		String model = dfe.getLBR_NFeModel();

		if (model != null && !MLBRNotaFiscal.MODEL_NFE.equals(model))
			return "manifestação só se aplica a NF-e (modelo " + model + ")";

		String last = dfe.getLBR_UltimaManifestacao();

		if (last == null)
			return null;

		if (last.equals(p_LBR_NovaManifestacao))
			return "documento já manifestado com " + last;

		// a Ciência é provisória: depois de uma manifestação definitiva ela
		// não tem mais o que fazer, e a SEFAZ a rejeita
		if (MLBRNotaFiscalEventLine.LBR_TIPODEMANIFESTACAO_210210_CienciaDaOperacao.equals(p_LBR_NovaManifestacao)
				&& !MLBRNotaFiscalEventLine.LBR_TIPODEMANIFESTACAO_210210_CienciaDaOperacao.equals(last))
			return "documento já manifestado definitivamente com " + last;

		return null;
	}

	/**
	 * Envia o evento e move o documento na fila conforme o que a SEFAZ
	 * responder.
	 */
	private void manifest(MLBRNFeXML dfe) throws Exception {
		MLBRNotaFiscalEvent event = new MLBRNotaFiscalEvent(getCtx(), 0, get_TrxName());
		event.setAD_Org_ID(dfe.getAD_Org_ID());
		event.saveEx();

		MLBRNotaFiscalEventLine line = new MLBRNotaFiscalEventLine(getCtx(), 0, get_TrxName());
		line.setLBR_NotaFiscalEvent_ID(event.get_ID());
		line.setAD_Org_ID(dfe.getAD_Org_ID());
		line.setLBR_NFeEventType(MLBRNotaFiscalEventLine.LBR_NFEEVENTTYPE_Manifest);
		line.setLBR_NFeEventSeqNo(MLBRNotaFiscalEventLine.getNextManifestSeqNo(getCtx(),
				dfe.getLBR_NFeID(), p_LBR_NovaManifestacao, get_TrxName()));
		line.setLBR_TipoDeManifestacao(p_LBR_NovaManifestacao);
		line.setLBR_NFeXML_ID(dfe.get_ID());
		line.saveEx();

		commitEx();

		NFeEventUtil eventUtil = new NFeEventUtil(event);
		eventUtil.sendLot();

		// o retorno da SEFAZ é gravado na linha pelo envio do lote
		MLBRNotaFiscalEventLine sentLine = new MLBRNotaFiscalEventLine(getCtx(), line.get_ID(), get_TrxName());

		addLog(dfe.getLBR_NFeID() + ": " + sentLine.getLBR_NFeStatus());

		if (isAccepted(sentLine.getLBR_NFeStatus()))
			applyStatus(new MLBRNFeXML(getCtx(), dfe.get_ID(), get_TrxName()));
	}

	private static boolean isAccepted(String cStat) {
		return CSTAT_EVENTO_REGISTRADO.equals(cStat) || CSTAT_EVENTO_REGISTRADO_SEM_VINCULO.equals(cStat);
	}

	/**
	 * Ciência é passo intermediário — o documento passa a esperar o XML
	 * completo. Desconhecimento e Operação não Realizada encerram o documento:
	 * dele não vai nascer nota nenhuma.
	 */
	private void applyStatus(MLBRNFeXML dfe) {
		if (MLBRNotaFiscalEventLine.LBR_TIPODEMANIFESTACAO_210220_DesconhecimentoDaOperacao.equals(p_LBR_NovaManifestacao)
				|| MLBRNotaFiscalEventLine.LBR_TIPODEMANIFESTACAO_210240_OperacaoNaoRealizada.equals(p_LBR_NovaManifestacao)) {
			dfe.setLBR_DFeStatus(MLBRNFeXML.LBR_DFESTATUS_Ignorado);
			dfe.setProcessed(true);
			dfe.saveEx();
		}
		else if (MLBRNotaFiscalEventLine.LBR_TIPODEMANIFESTACAO_210210_CienciaDaOperacao.equals(p_LBR_NovaManifestacao)
				&& !dfe.isLBR_IsXMLComplete()
				&& !MLBRNFeXML.LBR_DFESTATUS_Importado.equals(dfe.getLBR_DFeStatus())) {
			dfe.setLBR_DFeStatus(MLBRNFeXML.LBR_DFESTATUS_AguardandoXMLCompleto);
			dfe.saveEx();
		}
	}
}
