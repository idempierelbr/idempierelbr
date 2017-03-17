package org.idempierelbr.openitems.process;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;

import org.compiere.model.MInvoice;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.Msg;
import org.idempierelbr.openitems.model.MLBRBoleto;
import org.idempierelbr.openitems.model.MLBRBoletoMovement;
import org.idempierelbr.openitems.model.MLBRCobMovimento;

public class BoletoInstructions extends SvrProcess {

	private int p_LBR_Cob_Movimento_ID;
	private int p_LBR_Boleto_ID;
	private int p_C_Invoice_ID;

	@Override
	protected void prepare() {
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else if (name.equals("LBR_Boleto_ID"))
				p_LBR_Boleto_ID = para[i].getParameterAsInt();
			else if (name.equals("C_Invoice_ID"))
				p_C_Invoice_ID = para[i].getParameterAsInt();
			else if (name.equals("LBR_Cob_Movimento_ID"))
				p_LBR_Cob_Movimento_ID = para[i].getParameterAsInt();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}

	}

	@Override
	protected String doIt() throws Exception {
		
		List<MLBRBoleto> boletos = null;
		
		MLBRCobMovimento movimento = new MLBRCobMovimento(getCtx(), p_LBR_Cob_Movimento_ID, get_TrxName());
		
		if (p_C_Invoice_ID > 0) {
			MInvoice invoice = new MInvoice(getCtx(), p_C_Invoice_ID, get_TrxName());
			boletos = MLBRBoleto.getByInvoice(getCtx(), invoice, get_TrxName());
		} else if (p_LBR_Boleto_ID > 0) {
			boletos = new ArrayList<MLBRBoleto>();
			MLBRBoleto boleto = new MLBRBoleto(getCtx(), p_LBR_Boleto_ID, get_TrxName());
			boletos.add(boleto);
		}
		
		for ( MLBRBoleto boleto : boletos) {

			String movcode = movimento.getValue();
			if (movcode.equals("02") && boleto.isLBR_IsBaixado())
				// baixa de título já baixado - ignora
				continue;
			else if (movcode.equals("02") && boleto.isLBR_IsProtested())
				// baixa de título protestado
				movcode = "10";
			
			MLBRBoletoMovement newMov = MLBRBoletoMovement.createNewMovement(getCtx(), boleto, movcode, get_TrxName());
			newMov.saveEx();
			addLog( new StringBuilder(Msg.getMsg(getCtx(), "DocProcessed"))
					.append(": ")
					.append(Msg.getElement(getCtx(), "LBR_Boleto_ID"))
					.append(" ")
					.append(boleto.getDocumentNo())
					.append(", ")
					.append("Movimento")
					.append(" ")
					.append(newMov.getLBR_Cob_Movimento().getName()
							).toString() );

		}
		return "Ok";
	}

}
