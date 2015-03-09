package org.idempierelbr.openitems.process;

import java.io.InputStream;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.logging.Level;

import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.util.JRLoader;

import org.adempiere.base.Service;
import org.adempiere.exceptions.AdempiereException;
import org.adempiere.report.jasper.JRViewerProvider;
import org.compiere.model.MAttachment;
import org.compiere.model.MInvoice;
import org.compiere.model.MPInstance;
import org.compiere.model.MProcess;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Trx;

public class BoletoGenerateAndPrint extends SvrProcess
{
	private int p_C_Invoice_ID = 0;
	
	private static Integer GENERATE_BOLETO_PROCESS_ID = null;
	private final static String JASPER_FILENAME = "BoletoA4.jasper";
	
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
		
		p_C_Invoice_ID = getRecord_ID();
	}

	/**
	 * 	Get GenerateBoleto AD_Process_ID, based on class name and entity type  
	 *	@return AD_Process_ID
	 */
	private Integer getGenerateBoletoProcessID() {
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT AD_Process_ID FROM AD_Process ");
		sql.append("WHERE Classname = ? AND EntityType=?");

		Integer AD_Process_ID = DB.getSQLValue (get_TrxName(), sql.toString(),
				new Object[]{"org.idempierelbr.openitems.process.BoletoGenerateAndPrint", "LBR"});
		
		return AD_Process_ID;
	}

	
	/**
	 * Get an object JasperPrint with jasper report and parameters (subreports and invoice id)
	 * used for generating BOLETO PDF
	 * 
	 * @return JasperPrint
	 */
	public JasperPrint getJasperPrint() {
		
		// Check process
		if (GENERATE_BOLETO_PROCESS_ID == null) {
			GENERATE_BOLETO_PROCESS_ID = getGenerateBoletoProcessID();
		}
				
		if (GENERATE_BOLETO_PROCESS_ID == null || GENERATE_BOLETO_PROCESS_ID <= 0)
			return null;
		
		// Get jasper file(s) and parameters
		InputStream mainJasperInputStream = null;
		Map<String, Object> jasperParameters = new HashMap<String, Object>();
		MProcess process = new MProcess(getCtx(), GENERATE_BOLETO_PROCESS_ID, get_TrxName());
		
		MAttachment attachProcess = process.createAttachment();
		
		for (int i = attachProcess.getEntryCount() - 1; i >= 0; i--) 
		{
			if (attachProcess.getEntry(i).getName().equals(JASPER_FILENAME))
				mainJasperInputStream = attachProcess.getEntry(i).getInputStream();
				
			jasperParameters.put(attachProcess.getEntry(i).getName(),
					attachProcess.getEntry(i).getInputStream());
		}
		
		// If attachment not found, try to get from resources
		if (mainJasperInputStream == null) {
			mainJasperInputStream = getClass().getClassLoader()
					.getResourceAsStream("reports/" + JASPER_FILENAME);
			
			jasperParameters.put(JASPER_FILENAME, mainJasperInputStream);
			jasperParameters.put("REPORT_LOCALE", new Locale("pt", "BR"));
		}
		
		if (mainJasperInputStream == null)
			return null;
		
		// Add Invoice ID to parameters
		jasperParameters.put("INVOICE_ID", p_C_Invoice_ID);
		
		// Generate JasperPrint
		JasperPrint jasperPrint = null;
		
		try {
			JasperReport jasperReport = (JasperReport)JRLoader.loadObject(mainJasperInputStream);
			jasperPrint = JasperFillManager.fillReport(jasperReport, jasperParameters, Trx.get(get_TrxName(), false).getConnection());
		} catch(Exception e) {
			log.warning("Could not generate JasperPrint for Boletos " /* + getDocumentNo() */ );
		}
		
		return jasperPrint;
	}
	
	
	
	@Override
	protected String doIt() throws Exception {
		if (p_C_Invoice_ID <= 0)
			throw new Exception("No Nota Fiscal defined");
		
		MInvoice inv = new MInvoice(getCtx(), p_C_Invoice_ID, get_TrxName());
		
		int orgid = inv.getAD_Org_ID();
		
		// generate LBR_Boleto records - if needed
		
		// Calling a process from code: http://goo.gl/HwSckW
		ProcessInfo pi = new ProcessInfo("", 0,0,0);
		ProcessInfoParameter pi1 = new ProcessInfoParameter("AD_Org_ID", orgid, "","","");
		ProcessInfoParameter pi2 = new ProcessInfoParameter("C_Invoice_ID", p_C_Invoice_ID, "","","");
		pi.setParameter(new ProcessInfoParameter[] { pi1 , pi2 });
		
		MProcess pr = new Query(Env.getCtx(), MProcess.Table_Name, "value=?", get_TrxName())
		                        .setParameters(new Object[]{"LBR_Boleto_Generate"})
		                        .first();
		if (pr==null) {
		      log.warning("Process LBR_Boleto_Generate does not exist. ");
		} else {
			BoletoGenerate bolgen = new BoletoGenerate();
			
			MPInstance mpi = new MPInstance(Env.getCtx(), 0, null);
			mpi.setAD_Process_ID(pr.get_ID()); 
			mpi.setRecord_ID(0);
			mpi.save();
			pi.setAD_PInstance_ID(mpi.get_ID());

			// run the process
			if ( ! bolgen.startProcess(Env.getCtx(), pi, Trx.get(get_TrxName(), false)) )
				throw new AdempiereException("Could not generate LBR_Boleto records");
		}
		
		// caso não seja emitido e enviado pela empresa, o trabalho está concluído
		if ( ! inv.get_ValueAsString("LBR_CollectionIssueDistrib").equals("ORG"))
			return "";
		
		// gera impressão dos boletos
		JasperPrint nfJasperPrint = getJasperPrint();
		
		if (nfJasperPrint == null)
			throw new AdempiereException("Could not generate Boleto");
		
		if (!getProcessInfo().isBatch()) {
			JRViewerProvider viewerLauncher = Service.locator().locate(JRViewerProvider.class).getService();
			viewerLauncher.openViewer(nfJasperPrint, "Boletos da Fatura " + inv.getDocumentNo());
		}
		
		return "";
	}
}
