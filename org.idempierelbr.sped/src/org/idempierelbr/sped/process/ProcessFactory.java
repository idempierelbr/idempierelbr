package org.idempierelbr.sped.process;

import org.adempiere.base.IProcessFactory;
import org.compiere.process.ProcessCall;

public class ProcessFactory implements IProcessFactory {

	@Override
	public ProcessCall newProcessInstance(String className) {
		if (className.equals("org.idempierelbr.sped.process.ProcGenerateEFDICMSIPI"))
			return new ProcGenerateEFDICMSIPI();
		
		if (className.equals("org.idempierelbr.sped.process.ProcTaxAssessment"))
			return new ProcTaxAssessment();
		
		if (className.equals("org.idempierelbr.sped.process.ProcGenerateEFDPISCOFINS"))
                    return new ProcGenerateEFDPISCOFINS();
		
		return null;
	}

}
