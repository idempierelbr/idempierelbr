package org.idempierelbr.tax.model;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import org.adempiere.exceptions.DBException;
import org.adempiere.model.POWrapper;
import org.compiere.model.I_C_BPartner_Location;
import org.compiere.model.MBPartner;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MProduct;
import org.compiere.model.MRMA;
import org.compiere.model.MRMALine;
import org.compiere.model.MRegion;
import org.compiere.model.MSysConfig;
import org.compiere.model.MTax;
import org.compiere.model.PO;
import org.compiere.model.Query;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.idempierelbr.core.util.TextUtil;
import org.idempierelbr.core.wrapper.I_W_C_BPartner;
import org.idempierelbr.tax.wrapper.I_W_C_Tax;
import org.idempierelbr.tax.wrapper.I_W_M_Product;

public class MLBRDocLineDetails extends X_LBR_DocLine_Details
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 5436412104911684345L;
	private static final CLogger log = CLogger.getCLogger(MLBRDocLineDetails.class);
	private MLBRDocLineDetails m_DetailsFrom = null;

	/**
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRDocLineDetails (Properties ctx, int LBR_DocLine_Details_ID, String trxName)
	{
		super (ctx, LBR_DocLine_Details_ID, trxName);
	}

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRDocLineDetails (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}
	
	/**
	 * 	Create new Doc Line Details record from a given PO.
	 * 	@param po line
	 *	@return true if it could be created successfully
	 */
	public static MLBRDocLineDetails createFromPO (PO po)
	{	
		MLBRDocLineDetails details;
		details = getOfPO(po);
		
		if (details != null)
			return details;		
		
		String columnName = po.get_TableName() + "_ID";
		
		details = new MLBRDocLineDetails(po.getCtx(), 0, po.get_TrxName());		
		details.setAD_Org_ID(po.getAD_Org_ID());
		details.set_ValueOfColumn(columnName, po.get_ID());
		
		/*try {
			details.saveEx();
		} catch (AdempiereException e) {
			log.severe("Couldn't create LBR_DocLine_Details from PO " + po);
			e.printStackTrace();
			return false;
		}*/
		
		return details;
	}
	
	/**
	 * 	Get Brazilian Doc Line Details of a given PO.
	 * 	@param po persistent object
	 *	@return details
	 */
	public static MLBRDocLineDetails getOfPO (PO po)
	{	
		String where = po.get_TableName() + "_ID=?";
		MLBRDocLineDetails details = null;
		
		try {
			details = new Query (po.getCtx(), MLBRDocLineDetails.Table_Name, where, po.get_TrxName())
				.setParameters(new Object[]{po.get_ID()})
				.first();
		} catch (DBException e) {
			log.severe("Couldn't get LBR_DocLine_Details of PO " + po);
			e.printStackTrace();
		}
		
		return details != null ? details : null;
	}
	
	/**
	 * 	Populate the Doc Line Details with values from PO.
	 * 	@param po persistent object
	 */
	public void populateFromPO(PO po) {
		if (po instanceof MOrderLine ||	po instanceof MInvoiceLine || po instanceof MRMALine) {
			// Determine if discount is printed
			boolean isDiscountPrinted = isDiscountPrinted(po);
						
			// Common data from C_OrderLine, C_InvoiceLine and M_RMALine
			setAD_Org_ID(po.getAD_Org_ID());
			MProduct product = new MProduct(po.getCtx(), po.get_ValueAsInt("M_Product_ID"), po.get_TrxName());
			
			if (product.get_ID() > 0) {
				I_W_M_Product pW = POWrapper.create(product, I_W_M_Product.class);
				setProductValue(product.getValue());
				setProductName(product.getName());
				setLBR_NCM_ID(pW.getLBR_NCM_ID());
				setLBR_UPCTax(product.getUPC());
				
				if (product.getProductType().equals(MProduct.PRODUCTTYPE_Service))
					setLBR_TaxationType(MLBRDocLineDetails.LBR_TAXATIONTYPE_ISSQN);
				else
					setLBR_TaxationType(MLBRDocLineDetails.LBR_TAXATIONTYPE_ICMS);
			}  else {
				setProductValue(null);
				setProductName(null);
				setLBR_NCM_ID(0);
				setLBR_UPCTax(null);
				setLBR_TaxationType(null);
			}
			
			// Common data from C_OrderLine and C_InvoiceLine
			if (po instanceof MOrderLine ||	po instanceof MInvoiceLine) {
				setLBR_QtyTax((BigDecimal)po.get_Value("QtyEntered"));
				setLBR_UOMTax_ID(po.get_ValueAsInt("C_UOM_ID"));
				setLBR_PriceTax((BigDecimal)po.get_Value("PriceEntered"));
				
				// Discount
				BigDecimal qty = Env.ZERO;
				
				if (po instanceof MOrderLine)
					qty = (BigDecimal)po.get_Value("QtyOrdered");
				else if (po instanceof MInvoiceLine)
					qty = (BigDecimal)po.get_Value("QtyInvoiced");
				
				if (isDiscountPrinted) {
					setDiscountAmt(
							calculateDiscountAmt(
									qty,
									(BigDecimal)po.get_Value("PriceList"),
									(BigDecimal)po.get_Value("LineNetAmt")
							)
					);
				} else {
					setDiscountAmt(Env.ZERO);
				}
			}
			
			// Data from C_OrderLine
			if (po instanceof MOrderLine) {
				MOrderLine line = (MOrderLine) po;
				setPOReference(line.getParent().getPOReference());
			}
			
			// Data from C_InvoiceLine
			if (po instanceof MInvoiceLine) {
				MInvoiceLine line = (MInvoiceLine) po;
				setPOReference(line.getParent().getPOReference());
			}
			
			// Data from M_RMALine
			if (po instanceof MRMALine) {
				setLBR_QtyTax((BigDecimal)po.get_Value("Qty"));
				setLBR_UOMTax_ID(product.get_ValueAsInt("C_UOM_ID"));
				setLBR_PriceTax((BigDecimal)po.get_Value("Amt"));
			}
			
			// Calculate gross amount
			setLBR_GrossAmt(((BigDecimal)po.get_Value("LineNetAmt")).add(getDiscountAmt()));
		}  else if (po instanceof MOrder || po instanceof MInvoice || po instanceof MRMA) { // Data from C_Order, C_Invoice and M_RMA
			// Common data from C_Order and C_Invoice
			if (po instanceof MOrder ||	po instanceof MInvoice) {
				setPOReference(po.get_ValueAsString("POReference"));
				set_Value("LBR_POReferenceLine", null);
			}
		}
	}

	/**
	 * 	Get Parent
	 *	@return parent
	 */
	public PO getParent() {
		PO po = null;
		
		if (getC_OrderLine_ID() > 0)
			po = new MOrderLine(getCtx(), getC_OrderLine_ID(), get_TrxName());
		else if (getC_InvoiceLine_ID() > 0)
			po = new MInvoiceLine(getCtx(), getC_InvoiceLine_ID(), get_TrxName());
		else if (getM_RMALine_ID() > 0)
			po = new MRMALine(getCtx(), getM_RMALine_ID(), get_TrxName());
		
		return po;
	}
	
	/**
	 * 	Create tax transaction (LBR_Tax_ID). If one exists, it is overwritten by a new one.
	 */
	public void createTaxTransaction() {
		PO linePO = getParent();
		
		if (linePO != null && (linePO instanceof MOrderLine || linePO instanceof MInvoiceLine)) {			
			if (linePO.get_ValueAsInt("M_Product_ID") <= 0) {
				set_Value("LBR_Tax_ID", null);
				return;
			}

			Object[] taxation = null;
			
			if (linePO instanceof MOrderLine) {
				taxation = MLBRTax.getTaxes(getCtx(), (MOrderLine)linePO, get_TrxName());
			} else if (linePO instanceof MInvoiceLine) {
				taxation = MLBRTax.getTaxes(getCtx(), (MInvoiceLine)linePO, get_TrxName());
			}
			
			if (taxation == null) {
				set_Value("LBR_Tax_ID", null);
				return;
			}
			
			/**
			 * Content for taxation array slots:
			 * 	0 = Taxes
			 * 	1 = Legal Message
			 * 	2 = CFOP
			 * 	3 = CST
			 */
			@SuppressWarnings("unchecked")
			Map<Integer, MLBRTaxLine> taxes = (Map<Integer, MLBRTaxLine>) taxation[0];
			
			if (taxes.size() > 0)
			{
				MLBRTax tax = new MLBRTax (getCtx(), 0, get_TrxName());
				tax.setAD_Org_ID(getAD_Org_ID());
				tax.saveEx();

				for (Integer key : taxes.keySet()) {
					MLBRTaxLine tl = taxes.get(key);
					tl.setLBR_Tax_ID(tax.getLBR_Tax_ID());
					
					// Adjust IVA-ST
					if (tl.getLBR_TaxName_ID() == 1000012)
						tl.setLBR_TaxRate(getAdjustedIva(tl.getLBR_TaxRate()));
					tl.saveEx();
				}

				tax.setDescription();
				tax.saveEx();
				setLBR_Tax_ID(tax.get_ID());
			} else {
				set_Value("LBR_Tax_ID", null);
			}
			
			//if (((Integer) taxation[1]) > 0)
			//	mTab.setValue("LBR_LegalMessage_ID", ((Integer) taxation[1]));
			
			if (((Integer) taxation[2]) > 0) {
				setLBR_CFOP_ID((Integer) taxation[2]);
			} else {
				set_Value("LBR_CFOP_ID", null);
			}
			
			//if (((String) taxation[3]) != null && ((String) taxation[3]).length() > 0)
			//	mTab.setValue("lbr_TaxStatus", p.getlbr_ProductSource() + ((String) taxation[3]));
		}

		return;
	}
	
	/**
	 * 	Calculate the discount amount
	 * 	@param qty quantity of a product (base UOM)
	 * 	@param priceList
	 * 	@param lineNetAmt
	 * 	@return Calculated amount
	 */
	private BigDecimal calculateDiscountAmt(BigDecimal qty, BigDecimal priceList, BigDecimal lineNetAmt) {
		BigDecimal priceListTotal = priceList.multiply(qty).setScale(2, RoundingMode.HALF_UP);
		BigDecimal discount = priceListTotal.subtract(lineNetAmt);
		
		if (discount.signum() == 1)
			return discount.setScale(2, RoundingMode.HALF_UP);
		else
			return Env.ZERO;
	}
	
	/**
	 * 	Determine if PO prints discount
	 * 	@param po persistent object (doc line)
	 * 	@return true if is printed
	 */
	private boolean isDiscountPrinted(PO po) {
		if (po instanceof MOrderLine) {
			MOrder order = ((MOrderLine)po).getParent();
			return order.isDiscountPrinted();
		} else if (po instanceof MInvoiceLine) {
			MInvoice invoice = ((MInvoiceLine)po).getParent();
			return invoice.isDiscountPrinted();
		}
		
		return false;
	}
	
	/**
	 * 	Delete all children (taxes) of Doc Line Details
	 */
	private void deleteChildren() {
		PO[] poArray = MLBRDocLineICMS.getOfDetails(this);

		for (PO po : poArray) {
			po.deleteEx(true);
		}
		
		poArray = MLBRDocLineIPI.getOfDetails(this);

		for (PO po : poArray) {
			po.deleteEx(true);
		}
		
		poArray = MLBRDocLinePIS.getOfDetails(this);

		for (PO po : poArray) {
			po.deleteEx(true);
		}
		
		poArray = MLBRDocLineCOFINS.getOfDetails(this);
		
		for (PO po : poArray) {
			po.deleteEx(true);
		}
		
		poArray = MLBRDocLineImportTax.getOfDetails(this);
		
		for (PO po : poArray) {
			po.deleteEx(true);
		}
		
		poArray = MLBRDocLineISSQN.getOfDetails(this);
		
		for (PO po : poArray) {
			po.deleteEx(true);
		}
	}
	
	protected boolean beforeDelete() {
		deleteChildren();
		return true;		
	}
	
	protected boolean afterSave(boolean newRecord, boolean success) {
		if (newRecord == false && getLBR_Tax_ID() == 0) {
			deleteChildren();
			return true;
		}
		
		if (m_DetailsFrom != null) {
			copyChildren(m_DetailsFrom);			
			m_DetailsFrom = null;
			return true;
		}			
		
		// Calculate (or recalculate) taxes
		if (getLBR_Tax_ID() > 0 &&
				(is_ValueChanged("LBR_Tax_ID") || is_ValueChanged("LBR_GrossAmt") ||
						is_ValueChanged("DiscountAmt"))) {

			deleteChildren();
			
			// Array para somar os impostos de todas as linhas
			Map<Integer, Object[]> taxes = new HashMap<Integer, Object[]>();
			MLBRTax tax = new MLBRTax (getCtx(), getLBR_Tax_ID(), get_TrxName());
						
			PO po = getParent();
			
			if (po instanceof MOrderLine) {
				MOrderLine orderLine = (MOrderLine) getParent();
				MOrder order = orderLine.getParent();
				calculateTaxes(order, orderLine);
				processTax(taxes, tax, orderLine.getC_Tax_ID());
				createChildren(taxes, tax, orderLine.getC_Tax_ID());
			} else if (po instanceof MInvoiceLine) {
				MInvoiceLine invoiceLine = (MInvoiceLine) getParent();
				MInvoice invoice = invoiceLine.getParent();
				calculateTaxes(invoice, invoiceLine);
				processTax(taxes, tax, invoiceLine.getC_Tax_ID());
				createChildren(taxes, tax, invoiceLine.getC_Tax_ID());
			}
		}
		
		return true;
	}
	
	/**
	 * 	Create all children (taxes) of Doc Line Details
	 */
	private void createChildren(Map<Integer, Object[]> taxes,
			MLBRTax tax, int C_Tax_ID) {
		
		PO po = getParent();
		MProduct product = null;
		
		if (po instanceof MOrderLine) {
			MOrderLine orderLine = (MOrderLine) po;
			product = orderLine.getProduct();
		} else if (po instanceof MInvoiceLine) {
			MInvoiceLine invoiceLine = (MInvoiceLine) po;
			product = invoiceLine.getProduct();
		}
		
		for (MLBRTaxLine tl : tax.getLines()) {
			if (tl.getLBR_TaxAmt() == null || tl.getLBR_TaxAmt().compareTo(Env.ZERO) == 0 || !tl.isLBR_PostTax())
				continue;
			
			Integer key = tl.getChild_Tax_ID(C_Tax_ID);
			
			if (key <= 0)
				continue;
			else if (taxes.containsKey(key)) {
				MTax taxChild = new MTax(getCtx(), key, get_TrxName());
				I_W_C_Tax taxChildW = POWrapper.create(taxChild, I_W_C_Tax.class);
				
				// Try to get Tax Status through Name field
				X_LBR_TaxStatus taxStatus = new X_LBR_TaxStatus(getCtx(), tl.getLBR_TaxStatus_ID(), get_TrxName());

				// Some taxes requires Tax Status
				if ((taxChildW.getLBR_TaxGroup_ID() == MLBRTax.TAX_GROUP_ICMS ||
						taxChildW.getLBR_TaxGroup_ID() == MLBRTax.TAX_GROUP_IPI ||
						taxChildW.getLBR_TaxGroup_ID() == MLBRTax.TAX_GROUP_PIS ||
						taxChildW.getLBR_TaxGroup_ID() == MLBRTax.TAX_GROUP_COFINS) &&					
						(taxStatus.getName() == null || taxStatus.getName().isEmpty())) {
					log.warning("Couldn't find a valid Tax Status for " + tl + ". An entry won't be created.");
					continue;
				}
				
				// Try to get Tax Base Type through Name field
				X_LBR_TaxBaseType taxBaseType = new X_LBR_TaxBaseType(getCtx(), tl.getLBR_TaxBaseType_ID(), get_TrxName());
				Integer taxBaseTypeCode = null;
				
				try {
					taxBaseTypeCode = new Integer(taxBaseType.getName());
				} catch (Exception e) {
					log.fine("Couldn't get Tax Base Type for " + tl);
				}
				
				if (taxBaseTypeCode == null ||
						(taxBaseTypeCode != null && !(taxBaseTypeCode == MLBRTax.TYPE_RATE_OR_IVA ||
							taxBaseTypeCode == MLBRTax.TYPE_TARIFF ||
							taxBaseTypeCode == MLBRTax.TYPE_LIST_MAX ||
							taxBaseTypeCode == MLBRTax.TYPE_AMOUNT ||
							taxBaseTypeCode == MLBRTax.TYPE_LIST_POSITIVE ||
							taxBaseTypeCode == MLBRTax.TYPE_LIST_NEUTRAL ||
							taxBaseTypeCode == MLBRTax.TYPE_LIST_NEGATIVE))) {
					taxBaseTypeCode = MLBRTax.TYPE_RATE_OR_IVA;
					log.info("A default Tax Base Type will be used for " + tl);
				}
				
				// ICMS or ICMS-ST
				if (taxChildW.getLBR_TaxGroup_ID() == MLBRTax.TAX_GROUP_ICMS ||
						taxChildW.getLBR_TaxGroup_ID() == MLBRTax.TAX_GROUP_ICMSST) {
					
					createICMS(taxStatus.getName(), taxBaseTypeCode, tl, product, po, taxChildW);
				} 
				// IPI
				else if (taxChildW.getLBR_TaxGroup_ID() == MLBRTax.TAX_GROUP_IPI) {
					createIPI(taxStatus.getName(), tl);
				}
				// PIS
				else if (taxChildW.getLBR_TaxGroup_ID() == MLBRTax.TAX_GROUP_PIS) {
					createPIS(taxStatus.getName(), tl);
				}
				// COFINS
				else if (taxChildW.getLBR_TaxGroup_ID() == MLBRTax.TAX_GROUP_COFINS) {
					createCOFINS(taxStatus.getName(), tl);
				}
				// Import Tax
				else if (taxChildW.getLBR_TaxGroup_ID() == MLBRTax.TAX_GROUP_II) {
					createImportTax(tl);
				}
			}
		}
	}
	
	/**
	 * 	Create ICMS (child of Doc Line Details)
	 */
	private void createICMS(String taxStatus, Integer taxBaseTypeCode, MLBRTaxLine tl, MProduct product,
			PO po, I_W_C_Tax taxChildW) {
		String productSource = product.get_ValueAsString("LBR_ProductSource");
		
		if (productSource != null && productSource.isEmpty())
			productSource = null;	
		
		MLBRDocLineICMS[] icmsArray = MLBRDocLineICMS.getOfDetails(this);
		MLBRDocLineICMS icms = new MLBRDocLineICMS(getCtx(), 0, get_TrxName());
		
		if (icmsArray.length > 0) {
			icms = icmsArray[0];
		} else {
			icms.setAD_Org_ID(getAD_Org_ID());
			icms.setLBR_DocLine_Details_ID(get_ID());
			icms.setIsTaxIncluded(tl.isTaxIncluded());
		
			String icmsRegime = MSysConfig.getValue("LBR_ICMS_REGIME", "TN", getAD_Client_ID(), getAD_Org_ID());
			icms.setLBR_ICMSRegime(icmsRegime);
		
			if (icmsRegime.equals("TN"))
				icms.setLBR_ICMS_TaxStatusTN(taxStatus);
			else
				icms.setLBR_ICMS_TaxStatusSN(taxStatus);
			
			icms.setLBR_ProductSource(productSource);
		}
		
		// ICMS-ST don't need a Tax Status. We get it from ICMS
		if (taxStatus == null || (taxStatus != null && taxStatus.isEmpty()))
			taxStatus = icms.getLBR_ICMS_TaxStatusTN();
		
		if (taxChildW.getLBR_TaxGroup_ID() == MLBRTax.TAX_GROUP_ICMS && TextUtil.match (taxStatus,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_00_TributadaIntegralmente,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_10_TributadaEComCobrancaDoICMSPorSubTributaria,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_20_ComReducaoDeBaseDeCalculo,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_51_Diferimento,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_70_ComRedDeBaseDeCalcECobrDoICMSPorSubTrib,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_90_Outras)) {

			icms.setLBR_ICMS_TaxBaseType(new Integer(taxBaseTypeCode - 100).toString());
			icms.setLBR_TaxBaseAmt(tl.getLBR_TaxBaseAmt());
			icms.setLBR_TaxRate(tl.getLBR_TaxRate());
			icms.setLBR_TaxAmt(tl.getLBR_TaxAmt());
		}
		
		if (TextUtil.match (taxStatus,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_40_Isenta,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_41_Nao_Tributada,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_50_Suspensao) && tl.getLBR_TaxAmt().signum() > 0) {

			icms.setLBR_TaxAmt(tl.getLBR_TaxAmt());
			
			// Tax Relief Type. If BPartner has SUFRAMA, set it, otherwise set as Other
			int C_BPartner_ID = 0;
			
			if (po instanceof MOrderLine) {
				MOrderLine orderLine = (MOrderLine) po;
				C_BPartner_ID = orderLine.getParent().getC_BPartner_ID();
			} else if (po instanceof MInvoiceLine) {
				MInvoiceLine invoiceLine = (MInvoiceLine) po;
				C_BPartner_ID = invoiceLine.getParent().getC_BPartner_ID();
			}
			
			MBPartner bp = new MBPartner(getCtx(), C_BPartner_ID, get_TrxName());
			I_W_C_BPartner bpW = POWrapper.create(bp, I_W_C_BPartner.class);
			
			// TODO: Criar condições para preencher outros valores
			if (bpW.getLBR_Suframa() != null && !bpW.getLBR_Suframa().isEmpty())
				icms.setLBR_ICMS_TaxReliefType(MLBRDocLineICMS.LBR_ICMS_TAXRELIEFTYPE_SUFRAMA);
			else
				icms.setLBR_ICMS_TaxReliefType(MLBRDocLineICMS.LBR_ICMS_TAXRELIEFTYPE_Other);
		}
		
		// Tax Base
		if (TextUtil.match (taxStatus,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_20_ComReducaoDeBaseDeCalculo,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_51_Diferimento,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_70_ComRedDeBaseDeCalcECobrDoICMSPorSubTrib,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_90_Outras,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSSN_900_Outros)) {
				
			if (icms.getLBR_TaxBase() != null && icms.getLBR_TaxBase().signum() == 1) {
				if (taxChildW.getLBR_TaxGroup_ID() == MLBRTax.TAX_GROUP_ICMS)
					icms.setLBR_TaxBase(tl.getLBR_TaxBase());
				else if (taxChildW.getLBR_TaxGroup_ID() == MLBRTax.TAX_GROUP_ICMSST)
					icms.setLBR_ICMSST_TaxBase(tl.getLBR_TaxBase());
			}
		}
		
		//	ICMS-ST
		if (taxChildW.getLBR_TaxGroup_ID() == MLBRTax.TAX_GROUP_ICMSST && TextUtil.match (taxStatus,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_10_TributadaEComCobrancaDoICMSPorSubTributaria,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_30_IsentaOuNao_TribEComCobrDoICMSPorSubTribut,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_70_ComRedDeBaseDeCalcECobrDoICMSPorSubTrib,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_90_Outras,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSSN_201_TributadaComPermissaoDeCredito,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSSN_202_TributadaSemPermissaoDeCredito,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSSN_203_IsencaoDoICMSParaFaixaDeReceitaBruta,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSSN_900_Outros)) {

			icms.setLBR_ICMSST_TaxBaseType(new Integer(taxBaseTypeCode - 100).toString());
			icms.setLBR_ICMSST_TaxBaseAmt(tl.getLBR_TaxBaseAmt());
			icms.setLBR_ICMSST_TaxRate(tl.getLBR_TaxRate());
			icms.setLBR_ICMSST_TaxAmt(tl.getLBR_TaxAmt());
		}
		
		// IVA
		//if (tl.getLBR_TaxName_ID() == 1000012) {
			// Adjust IVA-ST
		//	if (getIVARateFromTaxTransaction() != null && getIVARateFromTaxTransaction().signum() == 1)
		//		icms.setLBR_ICMSST_TaxAdded(tl.getLBR_TaxRate());
		//}

		if (TextUtil.match (taxStatus,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSTN_60_ICMSCobradoAnteriormentePorSubstituicaoTributaria,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSSN_500_ICMSCobradoAnteriormente)) {
			
			icms.setLBR_ICMSST_TaxBAmtWhd(tl.getLBR_TaxBaseAmt());
			icms.setLBR_ICMSST_TaxAmtWhd(tl.getLBR_TaxAmt());
		}
		
		if (TextUtil.match (taxStatus,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSSN_101_TributadaComPermissaoDeCredito,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSSN_201_TributadaComPermissaoDeCredito,
				MLBRDocLineICMS.LBR_ICMS_TAXSTATUSSN_900_Outros)) {
			
			icms.setLBR_TaxRateCredit(tl.getLBR_TaxRate());
			icms.setLBR_TaxAmtCredit(tl.getLBR_TaxAmt());
		}
		
		icms.saveEx();
	}
	
	/**
	 * 	Create IPI (child of Doc Line Details)
	 */
	private void createIPI(String taxStatus, MLBRTaxLine tl) {
		MLBRDocLineIPI[] ipiArray = MLBRDocLineIPI.getOfDetails(this);
		MLBRDocLineIPI ipi = new MLBRDocLineIPI(getCtx(), 0, get_TrxName());
		
		if (ipiArray.length > 0)
			ipi = ipiArray[0];

		ipi.setAD_Org_ID(getAD_Org_ID());
		ipi.setLBR_DocLine_Details_ID(get_ID());
		ipi.setIsTaxIncluded(tl.isTaxIncluded());
		ipi.setLBR_IPI_TaxStatus(taxStatus);
		
		if (TextUtil.match (taxStatus,
				MLBRDocLineIPI.LBR_IPI_TAXSTATUS_00_EntradaComRecuperacaoDeCredito,
				MLBRDocLineIPI.LBR_IPI_TAXSTATUS_49_OutrasEntradas,
				MLBRDocLineIPI.LBR_IPI_TAXSTATUS_50_SaidaTributada,
				MLBRDocLineIPI.LBR_IPI_TAXSTATUS_99_OutrasSaidas)) {

			ipi.setCalculationType("PER");
			ipi.setLBR_TaxBaseAmt(tl.getLBR_TaxBaseAmt());
			ipi.setLBR_TaxRate(tl.getLBR_TaxRate());
			ipi.setLBR_TaxAmt(tl.getLBR_TaxAmt());
		}
		
		ipi.saveEx();
	}
	
	/**
	 * 	Create PIS (child of Doc Line Details)
	 */
	private void createPIS(String taxStatus, MLBRTaxLine tl) {
		MLBRDocLinePIS[] pisArray = MLBRDocLinePIS.getOfDetails(this);
		MLBRDocLinePIS pis = new MLBRDocLinePIS(getCtx(), 0, get_TrxName());
		
		if (pisArray.length > 0)
			pis = pisArray[0];

		pis.setAD_Org_ID(getAD_Org_ID());
		pis.setLBR_DocLine_Details_ID(get_ID());
		pis.setIsTaxIncluded(tl.isTaxIncluded());
		pis.setLBR_PIS_TaxStatus(taxStatus);
		
		if (TextUtil.match (taxStatus,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_01_OperacaoTributavelCumulativoNaoCumulativo,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_02_OperacaoTributavelAliquotaDiferenciada,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_49_OutrasOperacoesDeSaida,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_50_OperacaoComDireitoACredito,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_51_OperacaoComDireitoACredito,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_52_OperacaoComDireitoACredito,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_53_OperacaoComDireitoACredito,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_54_OperacaoComDireitoACredito,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_55_OperacaoComDireitoACredito,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_56_OperacaoComDireitoACredito,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_60_CreditoPresumido,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_61_CreditoPresumido,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_62_CreditoPresumido,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_63_CreditoPresumido,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_64_CreditoPresumido,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_65_CreditoPresumido,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_66_CreditoPresumido,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_67_CreditoPresumido,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_70_OperacaoDeAquisicaoSemDireitoACredito,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_71_OperacaoDeAquisicaoComIsencao,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_72_OperacaoDeAquisicaoComSuspensao,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_73_OperacaoDeAquisicaoAAliquotaZero,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_74_OperacaoDeAquisicaoSemIncidenciaDaContribuicao,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_75_OperacaoDeAquisicaoPorSubstituicaoTributaria,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_98_OutrasOperacoesDeEntrada,
				MLBRDocLinePIS.LBR_PIS_TAXSTATUS_99_OutrasOperacoes)) {
			
			pis.setCalculationType("PER");
			pis.setLBR_TaxBaseAmt(tl.getLBR_TaxBaseAmt());
			pis.setLBR_TaxRate(tl.getLBR_TaxRate());
			pis.setLBR_TaxAmt(tl.getLBR_TaxAmt());
		}
		
		pis.saveEx();
	}
	
	/**
	 * 	Create COFINS (child of Doc Line Details)
	 */
	private void createCOFINS(String taxStatus, MLBRTaxLine tl) {
		MLBRDocLineCOFINS[] cofinsArray = MLBRDocLineCOFINS.getOfDetails(this);
		MLBRDocLineCOFINS cofins = new MLBRDocLineCOFINS(getCtx(), 0, get_TrxName());
		
		if (cofinsArray.length > 0)
			cofins = cofinsArray[0];

		cofins.setAD_Org_ID(getAD_Org_ID());
		cofins.setLBR_DocLine_Details_ID(get_ID());
		cofins.setIsTaxIncluded(tl.isTaxIncluded());
		cofins.setLBR_COF_TaxStatus(taxStatus);
		
		if (TextUtil.match (taxStatus,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_01_OperacaoTributavelCumulativoNaoCumulativo,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_02_OperacaoTributavelAliquotaDiferenciada,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_49_OutrasOperacoesDeSaida,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_50_OperacaoComDireitoACredito,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_51_OperacaoComDireitoACredito,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_52_OperacaoComDireitoACredito,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_53_OperacaoComDireitoACredito,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_54_OperacaoComDireitoACredito,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_55_OperacaoComDireitoACredito,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_56_OperacaoComDireitoACredito,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_60_CreditoPresumido,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_61_CreditoPresumido,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_62_CreditoPresumido,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_63_CreditoPresumido,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_64_CreditoPresumido,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_65_CreditoPresumido,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_66_CreditoPresumido,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_67_CreditoPresumido,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_70_OperacaoDeAquisicaoSemDireitoACredito,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_71_OperacaoDeAquisicaoComIsencao,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_72_OperacaoDeAquisicaoComSuspensao,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_73_OperacaoDeAquisicaoAAliquotaZero,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_74_OperacaoDeAquisicaoSemIncidenciaDaContribuicao,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_75_OperacaoDeAquisicaoPorSubstituicaoTributaria,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_98_OutrasOperacoesDeEntrada,
				MLBRDocLineCOFINS.LBR_COF_TAXSTATUS_99_OutrasOperacoes)) {
			
			cofins.setCalculationType("PER");
			cofins.setLBR_TaxBaseAmt(tl.getLBR_TaxBaseAmt());
			cofins.setLBR_TaxRate(tl.getLBR_TaxRate());
			cofins.setLBR_TaxAmt(tl.getLBR_TaxAmt());
		}
		
		cofins.saveEx();
	}
	
	/**
	 * 	Create Import Tax (child of Doc Line Details)
	 */
	private void createImportTax(MLBRTaxLine tl) {
		MLBRDocLineImportTax[] iiArray = MLBRDocLineImportTax.getOfDetails(this);
		MLBRDocLineImportTax ii = new MLBRDocLineImportTax(getCtx(), 0, get_TrxName());
		
		if (iiArray.length > 0)
			ii = iiArray[0];

		ii.setAD_Org_ID(getAD_Org_ID());
		ii.setLBR_DocLine_Details_ID(get_ID());
		ii.setIsTaxIncluded(tl.isTaxIncluded());
		ii.setLBR_TaxBaseAmt(tl.getLBR_TaxBaseAmt());
		ii.setLBR_TaxAmt(tl.getLBR_TaxAmt());
		ii.saveEx();
	}	

	/**
	 * 	Calculate brazilian taxes
	 * 	@param original order/invoice
	 * 	@param line to be processed
	 * 	@param updateTaxes
	 * 	@return error message or null
	 */
	private String calculateTaxes (PO po, PO poLine) {
		if (MOrderLine.Table_Name.equals(poLine.get_TableName())) {
			MOrder order = null;
			MOrderLine orderLine = (MOrderLine) poLine;
			
			if (po != null) 
				order = (MOrder) po;
			else 
				order = orderLine.getParent();
			
			if (getLBR_Tax_ID() > 0) {
				Map<String, BigDecimal> params = new HashMap<String, BigDecimal>();
				params.put(MLBRTax.SISCOMEX, Env.ZERO);
				params.put(MLBRTax.INSURANCE, getInsuredAmount());
				params.put(MLBRTax.FREIGHT, getFreightAmt());
				params.put(MLBRTax.OTHERCHARGES, getSurcharges());
				params.put(MLBRTax.QTY, getLBR_QtyTax());
				params.put(MLBRTax.AMT, getLBR_GrossAmt().subtract(getDiscountAmt()));
				
				//if (getIVARateFromTaxTransaction() != null && getIVARateFromTaxTransaction().signum() == 1)
				//	params.put("IVA", getAdjustedIva().divide(Env.ONEHUNDRED, 4, BigDecimal.ROUND_HALF_UP));
			
				MLBRTax tax = new MLBRTax (getCtx(), getLBR_Tax_ID(), get_TrxName());
				tax.calculate (order.isTaxIncluded(), order.getDateOrdered(), params, order.get_ValueAsString("LBR_TransactionType"));
			}
		} else if (MInvoiceLine.Table_Name.equals(poLine.get_TableName())) {
			MInvoice invoice = null;
			MInvoiceLine invoiceLine = (MInvoiceLine) poLine;
			
			if (po != null) 
				invoice = (MInvoice) po;
			else 
				invoice = invoiceLine.getParent();
			
			if (getLBR_Tax_ID() > 0) {
				BigDecimal reversal = (getLBR_QtyTax().signum() < 0) ? Env.ONE.negate() : Env.ONE;
				
				Map<String, BigDecimal> params = new HashMap<String, BigDecimal>();
				params.put(MLBRTax.SISCOMEX, Env.ZERO.multiply(reversal));
				params.put(MLBRTax.INSURANCE, getInsuredAmount().multiply(reversal));
				params.put(MLBRTax.FREIGHT, getFreightAmt().multiply(reversal));
				params.put(MLBRTax.OTHERCHARGES, getSurcharges().multiply(reversal));
				params.put(MLBRTax.QTY, getLBR_QtyTax());
				params.put(MLBRTax.AMT, getLBR_GrossAmt().subtract(getDiscountAmt()));
				
				//if (getIVARateFromTaxTransaction() != null && getIVARateFromTaxTransaction().signum() == 1)
				//	params.put("IVA", getAdjustedIva().divide(Env.ONEHUNDRED, 4, BigDecimal.ROUND_HALF_UP));
				
				MLBRTax tax = new MLBRTax (getCtx(), getLBR_Tax_ID(), get_TrxName());
				tax.calculate (invoice.isTaxIncluded(), invoice.getDateInvoiced(), params, invoice.get_ValueAsString("LBR_TransactionType"));
			}
		}
		
		return null;
	}
	
	/**
	 * 	Verifica todas as linhas do imposto
	 * 
	 * 	@param taxes
	 * 	@param C_Tax_ID
	 * 	@param tax
	 */
	private void processTax (Map<Integer, Object[]> taxes,
			MLBRTax tax, int C_Tax_ID) {
		
		for (MLBRTaxLine tl : tax.getLines()) {
			BigDecimal taxAmt 		= tl.getLBR_TaxAmt();
			BigDecimal taxBaseAmt	= tl.getLBR_TaxBaseAmt();
			BigDecimal taxTotal 	= Env.ZERO;
			BigDecimal taxBaseTotal = Env.ZERO;
			
			if (taxAmt == null 
					|| taxAmt.compareTo(Env.ZERO) == 0
					|| !tl.isLBR_PostTax())
				continue;
			
			Integer key = tl.getChild_Tax_ID(C_Tax_ID);
			
			if (key <= 0)
				continue;
			
			else if (taxes.containsKey(key))
			{
				taxTotal 		= (BigDecimal) taxes.get(key)[0];	//	Amt
				taxBaseTotal 	= (BigDecimal) taxes.get(key)[1];	//	Base
				taxes.remove(key);
			}
			
			taxes.put (key, new Object[]{taxTotal.add(taxAmt), 		//	0-Amt
					taxBaseTotal.add(taxBaseAmt),					//	1-Base
					tl.isTaxIncluded()});							//	2-Tax Included
		}
	}
	
	/**
	 * 	Get adjusted IVA-ST based on transaction UF's 
	 * 
	 * 	@return adjusted or original iva-st
	 */
	private BigDecimal getAdjustedIva(BigDecimal originalIVA){
		PO po = getParent();
		boolean isSOTrx = true;
		Timestamp docDate = null;
		MProduct product = null;
		I_C_BPartner_Location bpLocation = null;
		
		if (po instanceof MOrderLine) {
			MOrderLine line = (MOrderLine) po;
			MOrder order = line.getParent();
			docDate = order.getDateOrdered();
			isSOTrx = order.isSOTrx();
			bpLocation = order.getBill_Location();
			product = line.getProduct();
		} else if (po instanceof MInvoiceLine) {
			MInvoiceLine line = (MInvoiceLine) po;
			MInvoice invoice = line.getParent();
			docDate = invoice.getDateInvoiced();
			isSOTrx = invoice.isSOTrx();
			bpLocation = invoice.getC_BPartner_Location();
			product = line.getProduct();
		}
		
		if (bpLocation == null)
			return originalIVA;
		
		MOrgInfo orgInfo = MOrgInfo.get(getCtx(), getAD_Org_ID(), get_TrxName());
		
		// Same UF, adjust is not necessary
		if (orgInfo.getC_Location().getC_Region_ID() == bpLocation.getC_Location().getC_Region_ID())
			return originalIVA;
		
		MRegion regionOrg = new MRegion(getCtx(), orgInfo.getC_Location().getC_Region_ID(), get_TrxName());
		MRegion regionBPartner = new MRegion(getCtx(), bpLocation.getC_Location().getC_Region_ID(), get_TrxName());
		
		int regionFrom_ID = 0;
		int regionTo_ID = 0;
		
		if (isSOTrx) {
			regionFrom_ID = regionOrg.get_ID();
			regionTo_ID = regionBPartner.get_ID();
		} else {
			regionFrom_ID = regionBPartner.get_ID();
			regionTo_ID = regionOrg.get_ID();
		}
		
		BigDecimal aliqInterestadual = Env.ZERO;
		BigDecimal aliqInternaDestino = Env.ZERO;
		
		MLBRICMSMatrix icmsMatrix = MLBRICMSMatrix.get(getCtx(), getAD_Org_ID(), regionTo_ID, regionTo_ID, docDate, get_TrxName());
		String sql = "SELECT MAX(tl.lbr_TaxRate) FROM LBR_TaxLine tl WHERE tl.LBR_Tax_ID = ?";
		aliqInternaDestino = DB.getSQLValueBD(get_TrxName(), sql, icmsMatrix.getLBR_Tax_ID());
		
		// NF-e - Nota Técnica 2012/005 (4% de icms nas operações interestaduais para produtos importados)
		if (product != null &&
				(product.get_ValueAsString("LBR_ProductSource").equals("1") ||
						product.get_ValueAsString("LBR_ProductSource").equals("2") ||
						product.get_ValueAsString("LBR_ProductSource").equals("3"))) {
			
			aliqInterestadual = new BigDecimal("4");
		} else {
			icmsMatrix = MLBRICMSMatrix.get(getCtx(), getAD_Org_ID(), regionFrom_ID, regionTo_ID, docDate, get_TrxName());
    		sql = "SELECT MAX(tl.lbr_TaxRate) FROM LBR_TaxLine tl WHERE tl.LBR_Tax_ID = ?";
    		aliqInterestadual = DB.getSQLValueBD(get_TrxName(), sql, icmsMatrix.getLBR_Tax_ID());
		}
		
		return MLBRDocLineICMS.getAdjustedIva(originalIVA, aliqInterestadual, aliqInternaDestino);
	}
	
	/**
	 * 	Copy to this details the fields of another details
	 */
	public void copyFrom(MLBRDocLineDetails detailsFrom) {
		int C_OrderLine_ID = getC_OrderLine_ID();
		int C_InvoiceLine_ID = getC_InvoiceLine_ID();
		int M_RMALine_ID = getM_RMALine_ID();
		
		// Copy
		MLBRDocLineDetails.copyValues(detailsFrom, this, getAD_Client_ID(), getAD_Org_ID());
		
		// Restore some importante fields
		setC_OrderLine_ID(C_OrderLine_ID);
		setC_InvoiceLine_ID(C_InvoiceLine_ID);
		setM_RMALine_ID(M_RMALine_ID);
		
		// Use a copy instead of original
		MLBRTax tax = new MLBRTax(getCtx(), detailsFrom.getLBR_Tax_ID(), get_TrxName());
		setLBR_Tax_ID(tax.copyTo().get_ID());
		
		m_DetailsFrom = detailsFrom;
	}
	
	/**
	 * 	Copy to this details the children of another details
	 */
	public void copyChildren(MLBRDocLineDetails detailsFrom) {
		MLBRDocLineICMS.copy(detailsFrom, this);
		MLBRDocLineIPI.copy(detailsFrom, this);
		MLBRDocLinePIS.copy(detailsFrom, this);
		MLBRDocLineCOFINS.copy(detailsFrom, this);
		MLBRDocLineImportTax.copy(detailsFrom, this);
		MLBRDocLineISSQN.copy(detailsFrom, this);
	}
}