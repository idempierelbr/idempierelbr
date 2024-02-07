package com.todobom.idempierelbr.banking.sicoob.process;

import org.idempierelbr.base.service.IBankCollection;
import org.idempierelbr.base.service.IBankCollectionFactory;

public class BankCollectionFactory implements IBankCollectionFactory {

	@Override
	public IBankCollection newBankCollectionInstance(String routingNo) {
		if (routingNo.equals("756"))
			return new SicoobBankCollection();
		
		return null;
	}

}
