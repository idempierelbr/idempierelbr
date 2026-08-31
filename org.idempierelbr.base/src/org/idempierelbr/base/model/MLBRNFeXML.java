package org.idempierelbr.base.model;

import java.sql.ResultSet;
import java.util.Properties;

import org.compiere.model.MAttachment;
import org.compiere.model.MAttachmentEntry;
import org.compiere.model.Query;

/**
 * Documento fiscal eletrônico recebido da SEFAZ pela Distribuição de DF-e, ou
 * carregado de arquivo. É a caixa de entrada: cada registro guarda um NSU, o
 * XML como anexo e os metadados que permitem trabalhar a fila sem abrir o XML.
 *
 * @author Alan Lescano
 */
public class MLBRNFeXML extends X_LBR_NFeXML {
	private static final long serialVersionUID = 1L;

	public MLBRNFeXML(Properties ctx, int LBR_NFeXML_ID, String trxName) {
		super(ctx, LBR_NFeXML_ID, trxName);
	}

	public MLBRNFeXML(Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}

	public void deleteAttachments() {
		MAttachment attachNFe = getXMLAttachment();

		if (attachNFe == null)
			return;

		for (int i = attachNFe.getEntryCount() - 1; i >= 0; i--)
			attachNFe.deleteEntry(i);

		attachNFe.saveEx();
	}

	public void attachXML(String name, String xml) {
		MAttachment attachment = getXMLAttachment();

		if (attachment == null)
			attachment = new MAttachment(getCtx(), Table_ID, get_ID(), get_UUID(), get_TrxName());

		attachment.addEntry(new MAttachmentEntry(name, xml.getBytes()));
		attachment.saveEx();
	}

	/**
	 * Anexo do documento, na transação deste registro.
	 *
	 * <p>{@link org.compiere.model.PO#createAttachment()} e
	 * {@link org.compiere.model.PO#getAttachment(boolean)} montam o anexo com
	 * transação nula. Isso não serve aqui: o DF-e é gravado e anexado dentro da
	 * mesma transação, e um anexo fora dela não enxerga o registro recém-inserido
	 * — a validação de tenant do iDempiere recusa com "Foreign ID N not found in
	 * LBR_NFeXML".
	 *
	 * @return o anexo existente, ou nulo se o documento ainda não tem nenhum
	 */
	private MAttachment getXMLAttachment() {
		if (get_ID() <= 0)
			return null;

		return MAttachment.get(getCtx(), Table_ID, get_ID(), get_UUID(), get_TrxName());
	}

	/**
	 * Documento já recebido no NSU informado. O NSU é único por organização e
	 * é o que garante que reprocessar uma faixa não duplique registros.
	 *
	 * @return o registro existente, ou nulo
	 */
	public static MLBRNFeXML getByNSU(Properties ctx, int AD_Org_ID, String LBR_NSU, String trxName) {
		if (LBR_NSU == null)
			return null;

		return new Query(ctx, Table_Name, "AD_Org_ID=? AND LBR_NSU=?", trxName)
			.setParameters(AD_Org_ID, LBR_NSU)
			.setClient_ID()
			.setOnlyActiveRecords(true)
			.firstOnly();
	}

	/**
	 * Documento fiscal já recebido para a chave de acesso informada. Serve para
	 * o procNFe encontrar o resNFe da mesma nota e promovê-lo, em vez de criar
	 * um segundo registro.
	 *
	 * <p>Eventos ficam de fora: várias chegadas compartilham a mesma chave e
	 * são deduplicadas em {@link MLBRNotaFiscalEventRec}.
	 *
	 * @return o registro existente, ou nulo
	 */
	public static MLBRNFeXML getByNFeID(Properties ctx, String LBR_NFeID, String trxName) {
		if (LBR_NFeID == null)
			return null;

		// documentos recebidos antes de a coluna de tipo existir têm LBR_DFeType
		// nulo, e são NF-e — deixá-los de fora criaria registro duplicado
		return new Query(ctx, Table_Name,
				"LBR_NFeID=? AND (LBR_DFeType IS NULL OR LBR_DFeType<>?)", trxName)
			.setParameters(LBR_NFeID, LBR_DFETYPE_Evento)
			.setClient_ID()
			.setOnlyActiveRecords(true)
			.setOrderBy("LBR_IsXMLComplete DESC, LBR_NSU DESC")
			.first();
	}

	/**
	 * Preenche modelo, série e número a partir da chave de acesso. O resumo
	 * (resNFe) não traz esses campos, mas a chave os contém — e o usuário
	 * precisa deles para reconhecer a nota na fila.
	 */
	public void setDocumentDataFromKey() {
		String key = getLBR_NFeID();

		if (key == null || key.trim().length() != 44)
			return;

		key = key.trim();

		// cUF(2) AAMM(4) CNPJ(14) mod(2) serie(3) nNF(9) tpEmis(1) cNF(8) cDV(1)
		String model = key.substring(20, 22);

		// a coluna usa a lista de modelos de NF-e; CT-e e demais documentos
		// ficam identificados por LBR_DFeType e pela própria chave de acesso
		if (MLBRNotaFiscal.MODEL_NFE.equals(model) || MLBRNotaFiscal.MODEL_NFCE.equals(model))
			setLBR_NFeModel(model);
		setLBR_NFeSerie(stripLeadingZeros(key.substring(22, 25)));
		setDocumentNo(stripLeadingZeros(key.substring(25, 34)));
	}

	/** @return true se o documento é um evento */
	public boolean isEvento() {
		return LBR_DFETYPE_Evento.equals(getLBR_DFeType());
	}

	private static String stripLeadingZeros(String value) {
		if (value == null)
			return null;

		String stripped = value.replaceFirst("^0+", "");

		return stripped.isEmpty() ? "0" : stripped;
	}
}
