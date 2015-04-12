package org.idempierelbr.tax.process;

import org.adempiere.base.IProcessFactory;
import org.compiere.process.ProcessCall;

public class ProcessFactory implements IProcessFactory {

	@Override
	public ProcessCall newProcessInstance(String className) {

		/*
		 * Import CSV IBPTax
		 */
		if (className.equals("org.idempierelbr.tax.process.IBPTaxImport"))
			return new IBPTaxImport();	
		else
			return null;
	}
}
