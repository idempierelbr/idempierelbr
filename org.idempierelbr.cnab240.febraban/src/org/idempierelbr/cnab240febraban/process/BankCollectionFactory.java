package org.idempierelbr.cnab240febraban.process;

import org.idempierelbr.base.service.IBankCollection;
import org.idempierelbr.base.service.IBankCollectionFactory;

public class BankCollectionFactory implements IBankCollectionFactory {

	@Override
	public IBankCollection newBankCollectionInstance(String routingNo) {
		return new FebrabanBankCollection();
	}
}
