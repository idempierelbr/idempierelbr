package org.idempierelbr.nfe.process;

import java.util.logging.Level;

import org.compiere.model.MInvoice;
import org.compiere.model.MOrder;
import org.compiere.model.MRMA;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.idempierelbr.nfe.model.MLBRNotaFiscal;

public class UnlinkNotaFiscal extends SvrProcess
{
	private int p_LBR_NotaFiscal_ID = 0;
	
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
			} else {
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
			}
		}
	}
	
	@Override
	protected String doIt() throws Exception {
		if (p_LBR_NotaFiscal_ID <= 0)
			throw new Exception("No Nota Fiscal defined");
		
		MLBRNotaFiscal nf = new MLBRNotaFiscal(getCtx(), p_LBR_NotaFiscal_ID, get_TrxName());
		
		if (nf.getC_Order_ID() > 0) {
			MOrder order = new MOrder(getCtx(), nf.getC_Order_ID(), get_TrxName());
			addLog("Order unlinked: " + order.getDocumentNo());
			nf.setC_Order_ID(0);
		}
		
		if (nf.getC_Invoice_ID() > 0) {
			MInvoice invoice = new MInvoice(getCtx(), nf.getC_Invoice_ID(), get_TrxName());
			addLog("Invoice unlinked: " + invoice.getDocumentNo());
			nf.setC_Invoice_ID(0);
		}
		
		if (nf.getM_RMA_ID() > 0) {
			MRMA rma = new MRMA(getCtx(), nf.getM_RMA_ID(), get_TrxName());
			addLog("RMA unlinked: " + rma.getDocumentNo());
			nf.setM_RMA_ID(0);
		}
		
		nf.saveEx();		
		return "Ok";
	}
}
