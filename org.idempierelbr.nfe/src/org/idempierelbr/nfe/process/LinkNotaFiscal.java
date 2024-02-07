package org.idempierelbr.nfe.process;

import java.util.logging.Level;

import org.compiere.model.MInvoice;
import org.compiere.model.MOrder;
import org.compiere.model.MRMA;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.idempierelbr.base.model.MLBRNotaFiscal;

public class LinkNotaFiscal extends SvrProcess
{
	private int p_LBR_NotaFiscal_ID = 0;
	private int p_C_Order_ID = 0;
	private int p_C_Invoice_ID = 0;
	private int p_M_RMA_ID = 0;
	
	@Override
	protected void prepare() 
	{
		ProcessInfoParameter[] para = getParameter();
		
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			
			if (para[i].getParameter() == null)
				;
			else if (name.equals("LBR_NotaFiscal_ID")) {
				p_LBR_NotaFiscal_ID = para[i].getParameterAsInt();
			} else if (name.equals("C_Order_ID")) {
				p_C_Order_ID = para[i].getParameterAsInt();
			} else if (name.equals("C_Invoice_ID")) {
				p_C_Invoice_ID = para[i].getParameterAsInt();
			} else if (name.equals("M_RMA_ID")) {
				p_M_RMA_ID = para[i].getParameterAsInt();
			} else {
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
			}
		}
	}
	
	@Override
	protected String doIt() throws Exception {
		if (p_LBR_NotaFiscal_ID <= 0)
			throw new Exception("No Nota Fiscal defined");
		
		if (p_C_Order_ID <= 0 && p_C_Invoice_ID <= 0 && p_M_RMA_ID <= 0)
			throw new Exception("No document defined");
		
		MLBRNotaFiscal nf = new MLBRNotaFiscal(getCtx(), p_LBR_NotaFiscal_ID, get_TrxName());
		
		if (p_C_Order_ID > 0) {
			nf.setC_Order_ID(p_C_Order_ID);
			MOrder order = new MOrder(getCtx(), p_C_Order_ID, get_TrxName());
			addLog("Order linked: " + order.getDocumentNo());
		}
		
		if (p_C_Invoice_ID > 0) {
			nf.setC_Invoice_ID(p_C_Invoice_ID);
			MInvoice invoice = new MInvoice(getCtx(), p_C_Invoice_ID, get_TrxName());
			addLog("Invoice linked: " + invoice.getDocumentNo());
		}
		
		if (p_M_RMA_ID > 0) {
			nf.setM_RMA_ID(p_M_RMA_ID);
			MRMA rma = new MRMA(getCtx(), p_M_RMA_ID, get_TrxName());
			addLog("RMA linked: " + rma.getDocumentNo());
		}
		
		nf.saveEx();		
		return "Ok";
	}
}
