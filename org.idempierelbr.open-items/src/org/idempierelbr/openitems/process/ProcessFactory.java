package org.idempierelbr.openitems.process;

import org.adempiere.base.IProcessFactory;
import org.compiere.process.ProcessCall;

public class ProcessFactory implements IProcessFactory {
	@Override
	public ProcessCall newProcessInstance(String className) {
		if (className.equals("org.idempierelbr.openitems.process.BoletoGenerate"))
			return new BoletoGenerate();
		else if (className.equals("org.idempierelbr.openitems.process.CNABGenerate"))
			return new CNABGenerate();
		else if (className.equals("org.idempierelbr.openitems.process.CNABReturn"))
			return new CNABReturn();
		if (className.equals("org.idempierelbr.openitems.process.BoletoGenerateAndPrint"))
			return new BoletoGenerateAndPrint();
		if (className.equals("org.idempierelbr.openitems.process.BoletoInstructions"))
			return new BoletoInstructions();
		else
			return null;
	}
}
