package org.idempierelbr.base.service;


public interface IBankCollectionFactory {
	/**
	 * Create new IBoletoCustomizer instance
	 * @param routingNo bank routing number
	 * @return new IBoletoCustomizer instance
	 */
	public IBankCollection newBankCollectionInstance(String routingNo);
	
}
