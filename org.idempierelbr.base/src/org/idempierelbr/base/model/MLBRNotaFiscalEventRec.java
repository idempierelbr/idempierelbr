package org.idempierelbr.base.model;

import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;

import org.compiere.model.Query;

/**
 * Evento recebido pela Distribuição de DF-e — manifestação de terceiro sobre
 * uma nota que emitimos, ou evento de terceiro sobre uma nota que recebemos.
 *
 * <p>Boa parte dos eventos é sobre chaves de acesso que não têm (e nunca terão)
 * uma {@link MLBRNotaFiscal}: nota ainda não importada, nota fria que
 * desconhecemos, CT-e. Por isso {@code LBR_NotaFiscal_ID} é opcional e o
 * identificador natural do registro é a chave de acesso.
 *
 * <p>Não é duplicação da {@link MLBRNFeXML}: um mesmo evento chega duas vezes
 * pela distribuição, o resumo num NSU e o evento completo em outro. A
 * deduplicação por chave + tipo + sequência só é possível aqui.
 *
 * @author Alan Lescano
 */
public class MLBRNotaFiscalEventRec extends X_LBR_NotaFiscalEventRec {
	private static final long serialVersionUID = 1L;

	/** Ciência da Operação */
	public static final String EVENT_CIENCIA = "210210";
	/** Confirmação da Operação */
	public static final String EVENT_CONFIRMACAO = "210200";
	/** Desconhecimento da Operação */
	public static final String EVENT_DESCONHECIMENTO = "210220";
	/** Operação não Realizada */
	public static final String EVENT_NAO_REALIZADA = "210240";

	public MLBRNotaFiscalEventRec(Properties ctx, int LBR_NotaFiscalEventRec_ID, String trxName) {
		super(ctx, LBR_NotaFiscalEventRec_ID, trxName);
	}

	public MLBRNotaFiscalEventRec(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}

	/**
	 * Evento já recebido para a mesma chave, tipo e sequência.
	 *
	 * @return o registro existente, ou nulo
	 */
	public static MLBRNotaFiscalEventRec get(Properties ctx, String LBR_NFeID,
			String LBR_EventCode, int LBR_EventSeqNo, String trxName) {

		if (LBR_NFeID == null || LBR_EventCode == null)
			return null;

		return new Query(ctx, Table_Name,
				"LBR_NFeID=? AND LBR_EventCode=? AND LBR_EventSeqNo=?", trxName)
			.setParameters(LBR_NFeID, LBR_EventCode, LBR_EventSeqNo)
			.setClient_ID()
			.firstOnly();
	}

	/**
	 * Eventos recebidos para uma chave de acesso, do mais antigo ao mais recente.
	 */
	public static List<MLBRNotaFiscalEventRec> getByNFeID(Properties ctx, String LBR_NFeID, String trxName) {
		return new Query(ctx, Table_Name, "LBR_NFeID=?", trxName)
			.setParameters(LBR_NFeID)
			.setClient_ID()
			.setOrderBy("LBR_EventDate, LBR_EventSeqNo")
			.list();
	}

	/**
	 * Vincula à nota os eventos já recebidos para a chave dela. Chamado quando
	 * a nota nasce da importação, depois de os eventos terem chegado.
	 *
	 * @return quantidade de eventos vinculados
	 */
	public static int linkToNotaFiscal(MLBRNotaFiscal nf) {
		if (nf == null || nf.getLBR_NFeID() == null)
			return 0;

		int count = 0;

		for (MLBRNotaFiscalEventRec event : getByNFeID(nf.getCtx(), nf.getLBR_NFeID(), nf.get_TrxName())) {
			if (event.getLBR_NotaFiscal_ID() > 0)
				continue;

			event.setLBR_NotaFiscal_ID(nf.getLBR_NotaFiscal_ID());
			event.saveEx();
			count++;
		}

		return count;
	}

	/**
	 * @return true se o evento é uma das quatro manifestações do destinatário
	 */
	public boolean isManifestacao() {
		String code = getLBR_EventCode();

		return EVENT_CIENCIA.equals(code) || EVENT_CONFIRMACAO.equals(code)
			|| EVENT_DESCONHECIMENTO.equals(code) || EVENT_NAO_REALIZADA.equals(code);
	}

	@Override
	public String toString() {
		return new StringBuilder("MLBRNotaFiscalEventRec[LBR_NFeID=").append(getLBR_NFeID())
			.append(", LBR_EventCode=").append(getLBR_EventCode())
			.append(", LBR_EventSeqNo=").append(getLBR_EventSeqNo())
			.append("]").toString();
	}
}
