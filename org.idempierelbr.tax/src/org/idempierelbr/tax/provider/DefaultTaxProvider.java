package org.idempierelbr.tax.provider;

import java.util.logging.Level;

import org.adempiere.model.ITaxProvider;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MRMA;
import org.compiere.model.MRMALine;
import org.compiere.model.MTaxProvider;
import org.compiere.process.ProcessInfo;
import org.compiere.util.CLogger;

public class DefaultTaxProvider implements ITaxProvider {
	/**	Logger			*/
	private static CLogger s_log = CLogger.getCLogger(DefaultTaxProvider.class);

	@Override
	public boolean calculateOrderTaxTotal(MTaxProvider provider, MOrder order) {
		// TODO Auto-generated method stub
		s_log.log(Level.SEVERE, "DefaultTaxProvider: calculateOrderTaxTotal(MTaxProvider provider, MOrder order)");
		return true;
	}

	@Override
	public boolean updateOrderTax(MTaxProvider provider, MOrderLine line) {
		// TODO Auto-generated method stub
		s_log.log(Level.SEVERE, "DefaultTaxProvider: updateOrderTax(MTaxProvider provider, MOrderLine line)");
		return true;
	}

	@Override
	public boolean recalculateTax(MTaxProvider provider, MOrderLine line,
			boolean newRecord) {
		// TODO Auto-generated method stub
		s_log.log(Level.SEVERE, "DefaultTaxProvider: recalculateTax(MTaxProvider provider, MOrderLine line, boolean newRecord)");
		return true;
	}

	@Override
	public boolean updateHeaderTax(MTaxProvider provider, MOrderLine line) {
		// TODO Auto-generated method stub
		s_log.log(Level.SEVERE, "DefaultTaxProvider: updateHeaderTax(MTaxProvider provider, MOrderLine line)");
		return true;
	}

	@Override
	public boolean calculateInvoiceTaxTotal(MTaxProvider provider,
			MInvoice invoice) {
		// TODO Auto-generated method stub
		s_log.log(Level.SEVERE, "DefaultTaxProvider: calculateInvoiceTaxTotal(MTaxProvider provider, MInvoice invoice)");
		return true;
	}

	@Override
	public boolean updateInvoiceTax(MTaxProvider provider, MInvoiceLine line) {
		// TODO Auto-generated method stub
		s_log.log(Level.SEVERE, "DefaultTaxProvider: updateInvoiceTax(MTaxProvider provider, MInvoiceLine line)");
		return true;
	}

	@Override
	public boolean recalculateTax(MTaxProvider provider, MInvoiceLine line,
			boolean newRecord) {
		// TODO Auto-generated method stub
		s_log.log(Level.SEVERE, "DefaultTaxProvider: recalculateTax(MTaxProvider provider, MInvoiceLine line, boolean newRecord)");
		return true;
	}

	@Override
	public boolean updateHeaderTax(MTaxProvider provider, MInvoiceLine line) {
		// TODO Auto-generated method stub
		s_log.log(Level.SEVERE, "DefaultTaxProvider: updateHeaderTax(MTaxProvider provider, MInvoiceLine line)");
		return true;
	}

	@Override
	public boolean calculateRMATaxTotal(MTaxProvider provider, MRMA rma) {
		// TODO Auto-generated method stub
		s_log.log(Level.SEVERE, "DefaultTaxProvider: calculateRMATaxTotal(MTaxProvider provider, MRMA rma)");
		return true;
	}

	@Override
	public boolean updateRMATax(MTaxProvider provider, MRMALine line) {
		// TODO Auto-generated method stub
		s_log.log(Level.SEVERE, "DefaultTaxProvider: updateRMATax(MTaxProvider provider, MRMALine line)");
		return true;
	}

	@Override
	public boolean recalculateTax(MTaxProvider provider, MRMALine line,
			boolean newRecord) {
		// TODO Auto-generated method stub
		s_log.log(Level.SEVERE, "DefaultTaxProvider: recalculateTax(MTaxProvider provider, MRMALine line, boolean newRecord)");
		return true;
	}

	@Override
	public boolean updateHeaderTax(MTaxProvider provider, MRMALine line) {
		// TODO Auto-generated method stub
		s_log.log(Level.SEVERE, "DefaultTaxProvider: updateHeaderTax(MTaxProvider provider, MRMALine line)");
		return true;
	}

	@Override
	public String validateConnection(MTaxProvider provider, ProcessInfo pi)
			throws Exception {
		// TODO Auto-generated method stub
		s_log.log(Level.SEVERE, "DefaultTaxProvider: validateConnection(MTaxProvider provider, ProcessInfo pi)");
		return null;
	}

}
