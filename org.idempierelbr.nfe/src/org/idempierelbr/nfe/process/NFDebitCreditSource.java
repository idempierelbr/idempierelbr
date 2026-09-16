package org.idempierelbr.nfe.process;

import java.math.BigDecimal;
import java.util.Properties;

import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MCountry;
import org.compiere.model.MInOut;
import org.compiere.model.MInvoice;
import org.compiere.model.MLocation;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MRMA;
import org.compiere.model.PO;
import org.compiere.model.X_C_City;
import org.idempierelbr.base.model.MLBRNotaFiscal;
import org.idempierelbr.base.util.BPartnerUtil;

/**
 * Origem das linhas de uma Nota de Débito/Crédito da Reforma Tributária.
 *
 * <p>Os tipos que referenciam uma NF-e anterior (débito 03/04, crédito 01/03/04)
 * nascem de uma NF autorizada. Os tipos originários — 06-Pagamento antecipado à
 * frente — não têm NF anterior: nascem do próprio documento do ERP (pedido,
 * fatura, RMA ou remessa), cujas linhas já carregam os impostos calculados em
 * {@code LBR_DocLine_Details}.
 *
 * <p>Esta classe normaliza as duas origens para o gerador: as linhas de todos
 * esses documentos expõem os mesmos campos (Line, M_Product_ID, C_Charge_ID,
 * C_UOM_ID, C_Tax_ID, LineNetAmt), então são lidas genericamente pelo PO. Os
 * campos fiscais de cabeçalho vêm prontos quando a origem é uma NF e são
 * derivados quando é um documento do ERP.
 *
 * @author Alan Lescano
 */
public class NFDebitCreditSource {

	private final PO m_source;
	private final MLBRNotaFiscal m_nf;

	private NFDebitCreditSource(PO source) {
		m_source = source;
		m_nf = source instanceof MLBRNotaFiscal ? (MLBRNotaFiscal) source : null;
	}

	/**
	 * @param source NF-e, pedido, fatura, RMA ou remessa
	 * @throws Exception se o documento não puder originar uma nota de débito/crédito
	 */
	public static NFDebitCreditSource of(PO source) throws Exception {
		if (source == null || source.get_ID() <= 0)
			throw new Exception("Documento de origem não encontrado");

		if (!(source instanceof MLBRNotaFiscal) && !(source instanceof MOrder) && !(source instanceof MInvoice)
				&& !(source instanceof MRMA) && !(source instanceof MInOut))
			throw new Exception("A Nota de Débito/Crédito só pode ser gerada a partir de uma NF, pedido, "
					+ "fatura, RMA ou remessa (informado: " + source.get_TableName() + ")");

		return new NFDebitCreditSource(source);
	}

	/** @return true quando a origem é uma NF-e (modo réplica) */
	public boolean isNotaFiscal() {
		return m_nf != null;
	}

	public PO getPO() {
		return m_source;
	}

	public int getAD_Org_ID() {
		return m_source.getAD_Org_ID();
	}

	public int getC_BPartner_ID() {
		return m_source.get_ValueAsInt("C_BPartner_ID");
	}

	/**
	 * Endereço do destinatário. Em pedido e fatura, o de cobrança tem precedência —
	 * é o endereço que a NF-e da operação usa (ver CreateNotaFiscal).
	 */
	public int getC_BPartner_Location_ID() {
		int Bill_Location_ID = m_source.get_ValueAsInt("Bill_Location_ID");

		if (Bill_Location_ID > 0)
			return Bill_Location_ID;

		int C_BPartner_Location_ID = m_source.get_ValueAsInt("C_BPartner_Location_ID");

		if (C_BPartner_Location_ID > 0)
			return C_BPartner_Location_ID;

		// RMA não tem endereço próprio: usa o de cobrança do parceiro, senão o primeiro
		MBPartnerLocation[] locs = MBPartnerLocation.getForBPartner(m_source.getCtx(), getC_BPartner_ID(),
				m_source.get_TrxName());

		for (MBPartnerLocation loc : locs) {
			if (loc.isBillTo())
				return loc.get_ID();
		}

		return locs.length > 0 ? locs[0].get_ID() : 0;
	}

	/** Tipo de Documento da origem, usado como base quando nenhum for informado */
	public int getC_DocType_ID() {
		int C_DocType_ID = m_source.get_ValueAsInt("C_DocType_ID");

		if (C_DocType_ID > 0)
			return C_DocType_ID;

		return m_source.get_ValueAsInt("C_DocTypeTarget_ID");
	}

	/** @return a chave de acesso quando a origem é uma NF-e autorizada, senão null */
	public String getAccessKey() {
		return m_nf != null ? m_nf.getLBR_NFeID() : null;
	}

	public String getLBR_TransactionType() {
		String transactionType = m_source.get_ValueAsString("LBR_TransactionType");

		return transactionType == null || transactionType.trim().isEmpty() ? null : transactionType;
	}

	public int getC_Order_ID() {
		return m_source instanceof MOrder ? m_source.get_ID() : m_source.get_ValueAsInt("C_Order_ID");
	}

	public int getC_Invoice_ID() {
		return m_source instanceof MInvoice ? m_source.get_ID() : m_source.get_ValueAsInt("C_Invoice_ID");
	}

	public int getM_RMA_ID() {
		return m_source instanceof MRMA ? m_source.get_ID() : m_source.get_ValueAsInt("M_RMA_ID");
	}

	/** Linhas da origem, na ordem do documento */
	public PO[] getLines() throws Exception {
		PO[] lines;

		if (m_nf != null)
			lines = m_nf.getLines();
		else if (m_source instanceof MOrder)
			lines = ((MOrder) m_source).getLines();
		else if (m_source instanceof MInvoice)
			lines = ((MInvoice) m_source).getLines();
		else if (m_source instanceof MRMA)
			lines = ((MRMA) m_source).getLines(false);
		else
			lines = ((MInOut) m_source).getLines();

		if (lines == null || lines.length == 0)
			throw new Exception("O documento de origem não possui linhas");

		return lines;
	}

	/**
	 * Valor da linha, base do rateio. A linha de remessa não tem valor próprio
	 * (M_InOutLine não possui LineNetAmt): cai no preço da linha de pedido que a
	 * originou, como faz a NF da operação.
	 */
	public static BigDecimal getLineNetAmt(PO line) {
		Object value = line.get_Value("LineNetAmt");

		if (value instanceof BigDecimal && ((BigDecimal) value).signum() != 0)
			return (BigDecimal) value;

		MOrderLine orderLine = getOrderLine(line);

		if (orderLine != null) {
			BigDecimal price = orderLine.getPriceEntered() != null && orderLine.getPriceEntered().signum() != 0
					? orderLine.getPriceEntered()
					: orderLine.getPriceActual();

			if (price != null && price.signum() != 0)
				return getQty(line).multiply(price);
		}

		return value instanceof BigDecimal ? (BigDecimal) value : BigDecimal.ZERO;
	}

	/** Quantidade da linha: QtyEntered nos documentos que a têm, senão Qty */
	public static BigDecimal getQty(PO line) {
		Object value = line.get_Value("QtyEntered");

		if (!(value instanceof BigDecimal) || ((BigDecimal) value).signum() == 0)
			value = line.get_Value("Qty");

		return value instanceof BigDecimal ? (BigDecimal) value : BigDecimal.ZERO;
	}

	/**
	 * Imposto da linha. A linha de remessa não o tem: vem da linha de pedido, mesmo
	 * critério da NF da operação.
	 */
	public static int getC_Tax_ID(PO line) {
		int C_Tax_ID = line.get_ValueAsInt("C_Tax_ID");

		if (C_Tax_ID > 0)
			return C_Tax_ID;

		MOrderLine orderLine = getOrderLine(line);

		return orderLine == null ? 0 : orderLine.getC_Tax_ID();
	}

	/** @return a linha de pedido que originou esta linha, ou null */
	private static MOrderLine getOrderLine(PO line) {
		int C_OrderLine_ID = line.get_ValueAsInt("C_OrderLine_ID");

		if (C_OrderLine_ID <= 0)
			return null;

		return new MOrderLine(line.getCtx(), C_OrderLine_ID, line.get_TrxName());
	}

	// ===== Campos fiscais de cabeçalho =====
	// Prontos quando a origem é uma NF; derivados quando é um documento do ERP.

	/**
	 * Tipo de destino da operação. Vindo de um documento do ERP, é calculado
	 * comparando a localização da organização com a do destinatário — mesmo critério
	 * de CreateNotaFiscal.getDestinationType.
	 */
	public String getLBR_NFE_DestinationType() {
		if (m_nf != null)
			return m_nf.getLBR_NFE_DestinationType();

		Properties ctx = m_source.getCtx();
		String trxName = m_source.get_TrxName();

		MLocation orgLoc = getOrgLocation();
		MBPartnerLocation bpartnerLoc = new MBPartnerLocation(ctx, getC_BPartner_Location_ID(), trxName);
		MLocation bpLoc = new MLocation(ctx, bpartnerLoc.getC_Location_ID(), trxName);

		if (orgLoc == null || bpLoc.getC_Location_ID() <= 0)
			return MLBRNotaFiscal.LBR_NFE_DESTINATIONTYPE_OperacaoInterna;

		MCountry orgCountry = orgLoc.getCountry();
		MCountry bpCountry = bpLoc.getCountry();

		if (orgCountry != null && bpCountry != null && orgCountry.get_ID() != bpCountry.get_ID())
			return MLBRNotaFiscal.LBR_NFE_DESTINATIONTYPE_OperacaoComExterior;

		if (orgLoc.getC_Region_ID() != bpLoc.getC_Region_ID())
			return MLBRNotaFiscal.LBR_NFE_DESTINATIONTYPE_OperacaoInterestadual;

		return MLBRNotaFiscal.LBR_NFE_DESTINATIONTYPE_OperacaoInterna;
	}

	/**
	 * Indicadores de consumidor final, presença e intermediador. Só a NF os tem
	 * prontos; vindo de um documento, o chamador completa com o Tipo de Documento
	 * da nota gerada.
	 */
	public String getLBR_NFeIndFinal() {
		return m_nf != null ? m_nf.getLBR_NFeIndFinal() : null;
	}

	public String getLBR_NFeIndPres() {
		return m_nf != null ? m_nf.getLBR_NFeIndPres() : null;
	}

	public String getLBR_NFeIndIntermed() {
		return m_nf != null ? m_nf.getLBR_NFeIndIntermed() : null;
	}

	/** Região da emitente (a NF traz a sua; do documento, vem da organização) */
	public int getC_Region_ID() {
		if (m_nf != null)
			return m_nf.getC_Region_ID();

		MLocation orgLoc = getOrgLocation();

		return orgLoc == null ? 0 : orgLoc.getC_Region_ID();
	}

	/** Município da emitente (a NF traz o seu; do documento, vem da organização) */
	public int getC_City_ID() {
		if (m_nf != null)
			return m_nf.getC_City_ID();

		MLocation orgLoc = getOrgLocation();

		if (orgLoc == null)
			return 0;

		X_C_City orgCity = BPartnerUtil.getX_C_City(m_source.getCtx(), orgLoc, m_source.get_TrxName());

		return orgCity == null ? 0 : orgCity.get_ID();
	}

	/** @return o endereço da organização, ou null quando não estiver cadastrado */
	private MLocation getOrgLocation() {
		MOrgInfo orgInfo = MOrgInfo.get(m_source.getCtx(), getAD_Org_ID(), m_source.get_TrxName());

		if (orgInfo == null || orgInfo.getC_Location_ID() <= 0)
			return null;

		return new MLocation(m_source.getCtx(), orgInfo.getC_Location_ID(), m_source.get_TrxName());
	}

	@Override
	public String toString() {
		return m_source.get_TableName() + "[" + m_source.get_ID() + "]";
	}
}
