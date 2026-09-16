package org.idempierelbr.nfe.process;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.Timestamp;
import java.util.Properties;
import java.util.logging.Level;

import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MDocType;
import org.compiere.model.MInOut;
import org.compiere.model.MInvoice;
import org.compiere.model.MOrder;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MProduct;
import org.compiere.model.MRMA;
import org.compiere.model.PO;
import org.compiere.process.DocAction;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.idempierelbr.base.model.MLBRCFOP;
import org.idempierelbr.base.model.MLBRDocLineDetailsNfe;
import org.idempierelbr.base.model.MLBRDocLineIBSCBS;
import org.idempierelbr.base.model.MLBRNotaFiscal;
import org.idempierelbr.base.model.MLBRNotaFiscalDocRef;
import org.idempierelbr.base.model.MLBRNotaFiscalLine;
import org.idempierelbr.base.model.MLBRNotaFiscalTransp;
import org.idempierelbr.base.model.MLBRTax;
import org.idempierelbr.base.model.NFeDebitCreditType;

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
 * tipo e status alvo. A lógica de construção fica no método estático
 * {@link #build(Properties, MLBRNotaFiscal, NFeDebitCreditType, BigDecimal, int, String)},
 * reutilizável por outros pontos da aplicação (ex.: retorno CNAB) que se
 * responsabilizam pelo próprio contexto (origem do valor, vínculo, envio).
 *
 * <p>As regras que variam por tipo de nota (referenciamento, direção, tributos
 * admitidos) ficam em {@link NFeDebitCreditType}.
 *
 * @author Alan Lescano
 */
public class GenerateNFDebitCredit extends SvrProcess {

	/** Logger para os métodos estáticos reutilizáveis */
	private static final CLogger s_log = CLogger.getCLogger(GenerateNFDebitCredit.class);

	/** Tipo = Nota de Débito */
	public static final String TYPE_DEBITO = "D";
	/** Tipo = Nota de Crédito */
	public static final String TYPE_CREDITO = "C";

	/** Subtipo padrão da Nota de Débito: 04 - Multa e juros */
	public static final String DEFAULT_TPNFDEBITO = "04";
	/** Subtipo padrão da Nota de Crédito: 01 */
	public static final String DEFAULT_TPNFCREDITO = "01";

	private int p_LBR_NotaFiscal_ID = 0; // NF-e de origem
	private int p_C_Order_ID = 0;
	private int p_C_Invoice_ID = 0;
	private int p_M_RMA_ID = 0;
	private int p_M_InOut_ID = 0;
	private String p_Type = null;
	private String p_tpNFDebito = null;
	private String p_tpNFCredito = null;
	private BigDecimal p_Amount = null;
	private int p_C_DocType_ID = 0; // DocType da nota gerada (opcional; herda da origem se vazio)
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
			else if (name.equals("C_Order_ID"))
				p_C_Order_ID = para[i].getParameterAsInt();
			else if (name.equals("C_Invoice_ID"))
				p_C_Invoice_ID = para[i].getParameterAsInt();
			else if (name.equals("M_RMA_ID"))
				p_M_RMA_ID = para[i].getParameterAsInt();
			else if (name.equals("M_InOut_ID"))
				p_M_InOut_ID = para[i].getParameterAsInt();
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
	}

	@Override
	protected String doIt() throws Exception {
		PO source = resolveSource();

		NFeDebitCreditType type = resolveType();

		MLBRNotaFiscal nf = build(getCtx(), source, type, p_Amount, p_C_DocType_ID, get_TrxName());

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
	 * Resolve o documento de origem. Chamado por uma janela (NF, pedido, fatura, RMA
	 * ou remessa), a origem é o registro corrente; chamado pelo menu, vem do
	 * parâmetro correspondente.
	 */
	private PO resolveSource() throws Exception {
		if (p_LBR_NotaFiscal_ID > 0)
			return new MLBRNotaFiscal(getCtx(), p_LBR_NotaFiscal_ID, get_TrxName());

		if (p_C_Order_ID > 0)
			return new MOrder(getCtx(), p_C_Order_ID, get_TrxName());

		if (p_C_Invoice_ID > 0)
			return new MInvoice(getCtx(), p_C_Invoice_ID, get_TrxName());

		if (p_M_RMA_ID > 0)
			return new MRMA(getCtx(), p_M_RMA_ID, get_TrxName());

		if (p_M_InOut_ID > 0)
			return new MInOut(getCtx(), p_M_InOut_ID, get_TrxName());

		int Record_ID = getRecord_ID();

		if (Record_ID > 0) {
			int AD_Table_ID = getTable_ID();

			if (AD_Table_ID == MLBRNotaFiscal.Table_ID)
				return new MLBRNotaFiscal(getCtx(), Record_ID, get_TrxName());

			if (AD_Table_ID == MOrder.Table_ID)
				return new MOrder(getCtx(), Record_ID, get_TrxName());

			if (AD_Table_ID == MInvoice.Table_ID)
				return new MInvoice(getCtx(), Record_ID, get_TrxName());

			if (AD_Table_ID == MRMA.Table_ID)
				return new MRMA(getCtx(), Record_ID, get_TrxName());

			if (AD_Table_ID == MInOut.Table_ID)
				return new MInOut(getCtx(), Record_ID, get_TrxName());
		}

		throw new Exception("Nenhum documento de origem informado (NF, pedido, fatura, RMA ou remessa)");
	}

	/**
	 * Resolve o tipo da nota. A fonte é o Tipo de Documento informado: é nele que a
	 * empresa configura a finalidade e o subtipo, junto com a série e o modelo que a
	 * NF-e já toma dali.
	 *
	 * <p>Os parâmetros de tipo e subtipo continuam sendo aceitos como alternativa,
	 * para instalações cujo Dicionário ainda não tem as colunas de finalidade no
	 * C_DocType.
	 */
	private NFeDebitCreditType resolveType() throws Exception {
		if (p_C_DocType_ID > 0) {
			NFeDebitCreditType docTypeType = NFeDebitCreditType
					.getOfDocType(new MDocType(getCtx(), p_C_DocType_ID, get_TrxName()));

			if (docTypeType != null)
				return docTypeType;
		}

		if (p_Type == null || (!TYPE_DEBITO.equals(p_Type) && !TYPE_CREDITO.equals(p_Type)))
			throw new Exception("Informe um Tipo de Documento configurado como Nota de Débito ou de Crédito "
					+ "(finalidade e subtipo são definidos no Tipo de Documento)");

		boolean isDebito = TYPE_DEBITO.equals(p_Type);
		String subtype = isDebito
				? (p_tpNFDebito == null || p_tpNFDebito.trim().isEmpty() ? DEFAULT_TPNFDEBITO : p_tpNFDebito)
				: (p_tpNFCredito == null || p_tpNFCredito.trim().isEmpty() ? DEFAULT_TPNFCREDITO : p_tpNFCredito);

		NFeDebitCreditType type = NFeDebitCreditType.get(
				isDebito ? NFeDebitCreditType.FINNFE_DEBIT : NFeDebitCreditType.FINNFE_CREDIT, subtype);

		if (type == null)
			throw new Exception("Tipo de nota de " + (isDebito ? "débito" : "crédito") + " '" + subtype
					+ "' não previsto na NT 2025.002");

		return type;
	}

	/**
	 * Constrói (em rascunho) uma NF-e de Débito/Crédito a partir de uma NF-e
	 * autorizada. Ver {@link #build(Properties, PO, NFeDebitCreditType, BigDecimal, int, String)}.
	 */
	public static MLBRNotaFiscal build(Properties ctx, MLBRNotaFiscal orig, NFeDebitCreditType type,
			BigDecimal amount, int noteC_DocType_ID, String trxName) throws Exception {

		return build(ctx, (PO) orig, type, amount, noteC_DocType_ID, trxName);
	}

	/**
	 * Constrói (em rascunho) uma NF-e de Débito/Crédito como réplica proporcional do
	 * documento de origem. Não processa o documento nem envia à SEFAZ — isso fica a
	 * cargo do chamador.
	 *
	 * <p>A origem pode ser uma NF-e autorizada (tipos que referenciam a nota
	 * original) ou um pedido, fatura, RMA ou remessa (tipos originários, como
	 * 06-Pagamento antecipado, que não referenciam documento anterior). Em ambos os
	 * casos as linhas já carregam os impostos calculados em LBR_DocLine_Details, de
	 * onde o IBS/CBS é herdado e reescalado sobre o valor rateado.
	 *
	 * @param ctx      contexto
	 * @param source   NF-e, pedido, fatura, RMA ou remessa
	 * @param type     tipo da nota conforme a NT 2025.002
	 * @param amount   valor total do encargo a ratear entre os itens
	 * @param trxName  transação
	 * @return a NF-e gerada em rascunho
	 */
	public static MLBRNotaFiscal build(Properties ctx, PO source, NFeDebitCreditType type,
			BigDecimal amount, int noteC_DocType_ID, String trxName) throws Exception {

		if (type == null)
			throw new Exception("Tipo da nota de débito/crédito não informado");

		NFDebitCreditSource orig = NFDebitCreditSource.of(source);

		boolean isDebito = type.isDebit();

		// Só os tipos que referenciam uma NF-e anterior precisam da chave de acesso; nos
		// demais (ex.: 06-Pagamento antecipado) a nota não referencia documento algum, e
		// a origem pode ser um documento do ERP que sequer tem chave.
		String chave = orig.getAccessKey();
		if (type.isReferenceRequired() && (chave == null || chave.trim().length() != 44))
			throw new Exception("O tipo '" + type + "' exige NF-e referenciada, mas " + orig
					+ " não possui chave de acesso válida (a NF-e original deve estar autorizada na SEFAZ)");

		if (amount == null || amount.signum() <= 0)
			throw new Exception("Valor do encargo inválido");

		PO[] origLines = orig.getLines();

		BigDecimal origTotal = Env.ZERO;
		for (PO ol : origLines)
			origTotal = origTotal.add(NFDebitCreditSource.getLineNetAmt(ol));

		if (origTotal.signum() <= 0)
			throw new Exception("Total (Σ vProd) do documento de origem é zero — não é possível ratear");

		// DocType da NOTA gerada: informado, ou herdado da origem quando ela também
		// é emitida pela organização (caso venda). A nota de débito/crédito é SEMPRE
		// emitida por nós (vai à SEFAZ com nossa série), mas o documento de origem pode
		// ser de terceiro (ex.: compra de fornecedor) — por isso o IsDocIssuedByOrg é
		// exigido no DocType da NOTA, não no da origem.
		int docTypeID = noteC_DocType_ID > 0 ? noteC_DocType_ID : orig.getC_DocType_ID();
		MDocType nfDocType = new MDocType(ctx, docTypeID, trxName);
		if (!nfDocType.get_ValueAsBoolean("LBR_IsDocIssuedByOrg"))
			throw new Exception("A Nota de Débito/Crédito precisa de um Tipo de Documento de NF-e emitido pela "
					+ "organização. O documento de origem não é emitido por você (ex.: compra de fornecedor) — "
					+ "informe o Tipo de Documento (C_DocType_ID) da sua NF-e.");

		// O CFOP não vem do código: quem define é a empresa, amarrando o CFOP ao Tipo de
		// Documento pelo caminho fiscal padrão do LBR (LBR_CFOPLine / LBR_TaxDefinition).
		// Sem nada configurado, cai no x.949 (outra saída/entrada não especificada).
		//
		// A NT 2025.002 não prescreve CFOP, mas o Ajuste SINIEF 49/2025 prescreve para
		// alguns tipos — configure-os no LBR_TaxDefinition do Tipo de Documento:
		//   06-Pagamento antecipado -> 5.922 / 6.922 (sem destaque de ICMS)
		//   07-Perda em estoque     -> 5.927
		// Os demais tipos (04-Multa e juros à frente) não têm CFOP próprio no Ajuste.
		//
		// A pesquisa só vale se o DocType for DEDICADO a notas de débito/crédito: quando
		// ele é herdado da NF original (venda/compra), a configuração encontrada seria a
		// da operação original — sairia um CFOP de venda numa nota de débito.
		NFeDebitCreditType docTypeType = NFeDebitCreditType.getOfDocType(nfDocType);

		if (docTypeType != null && docTypeType != type)
			throw new Exception("O Tipo de Documento '" + nfDocType.getName() + "' está configurado como '"
					+ docTypeType + "', incompatível com a nota solicitada ('" + type + "')");

		boolean cfopFromDocType = docTypeType != null;

		String destinationType = orig.getLBR_NFE_DestinationType();
		boolean sameState = MLBRNotaFiscal.LBR_NFE_DESTINATIONTYPE_OperacaoInterna.equals(destinationType);
		// LBR_CFOP.value é armazenado com ponto (ex.: "5.949"); o gerador remove a
		// pontuação ao emitir o XML (<CFOP>5949</CFOP>).
		String defaultCFOPValue = isDebito ? (sameState ? "5.949" : "6.949") : (sameState ? "1.949" : "2.949");
		MLBRCFOP defaultCFOP = MLBRCFOP.getCFOP(ctx, defaultCFOPValue, trxName);

		// ===== Cabeçalho =====
		MLBRNotaFiscal nf = new MLBRNotaFiscal(ctx, 0, trxName);
		nf.setAD_Org_ID(orig.getAD_Org_ID());
		nf.setC_DocType_ID(nfDocType.get_ID());
		nf.setLBR_NFeModel(nfDocType.get_ValueAsString("LBR_NFBModel"));
		nf.setLBR_NFeSerie(nfDocType.get_ValueAsString("LBR_NFeSerie"));
		nf.setLBR_IsDocIssuedByOrg(true);
		// Débito é sempre saída (rejeição 1162) e crédito sempre entrada (rejeição 1161)
		nf.setLBR_NFE_OperationType(type.getOperationType());
		nf.setDateDoc(new Timestamp(System.currentTimeMillis()));
		nf.setDateAcct(new Timestamp(System.currentTimeMillis()));
		nf.setPaymentRule("0"); // à vista
		nf.setLBR_NFeTpEmis("1");
		nf.setLBR_FinNFe(type.getFinNFe());
		if (isDebito)
			nf.setLBR_tpNFDebito(type.getCode());
		else
			nf.setLBR_tpNFCredito(type.getCode());
		nf.setLBR_NFeNatOp(isDebito ? "Nota de Debito" : "Nota de Credito");
		nf.setLBR_NFE_DestinationType(destinationType);
		// Indicadores: a NF de origem os traz prontos; vindo de um documento do ERP,
		// vêm do Tipo de Documento da nota gerada, como na NF da operação.
		nf.setLBR_NFeIndFinal(coalesce(orig.getLBR_NFeIndFinal(), nfDocType, "LBR_NFeIndFinal"));
		nf.setLBR_NFeIndPres(coalesce(orig.getLBR_NFeIndPres(), nfDocType, "LBR_NFeIndPres"));
		nf.setLBR_NFeIndIntermed(coalesce(orig.getLBR_NFeIndIntermed(), nfDocType, "LBR_NFeIndIntermed"));
		nf.setC_Region_ID(orig.getC_Region_ID());
		nf.setC_City_ID(orig.getC_City_ID());
		nf.setC_BPartner_ID(orig.getC_BPartner_ID());
		nf.setC_BPartner_Location_ID(orig.getC_BPartner_Location_ID());
		nf.setLBR_TransactionType(orig.getLBR_TransactionType());
		if (orig.getC_Order_ID() > 0)
			nf.setC_Order_ID(orig.getC_Order_ID());
		if (orig.getC_Invoice_ID() > 0)
			nf.setC_Invoice_ID(orig.getC_Invoice_ID());
		if (orig.getM_RMA_ID() > 0)
			nf.setM_RMA_ID(orig.getM_RMA_ID());
		nf.setIsTaxIncluded(true);
		nf.saveEx();

		// ===== Linhas (réplica proporcional) =====
		BigDecimal ratio = amount.divide(origTotal, 12, RoundingMode.HALF_UP);
		BigDecimal distributed = Env.ZERO;
		int biggestIdx = 0;
		BigDecimal biggestNet = Env.ZERO;
		BigDecimal[] lineAmt = new BigDecimal[origLines.length];

		for (int i = 0; i < origLines.length; i++) {
			BigDecimal net = NFDebitCreditSource.getLineNetAmt(origLines[i]);
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

		int natOpCFOP_ID = 0;

		for (int i = 0; i < origLines.length; i++) {
			PO ol = origLines[i];

			if (lineAmt[i].signum() <= 0)
				continue; // linha sem valor após rateio

			BigDecimal origQty = NFDebitCreditSource.getQty(ol);
			BigDecimal qty = origQty.signum() == 0 ? BigDecimal.ONE : origQty;
			BigDecimal price = lineAmt[i].divide(qty, 10, RoundingMode.HALF_UP);

			MLBRNotaFiscalLine nl = new MLBRNotaFiscalLine(ctx, 0, trxName);
			nl.setAD_Org_ID(nf.getAD_Org_ID());
			nl.setLBR_NotaFiscal_ID(nf.get_ID());
			nl.setLine(ol.get_ValueAsInt("Line"));
			nl.setM_Product_ID(ol.get_ValueAsInt("M_Product_ID"));
			nl.setC_Charge_ID(ol.get_ValueAsInt("C_Charge_ID"));
			nl.setC_UOM_ID(ol.get_ValueAsInt("C_UOM_ID"));
			nl.setC_Tax_ID(NFDebitCreditSource.getC_Tax_ID(ol));
			nl.setQty(qty);
			nl.setPriceActual(price);
			nl.setLineNetAmt(lineAmt[i]);
			nl.saveEx();

			// Detalhes fiscais herdados da linha de origem + CFOP da nota
			MLBRDocLineDetailsNfe origDetails = MLBRDocLineDetailsNfe.getOfPO(ol);
			MLBRDocLineDetailsNfe details = MLBRDocLineDetailsNfe.createFromPO(nl);

			if (origDetails != null)
				details.copyFrom(origDetails);

			int LBR_CFOP_ID = cfopFromDocType
					? resolveCFOP(ctx, nf, nl.getM_Product_ID(), nfDocType, isDebito, trxName)
					: 0;

			// Natureza da operação segue o CFOP da linha predominante, como na NF da
			// operação — mas só quando o CFOP veio da configuração da empresa. Caindo no
			// padrão, mantém o texto genérico já gravado no cabeçalho.
			if (i == biggestIdx)
				natOpCFOP_ID = LBR_CFOP_ID;

			if (LBR_CFOP_ID <= 0) {
				if (defaultCFOP == null || defaultCFOP.get_ID() <= 0)
					throw new Exception("Nenhum CFOP configurado para o Tipo de Documento '" + nfDocType.getName()
							+ "' e o CFOP padrão " + defaultCFOPValue + " não está cadastrado (LBR_CFOP)");

				LBR_CFOP_ID = defaultCFOP.get_ID();
			}

			details.setLBR_CFOP_ID(LBR_CFOP_ID);

			// O gerador lê o vProd do
			// item de details.getLBR_GrossAmt() e o vUnTrib de details.getLBR_PriceTax()
			// (não de LineNetAmt/PriceActual). Sobrescreve com os valores RATEADOS desta
			// linha e zera frete/seguro/desconto/acréscimos (a nota só carrega o encargo).
			details.setLBR_GrossAmt(lineAmt[i]);
			BigDecimal qtyTax = details.getLBR_QtyTax();
			details.setLBR_PriceTax(qtyTax != null && qtyTax.signum() != 0
					? lineAmt[i].divide(qtyTax, 10, RoundingMode.HALF_UP) : price);
			details.setLBR_IsGrossAmtInTotal(true);
			details.setFreightAmt(Env.ZERO);
			details.setInsuredAmount(Env.ZERO);
			details.setDiscountAmt(Env.ZERO);
			details.setSurcharges(Env.ZERO);

			details.saveEx();

			// IBS/CBS: herda CST/cClassTrib/alíquotas e reaplica sobre a base rateada
			if (origDetails != null) {
				MLBRDocLineIBSCBS.copy(origDetails, details);
				scaleIBSCBS(details, lineAmt[i]);
			}

			// A infra de cálculo (EventHandler ao salvar o details) copia/cria TODOS os
			// filhos de imposto. A Nota de Débito/Crédito só pode conter IBS/CBS (rejeição
			// 1001) — remove ICMS/PIS/COFINS/IPI/IS/... para não deixar resíduo nas tabelas
			// de apuração. Exceção: o crédito 03-Retorno mantém os tributos do regime antigo.
			if (!type.isLegacyTaxesAllowed())
				details.deleteNonIBSCBSChildren();
		}

		// ===== Natureza da operação =====
		// Quando a empresa configurou um CFOP para este tipo de nota, a natureza passa a
		// ser a descrição do CFOP predominante — mesmo critério da NF da operação
		// (CreateNotaFiscal.getNFeNatOp). Sem configuração, permanece o texto genérico.
		if (natOpCFOP_ID > 0) {
			String natOp = new MLBRCFOP(ctx, natOpCFOP_ID, trxName).getDescription();

			if (natOp != null && !natOp.trim().isEmpty()) {
				nf.setLBR_NFeNatOp(natOp.trim());
				nf.saveEx();
			}
		}

		// ===== Transporte (sem frete) =====
		MLBRNotaFiscalTransp transp = nf.getTransp();
		transp.setLBR_NFeModShipping("9"); // 9 - Sem Ocorrência de Transporte
		transp.saveEx();

		// ===== Referência à NF original (chave) =====
		// Criada apenas nos tipos que a NT exige. Nos tipos originários (ex.: 06-Pagamento
		// antecipado) a nota não referencia documento algum — é ela que será referenciada
		// depois, pela NF-e de fornecimento.
		if (type.isReferenceRequired()) {
			MLBRNotaFiscalDocRef docRef = new MLBRNotaFiscalDocRef(ctx, 0, trxName);
			docRef.setAD_Org_ID(nf.getAD_Org_ID());
			docRef.setLBR_NotaFiscal_ID(nf.get_ID());
			docRef.setLBR_NFeDocRefType(MLBRNotaFiscalDocRef.LBR_NFEDOCREFTYPE_NF_E);
			docRef.setLBR_NFeID(chave);
			docRef.saveEx();
		}

		return nf;
	}

	/**
	 * Valor da NF de origem quando existir; senão, o configurado no Tipo de Documento
	 * da nota gerada — como faz a NF da operação com os indicadores fiscais.
	 */
	private static String coalesce(String sourceValue, MDocType nfDocType, String columnName) {
		if (sourceValue != null && !sourceValue.trim().isEmpty())
			return sourceValue;

		String docTypeValue = nfDocType.get_ValueAsString(columnName);

		return docTypeValue == null || docTypeValue.trim().isEmpty() ? null : docTypeValue;
	}

	/**
	 * Resolve o CFOP da linha pelo caminho fiscal padrão do LBR — LBR_CFOPLine e
	 * LBR_TaxDefinition, ambos filtrados pelo Tipo de Documento — usando o DocType da
	 * NOTA, que é onde a empresa amarra o CFOP ao tipo de nota de débito/crédito.
	 *
	 * <p>Linhas sem produto (ex.: encargo) não passam pela pesquisa fiscal, que é
	 * baseada em produto/NCM/categoria.
	 *
	 * @return o LBR_CFOP_ID resolvido, ou 0 quando não há configuração aplicável
	 */
	private static int resolveCFOP(Properties ctx, MLBRNotaFiscal nf, int M_Product_ID,
			MDocType nfDocType, boolean isSOTrx, String trxName) {

		if (M_Product_ID <= 0 || nf.getC_BPartner_ID() <= 0)
			return 0;

		try {
			MOrgInfo oi = MOrgInfo.get(ctx, nf.getAD_Org_ID(), trxName);
			MBPartner bp = new MBPartner(ctx, nf.getC_BPartner_ID(), trxName);
			MBPartnerLocation bpLoc = new MBPartnerLocation(ctx, nf.getC_BPartner_Location_ID(), trxName);
			MProduct product = new MProduct(ctx, M_Product_ID, trxName);

			// getTaxes retorna {taxes, LBR_LegalMessage_ID, LBR_CFOP_ID, lbr_TaxStatus}
			Object[] result = MLBRTax.getTaxes(ctx, nfDocType.get_ID(), isSOTrx, nf.getLBR_TransactionType(),
					product, oi, bp, bpLoc, nf.getDateAcct(), trxName);

			if (result != null && result.length > 2 && result[2] instanceof Integer)
				return ((Integer) result[2]).intValue();

		} catch (Exception e) {
			// Sem configuração fiscal aplicável ao tipo de documento da nota: o chamador
			// usa o CFOP padrão. Não é erro — a maioria das instalações não configura
			// CFOP para notas de débito/crédito.
			s_log.log(Level.INFO, "CFOP não resolvido para o Tipo de Documento " + nfDocType.getName()
					+ ": " + e.getMessage());
		}

		return 0;
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
