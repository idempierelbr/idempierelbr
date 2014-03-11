package org.idempierelbr.tax.provider;

import org.adempiere.base.ITaxProviderFactory;
import org.adempiere.model.ITaxProvider;

public class TaxProviderFactory implements ITaxProviderFactory {
	private static final String DEFAULT_TAX_PROVIDER = "org.idempierelbr.tax.DefaultTaxProvider";
	
	@Override
	public ITaxProvider newTaxProviderInstance(String className) {
		if (className.equalsIgnoreCase(DEFAULT_TAX_PROVIDER))
			return new DefaultTaxProvider();
		
		return null;
	}
}
