package org.idempierelbr.openitems.process;


public interface IBankCollectionFactory {
	/**
	 * Create new IBoletoCustomizer instance
	 * @param routingNo bank routing number
	 * @return new IBoletoCustomizer instance
	 */
	public IBankCollection newBankCollectionInstance(String routingNo);
	
}
