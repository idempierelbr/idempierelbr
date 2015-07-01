package org.idempierelbr.nfe.process;

import org.adempiere.base.IProcessFactory;
import org.compiere.process.ProcessCall;

public class ProcessFactory implements IProcessFactory {
	@Override
	public ProcessCall newProcessInstance(String className) {
		if (className.equals("org.idempierelbr.nfe.process.GenerateSefazWSCerts"))
			return new GenerateSefazWSCerts();
		else if (className.equals("org.idempierelbr.nfe.process.SendNFeLot"))
			return new SendNFeLot();
		else if (className.equals("org.idempierelbr.nfe.process.QueryNFeLot"))
			return new QueryNFeLot();
		else if (className.equals("org.idempierelbr.nfe.process.SendNFeEvent"))
			return new SendNFeEvent();
		else if (className.equals("org.idempierelbr.nfe.process.ValidateDigitalCertificate"))
			return new ValidateDigitalCertificate();
		else if (className.equals("org.idempierelbr.nfe.process.CreateNotaFiscal"))
			return new CreateNotaFiscal();
		else if (className.equals("org.idempierelbr.nfe.process.LinkNotaFiscal"))
			return new LinkNotaFiscal();
		else if (className.equals("org.idempierelbr.nfe.process.UnlinkNotaFiscal"))
			return new UnlinkNotaFiscal();
		else if (className.equals("org.idempierelbr.nfe.process.GenerateDanfe"))
			return new GenerateDanfe();
		else if (className.equals("org.idempierelbr.tax.process.DistributeAmtToDetails"))
			return new DistributeAmtToDetails();
		else if (className.equals("org.idempierelbr.nfe.process.NotaFiscalCreatePO"))
			return new NotaFiscalCreatePO();
		else if (className.equals("org.idempierelbr.nfe.process.ExportNFeXML"))
			return new ExportNFeXML();
		else if (className.equals("org.idempierelbr.nfe.process.InutNotaFiscal"))
			return new InutNotaFiscal();
		else
			return null;
	}
}
