package com.todobom.idempierelbr.banking.banrisul.process;

import org.idempierelbr.base.service.IBankCollection;
import org.idempierelbr.base.service.IBankCollectionFactory;

public class BankCollectionFactory implements IBankCollectionFactory {

	@Override
	public IBankCollection newBankCollectionInstance(String routingNo) {
		if (routingNo.equals("041"))
			return new BanrisulBankCollection();
		
		return null;
	}

}
