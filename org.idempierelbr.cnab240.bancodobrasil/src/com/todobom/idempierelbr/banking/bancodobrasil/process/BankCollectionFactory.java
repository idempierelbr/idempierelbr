package com.todobom.idempierelbr.banking.bancodobrasil.process;

import org.idempierelbr.base.service.IBankCollection;
import org.idempierelbr.base.service.IBankCollectionFactory;

public class BankCollectionFactory implements IBankCollectionFactory {

	@Override
	public IBankCollection newBankCollectionInstance(String routingNo) {
		if (routingNo.equals("001"))
			return new BancoDoBrasilBankCollection();
		
		return null;
	}

}
