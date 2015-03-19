package org.idempierelbr.nfe.process;

import java.math.BigDecimal;
import java.util.logging.Level;

import org.compiere.model.MInvoice;
import org.compiere.model.MOrder;
import org.compiere.model.MRMA;
import org.compiere.model.PO;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.Env;
import org.idempierelbr.nfe.model.MLBRDocLineDetailsNfe;
import org.idempierelbr.nfe.model.MLBRNotaFiscal;

public class DistributeAmtToDetails extends SvrProcess
{
	private String 		p_Target = null;
	private BigDecimal 	p_Amount = Env.ZERO;
	private boolean		p_ResetTarget = false;
	private String 		p_DistributionType = null;
	
	private int p_C_Order_ID = 0;
	private int p_C_Invoice_ID = 0;
	private int p_M_RMA_ID = 0;
	private int	p_LBR_NotaFiscal_ID = 0;
	
	private MOrder 			order;
	private MInvoice		invoice;
	private MRMA 			rma;
	private MLBRNotaFiscal 	nf;
	private PO 				poLines[];
	
	@Override
	protected void prepare() 
	{
		ProcessInfoParameter[] para = getParameter();
		
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			
			if (para[i].getParameter() == null)
				;
			else if (name.equals("Target"))
				p_Target = (String)para[i].getParameter();
			else if (name.equals("Amount"))
				p_Amount = ((BigDecimal)para[i].getParameter());
			else if (name.equals("ResetTarget"))
				p_ResetTarget = ((String) para[i].getParameter()).equals("Y");
			else if (name.equals("DistributionType")) {
				p_DistributionType = (String)para[i].getParameter();
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
		else if (getTable_ID() == MRMA.Table_ID)
			p_M_RMA_ID = getRecord_ID();
		else if (getTable_ID() == MLBRNotaFiscal.Table_ID)
			p_LBR_NotaFiscal_ID = getRecord_ID();
		
		
		// Check source document
		if (p_C_Order_ID <= 0 && p_C_Invoice_ID <= 0 && p_M_RMA_ID <= 0 && p_LBR_NotaFiscal_ID <= 0)
			throw new Exception("No document defined");
		
		String qtyFieldName = "";
		String amtFieldName = "LineNetAmt";
		
		// Order
		if (p_C_Order_ID > 0) {
			if (p_C_Invoice_ID > 0 || p_M_RMA_ID > 0 || p_LBR_NotaFiscal_ID > 0)
				throw new Exception("Please define only one document");
			
			order = new MOrder(getCtx(), p_C_Order_ID, get_TrxName());
			poLines = order.getLines();
			qtyFieldName = "QtyOrdered";
		}
		
		// Invoice
		if (p_C_Invoice_ID > 0) {
			if (p_C_Order_ID > 0 || p_M_RMA_ID > 0 || p_LBR_NotaFiscal_ID > 0)
				throw new Exception("Please define only one document");
			
			invoice = new MInvoice(getCtx(), p_C_Invoice_ID, get_TrxName());
			poLines = invoice.getLines();
			qtyFieldName = "QtyInvoiced";
		}
		
		// RMA
		if (p_M_RMA_ID > 0) {
			if (p_C_Order_ID > 0 || p_C_Invoice_ID > 0 || p_LBR_NotaFiscal_ID > 0)
				throw new Exception("Please define only one document");
			
			rma = new MRMA(getCtx(), p_M_RMA_ID, get_TrxName());
			poLines = rma.getLines(false);
			qtyFieldName = "Qty";
		}
		
		// Nota Fiscal
		if (p_LBR_NotaFiscal_ID > 0) {
			if (p_C_Order_ID > 0 || p_C_Invoice_ID > 0 || p_M_RMA_ID > 0)
				throw new Exception("Please define only one document");
			
			nf = new MLBRNotaFiscal(getCtx(), p_LBR_NotaFiscal_ID, get_TrxName());
			poLines = nf.getLines();
			qtyFieldName = "Qty";
		}
		
		if (poLines != null && poLines.length > 0) {
			BigDecimal poLinesAmt[] = new BigDecimal[poLines.length];
			
			BigDecimal unitAmt = Env.ZERO;
			BigDecimal units = Env.ZERO;
			
			if (p_DistributionType.equals("1")) { // Number of lines
				units = new BigDecimal(poLines.length);
			} else if (p_DistributionType.equals("2")) { // Qty (line)
				for (int i = 0; i < poLines.length; i++) {
					units = units.add((BigDecimal)poLines[i].get_Value(qtyFieldName));
				}
			} else if (p_DistributionType.equals("3")) { // Amt (line)
				for (int i = 0; i < poLines.length; i++) {
					units = units.add((BigDecimal)poLines[i].get_Value(amtFieldName));
				}
			}
			
			unitAmt = p_Amount.divide(units, 2, BigDecimal.ROUND_HALF_UP);
			BigDecimal remainder = p_Amount;
			
			// Define line amount based on distribution type
			for (int i = 0; i < poLines.length; i++) {
				if (p_DistributionType.equals("1")) // Number of lines
					poLinesAmt[i] = unitAmt;
				else if (p_DistributionType.equals("2")) // Qty (line)
					poLinesAmt[i] = unitAmt.multiply((BigDecimal)poLines[i].get_Value(qtyFieldName));
				else if (p_DistributionType.equals("3")) // Amt (line)
					poLinesAmt[i] = unitAmt.multiply((BigDecimal)poLines[i].get_Value(amtFieldName));
				
				remainder = remainder.subtract(poLinesAmt[i]);
			}
			
			// Remainder - update first
			if (remainder.compareTo(Env.ZERO) != 0) {
				poLinesAmt[0] = poLinesAmt[0].add(remainder);
			}
			
			// Update details
			for (int i = 0; i < poLines.length; i++) {
				MLBRDocLineDetailsNfe details = MLBRDocLineDetailsNfe.getOfPO(poLines[i]);
				
				if (details != null) {
					if (p_Target.equals("1")) { // Insurance
						if (!p_ResetTarget && details.getInsuredAmount() != null)
							poLinesAmt[i] = poLinesAmt[i].add(details.getInsuredAmount());
							
						details.setInsuredAmount(poLinesAmt[i]);
					} else if (p_Target.equals("2")) { // Freight
						if (!p_ResetTarget && details.getFreightAmt() != null)
							poLinesAmt[i] = poLinesAmt[i].add(details.getFreightAmt());
						
						details.setFreightAmt(poLinesAmt[i]);
					} else if (p_Target.equals("3")) { // Surcharges
						if (!p_ResetTarget && details.getSurcharges() != null)
							poLinesAmt[i] = poLinesAmt[i].add(details.getSurcharges());
						
						details.setSurcharges(poLinesAmt[i]);
					} else if (p_Target.equals("4")) { // Siscomex
						if (!p_ResetTarget && details.getLBR_SiscomexAmt() != null)
							poLinesAmt[i] = poLinesAmt[i].add(details.getLBR_SiscomexAmt());
						
						details.setLBR_SiscomexAmt(poLinesAmt[i]);
					}
				
					details.saveEx();
				}
			}
		}		
	
		return "Ok";
	}
	
}
