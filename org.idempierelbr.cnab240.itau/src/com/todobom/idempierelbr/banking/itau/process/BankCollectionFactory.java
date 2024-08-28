package com.todobom.idempierelbr.banking.itau.process;

import org.idempierelbr.base.service.IBankCollection;
import org.idempierelbr.base.service.IBankCollectionFactory;

public class BankCollectionFactory implements IBankCollectionFactory {

	@Override
	public IBankCollection newBankCollectionInstance(String routingNo) {
		if (routingNo.equals("341"))
			return new ItauBankCollection();
		
		return null;
	}

}
