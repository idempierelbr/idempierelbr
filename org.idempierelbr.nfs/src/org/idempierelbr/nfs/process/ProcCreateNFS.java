package org.idempierelbr.nfs.process;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.logging.Level;

import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MDocType;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MProduct;
import org.compiere.model.PO;
import org.compiere.process.DocAction;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.Env;
import org.idempierelbr.base.model.MLBRDocLineDetailsNFS;
import org.idempierelbr.base.model.MLBRDocLineDetailsTax;
import org.idempierelbr.base.model.MLBRNFS;

public class ProcCreateNFS extends SvrProcess {
	private int p_C_Order_ID = 0;
	private int p_C_Invoice_ID = 0;
	private int p_C_DocType_ID = 0;
	private String p_docAction = DocAction.ACTION_None;

	private MOrder order;
	private MInvoice invoice;
	private PO po;

	private MDocType poDocType;

	@Override
	protected void prepare() {
		ProcessInfoParameter[] para = getParameter();

		for (int i = 0; i < para.length; i++) {
			String name = para[i].getParameterName();

			if (para[i].getParameter() == null)
				;
			else if (name.equals("C_Order_ID")) {
				p_C_Order_ID = para[i].getParameterAsInt();
			} else if (name.equals("C_Invoice_ID")) {
				p_C_Invoice_ID = para[i].getParameterAsInt();
			} else if (name.equals("C_DocType_ID")) {
				p_C_DocType_ID = para[i].getParameterAsInt();
			} else if (name.equals("DocAction")) {
				p_docAction = (String) para[i].getParameter();
			} else {
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
			}
		}
	}

	@Override
	protected String doIt() throws Exception {

		// If this process is called from window (not from menu), set source
		// document
		if (getTable_ID() == MOrder.Table_ID)
			p_C_Order_ID = getRecord_ID();

		else if (getTable_ID() == MInvoice.Table_ID)
			p_C_Invoice_ID = getRecord_ID();

		// Check source document
		if (p_C_Order_ID <= 0 && p_C_Invoice_ID <= 0)
			throw new Exception("Nenhum documento definido");

		// Order
		if (p_C_Order_ID > 0) {
			order = new MOrder(getCtx(), p_C_Order_ID, get_TrxName());
			po = order;
		}

		// Invoice
		if (p_C_Invoice_ID > 0) {
			invoice = new MInvoice(getCtx(), p_C_Invoice_ID, get_TrxName());
			po = invoice;
		}

		// Check Doc Status (allows only CO or CL)
		if (!po.get_ValueAsString("DocStatus").equals(
				DocAction.STATUS_Completed)
				&& !po.get_ValueAsString("DocStatus").equals(
						DocAction.STATUS_Closed))
			throw new Exception("Documento precisa estar Completado ou Fechado");

		// Source document type
		poDocType = new MDocType(getCtx(), po.get_ValueAsInt("C_DocType_ID"),
				get_TrxName());
		if (poDocType.get_ID() <= 0)
			poDocType = new MDocType(getCtx(),
					po.get_ValueAsInt("C_DocTypeTarget_ID"), get_TrxName());

		// Check document type
		if (p_C_DocType_ID <= 0) {
			MDocType docType = getDocType();

			if (docType == null || docType.get_ID() <= 0)
				throw new Exception(
						"Nenhum Tipo de Documento de Nota Fiscal de Serviço configurado.");

			p_C_DocType_ID = docType.get_ID();
		}

		// BP Location
		MBPartner bp = new MBPartner(getCtx(),
				po.get_ValueAsInt("C_BPartner_ID"), get_TrxName());
		MBPartnerLocation bpartnerLoc = null;
		if (po instanceof MOrder) {
			if (order.getBill_Location_ID() > 0)
				bpartnerLoc = new MBPartnerLocation(getCtx(),
						order.getBill_Location_ID(), get_TrxName());
			else
				bpartnerLoc = new MBPartnerLocation(getCtx(),
						order.getC_BPartner_Location_ID(), get_TrxName());

		} else if (po instanceof MInvoice) {
			bpartnerLoc = new MBPartnerLocation(getCtx(),
					invoice.getC_BPartner_Location_ID(), get_TrxName());
		}

		// Transaction type
		String transactionType = po.get_ValueAsString("LBR_TransactionType");
		transactionType = transactionType.equals("") ? null : transactionType;

		// load doctype
		MDocType nfDocType = new MDocType(getCtx(), p_C_DocType_ID,
				get_TrxName());

		// Generate header
		MLBRNFS nfs = new MLBRNFS(getCtx(), 0, get_TrxName());
		nfs.setAD_Org_ID(po.getAD_Org_ID());
		nfs.setLBR_NFSeStatus(MLBRNFS.LBR_NFSESTATUS_Normal);
		nfs.setDateDoc(new Timestamp(System.currentTimeMillis()));
		nfs.setDateAcct(new Timestamp(System.currentTimeMillis()));
		nfs.setC_DocTypeTarget_ID(nfDocType.get_ID());
		nfs.setLBR_IsDocIssuedByOrg(nfDocType.get_ValueAsBoolean("LBR_IsDocIssuedByOrg"));
		nfs.setPaymentRule(po.get_ValueAsString("PaymentRule"));
		nfs.setC_PaymentTerm_ID(po.get_ValueAsInt("C_PaymentTerm_ID"));
		nfs.setC_BPartner_ID(bp.get_ID());
		nfs.setC_BPartner_Location_ID(bpartnerLoc.get_ID());
		nfs.setLBR_TransactionType(transactionType);
		nfs.setM_PriceList_ID(po.get_ValueAsInt("M_PriceList_ID"));
		nfs.setLBR_NFSSerie(nfDocType.get_ValueAsString("LBR_NFeSerie"));
		nfs.setIsTaxIncluded(true);

		// rps
		if (nfDocType.get_ValueAsBoolean("LBR_IsRPS")) {
			nfs.setLBR_RPSTipo(nfDocType.get_ValueAsString("LBR_RPSTipo"));
			nfs.setLBR_RPSStatus(MLBRNFS.LBR_RPSSTATUS_Normal);
		}

		// referece attributes
		if (po instanceof MOrder) {
			nfs.setC_Order_ID(order.get_ID());
			nfs.setAD_User_ID(order.getAD_User_ID());
		} else if (po instanceof MInvoice) {
			nfs.setC_Order_ID(invoice.getC_Order_ID());
			nfs.setC_Invoice_ID(invoice.get_ID());
			nfs.setAD_User_ID(invoice.getAD_User_ID());
		}

		// Generate lines
		PO[] poLines = getPOLines();

		// get lines
		for (PO poLine : poLines) {

			// load product
			MProduct m_product = new MProduct(getCtx(),
					poLine.get_ValueAsInt("M_Product_ID"), get_TrxName());

			// only for a service (product as service)
			if (m_product.get_ID() <= 0
					|| !m_product.getProductType().equals(
							MProduct.PRODUCTTYPE_Service))
				continue;

			//
			if (nfs.getM_Product_ID() <= 0)
				nfs.setM_Product_ID(poLine.get_ValueAsInt("M_Product_ID"));
			
			nfs.setQty(Env.ONE);
			
			BigDecimal subtotal = ((BigDecimal) poLine.get_Value("LineNetAmt"));
			nfs.setPrice(nfs.getPrice().add(subtotal));
			
			if (nfs.getDescription() == null || nfs.getDescription().length() <= 0)
				nfs.setDescription(poLine.get_ValueAsString("Description"));
			else
				nfs.setDescription(nfs.getDescription() + "; " + poLine.get_ValueAsString("Description"));

			if (nfs.getC_Tax_ID() <= 0)
				nfs.setC_Tax_ID(poLine.get_ValueAsInt("C_Tax_ID"));
			
			if (nfs.getC_UOM_ID() <= 0)
				nfs.setC_UOM_ID(poLine.get_ValueAsInt("C_UOM_ID"));

			// set product description
			if (nfs.getDescription() == null || nfs.getDescription().isEmpty())
				nfs.setDescription(nfs.getM_Product().getName());

			//
			if (poLine instanceof MOrderLine && nfs.getC_OrderLine_ID() <= 0)
				nfs.setC_OrderLine_ID(poLine.get_ID());
			else if (poLine instanceof MInvoiceLine && nfs.getC_Invoice_ID() <= 0)
				nfs.setC_InvoiceLine_ID(poLine.get_ID());

			nfs.saveEx(get_TrxName());

			// Generate details and taxes
			MLBRDocLineDetailsNFS details = MLBRDocLineDetailsNFS.createFromPO(nfs);
			details.populateFromPO(nfs);

			// if null, create it
			/*if (details != null) {

				// copy from poLine
				details.copyFrom(MLBRDocLineDetailsNFS.getOfPO(poLine));
				details.saveEx();

				// create childrens
				details.copyChildren(MLBRDocLineDetailsTax.getOfPO(poLine));
			}*/
		}

		// validar produto
		if (nfs.getM_Product_ID() <= 0)
			throw new Exception("Nenhum Produto/Serviço");

		// Process it
		if (!DocAction.ACTION_None.equals(p_docAction)) {
			if (!nfs.processIt(p_docAction)) {
				log.warning("Falhou ao processar. NFS: " + nfs);
				throw new IllegalStateException("Falha ao gerar NFS : " + nfs
						+ " - " + nfs.getProcessMsg());
			}
		}

		nfs.saveEx();
		String message = "Nota Fiscal de Serviço criada com sucesso"
				+ nfs.getDocumentNo();
		addBufferLog(nfs.get_ID(), nfs.getDateDoc(), null, message,
				nfs.get_Table_ID(), nfs.get_ID());

		return "Nota Fiscal de Serviço gerada com sucesso!";
	}

	/**
	 * Get document type (for the Brazilian Fiscal Invoice) based on source
	 * document type
	 * 
	 * @return doc type
	 */
	private MDocType getDocType() {

		int LBR_C_DocTypeNF_ID = poDocType.get_ValueAsInt("LBR_DocTypeNFS_ID");

		if (LBR_C_DocTypeNF_ID > 0)
			return new MDocType(getCtx(), LBR_C_DocTypeNF_ID, get_TrxName());

		return null;
	}

	private PO[] getPOLines() {
		if (po instanceof MOrder) {
			return order.getLines();
		} else if (po instanceof MInvoice) {
			return invoice.getLines();
		}

		return new PO[0];
	}
}
