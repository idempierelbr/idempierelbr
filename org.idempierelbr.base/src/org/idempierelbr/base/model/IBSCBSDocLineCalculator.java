package org.idempierelbr.base.model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.POWrapper;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MClientInfo;
import org.compiere.model.MInOut;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MLocation;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MProduct;
import org.compiere.model.MRMALine;
import org.compiere.model.X_C_City;
import org.compiere.util.CLogger;
import org.compiere.util.TimeUtil;
import org.idempierelbr.base.ibscbs.BaseCalculoUnificada;
import org.idempierelbr.base.ibscbs.BaseCalculoUnificada.Elemento;
import org.idempierelbr.base.ibscbs.IBSCBSCalculator;
import org.idempierelbr.base.ibscbs.NcmAplicavel;
import org.idempierelbr.base.util.BPartnerUtil;
import org.idempierelbr.base.wrapper.I_W_M_Product;

/**
 * Cálculo do IBS/CBS de uma linha de pedido, fatura, autorização de devolução ou
 * Nota Fiscal, com o motor {@link IBSCBSCalculator}.
 *
 * <p>Roda depois de criados os filhos de ICMS (com DIFAL), PIS, COFINS, II, ISSQN e
 * IS da linha, porque a base unificada desconta os valores que vão para o XML.
 *
 * <p>Local da operação (LC 214/2025, art. 11, I: entrega ou disponibilização ao
 * destinatário), usado para buscar a alíquota:
 * <ul>
 * <li>venda: endereço de entrega (drop ship, se houver), não o de cobrança;</li>
 * <li>compra: endereço da organização;</li>
 * <li>venda presencial a consumidor não identificado, sem local de entrega:
 * endereço da organização;</li>
 * <li>devolução: o local da operação original.</li>
 * </ul>
 */
public class IBSCBSDocLineCalculator {

	private static final CLogger log = CLogger.getCLogger(IBSCBSDocLineCalculator.class);

	/** Indicador de NFC-e presencial (LBR_NFeIndPres) */
	private static final String INDPRES_PRESENCIAL = "1";

	private final MLBRDocLineDetails details;
	private final MProduct product;
	private final Timestamp dateDoc;
	private final Properties ctx;
	private final String trxName;

	private MLBRNotaFiscal nf = null;
	private int modelo = 55;
	private int C_Region_ID = 0;
	private int C_City_ID = 0;

	/**
	 * O motor vale para linhas de pedido, fatura, autorização de devolução e Nota
	 * Fiscal. As demais (NFS) seguem o cálculo antigo do {@link MLBRTax}.
	 */
	public static boolean isApplicable(MLBRDocLineDetails details) {
		return details.getC_OrderLine_ID() > 0 || details.getC_InvoiceLine_ID() > 0
				|| details.getM_RMALine_ID() > 0 || details.getLBR_NotaFiscalLine_ID() > 0;
	}

	public IBSCBSDocLineCalculator(MLBRDocLineDetails details, MProduct product, Timestamp dateDoc) {
		this.details = details;
		this.product = product;
		this.dateDoc = dateDoc;
		this.ctx = details.getCtx();
		this.trxName = details.get_TrxName();

		if (details.getLBR_NotaFiscalLine_ID() > 0) {
			nf = new MLBRNotaFiscalLine(ctx, details.getLBR_NotaFiscalLine_ID(), trxName).getParent();
			if ("65".equals(nf.getLBR_NFeModel()))
				modelo = 65;
		}

		MLocation location = getOperationLocation();
		if (location != null) {
			C_Region_ID = location.getC_Region_ID();
			X_C_City city = BPartnerUtil.getX_C_City(ctx, location, trxName);
			if (city != null)
				C_City_ID = city.getC_City_ID();
		}
	}

	/**
	 * Sinal dos valores: negativo nas linhas com quantidade negativa (estorno).
	 * A base e os valores do IBS/CBS são calculados sem sinal e recebem este sinal.
	 */
	public int getSign() {
		return details.getLBR_QtyTax() != null && details.getLBR_QtyTax().signum() < 0 ? -1 : 1;
	}

	/**
	 * Base unificada do IBS/CBS, exata e sem sinal, a partir dos valores da linha e
	 * dos filhos já criados.
	 */
	public BigDecimal getBase() {
		Map<Elemento, BigDecimal> v = new EnumMap<>(Elemento.class);
		v.put(Elemento.V_PROD, abs(details.getLBR_GrossAmt()));
		v.put(Elemento.V_FRETE, abs(details.getFreightAmt()));
		v.put(Elemento.V_SEG, abs(details.getInsuredAmount()));
		v.put(Elemento.V_OUTRO, abs(details.getSurcharges()));
		v.put(Elemento.V_DESC, abs(details.getDiscountAmt()));

		BigDecimal vII = BigDecimal.ZERO;
		for (MLBRDocLineImportTax ii : MLBRDocLineImportTax.getOfDetails(details))
			vII = vII.add(abs(ii.getLBR_TaxAmt()));
		v.put(Elemento.V_II, vII);

		BigDecimal vIS = BigDecimal.ZERO;
		for (MLBRDocLineIS is : MLBRDocLineIS.getOfDetails(details))
			vIS = vIS.add(abs(is.getLBR_TaxAmt()));
		v.put(Elemento.V_IS, vIS);

		BigDecimal vPIS = BigDecimal.ZERO;
		for (MLBRDocLinePIS pis : MLBRDocLinePIS.getOfDetails(details))
			vPIS = vPIS.add(abs(pis.getLBR_TaxAmt()));
		v.put(Elemento.V_PIS, vPIS);

		BigDecimal vCOFINS = BigDecimal.ZERO;
		for (MLBRDocLineCOFINS cofins : MLBRDocLineCOFINS.getOfDetails(details))
			vCOFINS = vCOFINS.add(abs(cofins.getLBR_TaxAmt()));
		v.put(Elemento.V_COFINS, vCOFINS);

		BigDecimal vICMS = BigDecimal.ZERO;
		BigDecimal vICMSUFDest = BigDecimal.ZERO;
		BigDecimal vFCPUFDest = BigDecimal.ZERO;
		for (MLBRDocLineICMS icms : MLBRDocLineICMS.getOfDetails(details)) {
			if (isVICMSPublished(icms))
				vICMS = vICMS.add(abs(icms.getLBR_TaxAmt()));
			vICMSUFDest = vICMSUFDest.add(abs(icms.getLBR_DIFAL_TaxAmtICMSUFDest()));
			vFCPUFDest = vFCPUFDest.add(abs(icms.getLBR_DIFAL_TaxAmtFCPUFDest()));
		}
		v.put(Elemento.V_ICMS, vICMS);
		v.put(Elemento.V_ICMS_UF_DEST, vICMSUFDest);
		v.put(Elemento.V_FCP_UF_DEST, vFCPUFDest);

		BigDecimal vISSQN = BigDecimal.ZERO;
		for (MLBRDocLineISSQN issqn : MLBRDocLineISSQN.getOfDetails(details))
			vISSQN = vISSQN.add(abs(issqn.getLBR_TaxAmt()));
		v.put(Elemento.V_ISSQN, vISSQN);

		BaseCalculoUnificada.Resultado r = BaseCalculoUnificada.calcular(v, getYear(), getNatureza(), modelo);
		for (String aviso : r.getAvisos())
			log.fine(aviso);

		return r.getBase();
	}

	/**
	 * O vICMS só é publicado no XML (e só sai da base) nas CSTs 00, 10, 20, 51, 70 e 90
	 * do regime normal; é o mesmo critério do NFeLineUtil.
	 */
	static boolean isVICMSPublished(MLBRDocLineICMS icms) {
		if (!"TN".equals(icms.getLBR_ICMSRegime()))
			return false;
		String cst = MLBRDocLineICMS.getCSTPrefix(icms.getLBR_ICMS_TaxStatusTN());
		return "00".equals(cst) || "10".equals(cst) || "20".equals(cst) || "51".equals(cst)
				|| "70".equals(cst) || "90".equals(cst);
	}

	/**
	 * Calcula um tributo da linha.
	 *
	 * @param tl linha de imposto do documento (com CST e cClassTrib)
	 * @param LBR_TaxGroup_ID grupo do tributo (CBS, IBSUF ou IBSMun)
	 * @param base base unificada, de {@link #getBase()}
	 * @return resultado; null quando a CST não tem o grupo de IBS/CBS (ex.: imunidade)
	 * @throws AdempiereException quando falta dado para o cálculo (alíquota, redução,
	 * 	vigência) ou a classificação não é suportada
	 */
	public IBSCBSCalculator.Resultado calculate(MLBRTaxLine tl, int LBR_TaxGroup_ID, BigDecimal base) {
		X_LBR_CST_IBSCBS cst = getCST(tl);
		X_LBR_ClassTrib_IBSCBS classTrib = getClassTrib(tl);
		String tributo = getTaxGroupName(LBR_TaxGroup_ID);

		if (classTrib != null) {
			if (!isValid(classTrib, dateDoc))
				throw new AdempiereException("A cClassTrib " + classTrib.getValue() + " não está vigente em "
						+ format(dateDoc) + ". Troque a cClassTrib da linha de " + tributo
						+ " na Definição de Impostos.");

			if (X_LBR_ClassTrib_IBSCBS.LBR_INDGIBSCBSMONO_1_Required.equals(classTrib.getLBR_IndgIBSCBSMono())
					|| (cst != null && X_LBR_CST_IBSCBS.LBR_INDGIBSCBSMONO_1_Required.equals(cst.getLBR_IndgIBSCBSMono())))
				throw new AdempiereException("A tributação monofásica (cClassTrib " + classTrib.getValue()
						+ ") ainda não é calculada pelo LBR.");
		}

		// CST sem grupo gIBSCBS (ex.: 410 imunidade): só CST e cClassTrib no XML
		if (cst != null && X_LBR_CST_IBSCBS.LBR_INDGIBSCBS_0_NotAllowed.equals(cst.getLBR_IndgIBSCBS()))
			return null;

		BigDecimal rate = getRate(classTrib, LBR_TaxGroup_ID, tributo);

		BigDecimal reduction = BigDecimal.ZERO;
		if (classTrib != null) {
			MLBRClassTribRed red = MLBRClassTribRed.get(ctx, classTrib.getLBR_ClassTrib_IBSCBS_ID(),
					LBR_TaxGroup_ID, dateDoc, trxName);
			if (red == null)
				throw new AdempiereException("Não há redução de " + tributo + " vigente em " + format(dateDoc)
						+ " para a cClassTrib " + classTrib.getValue() + ". Aplique as migrações do LBR, que "
						+ "trazem as tabelas oficiais da Receita.");
			reduction = red.getLBR_TaxRedRate();
		}

		BigDecimal baseReduction = classTrib != null ? classTrib.getLBR_TaxBase() : null;
		BigDecimal deferral = classTrib != null ? classTrib.getLBR_TaxDeferralRate() : null;

		return IBSCBSCalculator.calcular(new IBSCBSCalculator.Entrada(base, rate, reduction, baseReduction,
				deferral));
	}

	/**
	 * Alíquota nominal do tributo, conforme o tipo de alíquota da cClassTrib.
	 * Sem cClassTrib, vale a alíquota padrão.
	 */
	private BigDecimal getRate(X_LBR_ClassTrib_IBSCBS classTrib, int LBR_TaxGroup_ID, String tributo) {
		String rateType = classTrib != null ? classTrib.getLBR_IBSCBSRateType() : null;

		if (classTrib != null && classTrib.isLBR_IsZeroRate())
			return BigDecimal.ZERO;

		if (X_LBR_ClassTrib_IBSCBS.LBR_IBSCBSRATETYPE_SemAlíquota.equals(rateType))
			return BigDecimal.ZERO;

		MLBRIBSCBSRate rate;
		if (X_LBR_ClassTrib_IBSCBS.LBR_IBSCBSRATETYPE_Fixa.equals(rateType)
				|| X_LBR_ClassTrib_IBSCBS.LBR_IBSCBSRATETYPE_UniformeSetorial.equals(rateType)) {
			// Igual à calculadora: sem alíquota própria da cClassTrib, é erro (não cai na padrão)
			rate = MLBRIBSCBSRate.getOfClassTrib(ctx, LBR_TaxGroup_ID, classTrib.getLBR_ClassTrib_IBSCBS_ID(),
					dateDoc, trxName);
			if (rate == null)
				throw new AdempiereException("Não há alíquota "
						+ (X_LBR_ClassTrib_IBSCBS.LBR_IBSCBSRATETYPE_Fixa.equals(rateType) ? "fixa" : "uniforme setorial")
						+ " de " + tributo + " para a cClassTrib " + classTrib.getValue() + " em " + format(dateDoc)
						+ ". Cadastre-a na janela Alíquota de IBS/CBS, informando a cClassTrib.");
		} else if (X_LBR_ClassTrib_IBSCBS.LBR_IBSCBSRATETYPE_UniformeNacionalReferência.equals(rateType)) {
			rate = MLBRIBSCBSRate.getReference(ctx, LBR_TaxGroup_ID, dateDoc, trxName);
		} else {
			rate = MLBRIBSCBSRate.getStandard(ctx, LBR_TaxGroup_ID, C_Region_ID, C_City_ID, dateDoc, trxName);
		}

		if (rate == null)
			throw new AdempiereException("Não há alíquota de " + tributo + " vigente em " + format(dateDoc)
					+ ". Aplique as migrações do LBR, que trazem as alíquotas oficiais, ou cadastre a alíquota "
					+ "na janela Alíquota de IBS/CBS.");

		return rate.getLBR_TaxRate();
	}

	/**
	 * Validações que não impedem o cálculo: viram aviso no pedido e na fatura e erro ao
	 * preparar ou completar a Nota Fiscal.
	 *
	 * @param LBR_CST_IBSCBS_ID CST da linha
	 * @param LBR_ClassTrib_IBSCBS_ID cClassTrib da linha
	 * @return mensagens; vazia se não houver problema
	 */
	public List<String> validate(int LBR_CST_IBSCBS_ID, int LBR_ClassTrib_IBSCBS_ID) {
		List<String> msgs = new ArrayList<>();

		if (LBR_CST_IBSCBS_ID <= 0 || LBR_ClassTrib_IBSCBS_ID <= 0) {
			msgs.add("Informe a CST e a cClassTrib de IBS/CBS na Definição de Impostos. Sem a cClassTrib, o "
					+ "IBS/CBS foi calculado com a alíquota padrão, sem redução.");
			return msgs;
		}

		X_LBR_ClassTrib_IBSCBS classTrib = new X_LBR_ClassTrib_IBSCBS(ctx, LBR_ClassTrib_IBSCBS_ID, trxName);
		String code = classTrib.getValue();

		if (classTrib.getLBR_CST_IBSCBS_ID() > 0 && classTrib.getLBR_CST_IBSCBS_ID() != LBR_CST_IBSCBS_ID) {
			X_LBR_CST_IBSCBS cst = new X_LBR_CST_IBSCBS(ctx, LBR_CST_IBSCBS_ID, trxName);
			msgs.add("A cClassTrib " + code + " não pertence à CST " + cst.getValue() + " de IBS/CBS.");
		}

		// Vínculo da cClassTrib com o modelo do documento (só na Nota Fiscal, onde o modelo é conhecido)
		if (nf != null) {
			String ind = modelo == 65 ? classTrib.getLBR_IBSCBSIndNFCe() : classTrib.getLBR_IBSCBSIndNFe();
			if (X_LBR_ClassTrib_IBSCBS.LBR_IBSCBSINDNFE_No.equals(ind))
				msgs.add("A cClassTrib " + code + " não pode ser usada em " + (modelo == 65 ? "NFC-e" : "NF-e") + ".");
		}

		// NCM aplicável à cClassTrib (anexos da LC 214/2025)
		String ncm = getNCM();
		NcmAplicavel.Resultado r = MLBRClassTribNCM.check(ctx, LBR_ClassTrib_IBSCBS_ID, ncm, dateDoc, trxName);
		if (r == NcmAplicavel.Resultado.NCM_INCOMPLETO)
			msgs.add("A cClassTrib " + code + " exige o NCM completo (8 dígitos) do produto.");
		else if (r == NcmAplicavel.Resultado.NAO_VINCULADO)
			msgs.add("O NCM " + ncm + " não consta da lista de NCM aplicáveis à cClassTrib " + code
					+ " (ou é exceção dela). Revise a cClassTrib ou o NCM do produto.");

		return msgs;
	}

	/**
	 * Valida as linhas de IBS/CBS de uma Nota Fiscal (ao preparar ou completar).
	 *
	 * @return mensagens com o número da linha; vazia se não houver problema
	 */
	public static List<String> validate(MLBRNotaFiscal nf) {
		List<String> msgs = new ArrayList<>();
		for (MLBRNotaFiscalLine line : nf.getLines()) {
			MLBRDocLineDetailsNfe details = MLBRDocLineDetailsNfe.getOfPO(line);
			if (details == null)
				continue;

			MLBRDocLineIBSCBS[] ibscbs = MLBRDocLineIBSCBS.getOfDetails(details);
			if (ibscbs.length == 0)
				continue;

			IBSCBSDocLineCalculator calc = new IBSCBSDocLineCalculator(details,
					line.getM_Product_ID() > 0 ? MProduct.get(nf.getCtx(), line.getM_Product_ID()) : null,
					nf.getDateDoc());
			for (String msg : calc.validate(ibscbs[0].getLBR_CST_IBSCBS_ID(), ibscbs[0].getLBR_ClassTrib_IBSCBS_ID()))
				msgs.add("Linha " + line.getLine() + ": " + msg);
		}
		return msgs;
	}

	/**
	 * Local da operação, pelas regras do cabeçalho da classe.
	 */
	MLocation getOperationLocation() {
		if (nf != null) {
			// Entrada própria (ex.: importação) ou nota de terceiro: a organização recebe
			if (!nf.isLBR_IsDocIssuedByOrg() || MLBRNotaFiscal.LBR_NFE_OPERATIONTYPE_In.equals(nf.getLBR_NFE_OperationType()))
				return getOrgLocation(nf.getAD_Org_ID());
			if (nf.getLBR_BP_ShipLocation_ID() > 0)
				return getBPLocation(nf.getLBR_BP_ShipLocation_ID());
			if (INDPRES_PRESENCIAL.equals(nf.getLBR_NFeIndPres()) && isCashTrx(nf.getC_BPartner_ID()))
				return getOrgLocation(nf.getAD_Org_ID());
			return getBPLocation(nf.getC_BPartner_Location_ID());
		}

		if (details.getC_OrderLine_ID() > 0) {
			MOrder order = new MOrderLine(ctx, details.getC_OrderLine_ID(), trxName).getParent();
			return getOrderLocation(order);
		}

		if (details.getC_InvoiceLine_ID() > 0) {
			MInvoice invoice = new MInvoiceLine(ctx, details.getC_InvoiceLine_ID(), trxName).getParent();
			if (!invoice.isSOTrx() || isCashTrx(invoice.getC_BPartner_ID()))
				return getOrgLocation(invoice.getAD_Org_ID());
			if (invoice.getC_Order_ID() > 0)
				return getOrderLocation(new MOrder(ctx, invoice.getC_Order_ID(), trxName));
			return getBPLocation(invoice.getC_BPartner_Location_ID());
		}

		if (details.getM_RMALine_ID() > 0) {
			// Devolução: local da operação original (a remessa ou o recebimento devolvido)
			MRMALine rmaLine = new MRMALine(ctx, details.getM_RMALine_ID(), trxName);
			MInOut inOut = new MInOut(ctx, rmaLine.getParent().getInOut_ID(), trxName);
			if (inOut.get_ID() <= 0 || !inOut.isSOTrx())
				return getOrgLocation(rmaLine.getAD_Org_ID());
			if (inOut.isDropShip() && inOut.getDropShip_Location_ID() > 0)
				return getBPLocation(inOut.getDropShip_Location_ID());
			return getBPLocation(inOut.getC_BPartner_Location_ID());
		}

		return null;
	}

	private MLocation getOrderLocation(MOrder order) {
		if (order.isDropShip() && order.getDropShip_Location_ID() > 0)
			return getBPLocation(order.getDropShip_Location_ID());
		if (!order.isSOTrx() || isCashTrx(order.getC_BPartner_ID()))
			return getOrgLocation(order.getAD_Org_ID());
		// Endereço de entrega (o de cobrança é o Bill_Location_ID)
		return getBPLocation(order.getC_BPartner_Location_ID());
	}

	private MLocation getBPLocation(int C_BPartner_Location_ID) {
		if (C_BPartner_Location_ID <= 0)
			return null;
		return new MBPartnerLocation(ctx, C_BPartner_Location_ID, trxName).getLocation(false);
	}

	/**
	 * Endereço da organização; sem ele, o primeiro endereço do parceiro vinculado
	 * (o mesmo critério do {@link MLBRTax#getTaxes}).
	 */
	private MLocation getOrgLocation(int AD_Org_ID) {
		MOrgInfo oi = MOrgInfo.get(ctx, AD_Org_ID, trxName);
		if (oi != null && oi.getC_Location_ID() > 0)
			return MLocation.get(ctx, oi.getC_Location_ID(), trxName);

		int linkedBP_ID = new MOrg(ctx, AD_Org_ID, trxName).getLinkedC_BPartner_ID(trxName);
		if (linkedBP_ID > 0) {
			MBPartnerLocation[] locs = new MBPartner(ctx, linkedBP_ID, trxName).getLocations(false);
			if (locs != null && locs.length > 0)
				return locs[0].getLocation(false);
		}
		return null;
	}

	/**
	 * Consumidor não identificado: o parceiro de caixa da empresa (como no NFeUtil)
	 */
	private boolean isCashTrx(int C_BPartner_ID) {
		MClientInfo ci = MClientInfo.get(ctx, details.getAD_Client_ID());
		return C_BPartner_ID > 0 && ci != null && ci.getC_BPartnerCashTrx_ID() == C_BPartner_ID;
	}

	private String getNCM() {
		int LBR_NCM_ID = details.getLBR_NCM_ID();
		if (LBR_NCM_ID <= 0 && product != null)
			LBR_NCM_ID = POWrapper.create(product, I_W_M_Product.class).getLBR_NCM_ID();
		if (LBR_NCM_ID <= 0)
			return null;
		String value = new MLBRNCM(ctx, LBR_NCM_ID, trxName).getValue();
		return value == null ? null : value.replaceAll("\\D", "");
	}

	private BaseCalculoUnificada.Natureza getNatureza() {
		if (product != null && MProduct.PRODUCTTYPE_Service.equals(product.getProductType()))
			return BaseCalculoUnificada.Natureza.SERVICO;
		return BaseCalculoUnificada.Natureza.BEM;
	}

	private int getYear() {
		return dateDoc.toLocalDateTime().getYear();
	}

	private X_LBR_CST_IBSCBS getCST(MLBRTaxLine tl) {
		int id = tl.get_ValueAsInt(I_LBR_DocLine_IBSCBS.COLUMNNAME_LBR_CST_IBSCBS_ID);
		return id > 0 ? new X_LBR_CST_IBSCBS(ctx, id, trxName) : null;
	}

	private X_LBR_ClassTrib_IBSCBS getClassTrib(MLBRTaxLine tl) {
		int id = tl.get_ValueAsInt(I_LBR_DocLine_IBSCBS.COLUMNNAME_LBR_ClassTrib_IBSCBS_ID);
		return id > 0 ? new X_LBR_ClassTrib_IBSCBS(ctx, id, trxName) : null;
	}

	private static boolean isValid(X_LBR_ClassTrib_IBSCBS classTrib, Timestamp date) {
		Timestamp day = TimeUtil.getDay(date);
		if (classTrib.getDateFrom() != null && day.before(TimeUtil.getDay(classTrib.getDateFrom())))
			return false;
		return classTrib.getDateTo() == null || !day.after(TimeUtil.getDay(classTrib.getDateTo()));
	}

	private static String getTaxGroupName(int LBR_TaxGroup_ID) {
		if (LBR_TaxGroup_ID == MLBRTax.getTaxGroupID(MLBRTax.TAX_GROUP_IBS_UF_NAME))
			return "IBS da UF";
		if (LBR_TaxGroup_ID == MLBRTax.getTaxGroupID(MLBRTax.TAX_GROUP_IBS_MUN_NAME))
			return "IBS do município";
		return "CBS";
	}

	private static String format(Timestamp date) {
		return new SimpleDateFormat("dd/MM/yyyy").format(date);
	}

	private static BigDecimal abs(BigDecimal value) {
		return value == null ? BigDecimal.ZERO : value.abs();
	}
}
