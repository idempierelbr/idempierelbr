package org.idempierelbr.nfs.model;

import org.adempiere.base.event.AbstractEventHandler;
import org.adempiere.base.event.IEventTopics;
import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrderLine;
import org.compiere.model.MTax;
import org.compiere.model.MTaxProvider;
import org.compiere.model.PO;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.idempierelbr.tax.model.MLBRDocLineDetailsTax;
import org.idempierelbr.tax.provider.TaxProviderFactory;
import org.osgi.service.event.Event;

public class EventHandler extends AbstractEventHandler {
	/** Logger */
	private static CLogger log = CLogger.getCLogger(EventHandler.class);

	@Override
	protected void initialize() {
		registerTableEvent(IEventTopics.PO_BEFORE_NEW, MLBRNFS.Table_Name);
		registerTableEvent(IEventTopics.PO_BEFORE_CHANGE, MLBRNFS.Table_Name);
		registerTableEvent(IEventTopics.PO_AFTER_NEW, MLBRNFS.Table_Name);
		registerTableEvent(IEventTopics.PO_AFTER_CHANGE, MLBRNFS.Table_Name);
		registerTableEvent(IEventTopics.PO_BEFORE_DELETE, MLBRNFS.Table_Name);
	}

	@Override
	protected void doHandleEvent(Event event) {
		PO po = getPO(event);
		log.info(po + " Type: " + event.getTopic());

		// Copy DateDoc to DateAcct
		if (po instanceof MLBRNFS
				&& (event.getTopic().equals(IEventTopics.PO_BEFORE_NEW) || event
						.getTopic().equals(IEventTopics.PO_BEFORE_CHANGE))) {
			po.set_ValueOfColumn("DateAcct", po.get_Value("DateDoc"));
		}

		// Create/update/delete Doc Line Details
		if (po instanceof MLBRNFS) {

			if (event.getTopic().equals(IEventTopics.PO_AFTER_CHANGE)) { // Update
				boolean requery = false;
				String msg = null;

				if (po.get_ColumnIndex("C_Tax_ID") == -1)
					checkNeedForUpdateLBRDocLineDetails(po);
				else {
					if (po.is_ValueChanged("C_Tax_ID"))
						requery = true;

					if (isLBRDefaultTaxProvider(po, requery)) {
						MLBRDocLineDetailsNFS details = MLBRDocLineDetailsNFS
								.getOfPO(po);

						if (details == null) {
							msg = createLBRDocLineDetails(po);

							if (msg != null)
								addErrorMessage(event, msg);
						}

						if (msg == null)
							checkNeedForUpdateLBRDocLineDetails(po);
					} else {
						deleteLBRDocLineDetails(po);
					}
				}
				// delete
			} else if (event.getTopic().equals(IEventTopics.PO_BEFORE_DELETE)) {
				deleteLBRDocLineDetails(po);

				// create new
			} else if (event.getTopic().equals(IEventTopics.PO_AFTER_NEW)) { // Create
				if (isLBRDefaultTaxProvider(po, true)) {
					String msg = createLBRDocLineDetails(po);

					if (msg != null)
						addErrorMessage(event, msg);
				}
			}
		}
	}

	/**
	 * Delete Doc Line Details record
	 * 
	 * @param po
	 *            persistent object
	 */
	private void deleteLBRDocLineDetails(PO po) {
		MLBRDocLineDetailsNFS details = MLBRDocLineDetailsNFS.getOfPO(po);

		if (details != null) {
			try {
				details.deleteEx(true);
			} catch (AdempiereException e) {
				e.printStackTrace();
				log.warning(MLBRDocLineDetailsNFS.Table_Name + " for " + po
						+ " was not deleted.");

				details.setC_OrderLine_ID(0);
				details.setC_InvoiceLine_ID(0);
				details.setM_RMALine_ID(0);
				details.setLBR_NotaFiscalLine_ID(0);
				details.saveEx();
			}
		}
	}

	/**
	 * Create new Brazilian Doc Line Details record
	 * 
	 * @param po
	 *            persistent object
	 * @return error message or null
	 */
	private String createLBRDocLineDetails(PO po) {
		MLBRDocLineDetailsNFS details = MLBRDocLineDetailsNFS.createFromPO(po);

		if (details != null) {
			PO lineFrom = null;
			boolean copyDetails = false;

			// Check if details should be copied
			if (po instanceof MLBRNFS) {
				MLBRNFS nfLine = (MLBRNFS) po;

				if (nfLine.getC_OrderLine_ID() > 0) {
					copyDetails = true;
					lineFrom = new MOrderLine(details.getCtx(),
							nfLine.getC_OrderLine_ID(), details.get_TrxName());
				} else if (nfLine.getC_InvoiceLine_ID() > 0) {
					copyDetails = true;
					lineFrom = new MInvoiceLine(details.getCtx(),
							nfLine.getC_InvoiceLine_ID(), details.get_TrxName());
				}
			}

			if (copyDetails)
				details.copyFrom(MLBRDocLineDetailsTax.getOfPO(lineFrom));
			else {
				details.populateFromPO(po);

				Object[] taxation = null;
				if (details.get_ValueAsInt("LBR_NFS_ID") > 0) {
					MLBRNFS nfLine = new MLBRNFS(details.getCtx(),
							details.get_ValueAsInt("LBR_NFS_ID"),
							details.get_TrxName());
					taxation = MLBRTaxNFS.getTaxes(details.getCtx(), nfLine,
							details.get_TrxName());
				}
				details.createTaxTransaction(taxation);
			}

			details.saveEx();
		} else {
			log.severe(MLBRDocLineDetailsNFS.Table_Name + " for " + po
					+ " was not created.");
			return "Could not create Doc Line Details record";
		}

		return null;
	}

	/**
	 * Requery to define if tax line is calculated by LBR Default Tax Provider
	 * 
	 * @param po
	 *            persistent object
	 */
	private void requeryLBRDefaultTaxProvider(PO po) {
		boolean isLBRDefaultTaxProvider = false;

		if (po.get_ValueAsInt("C_Tax_ID") != 0) {
			MTax tax = new MTax(po.getCtx(), po.get_ValueAsInt("C_Tax_ID"),
					po.get_TrxName());
			int C_Tax_Provider_ID = tax.getC_TaxProvider_ID();

			if (C_Tax_Provider_ID > 0) {
				MTaxProvider provider = new MTaxProvider(Env.getCtx(),
						C_Tax_Provider_ID, po.get_TrxName());

				if (provider.getTaxProviderClass().equals(
						TaxProviderFactory.DEFAULT_TAX_PROVIDER))
					isLBRDefaultTaxProvider = true;
			}
		}

		if (isLBRDefaultTaxProvider)
			po.set_Attribute("IsLBRDefaultTaxProvider", "Y");
		else
			po.set_Attribute("IsLBRDefaultTaxProvider", "N");

		return;
	}

	/**
	 * Is tax line calculated by LBR Default Tax Provider?
	 * 
	 * @param po
	 *            persistent object
	 * @param requery
	 *            true if C_Tax_ID should be revaluated
	 * @return true if is LBR Default Provider
	 */
	private boolean isLBRDefaultTaxProvider(PO po, boolean requery) {
		if (po.get_ColumnIndex("C_Tax_ID") == -1)
			return false;

		if (po.get_Attribute("IsLBRDefaultTaxProvider") == null)
			requery = true;

		if (!requery) {
			String isLBRDefaultTaxProvider = (String) po
					.get_Attribute("IsLBRDefaultTaxProvider");

			if (isLBRDefaultTaxProvider != null
					&& isLBRDefaultTaxProvider.equals("Y"))
				return true;
		}

		requeryLBRDefaultTaxProvider(po);

		if (po.get_Attribute("IsLBRDefaultTaxProvider").equals("Y"))
			return true;

		return false;
	}

	/**
	 * Check the need for update Brazilian Doc Line Details record when PO
	 * change
	 * 
	 * @param po
	 *            persistent object
	 */
	private void checkNeedForUpdateLBRDocLineDetails(PO po) {
		if (!(isChangeAffectDocLineDetails(po) || isChangeAffectTaxTransaction(po)))
			return;

		if (po instanceof MLBRNFS)
			updateLBRDocLineDetails(po, null);

		return;
	}

	/**
	 * Update Brazilian Doc Line Details
	 * 
	 * @param poChanged
	 *            doc changed
	 * @param poLine
	 *            doc line
	 */
	private void updateLBRDocLineDetails(PO poChanged, PO poLine) {
		if (poLine == null)
			poLine = poChanged;

		MLBRDocLineDetailsNFS details = MLBRDocLineDetailsNFS.getOfPO(poLine);

		if (details != null) {
			if (isChangeAffectDocLineDetails(poChanged))
				details.populateFromPO(poLine);

			if (isChangeAffectTaxTransaction(poChanged)) {
				Object[] taxation = null;
				if (details.get_ValueAsInt("LBR_NFS_ID") > 0) {
					MLBRNFS nfLine = new MLBRNFS(details.getCtx(),
							details.get_ValueAsInt("LBR_NFS_ID"),
							details.get_TrxName());
					taxation = MLBRTaxNFS.getTaxes(details.getCtx(), nfLine,
							details.get_TrxName());
				}
				details.createTaxTransaction(taxation);
			}

			details.saveEx();
		}
	}

	/**
	 * Verify if Doc Line Details must be updated
	 * 
	 * @param po
	 *            persistent object
	 * @return true if must updated
	 */
	private boolean isChangeAffectDocLineDetails(PO po) {
		if (po instanceof MLBRNFS) {
			if (po.is_ValueChanged("AD_Org_ID")
					|| po.is_ValueChanged("M_Product_ID")
					|| po.is_ValueChanged("C_Tax_ID")
					|| po.is_ValueChanged("Qty") 
					|| po.is_ValueChanged("Price"))
				return true;
		}

		return false;
	}

	/**
	 * Verify if Tax Transaction must be updated
	 * 
	 * @param po
	 *            persistent object
	 * @return true if must updated
	 */
	private boolean isChangeAffectTaxTransaction(PO po) {
		if (po instanceof MLBRNFS) {
			if (po.is_ValueChanged("AD_Org_ID")
					|| po.is_ValueChanged("C_BPartner_ID")
					|| po.is_ValueChanged("C_DocTypeTarget_ID")
					|| po.is_ValueChanged("C_BPartner_Location_ID")
					|| po.is_ValueChanged("DateDoc")
					|| po.is_ValueChanged("M_Product_ID")
					|| po.is_ValueChanged("C_Tax_ID"))
				return true;
		}

		return false;
	}
}