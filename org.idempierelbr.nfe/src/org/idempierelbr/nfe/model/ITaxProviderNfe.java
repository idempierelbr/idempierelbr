package org.idempierelbr.nfe.model;

import org.compiere.model.MTaxProvider;
import org.compiere.process.ProcessInfo;
import org.idempierelbr.base.model.MLBRNotaFiscal;
import org.idempierelbr.base.model.MLBRNotaFiscalLine;

/**
 * NF Tax provider interface
 * @author Alan
 */
public interface ITaxProviderNfe {
		
	public boolean calculateNFTaxTotal(MTaxProvider provider, MLBRNotaFiscal nf);
	
	public boolean updateNFTax(MTaxProvider provider, MLBRNotaFiscalLine line);

	public boolean recalculateTax(MTaxProvider provider, MLBRNotaFiscalLine line, boolean newRecord);

	public boolean updateHeaderTax(MTaxProvider provider, MLBRNotaFiscalLine line);

	public String validateConnection(MTaxProvider provider, ProcessInfo pi) throws Exception;
	
}