package com.todobom.idempierelbr.banking.santander.process;

import org.idempierelbr.openitems.process.IBankCollection;
import org.idempierelbr.openitems.process.IBankCollectionFactory;

public class BankCollectionFactory implements IBankCollectionFactory {

	@Override
	public IBankCollection newBankCollectionInstance(String routingNo) {
		if (routingNo.equals("033") || routingNo.equals("008") || routingNo.equals("353"))
			return new SantanderBoletoCustomizer();
		
		return null;
	}

}
