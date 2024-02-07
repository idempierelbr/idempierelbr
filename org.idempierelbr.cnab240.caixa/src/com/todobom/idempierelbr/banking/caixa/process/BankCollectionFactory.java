
package com.todobom.idempierelbr.banking.caixa.process;

import org.idempierelbr.base.service.IBankCollection;
import org.idempierelbr.base.service.IBankCollectionFactory;

/**
 * 
 * @author Claudemir Todo Bom
 *
 * Patrocinado por FIT Soluções - www.fitsolucoes.biz
 *
 * LICENÇA: GPLv2 - http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt
 *
 */
public class BankCollectionFactory implements IBankCollectionFactory {

	@Override
	public IBankCollection newBankCollectionInstance(String routingNo) {
		if (routingNo.equals("104"))
			return new CaixaBankCollection();
		
		return null;
	}

}
