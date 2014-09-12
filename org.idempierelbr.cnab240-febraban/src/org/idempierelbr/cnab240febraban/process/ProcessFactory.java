package org.idempierelbr.cnab240febraban.process;

import org.compiere.process.ProcessCall;
import org.idempierelbr.openitems.process.ICNABFactory;

public class ProcessFactory implements ICNABFactory {
	@Override
	public ProcessCall newProcessInstance(String routingNo, boolean isReturn) {
		if (!isReturn)
			return new FebrabanGenerate();
		else
			return new FebrabanReturn();
	}
}
