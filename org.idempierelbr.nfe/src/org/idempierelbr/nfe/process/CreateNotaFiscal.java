package org.idempierelbr.nfe.process;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.List;
import java.util.logging.Level;

import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MCountry;
import org.compiere.model.MCurrency;
import org.compiere.model.MDocType;
import org.compiere.model.MInOut;
import org.compiere.model.MInOutLine;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MInvoicePaySchedule;
import org.compiere.model.MLocation;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MPaySchedule;
import org.compiere.model.MPaymentTerm;
import org.compiere.model.MProduct;
import org.compiere.model.MRMA;
import org.compiere.model.MRMALine;
import org.compiere.model.MRegion;
import org.compiere.model.MShipper;
import org.compiere.model.MSysConfig;
import org.compiere.model.MUOM;
import org.compiere.model.MUOMConversion;
import org.compiere.model.PO;
import org.compiere.model.Query;
import org.compiere.model.X_C_City;
import org.compiere.process.DocAction;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.idempierelbr.base.model.I_LBR_LegalMessage;
import org.idempierelbr.base.model.MLBRDocLineDetails;
import org.idempierelbr.base.model.MLBRDocLineDetailsNfe;
import org.idempierelbr.base.model.MLBRDocLineDetailsTax;
import org.idempierelbr.base.model.MLBRNotaFiscal;
import org.idempierelbr.base.model.MLBRNotaFiscalLine;
import org.idempierelbr.base.model.MLBRNotaFiscalLineComb;
import org.idempierelbr.base.model.MLBRNotaFiscalPackage;
import org.idempierelbr.base.model.MLBRNotaFiscalPay;
import org.idempierelbr.base.model.MLBRNotaFiscalPaySched;
import org.idempierelbr.base.model.MLBRNotaFiscalTransp;
import org.idempierelbr.base.model.MLBRTax;
import org.idempierelbr.base.model.MLBRTaxLine;
import org.idempierelbr.base.util.BPartnerUtil;

public class CreateNotaFiscal extends SvrProcess
{
	private int 	p_C_Order_ID = 0;
	private int 	p_C_Invoice_ID = 0;
	private int 	p_M_RMA_ID = 0;
	private int 	p_C_DocType_ID = 0;
	private String	p_docAction = DocAction.ACTION_None;
	private String 	p_LBR_NFeModel = "55"; // Default = 55 NF-e
	
	private MOrder order;
	private MInvoice invoice;
	private MRMA rma;
	private PO po;
	
	private static String NFE_MODEL_NFE = "55";
	private static String NFE_MODEL_NFCe = "65";
	
	private MDocType poDocType;
	
	@Override
	protected void prepare() 
	{
		ProcessInfoParameter[] para = getParameter();
		
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			
			if (para[i].getParameter() == null)
				;
			else if (name.equals("C_Order_ID")) {
				p_C_Order_ID = para[i].getParameterAsInt();
			} else if (name.equals("C_Invoice_ID")) {
				p_C_Invoice_ID = para[i].getParameterAsInt();
			} else if (name.equals("M_RMA_ID")) {
				p_M_RMA_ID = para[i].getParameterAsInt();
			} else if (name.equals("C_DocType_ID")) {
				p_C_DocType_ID = para[i].getParameterAsInt();
			} else if (name.equals("DocAction")) {
				p_docAction = (String)para[i].getParameter();
			} else if (name.equals("LBR_NFeModel")){
				p_LBR_NFeModel = (String)para[i].getParameter();
			} else {
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
			}
		}
	}
	
	@Override
	protected String doIt() throws Exception {
		// If this process is called from window (not from menu), set source document
		if (getTable_ID() == MOrder.Table_ID)
			p_C_Order_ID = getRecord_ID();
		else if (getTable_ID() == MInvoice.Table_ID)
			p_C_Invoice_ID = getRecord_ID();
		if (getTable_ID() == MRMA.Table_ID)
			p_M_RMA_ID = getRecord_ID();
		
		// Check source document
		if (p_C_Order_ID <= 0 && p_C_Invoice_ID <= 0 && p_M_RMA_ID <= 0)
			throw new Exception("No document defined");
		
		// Check model target:
		if(!p_LBR_NFeModel.equals(NFE_MODEL_NFE) && !p_LBR_NFeModel.equals(NFE_MODEL_NFCe)){
			throw new Exception("Não é possível gerar NF deste modelo");
		}
		
		// Order
		if (p_C_Order_ID > 0) {
			if (p_C_Invoice_ID > 0 || p_M_RMA_ID > 0)
				throw new Exception("Please define only one document");
			
			order = new MOrder(getCtx(), p_C_Order_ID, get_TrxName());
			po = order;
		}
		
		// Invoice
		if (p_C_Invoice_ID > 0) {
			if (p_C_Order_ID > 0 || p_M_RMA_ID > 0)
				throw new Exception("Please define only one document");
			
			invoice = new MInvoice(getCtx(), p_C_Invoice_ID, get_TrxName());
			po = invoice;
		}
		
		// RMA
		if (p_M_RMA_ID > 0) {
			if (p_C_Order_ID > 0 || p_C_Invoice_ID > 0)
				throw new Exception("Please define only one document");
			
			rma = new MRMA(getCtx(), p_M_RMA_ID, get_TrxName());
			po = rma;
		}
		
		// Check Doc Status (allows only CO or CL)
		if (!po.get_ValueAsString("DocStatus").equals(DocAction.STATUS_Completed) &&
				!po.get_ValueAsString("DocStatus").equals(DocAction.STATUS_Closed))
			throw new Exception("The document should be completed or closed");
		
		// Source document type
		poDocType = new MDocType(getCtx(), po.get_ValueAsInt("C_DocType_ID"), get_TrxName());
		if (poDocType.get_ID() <= 0)
			poDocType = new MDocType(getCtx(), po.get_ValueAsInt("C_DocTypeTarget_ID"), get_TrxName());
		
		// Check document type
		if (p_C_DocType_ID <= 0) {
			MDocType docType = getDocType();
			
			if (docType == null || docType.get_ID() <= 0)
				throw new Exception("No document type defined");
			
			p_C_DocType_ID = docType.get_ID();
		}
		
		// Original docs for RMA
		MInOut rmaInOut = null;
		MOrder rmaOrder = null;
		
		if (po instanceof MRMA) {
			rmaInOut = new MInOut(getCtx(), rma.getInOut_ID(), get_TrxName());
			rmaOrder = new MOrder(getCtx(), rmaInOut.getC_Order_ID(), get_TrxName());
		}
		
		// Org Location
		MOrg org = new MOrg(getCtx(), po.getAD_Org_ID(), get_TrxName());
		MOrgInfo orgInfo = MOrgInfo.get(getCtx(), org.get_ID(), get_TrxName());
		MLocation orgLoc = new MLocation(getCtx(), orgInfo.getC_Location_ID(), get_TrxName());
		MRegion  orgRegion = new MRegion(getCtx(), orgLoc.getC_Region_ID(), get_TrxName());
		MCountry orgCountry = orgLoc.getCountry();
		X_C_City orgCity = BPartnerUtil.getX_C_City(getCtx(), orgLoc, get_TrxName());
		
		// BP Location
		MBPartner bp = new MBPartner(getCtx(), po.get_ValueAsInt("C_BPartner_ID"), get_TrxName());
		MLocation bpLoc = new MLocation(getCtx(), 0, get_TrxName());
		
		MBPartnerLocation bpartnerLoc = new MBPartnerLocation(getCtx(), 0, get_TrxName());
		if (po instanceof MOrder) {
			if (order.getBill_Location_ID() > 0)
				bpartnerLoc = new MBPartnerLocation(getCtx(), order.getBill_Location_ID(), get_TrxName());
			else
				bpartnerLoc = new MBPartnerLocation(getCtx(), order.getC_BPartner_Location_ID(), get_TrxName());
		} else if (po instanceof MInvoice) {
			bpartnerLoc = new MBPartnerLocation(getCtx(), invoice.getC_BPartner_Location_ID(), get_TrxName());
		} else if (po instanceof MRMA) {

			// same bpartner in SO and RMA
			if (rma.getC_BPartner_ID() == rmaInOut.getC_BPartner_ID()) {
				if (rmaInOut.getC_Order_ID() > 0) {
					if (rmaOrder.getBill_Location_ID() > 0)
						bpartnerLoc = new MBPartnerLocation(getCtx(), rmaOrder.getBill_Location_ID(), get_TrxName());
					else
						bpartnerLoc = new MBPartnerLocation(getCtx(), rmaOrder.getC_BPartner_Location_ID(), get_TrxName());
				} else {
					bpartnerLoc = new MBPartnerLocation(getCtx(), rmaInOut.getC_BPartner_Location_ID(), get_TrxName());
				}
			} 
			
			// rma has diff bpartner from source SO, then get default bill address or first
			else {
			
				// get bill
				MBPartnerLocation[] bpartnerLocs = MBPartnerLocation.getForBPartner(getCtx(), rma.getC_BPartner_ID(), get_TrxName());
				for (MBPartnerLocation bpartnerLocDefaultBP : bpartnerLocs){
					if (bpartnerLocDefaultBP.isBillTo()) {
						bpartnerLoc = bpartnerLocDefaultBP;
						break;
					}
				}
				
				// get first
				if ((bpartnerLoc == null || bpartnerLoc.get_ID() <= 0)){
					if (bpartnerLocs.length > 0) 
						bpartnerLoc = bpartnerLocs[0];
					else 
						throw new Exception("EndereÃ§o do DestinatÃ¡rio Ã© invalido");
				} 
			}
		}		
		bpLoc = new MLocation(getCtx(), bpartnerLoc.getC_Location_ID(), get_TrxName());
		
		MRegion  bpRegion = new MRegion(getCtx(), bpLoc.getC_Region_ID(), get_TrxName());
		MCountry bpCountry = bpLoc.getCountry();
		
		// Transaction type
		String transactionType;
		
		if (po instanceof MRMA)
			transactionType = rmaOrder.get_ValueAsString("LBR_TransactionType");
		else
			transactionType = po.get_ValueAsString("LBR_TransactionType");
		
		transactionType = transactionType.equals("") ? null : transactionType;
		
		// Generate header
		MLBRNotaFiscal nf = new MLBRNotaFiscal(getCtx(), 0, get_TrxName());
		nf.setAD_Org_ID(po.getAD_Org_ID());
		
		MDocType nfDocType = new MDocType(getCtx(), p_C_DocType_ID, get_TrxName());
		nf.setLBR_NFeModel(nfDocType.get_ValueAsString("LBR_NFBModel"));
		nf.setLBR_NFeSerie(nfDocType.get_ValueAsString("LBR_NFeSerie"));
		
		nf.setC_DocType_ID(p_C_DocType_ID);
		nf.setLBR_IsDocIssuedByOrg(nfDocType.get_ValueAsBoolean("LBR_IsDocIssuedByOrg"));
		nf.setLBR_NFE_OperationType(getOperationType());
		nf.setDateDoc(new Timestamp(new java.util.Date().getTime()));
		nf.setDateAcct(new Timestamp(new java.util.Date().getTime()));
		nf.setPaymentRule(getPaymentRule());
		nf.setLBR_NFeTpEmis(getTpEmis());
		nf.setLBR_FinNFe(getFinNFe());
		nf.setLBR_NFeNatOp(getNFeNatOp());
		nf.setLBR_NFE_DestinationType(getDestinationType(orgCountry, orgRegion, bpCountry, bpRegion));
		nf.setLBR_NFeIndFinal(getIndFinal());
		nf.setLBR_NFeIndPres(getIndPres());
		nf.setLBR_NFeIndIntermed(getIndIntermed());
		nf.setLBR_BP_Intermed_ID(getBPIntermed());
		nf.setLBR_IdCadIntTran(getIdCadIntTran());
		nf.setC_Region_ID(orgRegion.get_ID());
		nf.setC_City_ID(orgCity.get_ID());
		nf.setC_BPartner_ID(bp.get_ID());
		nf.setC_BPartner_Location_ID(bpartnerLoc.get_ID());
		nf.setLBR_TransactionType(transactionType);
		
		if (po instanceof MOrder) {
			nf.setC_Order_ID(order.get_ID());
			nf.setLBR_TaxPayerInfo(order.get_ValueAsString("LBR_TaxPayerInfo"));
			nf.setLBR_UnidentifiedCustomerCPF(order.get_ValueAsString("LBR_UnidentifiedCustomerCPF"));
		} else if (po instanceof MInvoice) {
			nf.setC_Order_ID(invoice.getC_Order_ID());
			nf.setC_Invoice_ID(invoice.get_ID());
			nf.setLBR_TaxPayerInfo(invoice.get_ValueAsString("LBR_TaxPayerInfo"));
			nf.setLBR_UnidentifiedCustomerCPF(invoice.get_ValueAsString("LBR_UnidentifiedCustomerCPF"));
		} else if (po instanceof MRMA) {
			nf.setC_Order_ID(rmaOrder.get_ID());
			nf.setM_RMA_ID(rma.get_ID());
		}
		
		nf.setIsTaxIncluded(true);
		nf.saveEx();
		
		// Packages & Weight
		BigDecimal packQty = Env.ZERO;
		BigDecimal totalWeight = Env.ZERO;
		
		// Generate lines
		PO[] poLines = getPOLines();
		
		for (PO poLine : poLines) {
			// Check if create ISSQN (Services) lines. Those who also can issue NFS-e, remove services away from NF-e
			if (poLine.get_ValueAsInt("M_Product_ID") > 0) {
				MProduct p = new MProduct(getCtx(), poLine.get_ValueAsInt("M_Product_ID"), get_TrxName());

				if (p.getProductType().equals(MProduct.PRODUCTTYPE_Service) &&
						!MSysConfig.getBooleanValue("LBR_NFe_CreateISSQNLines", true, nf.getAD_Client_ID(), nf.getAD_Org_ID())) {
					continue;
				}
			}
						
			// Original docs for RMA
			MRMALine rmaLine = null;
			MInOutLine rmaInOutLine = null;
			MOrderLine rmaOrderLine = null;
			
			if (poLine instanceof MRMALine) {
				rmaLine = (MRMALine)poLine;
				rmaInOutLine = new MInOutLine(getCtx(), rmaLine.getM_InOutLine_ID(), get_TrxName());
				rmaOrderLine = new MOrderLine(getCtx(), rmaInOutLine.getC_OrderLine_ID(), get_TrxName());
			}
			
			MLBRNotaFiscalLine nfLine = new MLBRNotaFiscalLine(getCtx(), 0, get_TrxName());
			nfLine.setAD_Org_ID(nf.getAD_Org_ID());
			nfLine.setLBR_NotaFiscal_ID(nf.get_ID());
			nfLine.setLine(poLine.get_ValueAsInt("Line"));
			nfLine.setM_Product_ID(poLine.get_ValueAsInt("M_Product_ID"));
			nfLine.setC_Charge_ID(poLine.get_ValueAsInt("C_Charge_ID"));
			
			BigDecimal qty = Env.ZERO;
			BigDecimal priceActual = Env.ZERO;
			
			if (poLine instanceof MOrderLine || poLine instanceof MInvoiceLine) {
				qty = (BigDecimal)poLine.get_Value("QtyEntered");
				priceActual = (BigDecimal)poLine.get_Value("PriceEntered");
				nfLine.setC_UOM_ID(poLine.get_ValueAsInt("C_UOM_ID"));
				
				if (poLine instanceof MOrderLine)
					nfLine.setC_OrderLine_ID(poLine.get_ID());
				else if (poLine instanceof MInvoiceLine)
					nfLine.setC_InvoiceLine_ID(poLine.get_ID());
			} else if (poLine instanceof MRMALine) {
				qty = rmaLine.getQty();
				
				if (rmaOrderLine.getPriceEntered() != null && rmaOrderLine.getPriceEntered().signum() != 0)
					priceActual = rmaOrderLine.getPriceEntered();	
				else 
					priceActual = rmaOrderLine.getPriceActual();
				
				nfLine.setC_UOM_ID(rmaLine.getC_UOM_ID());
				nfLine.setM_RMALine_ID(rmaLine.get_ID());
			}
			
			nfLine.setQty(qty);
			
			// Sum for total packages
			packQty = packQty.add(qty);
			
			// Sum for total weight
			if (nfLine.getM_Product_ID() > 0) {
				MProduct product = new MProduct(getCtx(), nfLine.getM_Product_ID(), get_TrxName());
				BigDecimal productWeight = product.getWeight();

				if (productWeight != null && productWeight.signum() != 0) {
					BigDecimal multiplier = MUOMConversion.convertProductFrom(getCtx(),
							nfLine.getM_Product_ID(), nfLine.getC_UOM_ID(), nfLine.getQty()) ;
					totalWeight = totalWeight.add(productWeight.multiply(multiplier));
				}
			}
			
			nfLine.setPriceActual(priceActual);
			nfLine.setC_Tax_ID(poLine.get_ValueAsInt("C_Tax_ID"));

			int stdPrecision = MCurrency.getStdPrecision(getCtx(), MLBRNotaFiscal.CURRENCY_BRL);
			
			if (qty != null && priceActual != null) {
				BigDecimal LineNetAmt = qty.multiply(priceActual);
				if (LineNetAmt.scale() > stdPrecision)
					LineNetAmt = LineNetAmt.setScale(stdPrecision, BigDecimal.ROUND_HALF_UP);
				nfLine.setLineNetAmt(LineNetAmt);
			}
			
			nfLine.saveEx();
			
			// Generate details and taxes
			MLBRDocLineDetailsNfe details = MLBRDocLineDetailsNfe.createFromPO(nfLine);
			
			if (details != null) {
				details.copyFrom(MLBRDocLineDetailsNfe.getOfPO(poLine));
				//details.saveEx();
				details.copyChildren(MLBRDocLineDetailsTax.getOfPO(poLine));
			}
			
			// Add fiscal information
			int LBR_Tax_ID = details.getLBR_Tax_ID();
			
			if (LBR_Tax_ID > 0) {
				MLBRTax lineTax = new MLBRTax(getCtx(), LBR_Tax_ID, get_TrxName());
				MLBRTaxLine[] taxes = lineTax.getLines();
				
				for (MLBRTaxLine tax : taxes) {
					I_LBR_LegalMessage legalMessage = tax.getLBR_LegalMessage();
					
					if (legalMessage != null)
						appendLegalMessage(nf, legalMessage);
				}
			}	
			
			// Generate Comb information if the product has an ANP Code
			
			// Load product:
			int M_Product_ID = poLine.get_ValueAsInt("M_Product_ID");
			
			if(M_Product_ID > 0){
				MProduct mProduct = new MProduct(getCtx(), M_Product_ID, get_TrxName());
				
				String LBR_CodANP = mProduct.get_ValueAsString("LBR_CodANP");
				String LBR_DescANP = mProduct.get_ValueAsString("LBR_DescANP");
				
				if(!LBR_CodANP.isEmpty()){
					MLBRNotaFiscalLineComb mComb = new MLBRNotaFiscalLineComb(getCtx(), 0, get_TrxName());
					mComb.setAD_Org_ID(nf.getAD_Org_ID());
					mComb.setLBR_NotaFiscalLine_ID(nfLine.get_ID());
					mComb.setLBR_CodANP(LBR_CodANP);
					
					if (LBR_DescANP == null || LBR_DescANP.length() < 2)
						mComb.setLBR_DescANP(mProduct.getName());
					else
						mComb.setLBR_DescANP(LBR_DescANP);
					
					mComb.setC_Region_ID(bpRegion.get_ID());
					mComb.saveEx();
				}
			}
		}
		
		// Transp
		MLBRNotaFiscalTransp transp = nf.getTransp();
		int M_Shipper_ID = 0;
		String DeliveryViaRule = ""; // Forma de Entrega (P-Cliente Retira, D-Entrega Própria, S-Transportadora)
		String FreightCostRule = ""; // Regra de Custo de Frete (C-Frete Calculado, F-Frete Fixo, I-Frete Incluso)
		
		if (po instanceof MOrder) {
			DeliveryViaRule = order.getDeliveryViaRule();
			FreightCostRule = order.getFreightCostRule();
			M_Shipper_ID = order.getM_Shipper_ID();
		} else if (po instanceof MInvoice) {
			MOrder invOrder = new MOrder(getCtx(), invoice.getC_Order_ID(), get_TrxName());
			DeliveryViaRule = invOrder.getDeliveryViaRule();
			FreightCostRule = invOrder.getFreightCostRule();
			M_Shipper_ID = invOrder.getM_Shipper_ID();
		} else if (po instanceof MRMA) {
			DeliveryViaRule = rmaInOut.getDeliveryViaRule();
			FreightCostRule = rmaInOut.getFreightCostRule();
			M_Shipper_ID = rmaInOut.getM_Shipper_ID();
		}
		
		if (DeliveryViaRule == null)
			DeliveryViaRule = "";
		
		if (FreightCostRule == null)
			FreightCostRule = "";
		
		String NFeModShipping = "";
		if(DeliveryViaRule.equals("P")) {
			NFeModShipping = "9";
		} else {
			NFeModShipping = "1";
			
			if (FreightCostRule.equals("I"))
				NFeModShipping = "0";
		}
		
		transp.setLBR_NFeModShipping(NFeModShipping);
		
		if (!DeliveryViaRule.equals("S"))
			M_Shipper_ID = 0;
		
		if (M_Shipper_ID > 0) {
			transp.setM_Shipper_ID(M_Shipper_ID);
			MShipper shipper = new MShipper(getCtx(), M_Shipper_ID, get_TrxName());
			
			if (shipper.getC_BPartner_ID() > 0) {
				MBPartnerLocation locs[] = MBPartnerLocation.getForBPartner(getCtx(),
						shipper.getC_BPartner_ID(), get_TrxName());
				
				// Default is the first one
				if (locs.length > 0)
					transp.setLBR_M_Shipper_Location_ID(locs[0].get_ID());
				
				for (MBPartnerLocation loc : locs) {
					// if a location is ship to, set it
					if (loc.isShipTo())
						transp.setLBR_M_Shipper_Location_ID(loc.get_ID());
				}
			}
		}
		
		transp.saveEx();
		
		// Generate package
		MLBRNotaFiscalPackage pack = new MLBRNotaFiscalPackage(getCtx(), 0, get_TrxName());
		pack.setAD_Org_ID(nf.getAD_Org_ID());
		pack.setLBR_NotaFiscalTransp_ID(transp.get_ID());
		//pack.setQty(packQty);
		BigDecimal packQtyBasedOnShipments = getQtyBaseOnShipments();
		
		if (packQtyBasedOnShipments == null || packQtyBasedOnShipments.signum() <= 0)
			packQtyBasedOnShipments = packQty;
		
		pack.setQty(packQtyBasedOnShipments);
		pack.setC_UOM_ID(MUOM.getDefault_UOM_ID(getCtx()));
		pack.setLBR_GrossWeight(totalWeight);
		pack.setLBR_NetWeight(totalWeight);
		pack.saveEx();
		
		// Generate Nota Fiscal Pay and Pay Schedule
		// TODO: Change Pay Sched No. to reflect Boleto
		if (po instanceof MInvoice) {
			
			// 
			BigDecimal openAmt = Env.ZERO;
			
			//
			MInvoicePaySchedule[] scheds = MInvoicePaySchedule.getInvoicePaySchedule(getCtx(), invoice.get_ID(), 0, get_TrxName());
			
			// check if has sched
			if (scheds != null && scheds.length > 0) {
				
				//
				for (MInvoicePaySchedule sched : scheds) {
					openAmt = openAmt.add(sched.getDueAmt());
				}
				
				//
				if (openAmt.signum() >= 0) {
					MLBRNotaFiscalPay pay = new MLBRNotaFiscalPay(getCtx(), 0, get_TrxName());
					pay.setAD_Org_ID(nf.getAD_Org_ID());
					pay.setLBR_NotaFiscal_ID(nf.get_ID());
					pay.setLBR_Document(nf.getDocumentNo());
					pay.setGrandTotal(openAmt);
					pay.setNetAmtToInvoice(openAmt);
					pay.setDiscountAmt(null);
					pay.saveEx();
					
					int no = 1;
					// Pay Schedule
					for (MInvoicePaySchedule sched : scheds) {
						MLBRNotaFiscalPaySched pSched = new MLBRNotaFiscalPaySched(getCtx(), 0, get_TrxName());
						pSched.setAD_Org_ID(nf.getAD_Org_ID());
						pSched.setLBR_NotaFiscalPay_ID(pay.get_ID());
						pSched.setLBR_Document(nf.getDocumentNo() + "/" + no++);
						pSched.setDueDate(sched.getDueDate());
						pSched.setDueAmt(sched.getDueAmt());
						pSched.saveEx();
					}
				}
			}
		}
		
		// Process it
		if (!DocAction.ACTION_None.equals(p_docAction))	{
			if (!nf.processIt(p_docAction)) {
				log.warning("Failed: " + nf);
				throw new IllegalStateException("Nota Fiscal Generate Process Failed: " +
						nf + " - " + nf.getProcessMsg());
			}
		}
		
		nf.saveEx();
		String message = Msg.parseTranslation(getCtx(), "@LBR_NotaFiscal_ID@ " + nf.getDocumentNo());
		addBufferLog(nf.get_ID(), nf.getDateDoc(), null, message, nf.get_Table_ID(), nf.get_ID());
	
		return "Ok";
	}
	
	private void appendLegalMessage(MLBRNotaFiscal nf, I_LBR_LegalMessage legalMessage) {
		String legalMessageValue = legalMessage.getValue();
		
		if (nf == null || legalMessage == null || legalMessageValue == null)
			return;
		
		String fiscalInfo = nf.getLBR_FiscalInfo();
		
		if (fiscalInfo == null)
			fiscalInfo = "";
		
		if (!fiscalInfo.contains(legalMessageValue))
			nf.setLBR_FiscalInfo(fiscalInfo.concat(legalMessageValue));
	}

	private BigDecimal getQtyBaseOnShipments() {
		if (po instanceof MRMA) {
			MRMA rma = (MRMA)po;
			MInOut shipment = rma.getShipment();
			
			if (shipment.getNoPackages() > 0)
				return new BigDecimal(shipment.getNoPackages());
			
			return Env.ZERO;
		}
		
		MOrder tmpOrder = null;
		
		if (po instanceof MOrder)
			tmpOrder = order;
		else if (po instanceof MInvoice)
			tmpOrder = invoice.getOriginalOrder();
		
		if (tmpOrder==null) {
			return Env.ZERO;
		}
		
		List<MInOut> list = new Query (getCtx(), MInOut.Table_Name,
					"C_Order_ID=? AND DocStatus IN ('DR', 'IP', 'CO')", get_TrxName())
				.setParameters(new Object[]{tmpOrder.get_ID()})
				.list();
		
		int qty = 0;
		
		for (MInOut inOut : list) {
			if (inOut.getNoPackages() > 0)
				qty = qty + inOut.getNoPackages();
		}
		
		return new BigDecimal(qty);
	}
		
	/**
	 * Get operation type (IN/OUT) based on source document type
	 * 
	 * @return 1 (OUT) or 0 (IN)
	 */
	private String getOperationType() {
		// Default: OUT
		String opType = "1"; // OUT
		String docBaseType = poDocType.getDocBaseType();
		
		// Document Base Types for IN operation
		if (MDocType.DOCBASETYPE_APInvoice.equals(docBaseType) ||
				MDocType.DOCBASETYPE_ARCreditMemo.equals(docBaseType) ||
				(MDocType.DOCBASETYPE_PurchaseOrder.equals(docBaseType) && 
						!MDocType.DOCSUBTYPESO_ReturnMaterial.equals(poDocType.getDocSubTypeSO()))||
				 MDocType.DOCBASETYPE_PurchaseRequisition.equals(docBaseType) ||
				(MDocType.DOCBASETYPE_SalesOrder.equals(docBaseType) && 
						 MDocType.DOCSUBTYPESO_ReturnMaterial.equals(poDocType.getDocSubTypeSO())))
			opType = "0"; // IN		
		
		return opType;
	}
	
	/**
	 * Get document type (for the Brazilian Fiscal Invoice) based on source document type
	 * 
	 * @return doc type
	 */
	private MDocType getDocType() {
		int LBR_C_DocTypeNF_ID;
		
		if(p_LBR_NFeModel.equals(NFE_MODEL_NFE)){
			LBR_C_DocTypeNF_ID = poDocType.get_ValueAsInt("LBR_C_DocTypeNF_ID");
		} else {
			LBR_C_DocTypeNF_ID = poDocType.get_ValueAsInt("LBR_C_DocTypeNFCe_ID");	
		}
		
		if (LBR_C_DocTypeNF_ID > 0)
			return new MDocType(getCtx(), LBR_C_DocTypeNF_ID, get_TrxName());
			
		return null;
	}
	
	/**
	 * Get payment rule (for the Brazilian Fiscal Invoice) based on source document
	 * (order, invoice, RMA, etc...)
	 * 
	 * @return doc type
	 */
	private String getPaymentRule() {
		// Default: CASH (ON SIGHT)
		String payRule = "1"; // CASH (ON SIGHT)
		
		String poPayRule = "";
		int poC_PaymentTerm_ID = 0;
		
		if (po instanceof MOrder || po instanceof MInvoice) {
			poPayRule = po.get_ValueAsString("PaymentRule");
			poC_PaymentTerm_ID = po.get_ValueAsInt("C_PaymentTerm_ID");
		} else if (po instanceof MRMA) {
			MOrder origOrder = rma.getOriginalOrder();
			
			if (origOrder != null) {
				poPayRule = origOrder.getPaymentRule();
				poC_PaymentTerm_ID = origOrder.getC_PaymentTerm_ID();
			}
		}
		
		// CASH (ON SIGHT)
		if (poPayRule.equals("B") || // Cash
				poPayRule.equals("D")) // Direct Debit
			payRule = "0"; // CASH (ON SIGHT)
		
		// Check On Credit tender type
		if (poPayRule.equals("P")) { // On Credit
			MPaymentTerm term = new MPaymentTerm(getCtx(), poC_PaymentTerm_ID, get_TrxName());
			MPaySchedule scheds[] = term.getSchedule(false);
			
			if (scheds.length == 0 && term.getNetDays() < 1)
				payRule = "0"; // CASH (ON SIGHT)
			else 
				payRule = "1"; // TERM
		}		
		
		return payRule;
	}
	
	/**
	 * Get issue type (normal or Sefaz out-of-service mode) based on org settings
	 * 
	 * @return issue type
	 */
	private String getTpEmis() {
		// Default: NORMAL
		String tpEmis = "1";
		
		// TODO: Implement column/fields on org window
		
		return tpEmis;
	}
	
	/**
	 * Get issue purpose (normal, complement, adjustment, return, etc.) based on
	 * source document type
	 * 
	 * @return issue purpose
	 */
	private String getFinNFe() {
		// Default: NORMAL
		String finNFe = "1"; // NORMAL
		
		String docBaseType = poDocType.getDocBaseType();
		
		// Document Base Types for RETURN operation
		if (docBaseType.equals(MDocType.DOCBASETYPE_ARCreditMemo) ||
				docBaseType.equals(MDocType.DOCBASETYPE_APCreditMemo))
			finNFe = "4"; // RETURN		
		
		return finNFe;
	}
	
	/**
	 * Get CFOP description from the highest amount line. This is used to set
	 * Brazilian Fiscal Invoice header
	 *
	 * @return CFOP description
	 */
	public String getNFeNatOp() {
		// Default: Outra
		String defaultNatOp = "Outra";
		
		String headerTableName = po.get_TableName();
		String headerKeyColumnName = headerTableName + "_ID";
		String lineTableName = headerTableName + "Line";
		String lineKeyColumnName = lineTableName + "_ID";
		String amountColumnName = "LineNetAmt";
		
		if (!(po instanceof MOrder) && !(po instanceof MInvoice) && !(po instanceof MRMA)) {
			return "";
		}
		
		// Query
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT Description");
		sql.append("	FROM LBR_CFOP");
		sql.append("	WHERE LBR_CFOP_ID =");
		sql.append("		(SELECT LBR_CFOP_ID");
		sql.append("			FROM LBR_DocLine_Details");
		sql.append("			WHERE " + lineKeyColumnName + " =");
		sql.append("				(SELECT " + lineKeyColumnName);
		sql.append("					FROM " + lineTableName);
		sql.append("					WHERE " + headerKeyColumnName + " = ?");
		sql.append("					ORDER BY " + amountColumnName + " DESC");
		sql.append("					OFFSET 0 FETCH FIRST 1 ROWS ONLY"); // workaround for 'LIMIT 1'
		sql.append("				)");
		sql.append("		)");
		
		String description = DB.getSQLValueString(get_TrxName(), sql.toString(), po.get_ID());
		
		if (description == null)
			return defaultNatOp;
		else
			return description;
	}
	
	/**
	 * Get destination type based on org and business partner locations
	 * @param bpRegion business partner region
	 * @param bpCountry business partner country
	 * @param orgRegion org region
	 * @param orgCountry org country
	 * 
	 * @return destination type
	 */
	private String getDestinationType(MCountry orgCountry, MRegion orgRegion,
			MCountry bpCountry, MRegion bpRegion) {
		
		// Default: SAME STATE
		String destType = "1"; // SAME STATE
		
		if (orgRegion.get_ID() != bpRegion.get_ID())
			destType = "2"; // INTERSTATE
		
		if (orgCountry.get_ID() != bpCountry.get_ID())
			destType = "3"; // OVERSEAS
		
		return destType;
	}
	
	/**
	 * Get retail sale indicator
	 * 
	 * @return 0 (no) or 1 (retail sale) 
	 */
	private String getIndFinal() {
		// Default: NO
		String indFinal = "0"; // NO
		
		String docTypeIndFinal = getDocType().get_ValueAsString("LBR_NFeIndFinal");
		
		if (!docTypeIndFinal.trim().equals(""))
			return docTypeIndFinal;
		
		return indFinal;
	}
	
	/**
	 * Get face-to-face sale indicator
	 * 
	 * @return 0 (no) or 1 (end consumer) 
	 */
	private String getIndPres() {
		// Default: NOT APPLICABLE
		String indPres = "0"; // NOT APPLICABLE
		
		String docTypeIndPres = getDocType().get_ValueAsString("LBR_NFeIndPres");
		
		if (!docTypeIndPres.trim().equals(""))
			return docTypeIndPres;
		
		return indPres;
	}
	
	private String getIndIntermed() {
		String indIntermed = "0";
		
		String docTypeIndIntermed = getDocType().get_ValueAsString("LBR_NFeIndIntermed");
		
		if (!docTypeIndIntermed.trim().equals(""))
			return docTypeIndIntermed;
		
		return indIntermed;
	}
	
	private int getBPIntermed() {
		return getDocType().get_ValueAsInt("LBR_BP_Intermed_ID");
	}
	
	private String getIdCadIntTran() {
		String docTypeIdCadIntTran = getDocType().get_ValueAsString("LBR_IdCadIntTran");
		
		if (!docTypeIdCadIntTran.trim().equals(""))
			return docTypeIdCadIntTran;
		
		return null;
	}
	
	private PO[] getPOLines() {
		if (po instanceof MOrder) {
			return order.getLines();
		} else if (po instanceof MInvoice) {
			return invoice.getLines();
		} else if (po instanceof MRMA) {
			return rma.getLines(false);
		}
		
		return new PO[0];
	}
}
