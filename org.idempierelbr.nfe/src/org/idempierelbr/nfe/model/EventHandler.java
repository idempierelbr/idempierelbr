package org.idempierelbr.nfe.model;

import org.adempiere.base.event.AbstractEventHandler;
import org.adempiere.base.event.IEventTopics;
import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MTax;
import org.compiere.model.MTaxProvider;
import org.compiere.model.PO;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.idempierelbr.tax.provider.TaxProviderFactory;
import org.idempierelbr.nfe.model.MLBRNotaFiscal;
import org.idempierelbr.nfe.model.MLBRNotaFiscalLine;
import org.osgi.service.event.Event;

public class EventHandler extends AbstractEventHandler {
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(EventHandler.class);

	@Override
	protected void initialize() {
		registerTableEvent(IEventTopics.PO_AFTER_NEW, MLBRNotaFiscal.Table_Name);
		registerTableEvent(IEventTopics.PO_AFTER_CHANGE, MLBRNotaFiscal.Table_Name);
		
		registerTableEvent(IEventTopics.PO_AFTER_NEW, MLBRNotaFiscalLine.Table_Name);
		registerTableEvent(IEventTopics.PO_AFTER_CHANGE, MLBRNotaFiscalLine.Table_Name);
		registerTableEvent(IEventTopics.PO_BEFORE_DELETE, MLBRNotaFiscalLine.Table_Name);
		
		registerTableEvent(IEventTopics.PO_AFTER_CHANGE, MLBRNotaFiscalTransp.Table_Name);
		
		registerTableEvent(IEventTopics.PO_BEFORE_NEW, X_LBR_NotaFiscalTrailer.Table_Name);
	}

	@Override
	protected void doHandleEvent(Event event) {
		PO po = getPO(event);
		log.info(po + " Type: " + event.getTopic());
		
		// Auto-Create child records when creating header record
		if (po instanceof MLBRNotaFiscal && event.getTopic().equals(IEventTopics.PO_AFTER_NEW)) {
			// Transportation
			X_LBR_NotaFiscalTransp transp = new X_LBR_NotaFiscalTransp(po.getCtx(), 0, po.get_TrxName());
			transp.setAD_Org_ID(po.getAD_Org_ID());
			transp.setLBR_NotaFiscal_ID(po.get_ID());
			transp.setLBR_NFeModShipping("0"); // Issuer
			transp.saveEx();
			
			// Pay
			MLBRNotaFiscalPay pay = new MLBRNotaFiscalPay(po.getCtx(), 0, po.get_TrxName());
			pay.setAD_Org_ID(po.getAD_Org_ID());
			pay.setLBR_NotaFiscal_ID(po.get_ID());
			pay.saveEx();
		}
		
		// Delete records from Trailer Tab when changing field in NF Transportation Tab
		if (po instanceof MLBRNotaFiscalTransp && event.getTopic().equals(IEventTopics.PO_AFTER_CHANGE) &&
				po.is_ValueChanged("LBR_NFeTranspVehicleType")) {

			X_LBR_NotaFiscalTrailer[] trailers = ((MLBRNotaFiscalTransp)po).getTrailers();
			
			for (X_LBR_NotaFiscalTrailer trailer : trailers) {
				trailer.deleteEx(true);
			}
		}
		
		// Check if there are maximum of 5 entries on NF Trailer Tab
		if (po instanceof X_LBR_NotaFiscalTrailer && event.getTopic().equals(IEventTopics.PO_BEFORE_NEW)) {
			int LBR_NotaFiscalTransp_ID = ((X_LBR_NotaFiscalTrailer)po).getLBR_NotaFiscalTransp_ID();
			MLBRNotaFiscalTransp transp = new MLBRNotaFiscalTransp(po.getCtx(), LBR_NotaFiscalTransp_ID, po.get_TrxName());
			
			X_LBR_NotaFiscalTrailer[] trailers = transp.getTrailers();
			if (trailers.length >= 5)
				addErrorMessage(event, "Limite de 5 registros por Nota Fiscal");
		}
		
		// Create/update/delete Doc Line Details
		if (po instanceof MLBRNotaFiscalLine || po instanceof MLBRNotaFiscal) {
			
			if (event.getTopic().equals(IEventTopics.PO_AFTER_CHANGE)) {  // Update
				boolean requery = false;
				String msg = null;
			
				if (po.get_ColumnIndex("C_Tax_ID") == -1)
					checkNeedForUpdateLBRDocLineDetails(po);
				else {
					if (po.is_ValueChanged("C_Tax_ID"))
						requery = true;

					if (isLBRDefaultTaxProvider(po, requery)) {	
						MLBRDocLineDetailsNfe details = MLBRDocLineDetailsNfe.getOfPO(po);
			
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
			}
			
			if (po instanceof MLBRNotaFiscalLine) {
				if (event.getTopic().equals(IEventTopics.PO_AFTER_NEW)) { // Create
					if (isLBRDefaultTaxProvider(po, true)) {
						String msg = createLBRDocLineDetails(po);
						
						if (msg != null)
							addErrorMessage(event, msg);
					}
				} else if (event.getTopic().equals(IEventTopics.PO_BEFORE_DELETE)) // Delete
					deleteLBRDocLineDetails(po);
			}
		}
	}
	
	/**
	 * 	Delete Doc Line Details record
	 * 	@param po persistent object
	 */
	private void deleteLBRDocLineDetails(PO po) {
		MLBRDocLineDetailsNfe details = MLBRDocLineDetailsNfe.getOfPO(po);
		
		if (details != null) {
			try {
				details.deleteEx(true);
			} catch (AdempiereException e) {
				e.printStackTrace();
				log.warning(MLBRDocLineDetailsNfe.Table_Name + " for " + po + " was not deleted.");
				
				details.setC_OrderLine_ID(0);
				details.setC_InvoiceLine_ID(0);
				details.setM_RMALine_ID(0);
				details.setLBR_NotaFiscalLine_ID(0);
				details.saveEx();
			}
		}
	}

	/**
	 * 	Create new Brazilian Doc Line Details record
	 * 	@param po persistent object
	 *	@return error message or null
	 */
	private String createLBRDocLineDetails(PO po) {
		MLBRDocLineDetailsNfe details = MLBRDocLineDetailsNfe.createFromPO(po);
		
		if (details != null) {
			details.populateFromPO(po);
			
			Object[] taxation = null;
			if (details.getLBR_NotaFiscalLine_ID() > 0) {
				MLBRNotaFiscalLine nfLine = new MLBRNotaFiscalLine(details.getCtx(), details.getLBR_NotaFiscalLine_ID(), details.get_TrxName());
				taxation = MLBRTaxNfe.getTaxes(details.getCtx(), nfLine, details.get_TrxName());
			}
			details.createTaxTransaction(taxation);

			details.saveEx();
		} else {
			log.severe(MLBRDocLineDetailsNfe.Table_Name + " for " + po + " was not created.");
			return "Could not create Doc Line Details record";
		}
		
		return null;
	}
	
	/**
	 * 	Requery to define if tax line is calculated by LBR Default Tax Provider
	 * 	@param po persistent object
	 */
	private void requeryLBRDefaultTaxProvider(PO po) {
		boolean isLBRDefaultTaxProvider = false;
		
		if (po.get_ValueAsInt("C_Tax_ID") != 0) {
			MTax tax = new MTax(po.getCtx(), po.get_ValueAsInt("C_Tax_ID"), po.get_TrxName());
			int C_Tax_Provider_ID = tax.getC_TaxProvider_ID();
			
			if (C_Tax_Provider_ID > 0) {
				MTaxProvider provider = new MTaxProvider(Env.getCtx(), C_Tax_Provider_ID, po.get_TrxName());
				
				if (provider.getTaxProviderClass().equals(TaxProviderFactory.DEFAULT_TAX_PROVIDER))
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
	 * 	Is tax line calculated by LBR Default Tax Provider?
	 * 	@param po persistent object
	 * 	@param requery true if C_Tax_ID should be revaluated
	 * 	@return true if is LBR Default Provider
	 */
	private boolean isLBRDefaultTaxProvider(PO po, boolean requery) {
		if (po.get_ColumnIndex("C_Tax_ID") == -1)
			return false;
		
		if (po.get_Attribute("IsLBRDefaultTaxProvider") == null)
			requery = true;
		
		if (!requery) {
			String isLBRDefaultTaxProvider = (String) po.get_Attribute("IsLBRDefaultTaxProvider");
			
			if (isLBRDefaultTaxProvider != null && isLBRDefaultTaxProvider.equals("Y"))
				return true;
		}
		
		requeryLBRDefaultTaxProvider(po);
		
		if (po.get_Attribute("IsLBRDefaultTaxProvider").equals("Y"))
			return true;
		
		return false;
	}
	
	/**
	 * 	Check the need for update Brazilian Doc Line Details record when PO change
	 * 	@param po persistent object
	 */
	private void checkNeedForUpdateLBRDocLineDetails(PO po) {
		if (!(isChangeAffectDocLineDetails(po) || isChangeAffectTaxTransaction(po)))
			return;
		
		if (po instanceof MLBRNotaFiscalLine) {			
			updateLBRDocLineDetails(po, null);
		} else if (po instanceof MLBRNotaFiscal) {
			MLBRNotaFiscalLine[] lines = ((MLBRNotaFiscal)po).getLines();
			
			for (MLBRNotaFiscalLine line : lines) {
				updateLBRDocLineDetails(po, line);
			}
		}
		
		return;
	}
	
	/**
	 * 	Update Brazilian Doc Line Details
	 * 	@param poChanged doc changed
	 * 	@param poLine doc line
	 */
	private void updateLBRDocLineDetails(PO poChanged, PO poLine) {
		if (poLine == null)
			poLine = poChanged;
		
		MLBRDocLineDetailsNfe details = MLBRDocLineDetailsNfe.getOfPO(poLine);
		
		if (details != null) {
			if (isChangeAffectDocLineDetails(poChanged))
				details.populateFromPO(poLine);
			
			if (isChangeAffectTaxTransaction(poChanged)) {
				Object[] taxation = null;
				if (details.getLBR_NotaFiscalLine_ID() > 0) {
					MLBRNotaFiscalLine nfLine =
							new MLBRNotaFiscalLine(details.getCtx(), details.getLBR_NotaFiscalLine_ID(), details.get_TrxName());
					taxation = MLBRTaxNfe.getTaxes(details.getCtx(), nfLine, details.get_TrxName());
				}
				details.createTaxTransaction(taxation);
			}
			
			details.saveEx();
		}
	}

	/**
	 * 	Verify if Doc Line Details must be updated
	 * 	@param po persistent object
	 * 	@return true if must updated
	 */
	private boolean isChangeAffectDocLineDetails(PO po)
	{
		if  (po instanceof MLBRNotaFiscalLine) {
			if (po.is_ValueChanged("AD_Org_ID") ||
					po.is_ValueChanged("M_Product_ID") ||
					po.is_ValueChanged ("C_Tax_ID") ||
					po.is_ValueChanged("Qty") ||
					po.is_ValueChanged ("PriceActual"))
				return true;
		}

		return false;
	}
	
	/**
	 * 	Verify if Tax Transaction must be updated
	 * 	@param po persistent object
	 * 	@return true if must updated
	 */
	private boolean isChangeAffectTaxTransaction(PO po)
	{
		if (po instanceof MLBRNotaFiscal) {
			if (po.is_ValueChanged("AD_Org_ID") ||
					po.is_ValueChanged("C_BPartner_ID") ||
					po.is_ValueChanged("C_BPartner_Location_ID") ||
					po.is_ValueChanged("DateDoc"))
				return true;
		} else if (po instanceof MLBRNotaFiscalLine) {
			if (po.is_ValueChanged("M_Product_ID") ||
					po.is_ValueChanged ("C_Tax_ID"))
				return true;
		}
		
		return false;
	}
}