package org.kenos.idempiere.lbr.mdfe.print;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MAttachment;
import org.kenos.idempiere.lbr.base.event.IDocFiscalPrint;
import org.kenos.idempiere.lbr.mdfe.model.MLBRMDFe;
import org.kenos.idempiere.lbr.mdfe.util.MDFeUtil;

/**
 * 		Process Factory
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: ProcessFactory.java, v1.0 2017/09/04 5:06:32 PM, ralexsander Exp $
 */
public class DocFiscalPrint implements IDocFiscalPrint
{
	final private MLBRMDFe mdfe;
	private String message = null;
	private boolean isError = false;
	
	/**
	 * 	Constructor
	 * 	@param mdfe
	 */
	public DocFiscalPrint (MLBRMDFe mdfe)
	{
		this.mdfe = mdfe;

		//	Message
		if (MDFeUtil.STATUS_ENCERRADO.equals(mdfe.getlbr_NFeStatus()))
			message = "MDF-E J\u00C1 ENCERRADO\nC\u00D3PIA DE SEGURAN\u00C7A";
		
		else if (MDFeUtil.STATUS_CANCELADO.equals(mdfe.getlbr_NFeStatus()))
			message = "CANCELADO    CANCELADO\nC\u00D3PIA DE SEGURAN\u00C7A";
		
		else if (!MDFeUtil.STATUS_AUTORIZADO.equals(mdfe.getlbr_NFeStatus()))
			message = "N\u00E3o \u00E9 permitido imprimir o DAMDFE - Sem autorizac\u00E3o";
	}	//	DocFiscalPrint
	
	@Override
	public String getExtension()
	{
		return "mdfe.xml";
	}	//	getExtension

	@Override
	public String getMessage()
	{
		return message;
	}	//	getMessage

	@Override
	public String getReportName()
	{
		return "DAMDFeRetratoA4.jasper";
	}	//	getReportName

	@Override
	public String getXMLFile()
	{
		return null;
	}	//	getXMLFile

	@Override
	public String getDatePattern()
	{
		return "yyyy-MM-dd'T'HH:mm:ssXXX";
	}	//	getDatePattern

	@Override
	public MAttachment getAttachment()
	{
		return mdfe.getAttachment (true);
	}	//	getAttachment

	@Override
	public Map<String, Object> getParameters()
	{
		try
		{
			return getReportFile (getReportName());
		}
		catch (Exception e)
		{
			e.printStackTrace();
			message = e.getMessage();
		}
		
		isError = true;
		return null;
	}	//	getParameters
	
	@Override
	public boolean isError()
	{
		return isError;
	}	//	isError

	/**
	 * 		Get Report File
	 * 
	 * 	@return
	 * 	@throws AdempiereException
	 * 	@throws IOException 
	 */
	private Map<String, Object> getReportFile (String reportName) throws AdempiereException, IOException
	{
		Map<String, Object> map = new HashMap<String, Object>();
		String packageName = "org/kenos/idempiere/lbr/mdfe/reports/";
		//
		ClassLoader cl = getClass().getClassLoader();
		InputStream report = cl.getResourceAsStream(packageName + reportName);
		
		if (report == null)
			throw new AdempiereException ("@Error@ report not found");
		
		//	Main Report
		map.put (reportName, report);

		return map;
	}	//	doIt
}	//	CalloutFactory
