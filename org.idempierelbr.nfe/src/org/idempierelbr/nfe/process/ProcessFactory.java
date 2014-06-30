package org.idempierelbr.nfe.process;

import org.adempiere.base.IProcessFactory;
import org.compiere.process.ProcessCall;

public class ProcessFactory implements IProcessFactory {
	@Override
	public ProcessCall newProcessInstance(String className) {
		if (className.equals("org.idempierelbr.nfe.process.ProcGenerateNFeWebServiceCert"))
			return new ProcGenerateNFeWebServiceCert();
		else if (className.equals("org.idempierelbr.nfe.process.SendNFeLot"))
			return new SendNFeLot();
		else if (className.equals("org.idempierelbr.nfe.process.QueryNFeLot"))
			return new QueryNFeLot();
		else if (className.equals("org.idempierelbr.nfe.process.SendNFeEvent"))
			return new SendNFeEvent();
		else if (className.equals("org.idempierelbr.nfe.process.ValidateDigitalCertificate"))
			return new ValidateDigitalCertificate();
		else
			return null;
	}
}
