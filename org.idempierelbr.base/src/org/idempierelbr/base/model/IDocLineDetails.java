package org.idempierelbr.base.model;

import org.compiere.model.PO;

public interface IDocLineDetails {
	/**
	 * 	Calculate brazilian taxes
	 * 	@param original order/invoice
	 * 	@param line to be processed
	 * 	@param updateTaxes
	 * 	@return error message or null
	 */
	public String calculateTaxes(PO po, PO poLine);

	/**
	 * 	Determine if PO prints discount
	 * 	@param po persistent object (doc line)
	 * 	@return true if is printed
	 */
	public boolean isDiscountPrinted(PO po);
	
	/**
	 * 	Populate the Doc Line Details with values from PO.
	 * 	@param po persistent object
	 */
	public void populateFromPO(PO po);
}
