package org.kenos.idempiere.lbr.mdfe.process;

import org.adempiere.base.IProcessFactory;
import org.adempierelbr.process.PrintFromXML;
import org.compiere.process.ProcessCall;

/**
 * 		Process Factory
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: ProcessFactory.java, v1.0 2017/09/04 5:06:32 PM, ralexsander Exp $
 */
public class ProcessFactory implements IProcessFactory
{
	/**	Report starter of this plugin	*/
	private static final String PRINTFROMXML = ProcessFactory.class.getPackage().getName() + ".PrintFromXML";
	
	@Override
	public ProcessCall newProcessInstance (String className)
	{
		if (MDFeRecepcao.PROCESS_NAME.equals(className) || MDFeRecepcao.class.getName().equals(className))
			return new MDFeRecepcao();
		
		if (MDFeRegEvento.PROCESS_NAME.equals(className) || MDFeRegEvento.class.getName().equals(className))
			return new MDFeRegEvento();
		
		if (MDFeRetRecepcao.PROCESS_NAME.equals(className) || MDFeRetRecepcao.class.getName().equals(className))
			return new MDFeRetRecepcao();
		
		if (PRINTFROMXML.equals(className))
			return new PrintFromXML() {};
			
		if (StatusMDFe.PROCESS_NAME.equals(className) || StatusMDFe.class.getName().equals(className))
			return new StatusMDFe();
		
		if (IncludeDocument.class.getName().equals(className))
			return new IncludeDocument();
		
		return null;
	}	//	newProcessInstance
}	//	CalloutFactory
