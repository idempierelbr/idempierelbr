package org.idempierelbr.openitems.processcnab240;

import java.math.BigDecimal;
import java.util.List;
import java.util.Properties;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MSysConfig;
import org.compiere.model.Query;
import org.compiere.process.DocAction;
import org.compiere.util.Trx;
import org.idempierelbr.base.model.MLBRBoleto;
import org.idempierelbr.base.model.MLBRBoletoMovement;
import org.idempierelbr.base.model.MLBRNotaFiscal;
import org.idempierelbr.base.model.MLBRNotaFiscalLot;
import org.idempierelbr.base.model.MLBRNotaFiscalLotLine;
import org.idempierelbr.base.model.NFeDebitCreditType;
import org.idempierelbr.nfe.process.GenerateNFDebitCredit;
import org.idempierelbr.nfe.util.NFeLotUtil;

/**
 * Geração AUTOMÁTICA da Nota de Débito (finNFe 6,
 * tpNFDebito 04) a partir dos juros/multa recebidos no retorno CNAB.
 *
 * <p>Responsabilidades deste lado (o gerador {@link GenerateNFDebitCredit} é
 * agnóstico): resolver a NF-e de venda original a partir do boleto/fatura,
 * obter o valor (juros+multa do movimento), chamar o gerador, enviar o lote à
 * SEFAZ, vincular a nota gerada ao movimento (dedup) e reportar o resultado por
 * nota no log do processo de retorno.
 *
 * <p>Cada nota é processada em TRANSAÇÃO ISOLADA, com <b>commit imediatamente
 * após o envio à SEFAZ</b> — assim uma nota já transmitida (que consumiu
 * numeração) nunca se perde, mesmo que o retorno venha com erro. Falhas por nota
 * apenas são registradas no log; nunca abortam o retorno CNAB nem desfazem os
 * pagamentos do boleto.
 *
 * <p>Habilitado via SysConfig {@link #SYSCONFIG_ENABLED} (default {@code false}).
 *
 * @author Alan Lescano
 */
public class CNABDebitNoteGenerator {

	/** SysConfig que habilita a geração automática da Nota de Débito no retorno CNAB */
	public static final String SYSCONFIG_ENABLED = "LBR_CNAB_AUTO_DEBIT_NOTE";

	/**
	 * SysConfig com o Tipo de Documento da Nota de Débito gerada. Em branco, a nota
	 * herda o Tipo de Documento da NF-e de venda — ou seja, sai na série da venda e
	 * sem a configuração fiscal (CFOP) própria de nota de débito.
	 */
	public static final String SYSCONFIG_DOCTYPE = "LBR_CNAB_DEBIT_NOTE_DOCTYPE_ID";

	/** Coluna de vínculo/dedup no movimento (aplicada no Dicionário de Aplicação) */
	private static final String COLUMN_LBR_NotaFiscal_ID = "LBR_NotaFiscal_ID";

	private CNABDebitNoteGenerator() {
	}

	public static boolean isEnabled(int AD_Client_ID, int AD_Org_ID) {
		return MSysConfig.getBooleanValue(SYSCONFIG_ENABLED, false, AD_Client_ID, AD_Org_ID);
	}

	/**
	 * Gera, envia e vincula a Nota de Débito para cada movimento de liquidação
	 * com juros/multa. Deve ser chamado após o commit do processamento do retorno
	 * (movimentos já persistidos).
	 *
	 * @param svrP        processo de retorno CNAB (para contexto e log)
	 * @param movementIDs ids dos movimentos com juros/multa
	 */
	public static void generate(CNAB240Return svrP, List<Integer> movementIDs) {
		Properties ctx = svrP.getCtx();

		for (Integer movID : movementIDs) {
			String trxName = Trx.createTrxName("GenDebNF");
			Trx trx = Trx.get(trxName, true);
			String boletoDoc = String.valueOf(movID);

			try {
				MLBRBoletoMovement mov = new MLBRBoletoMovement(ctx, movID.intValue(), trxName);

				// Dedup: nota já gerada para este movimento
				if (mov.get_ValueAsInt(COLUMN_LBR_NotaFiscal_ID) > 0) {
					trx.rollback();
					continue;
				}

				BigDecimal amount = mov.getInterestAmt();
				if (amount == null || amount.signum() <= 0) {
					trx.rollback();
					continue;
				}

				MLBRBoleto boleto = new MLBRBoleto(ctx, mov.getLBR_Boleto_ID(), trxName);
				boletoDoc = boleto.getDocumentNo();

				MLBRNotaFiscal orig = findAuthorizedSalesNF(ctx, boleto.getC_Invoice_ID(), trxName);
				if (orig == null) {
					svrP.addLog("Boleto " + boletoDoc
							+ ": NF-e de venda autorizada não encontrada — Nota de Débito não gerada");
					trx.rollback();
					continue;
				}

				// Gerador agnóstico: réplica proporcional em rascunho. O Tipo de Documento
				// da nota vem do SysConfig; em branco, herda o da NF de venda original
				// (juros de boleto sempre referenciam venda nossa).
				int C_DocType_ID = MSysConfig.getIntValue(SYSCONFIG_DOCTYPE, 0,
						orig.getAD_Client_ID(), orig.getAD_Org_ID());

				MLBRNotaFiscal nf = GenerateNFDebitCredit.build(ctx, orig,
						NFeDebitCreditType.DEBIT_INTEREST, amount, C_DocType_ID, trxName);

				if (!nf.processIt(DocAction.ACTION_Complete))
					throw new AdempiereException("Falha ao completar a NF: " + nf.getProcessMsg());
				nf.saveEx();

				// Envia o lote criado ao completar
				String sendMsg = sendToSefaz(ctx, nf, trxName);

				// Recarrega para capturar o status da SEFAZ e vincula ao movimento
				nf.load(trxName);
				mov.set_ValueOfColumn(COLUMN_LBR_NotaFiscal_ID, Integer.valueOf(nf.get_ID()));
				mov.saveEx();

				// Commit após o envio: a nota transmitida nunca se perde
				trx.commit(true);

				if (nf.isStatusAutorizado())
					svrP.addLog("Boleto " + boletoDoc + ": Nota de Débito " + nf.getDocumentNo()
							+ " AUTORIZADA (" + amount + ")");
				else
					svrP.addLog("Boleto " + boletoDoc + ": Nota de Débito " + nf.getDocumentNo()
							+ " gerada, retorno SEFAZ "
							+ (nf.getLBR_NFeStatus() != null ? nf.getLBR_NFeStatus() : "")
							+ (sendMsg.isEmpty() ? "" : " - " + sendMsg));

			} catch (Exception e) {
				trx.rollback();
				svrP.addLog("Boleto " + boletoDoc + ": erro ao gerar Nota de Débito - " + e.getMessage());
			} finally {
				trx.close();
			}
		}
	}

	/** Envia à SEFAZ o lote criado ao completar a NF. Retorna "" em sucesso ou a mensagem de erro. */
	private static String sendToSefaz(Properties ctx, MLBRNotaFiscal nf, String trxName) throws Exception {
		MLBRNotaFiscalLotLine lotLine = new Query(ctx, MLBRNotaFiscalLotLine.Table_Name,
				"LBR_NotaFiscal_ID=?", trxName)
				.setParameters(nf.get_ID())
				.setOrderBy("LBR_NotaFiscalLotLine_ID DESC")
				.first();

		if (lotLine == null)
			return "lote SEFAZ não encontrado (verifique LBR_SEFAZ_LOT_ON_COMPLETE)";

		MLBRNotaFiscalLot lot = new MLBRNotaFiscalLot(ctx, lotLine.getLBR_NotaFiscalLot_ID(), trxName);
		String result = new NFeLotUtil(lot).sendLot();

		// Lote assíncrono: consulta o resultado após o envio
		if ((result == null || result.isEmpty()) && "A".equals(lot.getLBR_ProcessingType()) && lot.isLBR_LotSent())
			result = new NFeLotUtil(lot).queryLot();

		return result == null ? "" : result;
	}

	/** Localiza a NF-e de venda autorizada ligada à fatura do boleto. */
	private static MLBRNotaFiscal findAuthorizedSalesNF(Properties ctx, int C_Invoice_ID, String trxName) {
		if (C_Invoice_ID <= 0)
			return null;

		// Venda = saída: LBR_NotaFiscal usa LBR_NFE_OperationType ('1'=Out), não IsSOTrx
		return new Query(ctx, MLBRNotaFiscal.Table_Name,
				"C_Invoice_ID=? AND LBR_NFE_OperationType='"
						+ MLBRNotaFiscal.LBR_NFE_OPERATIONTYPE_Out
						+ "' AND LBR_NFeStatus IN ('100','150')", trxName)
				.setParameters(C_Invoice_ID)
				.setOrderBy("LBR_NotaFiscal_ID DESC")
				.first();
	}
}
