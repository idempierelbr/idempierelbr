package org.idempierelbr.nfe.process;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.Timestamp;
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.model.MDocType;
import org.compiere.process.DocAction;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.Env;
import org.idempierelbr.base.model.MLBRCFOP;
import org.idempierelbr.base.model.MLBRDocLineDetailsNfe;
import org.idempierelbr.base.model.MLBRDocLineIBSCBS;
import org.idempierelbr.base.model.MLBRNotaFiscal;
import org.idempierelbr.base.model.MLBRNotaFiscalDocRef;
import org.idempierelbr.base.model.MLBRNotaFiscalLine;
import org.idempierelbr.base.model.MLBRNotaFiscalPay;
import org.idempierelbr.base.model.MLBRNotaFiscalPaySched;
import org.idempierelbr.base.model.MLBRNotaFiscalTransp;

/**
 * Gera uma NF-e de Débito (finNFe=6) ou de Crédito (finNFe=5) da Reforma
 * Tributária (NT 2025.002, IBS/CBS) a partir de uma NF-e original.
 *
 * A nota gerada é uma RÉPLICA PROPORCIONAL da NF original: uma linha para cada
 * item original, mantendo produto/código/NCM/CEST/unidade e quantidade; o valor
 * do encargo é rateado proporcionalmente ao vProd de cada linha
 * (ratio = valor ÷ Σ vProd). Só mudam CFOP (5.949/6.949 débito; 1.949/2.949
 * crédito), a finalidade/subtipo, a direção (tpNF) e a referência à original
 * (por item no débito; no cabeçalho no crédito). IBS/CBS de cada item herda
 * CST/cClassTrib/alíquotas do item original, com base = vProd rateado.
 *
 * <p>Este processo é um GERADOR AGNÓSTICO: conhece apenas NF original, valor,
 * tipo/subtipo e status alvo. A lógica de construção fica no método estático
 * {@link #build(Properties, MLBRNotaFiscal, boolean, String, BigDecimal, String)},
 * reutilizável por outros pontos da aplicação (ex.: retorno CNAB) que se
 * responsabilizam pelo próprio contexto (origem do valor, vínculo, envio).
 *
 * @author Alan Lescano
 */
public class GenerateNFDebitCredit extends SvrProcess {

	/** Tipo = Nota de Débito */
	public static final String TYPE_DEBITO = "D";
	/** Tipo = Nota de Crédito */
	public static final String TYPE_CREDITO = "C";

	/** Subtipo padrão da Nota de Débito: 04 - Multa e juros */
	public static final String DEFAULT_TPNFDEBITO = "04";
	/** Subtipo padrão da Nota de Crédito: 01 */
	public static final String DEFAULT_TPNFCREDITO = "01";

	private int p_LBR_NotaFiscal_ID = 0; // NF original
	private String p_Type = null;
	private String p_tpNFDebito = null;
	private String p_tpNFCredito = null;
	private BigDecimal p_Amount = null;
	private int p_C_DocType_ID = 0; // DocType da nota gerada (opcional; herda da original se vazio)
	private String p_docAction = DocAction.ACTION_None; // vazio = cria sem processar

	@Override
	protected void prepare() {
		ProcessInfoParameter[] para = getParameter();

		for (int i = 0; i < para.length; i++) {
			String name = para[i].getParameterName();

			if (para[i].getParameter() == null)
				;
			else if (name.equals("LBR_NotaFiscal_ID"))
				p_LBR_NotaFiscal_ID = para[i].getParameterAsInt();
			else if (name.equals("LBR_NFDCType"))
				p_Type = (String) para[i].getParameter();
			else if (name.equals("LBR_tpNFDebito"))
				p_tpNFDebito = (String) para[i].getParameter();
			else if (name.equals("LBR_tpNFCredito"))
				p_tpNFCredito = (String) para[i].getParameter();
			else if (name.equals("Amount"))
				p_Amount = (BigDecimal) para[i].getParameter();
			else if (name.equals("C_DocType_ID"))
				p_C_DocType_ID = para[i].getParameterAsInt();
			else if (name.equals("DocAction"))
				p_docAction = (String) para[i].getParameter();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}

		// Chamada pela janela da NF: usa o registro corrente como NF original
		if (p_LBR_NotaFiscal_ID <= 0 && getTable_ID() == MLBRNotaFiscal.Table_ID)
			p_LBR_NotaFiscal_ID = getRecord_ID();
	}

	@Override
	protected String doIt() throws Exception {
		if (p_LBR_NotaFiscal_ID <= 0)
			throw new Exception("Nenhuma NF original informada");

		if (p_Type == null || (!TYPE_DEBITO.equals(p_Type) && !TYPE_CREDITO.equals(p_Type)))
			throw new Exception("Tipo inválido: informe Débito ou Crédito");

		boolean isDebito = TYPE_DEBITO.equals(p_Type);
		String subtype = isDebito
				? (p_tpNFDebito == null || p_tpNFDebito.trim().isEmpty() ? DEFAULT_TPNFDEBITO : p_tpNFDebito)
				: (p_tpNFCredito == null || p_tpNFCredito.trim().isEmpty() ? DEFAULT_TPNFCREDITO : p_tpNFCredito);

		MLBRNotaFiscal orig = new MLBRNotaFiscal(getCtx(), p_LBR_NotaFiscal_ID, get_TrxName());

		MLBRNotaFiscal nf = build(getCtx(), orig, isDebito, subtype, p_Amount, p_C_DocType_ID, get_TrxName());

		// Status alvo: em branco = cria sem processar; Preparar/Completar processam
		if (p_docAction != null && !DocAction.ACTION_None.equals(p_docAction)) {
			if (!nf.processIt(p_docAction)) {
				log.warning("Failed: " + nf);
				throw new IllegalStateException("Falha ao processar a NF: " + nf + " - " + nf.getProcessMsg());
			}
			nf.saveEx();
		}

		addBufferLog(nf.get_ID(), nf.getDateDoc(), null, nf.getDocumentNo(), nf.get_Table_ID(), nf.get_ID());
		return "@LBR_NotaFiscal_ID@ " + nf.getDocumentNo();
	}

	/**
	 * Constrói (em rascunho) uma NF-e de Débito/Crédito como réplica proporcional
	 * da NF original. Não processa o documento nem envia à SEFAZ — isso fica a
	 * cargo do chamador.
	 *
	 * @param ctx      contexto
	 * @param orig     NF-e original (deve estar autorizada — precisa da chave)
	 * @param isDebito true = Débito (finNFe 6, saída); false = Crédito (finNFe 5, entrada)
	 * @param subtype  tpNFDebito (ex.: "04") ou tpNFCredito (ex.: "01")
	 * @param amount   valor total do encargo a ratear entre os itens
	 * @param trxName  transação
	 * @return a NF-e gerada em rascunho
	 */
	public static MLBRNotaFiscal build(Properties ctx, MLBRNotaFiscal orig, boolean isDebito,
			String subtype, BigDecimal amount, int noteC_DocType_ID, String trxName) throws Exception {

		if (orig == null || orig.get_ID() <= 0)
			throw new Exception("NF original não encontrada");

		// Precisa estar autorizada para referenciar (chave de acesso)
		String chave = orig.getLBR_NFeID();
		if (chave == null || chave.trim().length() != 44)
			throw new Exception("A NF original não possui chave de acesso válida (deve estar autorizada na SEFAZ)");

		if (amount == null || amount.signum() <= 0)
			throw new Exception("Valor do encargo inválido");

		MLBRNotaFiscalLine[] origLines = orig.getLines();
		if (origLines.length == 0)
			throw new Exception("A NF original não possui linhas");

		BigDecimal origTotal = Env.ZERO;
		for (MLBRNotaFiscalLine ol : origLines) {
			if (ol.getLineNetAmt() != null)
				origTotal = origTotal.add(ol.getLineNetAmt());
		}
		if (origTotal.signum() <= 0)
			throw new Exception("Total (Σ vProd) da NF original é zero — não é possível ratear");

		// DocType da NOTA gerada: informado, ou herdado da original quando ela também
		// é emitida pela organização (caso venda). A nota de débito/crédito é SEMPRE
		// emitida por nós (vai à SEFAZ com nossa série), mas a NF referenciada pode
		// ser de terceiro (ex.: compra de fornecedor) — por isso o IsDocIssuedByOrg é
		// exigido no DocType da NOTA, não no da original.
		int docTypeID = noteC_DocType_ID > 0 ? noteC_DocType_ID : orig.getC_DocType_ID();
		MDocType nfDocType = new MDocType(ctx, docTypeID, trxName);
		if (!nfDocType.get_ValueAsBoolean("LBR_IsDocIssuedByOrg"))
			throw new Exception("A Nota de Débito/Crédito precisa de um Tipo de Documento de NF-e emitido pela "
					+ "organização. A NF original não é emitida por você (ex.: compra de fornecedor) — "
					+ "informe o Tipo de Documento (C_DocType_ID) da sua NF-e.");

		// CFOP conforme tipo e destino (herda o destino da original)
		boolean sameState = MLBRNotaFiscal.LBR_NFE_DESTINATIONTYPE_OperacaoInterna
				.equals(orig.getLBR_NFE_DestinationType());
		// LBR_CFOP.value é armazenado com ponto (ex.: "5.949"); o gerador remove a
		// pontuação ao emitir o XML (<CFOP>5949</CFOP>).
		String cfopValue = isDebito ? (sameState ? "5.949" : "6.949") : (sameState ? "1.949" : "2.949");
		MLBRCFOP cfop = MLBRCFOP.getCFOP(ctx, cfopValue, trxName);
		if (cfop == null || cfop.get_ID() <= 0)
			throw new Exception("CFOP " + cfopValue + " não cadastrado (LBR_CFOP)");

		// ===== Cabeçalho =====
		MLBRNotaFiscal nf = new MLBRNotaFiscal(ctx, 0, trxName);
		nf.setAD_Org_ID(orig.getAD_Org_ID());
		nf.setC_DocType_ID(nfDocType.get_ID());
		nf.setLBR_NFeModel(nfDocType.get_ValueAsString("LBR_NFBModel"));
		nf.setLBR_NFeSerie(nfDocType.get_ValueAsString("LBR_NFeSerie"));
		nf.setLBR_IsDocIssuedByOrg(true);
		nf.setLBR_NFE_OperationType(isDebito ? "1" : "0"); // Débito=Saída / Crédito=Entrada
		nf.setDateDoc(new Timestamp(System.currentTimeMillis()));
		nf.setDateAcct(new Timestamp(System.currentTimeMillis()));
		nf.setPaymentRule("0"); // à vista
		nf.setLBR_NFeTpEmis("1");
		nf.setLBR_FinNFe(isDebito ? "6" : "5");
		if (isDebito)
			nf.setLBR_tpNFDebito(subtype);
		else
			nf.setLBR_tpNFCredito(subtype);
		nf.setLBR_NFeNatOp(isDebito ? "Nota de Debito" : "Nota de Credito");
		nf.setLBR_NFE_DestinationType(orig.getLBR_NFE_DestinationType());
		nf.setLBR_NFeIndFinal(orig.getLBR_NFeIndFinal());
		nf.setLBR_NFeIndPres(orig.getLBR_NFeIndPres());
		nf.setLBR_NFeIndIntermed(orig.getLBR_NFeIndIntermed());
		nf.setC_Region_ID(orig.getC_Region_ID());
		nf.setC_City_ID(orig.getC_City_ID());
		nf.setC_BPartner_ID(orig.getC_BPartner_ID());
		nf.setC_BPartner_Location_ID(orig.getC_BPartner_Location_ID());
		nf.setLBR_TransactionType(orig.getLBR_TransactionType());
		if (orig.getC_Order_ID() > 0)
			nf.setC_Order_ID(orig.getC_Order_ID());
		if (orig.getC_Invoice_ID() > 0)
			nf.setC_Invoice_ID(orig.getC_Invoice_ID());
		nf.setIsTaxIncluded(true);
		nf.saveEx();

		// ===== Linhas (réplica proporcional) =====
		BigDecimal ratio = amount.divide(origTotal, 12, RoundingMode.HALF_UP);
		BigDecimal distributed = Env.ZERO;
		int biggestIdx = 0;
		BigDecimal biggestNet = Env.ZERO;
		BigDecimal[] lineAmt = new BigDecimal[origLines.length];

		for (int i = 0; i < origLines.length; i++) {
			BigDecimal net = origLines[i].getLineNetAmt() == null ? Env.ZERO : origLines[i].getLineNetAmt();
			lineAmt[i] = net.multiply(ratio).setScale(2, RoundingMode.HALF_UP);
			distributed = distributed.add(lineAmt[i]);

			if (net.compareTo(biggestNet) > 0) {
				biggestNet = net;
				biggestIdx = i;
			}
		}

		// Ajusta resíduo de centavos na maior linha para fechar o total exato
		BigDecimal residual = amount.subtract(distributed);
		if (residual.signum() != 0)
			lineAmt[biggestIdx] = lineAmt[biggestIdx].add(residual);

		for (int i = 0; i < origLines.length; i++) {
			MLBRNotaFiscalLine ol = origLines[i];

			if (lineAmt[i].signum() <= 0)
				continue; // linha sem valor após rateio

			BigDecimal qty = ol.getQty() == null || ol.getQty().signum() == 0 ? BigDecimal.ONE : ol.getQty();
			BigDecimal price = lineAmt[i].divide(qty, 10, RoundingMode.HALF_UP);

			MLBRNotaFiscalLine nl = new MLBRNotaFiscalLine(ctx, 0, trxName);
			nl.setAD_Org_ID(nf.getAD_Org_ID());
			nl.setLBR_NotaFiscal_ID(nf.get_ID());
			nl.setLine(ol.getLine());
			nl.setM_Product_ID(ol.getM_Product_ID());
			nl.setC_Charge_ID(ol.getC_Charge_ID());
			nl.setC_UOM_ID(ol.getC_UOM_ID());
			nl.setC_Tax_ID(ol.getC_Tax_ID());
			nl.setQty(qty);
			nl.setPriceActual(price);
			nl.setLineNetAmt(lineAmt[i]);
			nl.saveEx();

			// Detalhes fiscais herdados da linha original + CFOP forçado
			MLBRDocLineDetailsNfe origDetails = MLBRDocLineDetailsNfe.getOfPO(ol);
			MLBRDocLineDetailsNfe details = MLBRDocLineDetailsNfe.createFromPO(nl);

			if (origDetails != null)
				details.copyFrom(origDetails);

			details.setLBR_CFOP_ID(cfop.get_ID());
			details.saveEx();

			// IBS/CBS: herda CST/cClassTrib/alíquotas e reaplica sobre a base rateada
			if (origDetails != null) {
				MLBRDocLineIBSCBS.copy(origDetails, details);
				scaleIBSCBS(details, lineAmt[i]);
			}
		}

		// ===== Transporte (sem frete) =====
		MLBRNotaFiscalTransp transp = nf.getTransp();
		transp.setLBR_NFeModShipping("9"); // 9 - Sem Ocorrência de Transporte
		transp.saveEx();

		// ===== Pagamento (à vista, valor total do encargo) =====
		MLBRNotaFiscalPay pay = new MLBRNotaFiscalPay(ctx, 0, trxName);
		pay.setAD_Org_ID(nf.getAD_Org_ID());
		pay.setLBR_NotaFiscal_ID(nf.get_ID());
		pay.setLBR_Document(nf.getDocumentNo());
		pay.setGrandTotal(amount);
		pay.setNetAmtToInvoice(amount);
		pay.saveEx();

		MLBRNotaFiscalPaySched pSched = new MLBRNotaFiscalPaySched(ctx, 0, trxName);
		pSched.setAD_Org_ID(nf.getAD_Org_ID());
		pSched.setLBR_NotaFiscalPay_ID(pay.get_ID());
		pSched.setLBR_Document(nf.getDocumentNo() + "/1");
		pSched.setDueDate(new Timestamp(System.currentTimeMillis()));
		pSched.setDueAmt(amount);
		pSched.saveEx();

		// ===== Referência à NF original (chave) =====
		MLBRNotaFiscalDocRef docRef = new MLBRNotaFiscalDocRef(ctx, 0, trxName);
		docRef.setAD_Org_ID(nf.getAD_Org_ID());
		docRef.setLBR_NotaFiscal_ID(nf.get_ID());
		docRef.setLBR_NFeDocRefType(MLBRNotaFiscalDocRef.LBR_NFEDOCREFTYPE_NF_E);
		docRef.setLBR_NFeID(chave);
		docRef.saveEx();

		return nf;
	}

	/**
	 * Reaplica o IBS/CBS herdado sobre a nova base (valor rateado da linha),
	 * mantendo as alíquotas e escalando os valores proporcionalmente.
	 */
	private static void scaleIBSCBS(MLBRDocLineDetailsNfe details, BigDecimal newBase) {
		MLBRDocLineIBSCBS[] lines = MLBRDocLineIBSCBS.getOfDetails(details);
		if (lines.length == 0)
			return;

		MLBRDocLineIBSCBS ibscbs = lines[0];
		BigDecimal origBase = ibscbs.getLBR_TaxBaseAmt();

		BigDecimal scale = (origBase != null && origBase.signum() > 0)
				? newBase.divide(origBase, 12, RoundingMode.HALF_UP)
				: Env.ZERO;

		ibscbs.setLBR_TaxBaseAmt(newBase);

		// IBS UF
		ibscbs.setLBR_IBS_UF_TaxAmt(scaleAmt(ibscbs.getLBR_IBS_UF_TaxAmt(), scale));
		ibscbs.setLBR_IBS_UF_TaxDeferralAmt(scaleAmt(ibscbs.getLBR_IBS_UF_TaxDeferralAmt(), scale));
		ibscbs.setLBR_IBS_UF_TaxDevAmt(scaleAmt(ibscbs.getLBR_IBS_UF_TaxDevAmt(), scale));
		// IBS Mun
		ibscbs.setLBR_IBS_Mun_TaxAmt(scaleAmt(ibscbs.getLBR_IBS_Mun_TaxAmt(), scale));
		ibscbs.setLBR_IBS_Mun_TaxDeferralAmt(scaleAmt(ibscbs.getLBR_IBS_Mun_TaxDeferralAmt(), scale));
		ibscbs.setLBR_IBS_Mun_TaxDevAmt(scaleAmt(ibscbs.getLBR_IBS_Mun_TaxDevAmt(), scale));
		// CBS
		ibscbs.setLBR_CBS_TaxAmt(scaleAmt(ibscbs.getLBR_CBS_TaxAmt(), scale));
		ibscbs.setLBR_CBS_TaxDeferralAmt(scaleAmt(ibscbs.getLBR_CBS_TaxDeferralAmt(), scale));
		ibscbs.setLBR_CBS_TaxDevAmt(scaleAmt(ibscbs.getLBR_CBS_TaxDevAmt(), scale));

		ibscbs.saveEx();
	}

	private static BigDecimal scaleAmt(BigDecimal amt, BigDecimal scale) {
		if (amt == null)
			return null;
		return amt.multiply(scale).setScale(2, RoundingMode.HALF_UP);
	}
}
