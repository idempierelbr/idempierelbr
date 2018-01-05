package org.idempierelbr.nfs.process;

import org.adempiere.base.IProcessFactory;
import org.compiere.process.ProcessCall;

public class ProcessFactory implements IProcessFactory {
	@Override
	public ProcessCall newProcessInstance(String className) {

		if (className.equals("org.idempierelbr.nfs.process.ProcQueryNFSLot"))
			return new ProcQueryNFSLot();
		else if (className.equals("org.idempierelbr.nfs.process.ProcSendNFSLot"))
			return new ProcSendNFSLot();
		else if (className.equals("org.idempierelbr.nfs.process.ProcSendNFS"))
			return new ProcSendNFS();
		else if (className.equals("org.idempierelbr.nfs.process.ProcCancelNFS"))
			return new ProcCancelNFS();
		else if (className.equals("org.idempierelbr.nfs.process.ProcPrintDANFE"))
			return new ProcPrintDANFE();
		else if (className.equals("org.idempierelbr.nfs.process.ProcSendEMail"))
			return new ProcSendEMail();
		

		else
			return null;
	}
}
