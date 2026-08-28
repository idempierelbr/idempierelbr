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
package org.idempierelbr.nfe.imports;

import static org.idempierelbr.nfe.util.NFeDomUtil.child;
import static org.idempierelbr.nfe.util.NFeDomUtil.childAmt;
import static org.idempierelbr.nfe.util.NFeDomUtil.childValue;

import java.math.BigDecimal;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Properties;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.POWrapper;
import org.compiere.model.MAttachment;
import org.compiere.model.MAttachmentEntry;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MCity;
import org.compiere.model.MCurrency;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MProduct;
import org.compiere.model.MRegion;
import org.compiere.model.MSysConfig;
import org.compiere.model.MTable;
import org.compiere.model.MTax;
import org.compiere.model.MUOM;
import org.compiere.model.Query;
import org.compiere.model.Tax;
import org.compiere.process.DocAction;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.idempierelbr.base.model.MLBRCFOP;
import org.idempierelbr.base.model.MLBRDocLineCOFINS;
import org.idempierelbr.base.model.MLBRDocLineDetailsNfe;
import org.idempierelbr.base.model.MLBRDocLineIBSCBS;
import org.idempierelbr.base.model.MLBRDocLineICMS;
import org.idempierelbr.base.model.MLBRDocLineIPI;
import org.idempierelbr.base.model.MLBRDocLineIS;
import org.idempierelbr.base.model.MLBRDocLineISSQN;
import org.idempierelbr.base.model.MLBRDocLineImportTax;
import org.idempierelbr.base.model.MLBRDocLinePIS;
import org.idempierelbr.base.model.MLBRNFeXML;
import org.idempierelbr.base.model.MLBRNotaFiscal;
import org.idempierelbr.base.model.MLBRNotaFiscalDetPag;
import org.idempierelbr.base.model.MLBRNotaFiscalDocRef;
import org.idempierelbr.base.model.MLBRNotaFiscalEventRec;
import org.idempierelbr.base.model.MLBRNotaFiscalLine;
import org.idempierelbr.base.model.MLBRNotaFiscalLineComb;
import org.idempierelbr.base.model.MLBRNotaFiscalPay;
import org.idempierelbr.base.model.MLBRNotaFiscalPaySched;
import org.idempierelbr.base.model.MLBRTax;
import org.idempierelbr.base.model.MLBRTaxLine;
import org.idempierelbr.base.model.X_LBR_ClassTrib_IBSCBS;
import org.idempierelbr.base.model.X_LBR_ClassTrib_IS;
import org.idempierelbr.base.model.X_LBR_CST_IBSCBS;
import org.idempierelbr.base.model.X_LBR_CST_IS;
import org.idempierelbr.base.model.X_LBR_TaxGroup;
import org.idempierelbr.base.model.X_LBR_TaxStatus;
import org.idempierelbr.base.util.AdempiereLBR;
import org.idempierelbr.base.util.TextUtil;
import org.idempierelbr.base.wrapper.I_W_C_BPartner;
import org.idempierelbr.nfe.imports.NFeImportDocument.Billing;
import org.idempierelbr.nfe.imports.NFeImportDocument.DocRef;
import org.idempierelbr.nfe.imports.NFeImportDocument.Duplicata;
import org.idempierelbr.nfe.imports.NFeImportDocument.Payment;
import org.idempierelbr.nfe.util.NFeUtil;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/**
 * Cria a {@code LBR_NotaFiscal} a partir de um XML de terceiro já lido pelo
 * {@link NFeXMLParser} e conciliado.
 *
 * <p>É a metade "escrita" do que antes vivia dentro da tela de importação: a
 * leitura dos grupos de imposto de cada item — ICMS, ST, DIFAL, IPI, PIS,
 * COFINS, II, ISSQN e combustíveis — veio para cá inteira, sem reescrita. O que
 * mudou é a fronteira: nada aqui depende de ZK, de arquivo em disco ou de
 * estado de tela, então a mesma importação serve à tela de conciliação, a um
 * processo em lote ou a um agendador.
 *
 * <p>O que é novo é a Reforma Tributária (NT 2025.002) e os grupos que a tela
 * antiga ignorava: IBS/CBS e IS por item, documentos referenciados — inclusive
 * o pagamento antecipado, que é o que permite abater o IBS/CBS já recolhido —,
 * cobrança, duplicatas e formas de pagamento.
 *
 * <p>Transação: o serviço trabalha na transação que recebe e não faz commit. É
 * o chamador que decide o alcance — a tela usa uma transação por nota, para que
 * uma nota problemática não derrube o lote.
 *
 * @author Alan Lescano
 */
public class NFeImportService {

	private static final CLogger log = CLogger.getCLogger(NFeImportService.class);

	/** Cria LBR_Tax/LBR_TaxLine a partir dos impostos do XML */
	public static final String SYSCONFIG_CREATE_TAXLINES = "LBR_CREATE_NF_LBR_TAXLINES_FROM_XML";

	/** Listas de domínio que mudam por Informe Técnico, sem alteração de schema */
	private static final String REFERENCE_TPAG = "LBR_NFE_TPag";
	private static final String REFERENCE_TBAND = "LBR_NFE_TBand";

	private final Properties ctx;
	private final String trxName;
	private final NFeProductMatcher matcher;

	/** Documento em importação — os métodos de imposto leem o emitente dele */
	private NFeImportDocument current;

	public NFeImportService(Properties ctx, String trxName) {
		this.ctx = ctx;
		this.trxName = trxName;
		this.matcher = new NFeProductMatcher(ctx, trxName);
	}

	// -------------------------------------------------------------------------
	// Resolução contra o cadastro
	// -------------------------------------------------------------------------

	/**
	 * Descobre quem é quem: a organização é o destinatário da nota, o parceiro
	 * é o emitente. Não achar o parceiro é normal na primeira nota de um
	 * fornecedor novo; não achar a organização impede a importação, porque a
	 * nota não é nossa.
	 */
	public void resolveParties(NFeImportDocument nfe) {
		MOrg org = getOrgByTaxID(nfe.destCPF != null ? nfe.destCPF : nfe.destCNPJ);

		if (org != null)
			nfe.AD_Org_ID = org.get_ID();

		MBPartner bp = getBPartnerByTaxID(nfe.emitCPF != null ? nfe.emitCPF : nfe.emitCNPJ);

		if (bp == null)
			return;

		nfe.C_BPartner_ID = bp.get_ID();

		if (nfe.C_BPartner_Location_ID == null) {
			MBPartnerLocation[] locations = MBPartnerLocation.getForBPartner(ctx, bp.get_ID(), trxName);

			if (locations != null && locations.length > 0)
				nfe.C_BPartner_Location_ID = locations[0].get_ID();
		}
	}

	/**
	 * Roda a cascata de de-para nos itens do documento.
	 *
	 * @return quantidade de itens que continuaram pendentes
	 */
	public int matchProducts(NFeImportDocument nfe) {
		return matcher.match(nfe);
	}

	public NFeProductMatcher getMatcher() {
		return matcher;
	}

	private MBPartner getBPartnerByTaxID(String taxID) {
		if (taxID == null || taxID.trim().isEmpty())
			return null;

		String where = taxID.length() == 11 ? "LBR_CPF=?" : "LBR_CNPJ=?";

		return new Query(ctx, MBPartner.Table_Name, where, trxName)
			.setParameters(taxID)
			.setClient_ID()
			.setOnlyActiveRecords(true)
			.first();
	}

	/**
	 * A organização é encontrada pelo parceiro que a representa — é assim que o
	 * iDempiere liga o CNPJ do destinatário a uma organização nossa.
	 */
	private MOrg getOrgByTaxID(String taxID) {
		MBPartner bp = getBPartnerByTaxID(taxID);

		if (bp == null || bp.getAD_Org_ID() <= 0)
			return null;

		return new MOrg(ctx, bp.getAD_Org_ID(), trxName);
	}

	// -------------------------------------------------------------------------
	// Validação
	// -------------------------------------------------------------------------

	/**
	 * Confere o que impede esta nota de ser criada, sem olhar as opções do
	 * lote. É o que a fila de conciliação mostra na coluna de situação.
	 *
	 * @return a primeira pendência encontrada, ou nulo se o documento está
	 *         pronto
	 */
	public String validateDocument(NFeImportDocument nfe) {
		if (nfe.AD_Org_ID == null)
			return "Organização não identificada pelo CNPJ do destinatário";

		if (nfe.C_BPartner_ID == null)
			return "Parceiro de negócio não encontrado para o CNPJ do emitente";

		if (nfe.C_BPartner_Location_ID == null)
			return "Parceiro de negócio sem endereço cadastrado";

		if (nfe.items.isEmpty())
			return "XML sem itens";

		if (nfe.nProt == null)
			return "Documento sem protocolo de autorização";

		for (NFeImportItem item : nfe.items) {
			if (!item.isResolved())
				return "Item " + item.nItem + " sem produto ou unidade de medida";
		}

		MLBRNotaFiscal existing = findNotaFiscal(nfe.chNFe);

		if (existing != null && existing.isStatusAutorizado()
				&& (MLBRNotaFiscal.DOCSTATUS_Completed.equals(existing.getDocStatus())
						|| MLBRNotaFiscal.DOCSTATUS_Closed.equals(existing.getDocStatus())))
			return "Nota Fiscal já importada anteriormente. Número: " + nfe.nNF;

		return null;
	}

	/**
	 * Confere o documento e as opções do lote.
	 *
	 * @return a primeira pendência encontrada, ou nulo se pode importar
	 */
	public String validate(NFeImportDocument nfe, NFeImportOptions options) {
		String error = validateDocument(nfe);

		return error != null ? error : options.validate();
	}

	/**
	 * Nota já existente para a chave. Diferente de
	 * {@link MLBRNotaFiscal#getNFe(String, String)}, não registra aviso quando
	 * não encontra — aqui não encontrar é o caso normal.
	 */
	private MLBRNotaFiscal findNotaFiscal(String chNFe) {
		if (chNFe == null)
			return null;

		return new Query(ctx, MLBRNotaFiscal.Table_Name, "LBR_NFeID=?", trxName)
			.setParameters(chNFe)
			.setClient_ID()
			.first();
	}

	// -------------------------------------------------------------------------
	// Importação
	// -------------------------------------------------------------------------

	/**
	 * Cria a nota fiscal a partir do documento conciliado.
	 *
	 * @return a nota criada
	 * @throws AdempiereException se o documento não passar na validação
	 */
	public MLBRNotaFiscal importDocument(NFeImportDocument nfe, NFeImportOptions options) {
		String error = validate(nfe, options);

		if (error != null)
			throw new AdempiereException(error);

		current = nfe;

		try {
			MLBRNotaFiscal nf = createHeader(nfe, options);

			attachXML(nf, nfe);

			int lineNo = 0;

			for (NFeImportItem item : nfe.items)
				createLine(nf, item, (++lineNo) * 10);

			createDocRefs(nf, nfe);
			createBilling(nf, nfe);
			createPayments(nf, nfe);

			new NFeUtil(nf).calculateTaxTotal();
			restoreDocumentTotals(nf, nfe);

			reconcileDFe(nf, nfe);

			if (!DocAction.ACTION_None.equals(options.docAction))
				process(nf, options.docAction);

			return nf;
		} finally {
			current = null;
		}
	}

	/**
	 * O provedor de impostos recalcula o total da nota a partir das linhas. Numa
	 * nota que nós recebemos, porém, quem manda é o documento do emitente: é o
	 * vNF dele que será cobrado, e é ele que precisa constar aqui.
	 *
	 * <p>Divergência entre o calculado e o declarado fica no log — costuma
	 * apontar imposto que o cadastro não reproduz igual ao do fornecedor.
	 */
	private void restoreDocumentTotals(MLBRNotaFiscal nf, NFeImportDocument nfe) {
		if (nfe.vNF == null)
			return;

		if (nf.getGrandTotal() != null && nf.getGrandTotal().compareTo(nfe.vNF) != 0)
			log.warning("Total calculado (" + nf.getGrandTotal() + ") difere do vNF do XML ("
					+ nfe.vNF + ") na NF-e " + nfe.chNFe);

		nf.setGrandTotal(nfe.vNF);

		if (nfe.vProd != null)
			nf.setTotalLines(nfe.vProd);

		nf.saveEx();
	}

	/**
	 * Executa a ação escolhida para o lote. Falha aqui não deixa a nota pela
	 * metade: a transação é do chamador, e ele desfaz tudo.
	 */
	private void process(MLBRNotaFiscal nf, String docAction) {
		try {
			if (!nf.processIt(docAction))
				throw new AdempiereException("Não foi possível processar a Nota Fiscal: " + nf.getProcessMsg());
		} catch (Exception e) {
			throw new AdempiereException("Não foi possível processar a Nota Fiscal: " + e.getMessage(), e);
		}

		nf.saveEx();
	}

	private MLBRNotaFiscal createHeader(NFeImportDocument nfe, NFeImportOptions options) {
		MLBRNotaFiscal nf = new MLBRNotaFiscal(ctx, 0, trxName);
		nf.setAD_Org_ID(nfe.AD_Org_ID);
		nf.setDescription(options.description);
		nf.setLBR_NFeStatus(nfe.cStat);
		nf.setLBR_NFeID(nfe.chNFe);
		nf.setDocumentNo(nfe.nNF);
		nf.setLBR_TransactionType(options.LBR_TransactionType);
		nf.setC_DocType_ID(options.C_DocType_ID);
		nf.setVersionNo(nfe.versionNo);
		nf.setLBR_IsDocIssuedByOrg(false);
		nf.setC_BPartner_ID(nfe.C_BPartner_ID);
		nf.setC_BPartner_Location_ID(nfe.C_BPartner_Location_ID);
		nf.setIsTaxIncluded(true);
		nf.setLBR_NFeModel(nfe.mod);
		nf.setLBR_NFeSerie(nfe.serie);
		nf.setLBR_NFE_OperationType(nfe.tpNF);
		nf.setLBR_NFeTpEmis(nfe.tpEmis);
		nf.setLBR_FinNFe(nfe.finNFe);
		nf.setLBR_NFeNatOp(nfe.natOp);
		nf.setLBR_LotSendingProt(nfe.nProt);

		if (nfe.infCpl != null)
			nf.setLBR_TaxPayerInfo(nfe.infCpl);

		if (nfe.infAdFisco != null)
			nf.setLBR_FiscalInfo(nfe.infAdFisco);

		// idDest, indFinal e indPres só existem a partir da 4.00
		if ("4.00".equals(nfe.versionNo)) {
			nf.setLBR_NFE_DestinationType(nfe.idDest);
			nf.setLBR_NFeIndFinal(nfe.indFinal);
			nf.setLBR_NFeIndPres(nfe.indPres);

			if (nfe.indIntermed != null)
				nf.setLBR_NFeIndIntermed(nfe.indIntermed);
		} else {
			nf.setLBR_NFE_DestinationType(getPresumedDestinationType(nfe.doc));
			nf.setLBR_NFeIndFinal("0"); // Não
			nf.setLBR_NFeIndPres("0"); // Não se Aplica
		}

		nf.setDateDoc(nfe.dhEmi);
		nf.setDateAcct(nfe.dhEmi);

		if (nfe.dhSaiEnt != null)
			nf.setDateDelivered(nfe.dhSaiEnt);

		nf.setLBR_OwnDateDelivered(options.LBR_OwnDateDelivered != null
				? options.LBR_OwnDateDelivered : new java.sql.Timestamp(System.currentTimeMillis()));

		if (nfe.indPag != null)
			nf.setPaymentRule(nfe.indPag);

		if (nfe.vTroco != null)
			nf.setLBR_vTroco(nfe.vTroco);

		MCity city = getCity(nfe.cMunFG);

		if (city != null) {
			nf.setC_City_ID(city.get_ID());
			nf.setC_Region_ID(city.getC_Region_ID());
		}

		if (nfe.vProd != null)
			nf.setTotalLines(nfe.vProd);

		if (nfe.vNF != null)
			nf.setGrandTotal(nfe.vNF);

		nf.saveEx();

		return nf;
	}

	/**
	 * Guarda o XML como anexo da nota — é ele que sustenta qualquer conferência
	 * posterior.
	 */
	private void attachXML(MLBRNotaFiscal nf, NFeImportDocument nfe) {
		if (nfe.xml == null)
			return;

		String name = MLBRNotaFiscal.IMPORTED_FILE_PREFIX
				+ (nfe.chNFe != null ? nfe.chNFe : nfe.nNF) + ".xml";

		// o anexo precisa da mesma transação da nota: PO.createAttachment() o
		// monta com transação nula, e aí a validação de tenant não enxerga a
		// nota recém-inserida ("Foreign ID N not found in LBR_NotaFiscal")
		MAttachment attachment = MAttachment.get(ctx, MLBRNotaFiscal.Table_ID,
				nf.get_ID(), nf.get_UUID(), trxName);

		if (attachment == null)
			attachment = new MAttachment(ctx, MLBRNotaFiscal.Table_ID, nf.get_ID(),
					nf.get_UUID(), trxName);

		attachment.setAD_Org_ID(nf.getAD_Org_ID());
		attachment.addEntry(new MAttachmentEntry(name, nfe.xml.getBytes()));
		attachment.saveEx();
	}

	/**
	 * Linha da nota, com os detalhes e todos os grupos de imposto do item.
	 */
	private void createLine(MLBRNotaFiscal nf, NFeImportItem item, int lineNo) {
		MLBRNotaFiscalLine line = new MLBRNotaFiscalLine(nf);
		line.setAD_Org_ID(nf.getAD_Org_ID());
		line.setLine(lineNo);

		if (item.M_Product_ID != null) {
			line.setM_Product_ID(item.M_Product_ID);
			matcher.saveVendorLink(item, nf.getC_BPartner_ID(), nf.getAD_Org_ID());
		}

		if (item.C_Charge_ID != null)
			line.setC_Charge_ID(item.C_Charge_ID);

		line.setQty(item.qCom);
		line.setC_UOM_ID(item.C_UOM_ID);
		line.setPriceActual(item.vUnCom);

		if (item.qCom != null && item.vUnCom != null) {
			int stdPrecision = MCurrency.getStdPrecision(ctx, MLBRNotaFiscal.CURRENCY_BRL);
			BigDecimal lineNetAmt = item.qCom.multiply(item.vUnCom);

			if (lineNetAmt.scale() > stdPrecision)
				lineNetAmt = lineNetAmt.setScale(stdPrecision, BigDecimal.ROUND_HALF_UP);

			line.setLineNetAmt(lineNetAmt);
		}

		line.setC_Tax_ID(getTax(nf, item.M_Product_ID, item.C_Charge_ID));
		line.saveEx();

		MLBRDocLineDetailsNfe details = MLBRDocLineDetailsNfe.createFromPO(line);

		if (details == null)
			return;

		Object[] ownInfo = getTaxes(ctx, line, trxName);

		// CFOP do declarante, para conferir contra o que o emitente informou
		if ((Integer) ownInfo[2] > 0)
			details.set_ValueOfColumn("LBR_OwnCFOP_ID", ownInfo[2]);

		details.setProductValue(item.cProd);
		details.setProductName(item.xProd);

		if (item.CFOP != null && item.CFOP.length() == 4) {
			// o cadastro guarda o CFOP com ponto depois do primeiro dígito
			MLBRCFOP cfop = MLBRCFOP.getCFOP(ctx,
					item.CFOP.substring(0, 1) + "." + item.CFOP.substring(1, 4), trxName);

			if (cfop != null)
				details.setLBR_CFOP_ID(cfop.get_ID());
		}

		details.setFreightAmt(item.vFrete);
		details.setSurcharges(item.vOutro);
		details.setInsuredAmount(item.vSeg);
		details.setDiscountAmt(item.vDesc);
		details.saveEx();

		createTaxes(nf, line, details, item, ownInfo);
		createFuel(line, item);
	}

	/**
	 * Grupos de imposto do item: os de sempre, e os da Reforma Tributária.
	 */
	private void createTaxes(MLBRNotaFiscal nf, MLBRNotaFiscalLine line,
			MLBRDocLineDetailsNfe details, NFeImportItem item, Object[] ownInfo) {

		MLBRDocLineICMS docLineICMS = createICMS(ctx, details, item.det, trxName);
		MLBRDocLineIPI docLineIPI = createIPI(ctx, details, item.det, trxName);
		MLBRDocLinePIS docLinePIS = createPIS(ctx, details, item.det, trxName);
		MLBRDocLineCOFINS docLineCOFINS = createCOFINS(ctx, details, item.det, trxName);
		createII(ctx, details, item.det, trxName);
		createISSQN(ctx, details, item.det, trxName);

		// Reforma Tributária (NT 2025.002)
		createIBSCBS(details, item);
		createIS(details, item);

		@SuppressWarnings("unchecked")
		Map<Integer, MLBRTaxLine> ownTaxesMap = (Map<Integer, MLBRTaxLine>) ownInfo[0];

		for (Entry<Integer, MLBRTaxLine> entry : ownTaxesMap.entrySet()) {
			MLBRTaxLine taxline = entry.getValue();
			String taxName = taxline.getLBR_TaxName().getName();

			if (docLineICMS != null && taxName.equals("ICMSPROD")) {
				docLineICMS.set_ValueOfColumn("LBR_ICMS_OwnTaxStatus", taxline.getLBR_TaxStatus().getName());
				docLineICMS.saveEx();
			} else if (docLineIPI != null && taxName.equals("IPI")) {
				docLineIPI.set_ValueOfColumn("LBR_IPI_OwnTaxStatus", taxline.getLBR_TaxStatus().getPO_Name());
				docLineIPI.saveEx();
			} else if (docLinePIS != null && taxName.equals("PISPROD")) {
				docLinePIS.set_ValueOfColumn("LBR_PIS_OwnTaxStatus", taxline.getLBR_TaxStatus().getName());
				docLinePIS.saveEx();
			} else if (docLineCOFINS != null && taxName.equals("COFINSPROD")) {
				docLineCOFINS.set_ValueOfColumn("LBR_COF_OwnTaxStatus", taxline.getLBR_TaxStatus().getName());
				docLineCOFINS.saveEx();
			}

			// os impostos próprios eram só para descobrir a CST do declarante
			taxline.deleteEx(true);
		}

		if (!MSysConfig.getBooleanValue(SYSCONFIG_CREATE_TAXLINES, false,
				nf.getAD_Client_ID(), nf.getAD_Org_ID()))
			return;

		try {
			generateLBRTaxFromNFeTaxes(ctx, line, details, trxName);
		} catch (Exception e) {
			log.log(Level.SEVERE, "Falha ao criar registros de impostos na LBR_TaxLine a partir do XML.", e);
		}
	}

	private void createFuel(MLBRNotaFiscalLine line, NFeImportItem item) {
		if (item.cProdANP == null)
			return;

		MLBRNotaFiscalLineComb comb = MLBRNotaFiscalLineComb.createFromPO(line);
		comb.setLBR_CodANP(item.cProdANP);
		comb.setLBR_pMixGN(item.pMixGN);
		comb.setLBR_CODIF(item.CODIF);
		comb.setLBR_qTemp(item.qTemp);
		comb.setC_Region_ID(AdempiereLBR.getC_Region_ID(item.UFCons, trxName));
		comb.saveEx();
	}

	// -------------------------------------------------------------------------
	// Reforma Tributária: IBS, CBS e Imposto Seletivo
	// -------------------------------------------------------------------------

	/**
	 * Grupo {@code det/imposto/IBSCBS} — o dado que sustenta a apuração futura
	 * de IBS e CBS sobre o que compramos.
	 *
	 * <p>Os três blocos (IBS estadual, IBS municipal e CBS) têm a mesma forma:
	 * alíquota, diferimento, devolução, redução e valor. Só o prefixo das
	 * colunas muda.
	 *
	 * <p>CST e classificação tributária são tabelas de domínio com chave
	 * estrangeira: código que não estiver cadastrado interrompe a importação
	 * com mensagem explícita, em vez de inventar registro fiscal a partir do
	 * XML de terceiro.
	 */
	private void createIBSCBS(MLBRDocLineDetailsNfe details, NFeImportItem item) {
		Element imposto = child(item.det, "imposto");
		Element ibscbs = child(imposto, "IBSCBS");

		if (ibscbs == null)
			return;

		String CST = childValue(ibscbs, "CST");
		String cClassTrib = childValue(ibscbs, "cClassTrib");

		MLBRDocLineIBSCBS line = new MLBRDocLineIBSCBS(ctx, 0, trxName);
		line.setAD_Org_ID(details.getAD_Org_ID());
		line.setLBR_DocLine_Details_ID(details.get_ID());
		line.setLBR_CST_IBSCBS_ID(getCST_IBSCBS_ID(CST, item.nItem));
		line.setLBR_ClassTrib_IBSCBS_ID(getClassTrib_IBSCBS_ID(cClassTrib, item.nItem));

		Element gIBSCBS = child(ibscbs, "gIBSCBS");

		if (gIBSCBS != null) {
			line.setLBR_TaxBaseAmt(childAmt(gIBSCBS, "vBC"));

			Element gIBSUF = child(gIBSCBS, "gIBSUF");

			if (gIBSUF != null) {
				line.setLBR_IBS_UF_TaxRate(childAmt(gIBSUF, "pIBSUF"));
				line.setLBR_IBS_UF_TaxDeferralRate(childAmt(gIBSUF, "gDif", "pDif"));
				line.setLBR_IBS_UF_TaxDeferralAmt(childAmt(gIBSUF, "gDif", "vDif"));
				line.setLBR_IBS_UF_TaxDevAmt(childAmt(gIBSUF, "gDevTrib", "vDevTrib"));
				line.setLBR_IBS_UF_TaxRedRate(childAmt(gIBSUF, "gRed", "pRedAliq"));
				line.setLBR_IBS_UF_TaxRedEfetRate(childAmt(gIBSUF, "gRed", "pAliqEfet"));
				line.setLBR_IBS_UF_TaxAmt(childAmt(gIBSUF, "vIBSUF"));
			}

			Element gIBSMun = child(gIBSCBS, "gIBSMun");

			if (gIBSMun != null) {
				line.setLBR_IBS_Mun_TaxRate(childAmt(gIBSMun, "pIBSMun"));
				line.setLBR_IBS_Mun_TaxDeferralRate(childAmt(gIBSMun, "gDif", "pDif"));
				line.setLBR_IBS_Mun_TaxDeferralAmt(childAmt(gIBSMun, "gDif", "vDif"));
				line.setLBR_IBS_Mun_TaxDevAmt(childAmt(gIBSMun, "gDevTrib", "vDevTrib"));
				line.setLBR_IBS_Mun_TaxRedRate(childAmt(gIBSMun, "gRed", "pRedAliq"));
				line.setLBR_IBS_Mun_TaxRedEfetRate(childAmt(gIBSMun, "gRed", "pAliqEfet"));
				line.setLBR_IBS_Mun_TaxAmt(childAmt(gIBSMun, "vIBSMun"));
			}

			Element gCBS = child(gIBSCBS, "gCBS");

			if (gCBS != null) {
				line.setLBR_CBS_TaxRate(childAmt(gCBS, "pCBS"));
				line.setLBR_CBS_TaxDeferralRate(childAmt(gCBS, "gDif", "pDif"));
				line.setLBR_CBS_TaxDeferralAmt(childAmt(gCBS, "gDif", "vDif"));
				line.setLBR_CBS_TaxDevAmt(childAmt(gCBS, "gDevTrib", "vDevTrib"));
				line.setLBR_CBS_TaxRedRate(childAmt(gCBS, "gRed", "pRedAliq"));
				line.setLBR_CBS_TaxRedEfetRate(childAmt(gCBS, "gRed", "pAliqEfet"));
				line.setLBR_CBS_TaxAmt(childAmt(gCBS, "vCBS"));
			}
		}

		line.saveEx();
	}

	/**
	 * Grupo {@code det/imposto/IS} — Imposto Seletivo.
	 */
	private void createIS(MLBRDocLineDetailsNfe details, NFeImportItem item) {
		Element imposto = child(item.det, "imposto");
		Element is = child(imposto, "IS");

		if (is == null)
			return;

		MLBRDocLineIS line = new MLBRDocLineIS(ctx, 0, trxName);
		line.setAD_Org_ID(details.getAD_Org_ID());
		line.setLBR_DocLine_Details_ID(details.get_ID());
		line.setLBR_CST_IS_ID(getCST_IS_ID(childValue(is, "CSTIS"), item.nItem));
		line.setLBR_ClassTrib_IS_ID(getClassTrib_IS_ID(childValue(is, "cClassTribIS"), item.nItem));
		line.setLBR_TaxBaseAmt(childAmt(is, "vBCIS"));
		line.setLBR_TaxRate(childAmt(is, "pIS"));
		line.setLBR_TaxRateEspec(childAmt(is, "pISEspec"));
		line.setLBR_QtyTax(childAmt(is, "qTrib"));
		line.setLBR_TaxAmt(childAmt(is, "vIS"));

		int C_UOM_ID = getUOM_ID(childValue(is, "uTrib"));

		if (C_UOM_ID > 0)
			line.setLBR_UOMTax_ID(C_UOM_ID);

		line.saveEx();
	}

	private int getCST_IBSCBS_ID(String value, int nItem) {
		return getDomainID(X_LBR_CST_IBSCBS.Table_Name, value, "CST de IBS/CBS", nItem);
	}

	private int getClassTrib_IBSCBS_ID(String value, int nItem) {
		return getDomainID(X_LBR_ClassTrib_IBSCBS.Table_Name, value, "Classificação Tributária de IBS/CBS", nItem);
	}

	private int getCST_IS_ID(String value, int nItem) {
		return getDomainID(X_LBR_CST_IS.Table_Name, value, "CST do Imposto Seletivo", nItem);
	}

	private int getClassTrib_IS_ID(String value, int nItem) {
		return getDomainID(X_LBR_ClassTrib_IS.Table_Name, value, "Classificação Tributária do Imposto Seletivo", nItem);
	}

	/**
	 * Resolve um código de domínio fiscal pelo Value.
	 *
	 * @throws AdempiereException se o código não estiver cadastrado — são
	 *         tabelas com chave estrangeira, e criar registro por inferência a
	 *         partir do XML de terceiro colocaria dado fiscal errado na base
	 */
	private int getDomainID(String tableName, String value, String label, int nItem) {
		if (value == null || value.trim().isEmpty())
			throw new AdempiereException("Item " + nItem + ": " + label + " não informado no XML");

		int id = new Query(ctx, tableName, "Value=?", trxName)
			.setParameters(value.trim())
			.setClient_ID()
			.setOnlyActiveRecords(true)
			.firstId();

		if (id <= 0)
			throw new AdempiereException("Item " + nItem + ": " + label + " '" + value
					+ "' não está cadastrado. Cadastre-o antes de importar.");

		return id;
	}

	/** Unidade de medida do Imposto Seletivo, pelo nome que o XML traz */
	private int getUOM_ID(String uTrib) {
		if (uTrib == null || uTrib.trim().isEmpty())
			return 0;

		return new Query(ctx, MUOM.Table_Name, "UPPER(X12DE355)=? OR UPPER(Name)=?", trxName)
			.setParameters(uTrib.trim().toUpperCase(), uTrib.trim().toUpperCase())
			.setClient_ID()
			.setOnlyActiveRecords(true)
			.firstId();
	}

	// -------------------------------------------------------------------------
	// Documentos referenciados, cobrança e pagamento
	// -------------------------------------------------------------------------

	/**
	 * {@code ide/NFref} e {@code ide/gPagAntecipado} — este último é o que
	 * registra que a nota abateu IBS/CBS já recolhido numa antecipação, e sem
	 * ele a apuração não tem como conferir o saldo do antecipado.
	 */
	private void createDocRefs(MLBRNotaFiscal nf, NFeImportDocument nfe) {
		for (DocRef ref : nfe.docRefs) {
			MLBRNotaFiscalDocRef docRef = new MLBRNotaFiscalDocRef(ctx, 0, trxName);
			docRef.setAD_Org_ID(nf.getAD_Org_ID());
			docRef.setLBR_NotaFiscal_ID(nf.get_ID());
			docRef.setLBR_NFeDocRefType(ref.type);

			if (ref.chNFe != null)
				docRef.setLBR_NFeID(ref.chNFe);

			if (ref.CNPJ != null)
				docRef.setLBR_CNPJ(ref.CNPJ);

			if (ref.CPF != null)
				docRef.setLBR_CPF(ref.CPF);

			if (ref.IE != null) {
				if ("ISENTO".equalsIgnoreCase(ref.IE))
					docRef.setLBR_TypeIE(MLBRNotaFiscalDocRef.LBR_TYPEIE_Isento);
				else
					docRef.setLBR_IE(ref.IE);
			}

			if (ref.CNPJ != null || ref.CPF != null)
				docRef.setLBR_BPTypeBR(ref.CNPJ != null ? "PJ" : "PF");

			if (ref.serie != null)
				docRef.setLBR_NFeSerie(ref.serie);

			if (ref.nNF != null)
				docRef.setLBR_Document(ref.nNF);

			if (ref.AAMM != null && ref.AAMM.length() == 4)
				// o XML traz AAMM; o cadastro guarda MM/AA
				docRef.setLBR_NFYearMonth(ref.AAMM.substring(2) + "/" + ref.AAMM.substring(0, 2));

			if (ref.cUF != null) {
				int C_Region_ID = getRegionByCode(ref.cUF);

				if (C_Region_ID > 0)
					docRef.setC_Region_ID(C_Region_ID);
			}

			if (MLBRNotaFiscalDocRef.LBR_NFEDOCREFTYPE_NotaFiscal.equals(ref.type))
				docRef.setLBR_NFModel(ref.mod);
			else if (MLBRNotaFiscalDocRef.LBR_NFEDOCREFTYPE_NotaFiscalDeProdutor.equals(ref.type))
				docRef.setLBR_NFProdModel(ref.mod);
			else if (MLBRNotaFiscalDocRef.LBR_NFEDOCREFTYPE_CupomFiscal.equals(ref.type)) {
				docRef.setLBR_ECFModel(ref.ECFMod);
				docRef.setLBR_ECFNo(ref.nECF);
				docRef.setLBR_COONo(ref.nCOO);
			}

			docRef.saveEx();
		}
	}

	/**
	 * Grupo {@code cobr}: a fatura e suas duplicatas. É opcional no layout —
	 * nota à vista costuma não ter.
	 */
	private void createBilling(MLBRNotaFiscal nf, NFeImportDocument nfe) {
		Billing billing = nfe.billing;

		if (billing == null)
			return;

		MLBRNotaFiscalPay pay = new MLBRNotaFiscalPay(ctx, 0, trxName);
		pay.setAD_Org_ID(nf.getAD_Org_ID());
		pay.setLBR_NotaFiscal_ID(nf.get_ID());
		pay.setLBR_Document(billing.nFat);
		pay.setGrandTotal(billing.vOrig);
		pay.setDiscountAmt(billing.vDesc);
		pay.setNetAmtToInvoice(billing.vLiq);
		pay.saveEx();

		for (Duplicata duplicata : billing.duplicatas) {
			MLBRNotaFiscalPaySched paySched = new MLBRNotaFiscalPaySched(ctx, 0, trxName);
			paySched.setAD_Org_ID(nf.getAD_Org_ID());
			paySched.setLBR_NotaFiscalPay_ID(pay.get_ID());
			paySched.setLBR_Document(duplicata.nDup);
			paySched.setDueDate(duplicata.dVenc);
			paySched.setDueAmt(duplicata.vDup);
			paySched.saveEx();
		}
	}

	/**
	 * Grupo {@code pag/detPag}: as formas de pagamento, como vieram.
	 *
	 * <p>Códigos de {@code tPag} e {@code tBand} mudam por Informe Técnico sem
	 * alteração de schema, e as colunas são listas sem chave estrangeira: um
	 * código novo é gravado como veio e apenas registrado no log, em vez de
	 * derrubar a importação.
	 */
	private void createPayments(MLBRNotaFiscal nf, NFeImportDocument nfe) {
		for (Payment payment : nfe.payments) {
			MLBRNotaFiscalDetPag detPag = new MLBRNotaFiscalDetPag(ctx, 0, trxName);
			detPag.setAD_Org_ID(nf.getAD_Org_ID());
			detPag.setLBR_NotaFiscal_ID(nf.get_ID());
			detPag.setLBR_IndPag(payment.indPag);
			detPag.setLBR_TPag(payment.tPag);
			detPag.setLBR_xPag(payment.xPag);
			detPag.setPayAmt(payment.vPag);
			detPag.setLBR_DatePayment(payment.dPag);
			detPag.setLBR_CNPJPag(payment.CNPJPag);
			detPag.setLBR_TpIntegra(payment.tpIntegra);
			detPag.setLBR_CardCNPJ(payment.cardCNPJ);
			detPag.setLBR_CardBrand(payment.tBand);
			detPag.setLBR_CardAuth(payment.cAut);
			detPag.setLBR_CNPJReceb(payment.CNPJReceb);
			detPag.setLBR_IdTermPag(payment.idTermPag);

			if (payment.UFPag != null) {
				int C_Region_ID = getRegionByName(payment.UFPag);

				if (C_Region_ID > 0)
					detPag.setC_Region_ID(C_Region_ID);
			}

			detPag.saveEx();

			warnUnknownCode(REFERENCE_TPAG, payment.tPag, "tPag");
			warnUnknownCode(REFERENCE_TBAND, payment.tBand, "tBand");
		}
	}

	/**
	 * Registra no log o código de domínio que ainda não foi cadastrado. O valor
	 * já foi gravado — a coluna é uma lista sem restrição no banco, então ele
	 * apenas aparece sem rótulo na janela até alguém completar a referência.
	 */
	private void warnUnknownCode(String referenceName, String value, String tag) {
		if (value == null || value.trim().isEmpty())
			return;

		int count = DB.getSQLValueEx(trxName,
				"SELECT COUNT(*) FROM AD_Ref_List l"
				+ " INNER JOIN AD_Reference r ON r.AD_Reference_ID=l.AD_Reference_ID"
				+ " WHERE r.Name=? AND l.Value=? AND l.IsActive='Y'",
				referenceName, value.trim());

		if (count <= 0)
			log.warning("Código de " + tag + " fora da lista de domínio: " + value
					+ " (NF-e " + (current != null ? current.chNFe : "") + ")");
	}

	private int getRegionByCode(String cUF) {
		if (cUF == null)
			return 0;

		return new Query(ctx, MRegion.Table_Name, "LBR_RegionCode=?", trxName)
			.setParameters(cUF.trim())
			.firstId();
	}

	private int getRegionByName(String UF) {
		if (UF == null)
			return 0;

		return AdempiereLBR.getC_Region_ID(UF.trim(), trxName);
	}

	/**
	 * Fecha o vínculo com a caixa de entrada de DF-e nos dois sentidos e adota
	 * os eventos que chegaram antes de a nota existir.
	 */
	private void reconcileDFe(MLBRNotaFiscal nf, NFeImportDocument nfe) {
		if (nf.getLBR_NFeID() == null)
			return;

		MLBRNFeXML dfe = nfe.LBR_NFeXML_ID > 0
				? new MLBRNFeXML(ctx, nfe.LBR_NFeXML_ID, trxName)
				: MLBRNFeXML.getByNFeID(ctx, nf.getLBR_NFeID(), trxName);

		if (dfe != null && dfe.get_ID() > 0) {
			dfe.setLBR_NotaFiscal_ID(nf.get_ID());
			dfe.setLBR_DFeStatus(MLBRNFeXML.LBR_DFESTATUS_Importado);
			dfe.setProcessed(true);
			dfe.saveEx();

			nf.setLBR_NFeXML_ID(dfe.get_ID());
			nf.saveEx();
		}

		MLBRNotaFiscalEventRec.linkToNotaFiscal(nf);
	}

	// -------------------------------------------------------------------------
	// Impostos do item — lógica preservada da tela de importação anterior
	// -------------------------------------------------------------------------

	private MCity getCity(String cMunFG) {
		MTable table = MTable.get (ctx, MCity.Table_Name);
		Query query =  new Query(ctx, table, "LBR_CityCode=?", trxName);
		query.setParameters(new Object[]{cMunFG});
		
		return query.first();
	}

	private String getPresumedDestinationType(Document doc) {
		String cPaisEmit = "";
		String cPaisDest = "";
		String xPaisEmit = "";
		String xPaisDest = "";
		String UFEmit = "";
		String UFDest = "";
		
		NodeList nList = doc.getElementsByTagName("enderEmit");
		for (int temp = 0; temp < nList.getLength(); temp++) {
			Node nNode = nList.item(temp);

			if (nNode.getNodeType() == Node.ELEMENT_NODE) {
				Element eElement = (Element) nNode;
				
				//
				if (eElement.getElementsByTagName("cPais").item(0) != null)
					cPaisEmit = eElement.getElementsByTagName("cPais").item(0).getTextContent();
				
				//
				if (eElement.getElementsByTagName("xPais").item(0) != null)
					xPaisEmit = eElement.getElementsByTagName("xPais").item(0).getTextContent();
				
				UFEmit = eElement.getElementsByTagName("UF").item(0).getTextContent();
			}
		}
		
		nList = doc.getElementsByTagName("enderDest");
		for (int temp = 0; temp < nList.getLength(); temp++) {
			Node nNode = nList.item(temp);

			if (nNode.getNodeType() == Node.ELEMENT_NODE) {
				Element eElement = (Element) nNode;
				
				//
				if (eElement.getElementsByTagName("cPais").item(0) != null)
					cPaisDest = eElement.getElementsByTagName("cPais").item(0).getTextContent();
				
				//
				if (eElement.getElementsByTagName("xPais").item(0) != null)
					xPaisDest = eElement.getElementsByTagName("xPais").item(0).getTextContent();

				UFDest = eElement.getElementsByTagName("UF").item(0).getTextContent();
			}
		}
		
		if (!(cPaisEmit.equals(cPaisDest) || xPaisEmit.equalsIgnoreCase(xPaisDest)))
			return "3"; // Operação com o Exterior
		
		if (UFEmit.equals(UFDest))
			return "1"; // Operação Interna
		
		return "2"; // Operação Interestadual;
	}

	/**
	 * 	Create ICMS (child of Doc Line Details)
	 */
	private MLBRDocLineICMS createICMS(Properties ctx, MLBRDocLineDetailsNfe details, Element element, String trxName) {
		NodeList nList = element.getElementsByTagName("ICMS");
		for (int temp = 0; temp < nList.getLength(); temp++) {
			MLBRDocLineICMS icms;
			MLBRDocLineICMS[] icmsEntries = MLBRDocLineICMS.getOfDetails(details);
			
			if (icmsEntries != null && icmsEntries.length > 0)
				icms = icmsEntries[0];
			else
				icms = new MLBRDocLineICMS(ctx, 0, trxName);
			
			icms.setAD_Org_ID(details.getAD_Org_ID());
			icms.setLBR_DocLine_Details_ID(details.get_ID());
			
			Node nNode = nList.item(temp);
			if (nNode.getNodeType() == Node.ELEMENT_NODE) {
				Element eElementICMS = (Element) nNode;
				
				if (eElementICMS.getElementsByTagName("orig").item(0) != null) {
					String productSource = eElementICMS.getElementsByTagName("orig").item(0).getTextContent();
					icms.setLBR_ProductSource(productSource);
				}
				
				String taxStatus = "";
				if (eElementICMS.getElementsByTagName("CST").item(0) != null)
					taxStatus = eElementICMS.getElementsByTagName("CST").item(0).getTextContent();
				
				// If not found, try to identify CSOSN
				if (taxStatus != null && taxStatus.equals("")) {
					if (eElementICMS.getElementsByTagName("CSOSN").item(0) != null)
						taxStatus = eElementICMS.getElementsByTagName("CSOSN").item(0).getTextContent();
				}
				
				// Tax Status Suffix
				String taxStatusSuffix = "";
				NodeList nICMSPart = element.getElementsByTagName("ICMSPart");
				NodeList nICMSST = element.getElementsByTagName("ICMSST");

				if (taxStatus != null) {
					if (taxStatus.equals("10")) {
						if (nICMSPart != null && nICMSPart.getLength() > 0)
							taxStatusSuffix = "_2";
						else
							taxStatusSuffix = "_1";
					} else if (taxStatus.equals("41")) {
						if (nICMSST != null && nICMSST.getLength() > 0)
							taxStatusSuffix = "_2";
						else
							taxStatusSuffix = "_1";
					} else if (taxStatus.equals("90")) {
						if (nICMSPart != null && nICMSPart.getLength() > 0)
							taxStatusSuffix = "_2";
						else
							taxStatusSuffix = "_1";
					}
				}
				
				boolean isSimplesNacional = true;
				
				if (taxStatus.length() == 2)
					isSimplesNacional = false;
				
				if (isSimplesNacional) {
					icms.setLBR_ICMS_TaxStatusSN(taxStatus);
					icms.setLBR_ICMSRegime(MLBRDocLineICMS.LBR_ICMSREGIME_SimpleTaxation);
				} else { 
					taxStatus = taxStatus + taxStatusSuffix;
					icms.setLBR_ICMS_TaxStatusTN(taxStatus);
					icms.setLBR_ICMSRegime(MLBRDocLineICMS.LBR_ICMSREGIME_DefaultTaxation);
				}
				
				icms.setIsTaxIncluded(true);
				
				if (TextUtil.match (taxStatus,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_10_TributadaEComCobrancaDoICMSPorSubTributaria,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_30_IsentaOuNao_TribEComCobrDoICMSPorSubTribut,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_70_ComRedDeBaseDeCalcECobrDoICMSPorSubTrib)) {
					icms.setLBR_ICMSST_IsTaxIncluded(false);
				}
				
				if (TextUtil.match (taxStatus,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_00_TributadaIntegralmente,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_10_TributadaEComCobrancaDoICMSPorSubTributaria,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_20_ComReducaoDeBaseDeCalculo,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_51_Diferimento,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_70_ComRedDeBaseDeCalcECobrDoICMSPorSubTrib,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_90_Outras,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSSN_900_Outros)) {

					if (eElementICMS.getElementsByTagName("modBC").item(0) != null)
						icms.setLBR_ICMS_TaxBaseType(eElementICMS.getElementsByTagName("modBC").item(0).getTextContent());
					
					if (eElementICMS.getElementsByTagName("vBC").item(0) != null) {
						String taxBaseAmt = eElementICMS.getElementsByTagName("vBC").item(0).getTextContent();
						if (taxBaseAmt != null)
							icms.setLBR_TaxBaseAmt(new BigDecimal(taxBaseAmt));
					}
					
					if (eElementICMS.getElementsByTagName("pICMS").item(0) != null) {
						String taxRate = eElementICMS.getElementsByTagName("pICMS").item(0).getTextContent();
						if (taxRate != null)
							icms.setLBR_TaxRate(new BigDecimal(taxRate));
					}
					
					if (eElementICMS.getElementsByTagName("vICMS").item(0) != null) {
						String taxAmt = eElementICMS.getElementsByTagName("vICMS").item(0).getTextContent();
						if (taxAmt != null)
							icms.setLBR_TaxAmt(new BigDecimal(taxAmt));
					}
				}
				
				if (TextUtil.match (taxStatus,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_40_Isenta,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_41_Nao_Tributada,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_50_Suspensao)) {

					if (eElementICMS.getElementsByTagName("vICMS").item(0) != null) {
						String taxAmt = eElementICMS.getElementsByTagName("vICMS").item(0).getTextContent();
						if (taxAmt != null)
							icms.setLBR_TaxAmt(new BigDecimal(taxAmt));
					}
					
					MBPartner bp = new MBPartner(ctx, current.C_BPartner_ID, trxName);
					I_W_C_BPartner bpW = POWrapper.create(bp, I_W_C_BPartner.class);
					
					if (bpW.getLBR_Suframa() != null && !bpW.getLBR_Suframa().isEmpty())
						icms.setLBR_ICMS_TaxReliefType(MLBRDocLineICMS.LBR_ICMS_TAXRELIEFTYPE_SUFRAMA);
					else
						icms.setLBR_ICMS_TaxReliefType(MLBRDocLineICMS.LBR_ICMS_TAXRELIEFTYPE_Other);
				}
				
				//	ICMS-ST
				if (TextUtil.match (taxStatus,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_10_TributadaEComCobrancaDoICMSPorSubTributaria,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_30_IsentaOuNao_TribEComCobrDoICMSPorSubTribut,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_70_ComRedDeBaseDeCalcECobrDoICMSPorSubTrib,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_90_Outras,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSSN_201_TributadaComPermissaoDeCredito,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSSN_202_TributadaSemPermissaoDeCredito,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSSN_203_IsencaoDoICMSParaFaixaDeReceitaBruta,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSSN_900_Outros)) {
					
					if (eElementICMS.getElementsByTagName("modBCST").item(0) != null)
						icms.setLBR_ICMSST_TaxBaseType(eElementICMS.getElementsByTagName("modBCST").item(0).getTextContent());
					
					if (eElementICMS.getElementsByTagName("pMVAST").item(0) != null) {
						String mvaST = eElementICMS.getElementsByTagName("pMVAST").item(0).getTextContent();
						if (mvaST != null)
							icms.setLBR_ICMSST_TaxAdded(new BigDecimal(mvaST));
					}
					
					if (eElementICMS.getElementsByTagName("pRedBCST").item(0) != null) {
						String taxBaseRedST = eElementICMS.getElementsByTagName("pRedBCST").item(0).getTextContent();
						if (taxBaseRedST != null)
							icms.setLBR_ICMSST_TaxBase(new BigDecimal(taxBaseRedST));
					}
					
					if (eElementICMS.getElementsByTagName("vBCST").item(0) != null) {
						String taxBaseAmtST = eElementICMS.getElementsByTagName("vBCST").item(0).getTextContent();
						if (taxBaseAmtST != null)
							icms.setLBR_ICMSST_TaxBaseAmt(new BigDecimal(taxBaseAmtST));
					}
					
					if (eElementICMS.getElementsByTagName("pICMSST").item(0) != null) {
						String taxRateST = eElementICMS.getElementsByTagName("pICMSST").item(0).getTextContent();
						if (taxRateST != null)
							icms.setLBR_ICMSST_TaxRate(new BigDecimal(taxRateST));
					}
					
					if (eElementICMS.getElementsByTagName("vICMSST").item(0) != null) {
						String taxAmtST = eElementICMS.getElementsByTagName("vICMSST").item(0).getTextContent();
						if (taxAmtST != null)
							icms.setLBR_ICMSST_TaxAmt(new BigDecimal(taxAmtST));
					}
				}

				if (TextUtil.match (taxStatus,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_60_ICMSCobradoAnteriormentePorSubstituicaoTributaria,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSSN_500_ICMSCobradoAnteriormente)) {
					
					if (eElementICMS.getElementsByTagName("vBCSTRet").item(0) != null) {
						String taxBAmtWhd = eElementICMS.getElementsByTagName("vBCSTRet").item(0).getTextContent();
						if (taxBAmtWhd != null)
							icms.setLBR_ICMSST_TaxBAmtWhd(new BigDecimal(taxBAmtWhd));
					}
					
					if (eElementICMS.getElementsByTagName("vICMSSTRet").item(0) != null) {
						String taxAmtWhd = eElementICMS.getElementsByTagName("vICMSSTRet").item(0).getTextContent();
						if (taxAmtWhd != null)
							icms.setLBR_ICMSST_TaxAmtWhd(new BigDecimal(taxAmtWhd));
					}
				}
				
				if (TextUtil.match (taxStatus,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSSN_101_TributadaComPermissaoDeCredito,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSSN_201_TributadaComPermissaoDeCredito,
						MLBRDocLineICMS.LBR_ICMS_TAXSTATUSSN_900_Outros)) {
					
					if (eElementICMS.getElementsByTagName("pCredSN").item(0) != null) {
						String taxRateCredit = eElementICMS.getElementsByTagName("pCredSN").item(0).getTextContent();
						if (taxRateCredit != null)
							icms.setLBR_TaxRateCredit(new BigDecimal(taxRateCredit));
					}
					
					if (eElementICMS.getElementsByTagName("vCredICMSSN").item(0) != null) {
						String taxAmtCredit = eElementICMS.getElementsByTagName("vCredICMSSN").item(0).getTextContent();
						if (taxAmtCredit != null)
							icms.setLBR_TaxAmtCredit(new BigDecimal(taxAmtCredit));
					}
				}
				
				
				// DIFAL
				NodeList nICMSUFDest = element.getElementsByTagName("ICMSUFDest");
				if (nICMSUFDest != null && nICMSUFDest.getLength() > 0) {

					// get element
					Node nNodeItem = nICMSUFDest.item(0);
					if (nNodeItem.getNodeType() == Node.ELEMENT_NODE) {
						
						// 
						Element eElementDIFAL = (Element) nNodeItem;
						
						//
						if (eElementDIFAL.getElementsByTagName("pFCPUFDest").item(0) != null) {
							String amt = eElementDIFAL.getElementsByTagName("pFCPUFDest").item(0).getTextContent();
							if (amt != null)
								icms.setLBR_DIFAL_TaxRateFCPUFDest(new BigDecimal(amt));
						}
						
						//
						if (eElementDIFAL.getElementsByTagName("pICMSUFDest").item(0) != null) {
							String amt = eElementDIFAL.getElementsByTagName("pICMSUFDest").item(0).getTextContent();
							if (amt != null)
								icms.setLBR_DIFAL_TaxRateICMSUFDest(new BigDecimal(amt));
						}
						
						//
						if (eElementDIFAL.getElementsByTagName("pICMSInterPart").item(0) != null) {
							String amt = eElementDIFAL.getElementsByTagName("pICMSInterPart").item(0).getTextContent();
							if (amt != null)
								icms.setLBR_DIFAL_RateICMSInterPart(new BigDecimal(amt));
						}
						
						//
						if (eElementDIFAL.getElementsByTagName("vFCPUFDest").item(0) != null) {
							String amt = eElementDIFAL.getElementsByTagName("vFCPUFDest").item(0).getTextContent();
							if (amt != null)
								icms.setLBR_DIFAL_TaxAmtFCPUFDest(new BigDecimal(amt));
						}
						
						//
						if (eElementDIFAL.getElementsByTagName("vICMSUFDest").item(0) != null) {
							String amt = eElementDIFAL.getElementsByTagName("vICMSUFDest").item(0).getTextContent();
							if (amt != null)
								icms.setLBR_DIFAL_TaxAmtICMSUFDest(new BigDecimal(amt));
						}
						
						//
						if (eElementDIFAL.getElementsByTagName("vICMSUFRemet").item(0) != null) {
							String amt = eElementDIFAL.getElementsByTagName("vICMSUFRemet").item(0).getTextContent();
							if (amt != null)
								icms.setLBR_DIFAL_TaxAmtICMSUFRemet(new BigDecimal(amt));
						}
					}
					
				}
											
				icms.saveEx();
				return icms;
			}
		}
		
		return null;
	}

	/**
	 * 	Create IPI (child of Doc Line Details)
	 * @param element 
	 */
	private MLBRDocLineIPI createIPI(Properties ctx, MLBRDocLineDetailsNfe details, Element element, String trxName) {
		NodeList nList = element.getElementsByTagName("IPI");
		for (int temp = 0; temp < nList.getLength(); temp++) {
			MLBRDocLineIPI ipi;
			MLBRDocLineIPI[] ipiEntries = MLBRDocLineIPI.getOfDetails(details);
			
			if (ipiEntries != null && ipiEntries.length > 0)
				ipi = ipiEntries[0];
			else
				ipi = new MLBRDocLineIPI(ctx, 0, trxName);

			ipi.setAD_Org_ID(details.getAD_Org_ID());
			ipi.setLBR_DocLine_Details_ID(details.get_ID());
			ipi.setIsTaxIncluded(false);
			
			Node nNode = nList.item(temp);

			if (nNode.getNodeType() == Node.ELEMENT_NODE) {
				Element eElementIPI = (Element) nNode;
				String taxBaseAmt = null;
				
				if (eElementIPI.getElementsByTagName("CST").item(0) != null)
					ipi.setLBR_IPI_TaxStatus(eElementIPI.getElementsByTagName("CST").item(0).getTextContent());
				
				if (eElementIPI.getElementsByTagName("vBC").item(0) != null) {
					taxBaseAmt = eElementIPI.getElementsByTagName("vBC").item(0).getTextContent();
					if (taxBaseAmt != null)
						ipi.setLBR_TaxBaseAmt(new BigDecimal(taxBaseAmt));
				}

				if (eElementIPI.getElementsByTagName("pIPI").item(0) != null) {
					ipi.setCalculationType("PER");
					
					String taxRate = eElementIPI.getElementsByTagName("pIPI").item(0).getTextContent();
					if (taxRate != null)
						ipi.setLBR_TaxRate(new BigDecimal(taxRate));
				}
				
				if (eElementIPI.getElementsByTagName("qUnid").item(0) != null) {
					ipi.setCalculationType("AMT");
					
					String qUnid = eElementIPI.getElementsByTagName("qUnid").item(0).getTextContent();
					if (qUnid != null)
						ipi.setTotalQty(new BigDecimal(qUnid));
				}
				
				if (eElementIPI.getElementsByTagName("vUnid").item(0) != null) {
					String vUnid = eElementIPI.getElementsByTagName("vUnid").item(0).getTextContent();
					if (vUnid != null)
						ipi.setPriceActual(new BigDecimal(vUnid));
				}
				
				if (eElementIPI.getElementsByTagName("vIPI").item(0) != null) {
					String taxAmt = eElementIPI.getElementsByTagName("vIPI").item(0).getTextContent();
					if (taxAmt != null)
						ipi.setLBR_TaxAmt(new BigDecimal(taxAmt));
					
					
					// force taxbaseamt
					if (taxBaseAmt == null)
						ipi.setLBR_TaxBaseAmt(Env.ZERO);
				}
				
				ipi.saveEx();
				return ipi;
			}
		}
		
		return null;
	}

	/**
	 * 	Create II (child of Doc Line Details)
	 */
	private MLBRDocLineImportTax createII(Properties ctx, MLBRDocLineDetailsNfe details, Element element, String trxName) {
		NodeList nList = element.getElementsByTagName("II");
		for (int temp = 0; temp < nList.getLength(); temp++) {
			MLBRDocLineImportTax ii;
			MLBRDocLineImportTax[] iiEntries = MLBRDocLineImportTax.getOfDetails(details);
			
			if (iiEntries != null && iiEntries.length > 0)
				ii = iiEntries[0];
			else
				ii = new MLBRDocLineImportTax(ctx, 0, trxName);
			
			ii.setAD_Org_ID(details.getAD_Org_ID());
			ii.setLBR_DocLine_Details_ID(details.get_ID());
			ii.setIsTaxIncluded(true);
			
			Node nNode = nList.item(temp);

			if (nNode.getNodeType() == Node.ELEMENT_NODE) {
				Element eElement = (Element) nNode;
				String taxBaseAmt = null;
				
				if (eElement.getElementsByTagName("vBC").item(0) != null) {
					taxBaseAmt = eElement.getElementsByTagName("vBC").item(0).getTextContent();
					if (taxBaseAmt != null)
						ii.setLBR_TaxBaseAmt(new BigDecimal(taxBaseAmt));
				}
				
				if (eElement.getElementsByTagName("vDespAdu").item(0) != null) {
					String customsValue = eElement.getElementsByTagName("vDespAdu").item(0).getTextContent();
					if (customsValue != null)
						ii.setCustomsValue(new BigDecimal(customsValue));
				}
				
				if (eElement.getElementsByTagName("vII").item(0) != null) {
					String taxAmt = eElement.getElementsByTagName("vII").item(0).getTextContent();
					if (taxAmt != null)
						ii.setLBR_TaxAmt(new BigDecimal(taxAmt));
				}
				
				if (eElement.getElementsByTagName("vIOF").item(0) != null) {
					String iofAmt = eElement.getElementsByTagName("vIOF").item(0).getTextContent();
					if (iofAmt != null)
						ii.setLBR_IOFAmt(new BigDecimal(iofAmt));
					
					if (taxBaseAmt == null)
						ii.setLBR_TaxBaseAmt(Env.ZERO);
						
				}
				
				ii.saveEx();
				return ii;
			}
		}
		
		return null;
	}

	/**
	 * 	Create PIS (child of Doc Line Details)
	 */
	private MLBRDocLinePIS createPIS(Properties ctx, MLBRDocLineDetailsNfe details, Element element, String trxName) {
		NodeList nList = element.getElementsByTagName("PIS");
		for (int temp = 0; temp < nList.getLength(); temp++) {
			MLBRDocLinePIS pis;
			MLBRDocLinePIS[] pisEntries = MLBRDocLinePIS.getOfDetails(details);
			
			if (pisEntries != null && pisEntries.length > 0)
				pis = pisEntries[0];
			else
				pis = new MLBRDocLinePIS(ctx, 0, trxName);
			
			pis.setAD_Org_ID(details.getAD_Org_ID());
			pis.setLBR_DocLine_Details_ID(details.get_ID());
			pis.setIsTaxIncluded(true);
			
			Node nNode = nList.item(temp);

			if (nNode.getNodeType() == Node.ELEMENT_NODE) {
				Element eElementPIS = (Element) nNode;

				if (eElementPIS.getElementsByTagName("CST").item(0) != null) {
					String taxStatus = eElementPIS.getElementsByTagName("CST").item(0).getTextContent();
					if (taxStatus != null)
						pis.setLBR_PIS_TaxStatus(taxStatus);
				}
				
				String taxBaseAmt = null;
				if (eElementPIS.getElementsByTagName("vBC").item(0) != null) {
					taxBaseAmt = eElementPIS.getElementsByTagName("vBC").item(0).getTextContent();
					if (taxBaseAmt != null)
						pis.setLBR_TaxBaseAmt(new BigDecimal(taxBaseAmt));
				}
				
				if (eElementPIS.getElementsByTagName("pPIS").item(0) != null) {
					String taxRate = eElementPIS.getElementsByTagName("pPIS").item(0).getTextContent();
					if (taxRate != null)
						pis.setLBR_TaxRate(new BigDecimal(taxRate));
				}
				
				if (eElementPIS.getElementsByTagName("vPIS").item(0) != null) {
					String taxAmt = eElementPIS.getElementsByTagName("vPIS").item(0).getTextContent();
					if (taxAmt != null) {
						pis.setLBR_TaxAmt(new BigDecimal(taxAmt));
						
						// force taxbaseamt
						if (taxBaseAmt == null)
							pis.setLBR_TaxBaseAmt(Env.ZERO);
					}
				}
				
				pis.saveEx();
				return pis;
			}
		}
		
		return null;
	}

	/**
	 * 	Create COFINS (child of Doc Line Details)
	 */
	private MLBRDocLineCOFINS createCOFINS(Properties ctx, MLBRDocLineDetailsNfe details, Element element, String trxName) {
		NodeList nList = element.getElementsByTagName("COFINS");
		for (int temp = 0; temp < nList.getLength(); temp++) {
			MLBRDocLineCOFINS cofins;
			MLBRDocLineCOFINS[] cofinsEntries = MLBRDocLineCOFINS.getOfDetails(details);
			
			if (cofinsEntries != null && cofinsEntries.length > 0)
				cofins = cofinsEntries[0];
			else
				cofins = new MLBRDocLineCOFINS(ctx, 0, trxName);

			cofins.setAD_Org_ID(details.getAD_Org_ID());
			cofins.setLBR_DocLine_Details_ID(details.get_ID());
			cofins.setIsTaxIncluded(true);
			
			Node nNode = nList.item(temp);

			if (nNode.getNodeType() == Node.ELEMENT_NODE) {
				Element eElementCOFINS = (Element) nNode;

				if (eElementCOFINS.getElementsByTagName("CST").item(0) != null) {
					String taxStatus = eElementCOFINS.getElementsByTagName("CST").item(0).getTextContent();
					if (taxStatus != null)
						cofins.setLBR_COF_TaxStatus(taxStatus);
				}
				
				String taxBaseAmt = null;
				if (eElementCOFINS.getElementsByTagName("vBC").item(0) != null) {
					taxBaseAmt = eElementCOFINS.getElementsByTagName("vBC").item(0).getTextContent();
					if (taxBaseAmt != null)
						cofins.setLBR_TaxBaseAmt(new BigDecimal(taxBaseAmt));
				}
				
				if (eElementCOFINS.getElementsByTagName("pCOFINS").item(0) != null) {
					String taxRate = eElementCOFINS.getElementsByTagName("pCOFINS").item(0).getTextContent();
					if (taxRate != null)
						cofins.setLBR_TaxRate(new BigDecimal(taxRate));
				}
				
				if (eElementCOFINS.getElementsByTagName("vCOFINS").item(0) != null) {
					String taxAmt = eElementCOFINS.getElementsByTagName("vCOFINS").item(0).getTextContent();
					if (taxAmt != null)
						cofins.setLBR_TaxAmt(new BigDecimal(taxAmt));
					
					// force taxbaseamt
					if (taxBaseAmt == null)
						cofins.setLBR_TaxBaseAmt(Env.ZERO);
				}
				
				cofins.saveEx();
				return cofins;
			}
		}
		
		return null;
	}

	/**
	 * 	Create ISSQN (child of Doc Line Details)
	 */
	private MLBRDocLineISSQN createISSQN(Properties ctx, MLBRDocLineDetailsNfe details, Element element, String trxName) {
		NodeList nList = element.getElementsByTagName("ISSQN");
		for (int temp = 0; temp < nList.getLength(); temp++) {
			MLBRDocLineISSQN issqn;
			MLBRDocLineISSQN[] issqnEntries = MLBRDocLineISSQN.getOfDetails(details);
			
			if (issqnEntries != null && issqnEntries.length > 0)
				issqn = issqnEntries[0];
			else
				issqn = new MLBRDocLineISSQN(ctx, 0, trxName);

			issqn.setAD_Org_ID(details.getAD_Org_ID());
			issqn.setLBR_DocLine_Details_ID(details.get_ID());
			issqn.setIsTaxIncluded(true);
			
			Node nNode = nList.item(temp);

			if (nNode.getNodeType() == Node.ELEMENT_NODE) {
				Element eElement = (Element) nNode;
				
				if (eElement.getElementsByTagName("vBC").item(0) != null) {
					String taxBaseAmt = eElement.getElementsByTagName("vBC").item(0).getTextContent();
					if (taxBaseAmt != null)
						issqn.setLBR_TaxBaseAmt(new BigDecimal(taxBaseAmt));
				}
				
				if (eElement.getElementsByTagName("vAliq").item(0) != null) {
					String taxRate = eElement.getElementsByTagName("vAliq").item(0).getTextContent();
					if (taxRate != null)
						issqn.setLBR_TaxRate(new BigDecimal(taxRate));
				}
				
				if (eElement.getElementsByTagName("vISSQN").item(0) != null) {
					String taxAmt = eElement.getElementsByTagName("vISSQN").item(0).getTextContent();
					if (taxAmt != null)
						issqn.setLBR_TaxAmt(new BigDecimal(taxAmt));
				}
				
				issqn.saveEx();
				return issqn;
			}
		}
		
		return null;
	}

	private int getTax(MLBRNotaFiscal nf, Integer M_Product_ID, Integer C_Charge_ID) {
		int C_Tax_ID = 0;
		
		if (M_Product_ID != null) {
			C_Tax_ID = Tax.getProduct(nf.getCtx(), M_Product_ID, nf.getDateDoc(), nf.getDateDoc(), nf.getAD_Org_ID(),
					0, nf.getC_BPartner_Location_ID(), nf.getC_BPartner_Location_ID(), nf.isSOTrx(), null);
		} else if (C_Charge_ID != null) {
			C_Tax_ID = Tax.getCharge(nf.getCtx(), C_Charge_ID, nf.getDateDoc(), nf.getDateDoc(), nf.getAD_Org_ID(),
					0, nf.getC_BPartner_Location_ID(), nf.getC_BPartner_Location_ID(), nf.isSOTrx(), null);
		}

		return C_Tax_ID;
	}

	/**
	 * Retorna o registro do imposto baseado na pesquisa
	 * 
	 * Não usar este método em Callouts, pois a Callout pode acioná-lo antes que
	 * a linha tenha sido salva.
	 * 
	 * @param ctx
	 *            context
	 * @param ol
	 *            line
	 * @param trxName
	 *            transaction name
	 * @return Object Array (Taxes, Legal Msg, CFOP and CST)
	 * 
	 * @contributor Pablo Boff - RoundIT
	 * 
	 */
	public static Object[] getTaxes(Properties ctx, MLBRNotaFiscalLine ol, String trxName) {

		//
		MLBRNotaFiscal o = new MLBRNotaFiscal(ctx, ol.getLBR_NotaFiscal_ID(), trxName);
		MProduct p = new MProduct(ctx, ol.getM_Product_ID(), trxName);
		MOrgInfo oi = MOrgInfo.get(ctx, o.getAD_Org_ID(), trxName);
		MBPartner bp = new MBPartner(ctx, o.getC_BPartner_ID(), trxName);
		MBPartnerLocation bpLoc = (MBPartnerLocation) o.getC_BPartner_Location();

		//
		return MLBRTax.getTaxes(ctx, o.getC_DocType_ID(), o.isSOTrx(), ol.getLBR_NotaFiscal().getLBR_TransactionType(), p,
				oi, bp, bpLoc, o.getDateAcct(), trxName);
	} // getTaxes	

	/**
	 * Create a LBR_Tax and LBR_TaxLine by XML imported taxes 
	 * 
	 * Do a reverse enginnering to get tax in Details Tax Lines and put 
	 * in LBR_Tax and LBR_TaxLine
	 * 
	 * 
	 * @param ctx
	 * @param nfline
	 * @param details
	 * @param trxName
	 * @throws Exception
	 * 
	 * @author pablo, 26/09/2015, pablo@roundit.com.br
	 */
	private void generateLBRTaxFromNFeTaxes(Properties ctx, MLBRNotaFiscalLine nfline, MLBRDocLineDetailsNfe details,
			String trxName) throws Exception {

		// get lbr_tax_id
		int LBR_Tax_ID = details.getLBR_Tax_ID();

		// load/create and overide infos
		MLBRTax m_tax = new MLBRTax(ctx, LBR_Tax_ID, trxName);
		m_tax.setAD_Org_ID(details.getAD_Org_ID());
		m_tax.save(trxName);

		// delete lines to recreate
		m_tax.deleteLines();

		// create taxlines
		createLBRTaxLineICMS(ctx, LBR_Tax_ID, nfline.getC_Tax_ID(), details, trxName);
		createLBRTaxLinePIS(ctx, LBR_Tax_ID, nfline.getC_Tax_ID(), details, trxName);
		createLBRTaxLineCOFINS(ctx, LBR_Tax_ID, nfline.getC_Tax_ID(), details, trxName);
		createLBRTaxLineIPI(ctx, LBR_Tax_ID, nfline.getC_Tax_ID(), details, trxName);
		
		// save with new description
		m_tax.setDescription();
		m_tax.save(trxName);
	}

	/**
	 * Create ICMS and/or ST taxLine
	 * 
	 * @param ctx
	 * @param LBR_Tax_ID
	 * @param C_Tax_ID
	 * @param taxFrom
	 * @param trxName
	 * @throws Exception
	 */
	private void createLBRTaxLineICMS(Properties ctx, int LBR_Tax_ID, int C_Tax_ID, MLBRDocLineDetailsNfe details,
			String trxName) throws Exception {

		// get c_tax
		MTax m_taxICMS = getC_Tax(ctx, C_Tax_ID, "ICMS", trxName);

		// check if has c_tax
		if (m_taxICMS == null || m_taxICMS.get_ID() == 0) {
			log.severe("Alíquota de Imposto não cadastrada para o ICMS!");
			return;
		}
		
		// get icms from
		MLBRDocLineICMS[] taxesFrom = MLBRDocLineICMS.getOfDetails(details);
		if (taxesFrom == null || taxesFrom.length <= 0) 
			throw new Exception("Nenhum registro de ICMS encontrado!");

		// get first
		MLBRDocLineICMS taxFrom = taxesFrom[0];
		
		// taxstatus
		String taxStatus = taxFrom.getLBR_ICMSRegime().equals(MLBRDocLineICMS.LBR_ICMSREGIME_DefaultTaxation)
				? taxFrom.getLBR_ICMS_TaxStatusTN() : taxFrom.getLBR_ICMS_TaxStatusSN();

		// create ICMS
		MLBRTaxLine icms = new MLBRTaxLine(ctx, 0, trxName);
		icms.setAD_Org_ID(details.getAD_Org_ID());
		icms.setLBR_Tax_ID(LBR_Tax_ID);
		icms.setLBR_TaxName_ID(m_taxICMS.get_ValueAsInt("LBR_TaxName_ID"));
		icms.setLBR_TaxRate(checkAmt(taxFrom.getLBR_TaxRate()));
		icms.setLBR_TaxBase(checkAmt(taxFrom.getLBR_TaxBase()));
		icms.setLBR_TaxStatus_ID(getLBR_TaxStatus_ID(ctx, taxStatus, icms.getLBR_TaxName_ID(), trxName));
		icms.setLBR_TaxAmt(checkAmt(taxFrom.getLBR_TaxAmt()));
		icms.setLBR_TaxBaseAmt(checkAmt(taxFrom.getLBR_TaxBaseAmt()));
		icms.setIsTaxIncluded(taxFrom.isTaxIncluded());
		icms.saveEx(trxName);
		
			
		//	create ICMS-ST (is ST and has taxRate)
		if (TextUtil.match (taxStatus,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_10_TributadaEComCobrancaDoICMSPorSubTributaria,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_30_IsentaOuNao_TribEComCobrDoICMSPorSubTribut,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_70_ComRedDeBaseDeCalcECobrDoICMSPorSubTrib,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_90_Outras,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSSN_201_TributadaComPermissaoDeCredito,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSSN_202_TributadaSemPermissaoDeCredito,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSSN_203_IsencaoDoICMSParaFaixaDeReceitaBruta,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSSN_900_Outros)
				&& checkAmt(taxFrom.getLBR_ICMSST_TaxRate()).signum() == 1) {
			
			// get c_tax
			MTax m_taxICMSST = getC_Tax(ctx, C_Tax_ID, "ICMSST", trxName);

			// check if has c_tax
			if (m_taxICMSST == null || m_taxICMSST.get_ID() == 0) {
				log.severe("Alíquota de Imposto não cadastrada para o ICMS-ST!");
				return;
			}
			
			// create lbr_taxline
			MLBRTaxLine icmsST = new MLBRTaxLine(ctx, 0, trxName);
			icmsST.setAD_Org_ID(details.getAD_Org_ID());
			icmsST.setLBR_Tax_ID(LBR_Tax_ID);
			icmsST.setLBR_TaxName_ID(m_taxICMSST.get_ValueAsInt("LBR_TaxName_ID"));
			icmsST.setLBR_TaxStatus_ID(getLBR_TaxStatus_ID(ctx, taxStatus, icmsST.getLBR_TaxName_ID(), trxName));
			icmsST.setLBR_TaxRate(checkAmt(taxFrom.getLBR_ICMSST_TaxRate()));
			icmsST.setLBR_TaxBase(checkAmt(taxFrom.getLBR_ICMSST_TaxBase()));
			icmsST.setLBR_TaxAmt(checkAmt(taxFrom.getLBR_ICMSST_TaxAmt()));
			icmsST.setLBR_TaxBaseAmt(checkAmt(taxFrom.getLBR_ICMSST_TaxBaseAmt()));
			icmsST.setIsTaxIncluded(taxFrom.isLBR_ICMSST_IsTaxIncluded());
			icmsST.saveEx(trxName);
		}
	}

	/**
	 * Create PIS lbr_taxline
	 * 
	 * @param ctx
	 * @param LBR_Tax_ID
	 * @param C_Tax_ID
	 * @param taxFrom
	 * @param trxName
	 * @throws Exception
	 */
	private void createLBRTaxLinePIS(Properties ctx, int LBR_Tax_ID, int C_Tax_ID, MLBRDocLineDetailsNfe details,
			String trxName) throws Exception {

		// get c_tax
		MTax m_tax = getC_Tax(ctx, C_Tax_ID, "PIS", trxName);

		// check if has c_tax
		if (m_tax == null || m_tax.get_ID() == 0) {
			log.warning("Alíquota de Imposto não cadastrada para o PIS!");
			return;
		}

		// get taxes from
		MLBRDocLinePIS[] taxesFrom = MLBRDocLinePIS.getOfDetails(details);
		if (taxesFrom == null || taxesFrom.length <= 0) 
			return;

		// get first
		MLBRDocLinePIS taxFrom = taxesFrom[0];

		// create PIS
		MLBRTaxLine tax = new MLBRTaxLine(ctx, 0, trxName);
		tax.setAD_Org_ID(details.getAD_Org_ID());
		tax.setLBR_TaxBase(Env.ZERO);
		tax.setLBR_Tax_ID(LBR_Tax_ID);
		tax.setLBR_TaxName_ID(m_tax.get_ValueAsInt("LBR_TaxName_ID"));
		tax.setLBR_TaxRate(checkAmt(taxFrom.getLBR_TaxRate()));
		tax.setLBR_TaxAmt(checkAmt(taxFrom.getLBR_TaxAmt()));
		tax.setLBR_TaxBaseAmt(checkAmt(taxFrom.getLBR_TaxBaseAmt()));
		tax.setLBR_TaxStatus_ID(getLBR_TaxStatus_ID(ctx, taxFrom.getLBR_PIS_TaxStatus(), tax.getLBR_TaxName_ID(), trxName));
		tax.setIsTaxIncluded(taxFrom.isTaxIncluded());
		tax.saveEx(trxName);
	}	

	/**
	 * Create COFINS lbr_taxline
	 * 
	 * @param ctx
	 * @param LBR_Tax_ID
	 * @param C_Tax_ID
	 * @param taxFrom
	 * @param trxName
	 * @throws Exception
	 */
	private void createLBRTaxLineCOFINS(Properties ctx, int LBR_Tax_ID, int C_Tax_ID, MLBRDocLineDetailsNfe details,
			String trxName) throws Exception {

		// get c_tax
		MTax m_tax = getC_Tax(ctx, C_Tax_ID, "COFINS", trxName);

		// check if has c_tax
		if (m_tax == null || m_tax.get_ID() == 0) {
			log.warning("Alíquota de Imposto não cadastrada para o COFINS!");
			return;
		}

		// get taxes from
		MLBRDocLineCOFINS[] taxesFrom = MLBRDocLineCOFINS.getOfDetails(details);
		if (taxesFrom == null || taxesFrom.length <= 0) 
			return;

		// get first
		MLBRDocLineCOFINS taxFrom = taxesFrom[0];

		// create COFINS
		MLBRTaxLine tax = new MLBRTaxLine(ctx, 0, trxName);
		tax.setAD_Org_ID(details.getAD_Org_ID());
		tax.setLBR_TaxBase(Env.ZERO);
		tax.setLBR_Tax_ID(LBR_Tax_ID);
		tax.setLBR_TaxName_ID(m_tax.get_ValueAsInt("LBR_TaxName_ID"));
		tax.setLBR_TaxRate(checkAmt(taxFrom.getLBR_TaxRate()));
		tax.setLBR_TaxAmt(checkAmt(taxFrom.getLBR_TaxAmt()));
		tax.setLBR_TaxBaseAmt(checkAmt(taxFrom.getLBR_TaxBaseAmt()));
		tax.setLBR_TaxStatus_ID(getLBR_TaxStatus_ID(ctx, taxFrom.getLBR_COF_TaxStatus(), tax.getLBR_TaxName_ID(), trxName));
		tax.setIsTaxIncluded(taxFrom.isTaxIncluded());
		tax.saveEx(trxName);
	}	

	/**
	 * Create IPI lbr_taxline
	 * 
	 * @param ctx
	 * @param LBR_Tax_ID
	 * @param C_Tax_ID
	 * @param taxFrom
	 * @param trxName
	 * @throws Exception
	 */
	private void createLBRTaxLineIPI(Properties ctx, int LBR_Tax_ID, int C_Tax_ID, MLBRDocLineDetailsNfe details,
			String trxName) throws Exception {

		// get c_tax
		MTax m_tax = getC_Tax(ctx, C_Tax_ID, "IPI", trxName);

		// check if has c_tax
		if (m_tax == null || m_tax.get_ID() == 0) {
			log.warning("Alíquota de Imposto não cadastrada para o IPI!");
			return;
		}

		// get taxes from
		MLBRDocLineIPI[] taxesFrom = MLBRDocLineIPI.getOfDetails(details);
		if (taxesFrom == null || taxesFrom.length <= 0) 
			return;

		// get first
		MLBRDocLineIPI taxFrom = taxesFrom[0];

		// create IPI
		MLBRTaxLine tax = new MLBRTaxLine(ctx, 0, trxName);
		tax.setAD_Org_ID(details.getAD_Org_ID());
		tax.setLBR_Tax_ID(LBR_Tax_ID);
		tax.setLBR_TaxName_ID(m_tax.get_ValueAsInt("LBR_TaxName_ID"));
		tax.setLBR_TaxRate(checkAmt(taxFrom.getLBR_TaxRate()));
		tax.setLBR_TaxBase(Env.ZERO);
		tax.setLBR_TaxAmt(checkAmt(taxFrom.getLBR_TaxAmt()));
		tax.setLBR_TaxBaseAmt(checkAmt(taxFrom.getLBR_TaxBaseAmt()));
		tax.setLBR_TaxStatus_ID(getLBR_TaxStatus_ID(ctx, taxFrom.getLBR_IPI_TaxStatus(), tax.getLBR_TaxName_ID(), trxName));
		tax.setIsTaxIncluded(taxFrom.isTaxIncluded());
		tax.saveEx(trxName);
	}	

	/**
	 * Return always a valid amt or zero
	 * 
	 * @param amt
	 * @return
	 */
	public static BigDecimal checkAmt(BigDecimal amt) {
		return checkAmt(amt, Env.ZERO);
	}

	/**
	 * Return always a valid amt or zero
	 * 
	 * @param amt
	 * @param defaultAmt
	 * @return
	 */
	public static BigDecimal checkAmt(BigDecimal amt, BigDecimal defaultAmt) {
		
		if (defaultAmt == null)
			defaultAmt = Env.ZERO;
		
		if (amt == null)
			return defaultAmt;
		
		return amt;
	}

	/**
	 * Get C_Tax by LBR_TaxGroup
	 * 
	 * @param ctx
	 * @param C_Tax_ID
	 * @param LBR_TaxGroup_ID
	 * @param trxName
	 * @return
	 */
	private MTax getC_Tax(Properties ctx, int C_Tax_ID, String taxName, String trxName) {

		// get lbr_taxgroup_id
		int LBR_TaxGroup_ID = getLBR_TaxGroup_ID(ctx, taxName, trxName);

		// no group tax found
		if (LBR_TaxGroup_ID <= 0)
			return null;

		// where
		String where = " LBR_TaxGroup_ID=? AND Parent_Tax_ID=? AND IsActive = 'Y'";

		// query
		Query q = new Query(ctx, MTax.Table_Name, where, null);
		q.setParameters(new Object[] { LBR_TaxGroup_ID, C_Tax_ID });
		return q.first();
	}

	/**
	 * Get LBR_TaxGroup_ID by Name
	 * 
	 * @param ctx
	 * @param name
	 * @param trxName
	 * @return
	 */
	private int getLBR_TaxGroup_ID(Properties ctx, String name, String trxName) {

		// where
		String where = " Name=? AND IsActive = 'Y'";

		// query
		Query q = new Query(ctx, X_LBR_TaxGroup.Table_Name, where, null);
		q.setParameters(new Object[] { name });
		return q.firstId();
	}

	/**
	 * Get LBR_TaxStatus_ID by CST and LBR_TaxName_ID
	 * 
	 * @param ctx
	 * @param name
	 * @param LBR_TaxName_ID
	 * @param trxName
	 * @return
	 */
	private int getLBR_TaxStatus_ID(Properties ctx, String name, int LBR_TaxName_ID, String trxName) {

		// where
		String where = " Name=? AND LBR_TaxName_ID=? AND IsActive = 'Y' ";

		// query
		Query q = new Query(ctx, X_LBR_TaxStatus.Table_Name, where, null);
		q.setParameters(new Object[] { name, LBR_TaxName_ID });
		return q.firstId();
	}
}	//	NFeImportService
