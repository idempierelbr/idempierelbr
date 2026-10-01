package org.idempierelbr.mdfe.factory;

import org.adempiere.base.IProcessFactory;
import org.compiere.process.ProcessCall;
import org.idempierelbr.mdfe.process.CancelarMDFe;
import org.idempierelbr.mdfe.process.EncerrarMDFe;
import org.idempierelbr.mdfe.process.ImportarNFeMDFe;
import org.idempierelbr.mdfe.process.IncluirCondutorMDFe;
import org.idempierelbr.mdfe.process.TransmitirMDFe;

/**
 * Instancia os processos do MDF-e sem passar pelo Class.forName do iDempiere.
 */
public class MDFeProcessFactory implements IProcessFactory
{
	private static final String PACOTE = "org.idempierelbr.mdfe.process.";

	@Override
	public ProcessCall newProcessInstance(String className)
	{
		if (className == null || !className.startsWith(PACOTE))
			return null;

		String simples = className.substring(PACOTE.length());

		if ("TransmitirMDFe".equals(simples))
			return new TransmitirMDFe();
		else if ("CancelarMDFe".equals(simples))
			return new CancelarMDFe();
		else if ("EncerrarMDFe".equals(simples))
			return new EncerrarMDFe();
		else if ("IncluirCondutorMDFe".equals(simples))
			return new IncluirCondutorMDFe();
		else if ("ImportarNFeMDFe".equals(simples))
			return new ImportarNFeMDFe();

		return null;
	}
}
