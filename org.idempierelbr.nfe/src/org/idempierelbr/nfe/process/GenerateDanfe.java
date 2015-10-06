package org.idempierelbr.nfe.process;

import java.util.logging.Level;

import net.sf.jasperreports.engine.JasperPrint;
import org.adempiere.base.Service;
import org.adempiere.exceptions.AdempiereException;
import org.adempiere.report.jasper.JRViewerProvider;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.idempierelbr.nfe.model.MLBRNotaFiscal;

public class GenerateDanfe extends SvrProcess
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
			else {
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
			}
		}
		
		p_LBR_NotaFiscal_ID = getRecord_ID();
	}
	
	@Override
	protected String doIt() throws Exception {
		if (p_LBR_NotaFiscal_ID <= 0)
			throw new Exception("Nota Fiscal inválida!");
		
		MLBRNotaFiscal nf = new MLBRNotaFiscal(getCtx(), p_LBR_NotaFiscal_ID, get_TrxName());
		
		JasperPrint nfJasperPrint = nf.getJasperPrint();
		
		if (nfJasperPrint == null)
			throw new AdempiereException("Não foi possível gerar a DANFE!");
		
		if (!getProcessInfo().isBatch()) {
			JRViewerProvider viewerLauncher = Service.locator().locate(JRViewerProvider.class).getService();
			viewerLauncher.openViewer(nfJasperPrint, "DANFE " + nf.getDocumentNo());
		}
		
		return "";
	}
}
