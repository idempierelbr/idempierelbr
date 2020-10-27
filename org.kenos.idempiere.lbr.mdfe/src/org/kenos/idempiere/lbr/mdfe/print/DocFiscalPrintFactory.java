package org.kenos.idempiere.lbr.mdfe.print;

import java.util.Properties;

import org.kenos.idempiere.lbr.base.event.IDocFiscalPrint;
import org.kenos.idempiere.lbr.base.event.IDocFiscalPrintFactory;
import org.kenos.idempiere.lbr.mdfe.model.MLBRMDFe;

/**
 * 		Process Factory
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: ProcessFactory.java, v1.0 2017/09/04 5:06:32 PM, ralexsander Exp $
 */
public class DocFiscalPrintFactory implements IDocFiscalPrintFactory
{
	@Override
	public IDocFiscalPrint get (int tableID, Properties ctx, int recordID, String trxName)
	{
		//	MDF-e print
		if (tableID == MLBRMDFe.Table_ID)
			return new DocFiscalPrint (new MLBRMDFe (ctx, recordID, trxName));
		return null;
	}
}	//	CalloutFactory
