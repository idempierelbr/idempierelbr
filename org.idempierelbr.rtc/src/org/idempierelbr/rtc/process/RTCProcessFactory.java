package org.idempierelbr.rtc.process;

import org.adempiere.base.IProcessFactory;
import org.compiere.process.ProcessCall;

/**
 * Instancia os processos da apuração do fisco sem passar pelo Class.forName
 * do iDempiere.
 *
 * @author Alan Lescano
 */
public class RTCProcessFactory implements IProcessFactory {
	private static final String PACKAGE = "org.idempierelbr.rtc.process.";

	@Override
	public ProcessCall newProcessInstance(String className) {
		if (className == null || !className.startsWith(PACKAGE))
			return null;

		String simpleName = className.substring(PACKAGE.length());

		if ("RTCFiscoOpenRequests".equals(simpleName))
			return new RTCFiscoOpenRequests();
		else if ("RTCFiscoPollAndImport".equals(simpleName))
			return new RTCFiscoPollAndImport();
		else if ("RTCFiscoImportFromFile".equals(simpleName))
			return new RTCFiscoImportFromFile();

		return null;
	}
}
