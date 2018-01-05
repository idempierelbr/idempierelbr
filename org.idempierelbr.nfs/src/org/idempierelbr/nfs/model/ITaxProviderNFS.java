package org.idempierelbr.nfs.model;

import org.compiere.model.MTaxProvider;
import org.compiere.process.ProcessInfo;

/**
 * NF Tax provider interface
 * @author Alan
 */
public interface ITaxProviderNFS {
		
	public boolean calculateNFSTaxTotal(MTaxProvider provider, MLBRNFS nfs);
	
	public boolean updateNFSTax(MTaxProvider provider, MLBRNFS nfs);

	public boolean recalculateTax(MTaxProvider provider, MLBRNFS nfs, boolean newRecord);

	public boolean updateHeaderTax(MTaxProvider provider, MLBRNFS nfs);

	public String validateConnection(MTaxProvider provider, ProcessInfo pi) throws Exception;
	
}