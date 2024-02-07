package com.todobom.idempierelbr.banking.bradesco.process;

import org.idempierelbr.base.service.IBankCollection;
import org.idempierelbr.base.service.IBankCollectionFactory;

public class BankCollectionFactory implements IBankCollectionFactory {

	@Override
	public IBankCollection newBankCollectionInstance(String routingNo) {
		if (routingNo.equals("237"))
			return new BradescoBankCollection();
		
		return null;
	}

}
