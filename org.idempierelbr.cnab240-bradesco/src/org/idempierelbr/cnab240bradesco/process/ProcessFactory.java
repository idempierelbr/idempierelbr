package org.idempierelbr.cnab240bradesco.process;

import org.compiere.process.ProcessCall;
import org.idempierelbr.openitems.process.ICNABFactory;

public class ProcessFactory implements ICNABFactory {
	@Override
	public ProcessCall newProcessInstance(String routingNo, boolean isReturn) {
		if (routingNo.equals("237")) {
			if (!isReturn)
				return new BradescoGenerate();
			else
				return new BradescoReturn();
		}
		
		return null;
	}
}
