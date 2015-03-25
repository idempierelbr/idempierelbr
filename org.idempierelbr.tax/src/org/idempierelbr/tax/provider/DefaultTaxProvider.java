package org.idempierelbr.tax.provider;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.logging.Level;

import org.adempiere.model.ITaxProvider;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MInvoiceTax;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MOrderTax;
import org.compiere.model.MRMA;
import org.compiere.model.MRMALine;
import org.compiere.model.MRMATax;
import org.compiere.model.MTax;
import org.compiere.model.MTaxProvider;
import org.compiere.model.PO;
import org.compiere.process.ProcessInfo;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.idempierelbr.tax.model.MLBRDocLineCOFINS;
import org.idempierelbr.tax.model.MLBRDocLineDetailsTax;
import org.idempierelbr.tax.model.MLBRDocLineICMS;
import org.idempierelbr.tax.model.MLBRDocLineIPI;
import org.idempierelbr.tax.model.MLBRDocLineImportTax;
import org.idempierelbr.tax.model.MLBRDocLinePIS;
import org.idempierelbr.tax.model.MLBRTax;

public class DefaultTaxProvider implements ITaxProvider {
	/**	Logger			*/
	private static CLogger s_log = CLogger.getCLogger(DefaultTaxProvider.class);

	@Override
	public boolean calculateOrderTaxTotal(MTaxProvider provider, MOrder order) {
		//	Lines
		BigDecimal totalLines = Env.ZERO;
		ArrayList<Integer> taxList = new ArrayList<Integer>();
		MOrderLine[] lines = order.getLines(true, null);
		for (int i = 0; i < lines.length; i++)
		{
			MOrderLine line = lines[i];
			totalLines = totalLines.add(line.getLineNetAmt());
			Integer taxID = new Integer(line.getC_Tax_ID());
			if (taxID > 0 && !taxList.contains(taxID))
			{
				MTax tax = new MTax(order.getCtx(), taxID, order.get_TrxName());
				if (tax.getC_TaxProvider_ID() == 0 ||
						!tax.getC_TaxProvider().getC_TaxProviderCfg().getTaxProviderClass().equals(TaxProviderFactory.DEFAULT_TAX_PROVIDER))
					continue;
				MOrderTax oTax = MOrderTax.get (line, order.getPrecision(), false, order.get_TrxName());	//	current Tax
				oTax.setIsTaxIncluded(order.isTaxIncluded());
				oTax.setC_TaxProvider_ID(tax.getC_TaxProvider_ID());
				if (!oTax.calculateTaxFromLines())
					return false;
				if (!oTax.save(order.get_TrxName()))
					return false;
				taxList.add(taxID);
			}
		}
		
		// Taxes
		Map<Integer, MOrderTax> oTaxList = new HashMap<Integer, MOrderTax>();
		BigDecimal grandTotal = totalLines;

		MOrderTax[] taxes = order.getTaxes(true);
		for (int i = 0; i < taxes.length; i++)
		{
			MOrderTax oTax = taxes[i];
			if (oTax.getC_TaxProvider_ID() == 0 ||
					!oTax.getC_TaxProvider().getC_TaxProviderCfg().getTaxProviderClass().equals(TaxProviderFactory.DEFAULT_TAX_PROVIDER)) {
				if (!order.isTaxIncluded())
					grandTotal = grandTotal.add(oTax.getTaxAmt());
				continue;
			}
			
			MTax tax = new MTax(order.getCtx(), oTax.getC_Tax_ID(), order.get_TrxName());
			if (tax.isSummary())
			{
				MTax[] cTaxes = tax.getChildTaxes(false);
				for (int j = 0; j < cTaxes.length; j++)
				{
					MTax cTax = cTaxes[j];
					MOrderTax newOTax = new MOrderTax(order.getCtx(), 0, order.get_TrxName());
					newOTax.setAD_Org_ID(order.getAD_Org_ID());
					newOTax.setC_Order_ID(order.getC_Order_ID());
					newOTax.setC_TaxProvider_ID(provider.get_ID());
					newOTax.setC_Tax_ID(cTax.getC_Tax_ID());
					newOTax.setIsTaxIncluded(order.isTaxIncluded());
					newOTax.setTaxBaseAmt(Env.ZERO);
					newOTax.setTaxAmt(Env.ZERO);
					if (!newOTax.save(order.get_TrxName()))
						return false;
					
					oTaxList.put(new Integer(cTax.get_ValueAsInt("LBR_TaxGroup_ID")), newOTax);
				}
				if (!oTax.delete(true, order.get_TrxName()))
					return false;
				if (!oTax.save(order.get_TrxName()))
					return false;
			}
		}
		
		// LBR Taxes
		for (int i = 0; i < lines.length; i++)
		{
			MOrderLine line = lines[i];
			
			MLBRDocLineDetailsTax details = MLBRDocLineDetailsTax.getOfPO(line);
			
			if (details != null) {
				// ICMS and ICMS-ST
				MLBRDocLineICMS[] icmsLines = MLBRDocLineICMS.getOfDetails(details);
				if (icmsLines.length > 0) {
					MLBRDocLineICMS icms = icmsLines[0];
					
					// ICMS
					if (icms.getLBR_TaxAmt() != null) {
						if (oTaxList.containsKey(MLBRTax.TAX_GROUP_ICMS)) {
							MOrderTax newOTax = oTaxList.get(MLBRTax.TAX_GROUP_ICMS);
							newOTax.setIsTaxIncluded(icms.isTaxIncluded());
							newOTax.setTaxBaseAmt(newOTax.getTaxBaseAmt().add(icms.getLBR_TaxBaseAmt()));
							newOTax.setTaxAmt(newOTax.getTaxAmt().add(icms.getLBR_TaxAmt()));
						}
						
						if (!icms.isTaxIncluded())
							grandTotal = grandTotal.add(icms.getLBR_TaxAmt());
					}
					
					// ICMS-ST
					if (icms.getLBR_ICMSST_TaxAmt() != null) {
						if (oTaxList.containsKey(MLBRTax.TAX_GROUP_ICMSST)) {
							MOrderTax newOTax = oTaxList.get(MLBRTax.TAX_GROUP_ICMSST);
							newOTax.setIsTaxIncluded(icms.isLBR_ICMSST_IsTaxIncluded());
							newOTax.setTaxBaseAmt(newOTax.getTaxBaseAmt().add(icms.getLBR_ICMSST_TaxBaseAmt()));
							newOTax.setTaxAmt(newOTax.getTaxAmt().add(icms.getLBR_ICMSST_TaxAmt()));
						}
						
						if (!icms.isLBR_ICMSST_IsTaxIncluded())
							grandTotal = grandTotal.add(icms.getLBR_ICMSST_TaxAmt());
					}
				}
				
				// IPI
				MLBRDocLineIPI[] ipiLines = MLBRDocLineIPI.getOfDetails(details);
				if (ipiLines.length > 0) {
					MLBRDocLineIPI ipi = ipiLines[0];
					
					if (ipi.getLBR_TaxAmt() != null) {
						if (oTaxList.containsKey(MLBRTax.TAX_GROUP_IPI)) {
							MOrderTax newOTax = oTaxList.get(MLBRTax.TAX_GROUP_IPI);
							newOTax.setIsTaxIncluded(ipi.isTaxIncluded());
							newOTax.setTaxBaseAmt(newOTax.getTaxBaseAmt().add(ipi.getLBR_TaxBaseAmt()));
							newOTax.setTaxAmt(newOTax.getTaxAmt().add(ipi.getLBR_TaxAmt()));
						}
					
						if (!ipi.isTaxIncluded())
							grandTotal = grandTotal.add(ipi.getLBR_TaxAmt());
					}
				}
				
				// PIS
				MLBRDocLinePIS[] pisLines = MLBRDocLinePIS.getOfDetails(details);
				if (pisLines.length > 0) {
					MLBRDocLinePIS pis = pisLines[0];
					
					if (pis.getLBR_TaxAmt() != null) {
						if (oTaxList.containsKey(MLBRTax.TAX_GROUP_PIS)) {
							MOrderTax newOTax = oTaxList.get(MLBRTax.TAX_GROUP_PIS);
							newOTax.setIsTaxIncluded(pis.isTaxIncluded());
							newOTax.setTaxBaseAmt(newOTax.getTaxBaseAmt().add(pis.getLBR_TaxBaseAmt()));
							newOTax.setTaxAmt(newOTax.getTaxAmt().add(pis.getLBR_TaxAmt()));
						}
						
						if (!pis.isTaxIncluded())
							grandTotal = grandTotal.add(pis.getLBR_TaxAmt());
					}
				}
				
				// COFINS
				MLBRDocLineCOFINS[] cofinsLines = MLBRDocLineCOFINS.getOfDetails(details);
				if (cofinsLines.length > 0) {
					MLBRDocLineCOFINS cofins = cofinsLines[0];
					
					if (cofins.getLBR_TaxAmt() != null) {
						if (oTaxList.containsKey(MLBRTax.TAX_GROUP_COFINS)) {
							MOrderTax newOTax = oTaxList.get(MLBRTax.TAX_GROUP_COFINS);
							newOTax.setIsTaxIncluded(cofins.isTaxIncluded());
							newOTax.setTaxBaseAmt(newOTax.getTaxBaseAmt().add(cofins.getLBR_TaxBaseAmt()));
							newOTax.setTaxAmt(newOTax.getTaxAmt().add(cofins.getLBR_TaxAmt()));
						}
						
						if (!cofins.isTaxIncluded())
							grandTotal = grandTotal.add(cofins.getLBR_TaxAmt());
					}
				}
				
				// Import Tax
				MLBRDocLineImportTax[] importTaxLines = MLBRDocLineImportTax.getOfDetails(details);
				if (importTaxLines.length > 0) {
					MLBRDocLineImportTax importTax = importTaxLines[0];
					
					if (importTax.getLBR_TaxAmt() != null) {
						if (oTaxList.containsKey(MLBRTax.TAX_GROUP_II)) {
							MOrderTax newOTax = oTaxList.get(MLBRTax.TAX_GROUP_II);
							newOTax.setIsTaxIncluded(importTax.isTaxIncluded());
							newOTax.setTaxBaseAmt(newOTax.getTaxBaseAmt().add(importTax.getLBR_TaxBaseAmt()));
							newOTax.setTaxAmt(newOTax.getTaxAmt().add(importTax.getLBR_TaxAmt()));
						}
						
						if (!importTax.isTaxIncluded())
							grandTotal = grandTotal.add(importTax.getLBR_TaxAmt());
					}
				}
			}
		}
		
		// Save changed taxes and delete zero amount ones
		Iterator<Entry<Integer, MOrderTax>> entries = oTaxList.entrySet().iterator();
		while (entries.hasNext()) {
		  Entry<Integer, MOrderTax> thisEntry = (Entry<Integer, MOrderTax>) entries.next();
		  MOrderTax newOTax = thisEntry.getValue();
		  
		  if (newOTax.getTaxAmt().signum() == 0)
			  newOTax.delete(true, order.get_TrxName());
		  else if (!newOTax.save(order.get_TrxName()))
				return false;
		}
		
		// add surcharges (vOutro)
		grandTotal = grandTotal.add(getTotalSurcharges(order));
		
		// add freight (vFrete)
		grandTotal = grandTotal.add(getTotalFreight(order));
		
		// add insurance (vSeg)
		grandTotal = grandTotal.add(getTotalInsurance(order));
		
		// subtract discount (vDesc)
		grandTotal = grandTotal.subtract(getTotalDiscount(order));
		
		order.setTotalLines(totalLines);
		order.setGrandTotal(grandTotal);
		return true;	
	}

	@Override
	public boolean updateOrderTax(MTaxProvider provider, MOrderLine line) {
    	if (provider.getC_TaxProviderCfg().getTaxProviderClass().equals(TaxProviderFactory.DEFAULT_TAX_PROVIDER))
    		return line.updateOrderTax(false);
    	return true;
	}

	@Override
	public boolean recalculateTax(MTaxProvider provider, MOrderLine line,
			boolean newRecord) {
		
		if (!newRecord && line.is_ValueChanged(MOrderLine.COLUMNNAME_C_Tax_ID) && !line.getParent().isProcessed())
		{
	    	if (provider.getC_TaxProviderCfg().getTaxProviderClass().equals(TaxProviderFactory.DEFAULT_TAX_PROVIDER))
	    	{
				//	Recalculate Tax for old Tax
				if (!line.updateOrderTax(true))
					return false;
	    	}
		}
		return line.updateHeaderTax();
	}

	@Override
	public boolean updateHeaderTax(MTaxProvider provider, MOrderLine line) {
		// Update Order Header
		String sql = "UPDATE C_Order i"
			+ " SET TotalLines="
				+ "(SELECT COALESCE(SUM(LineNetAmt),0) FROM C_OrderLine il WHERE i.C_Order_ID=il.C_Order_ID) "
			+ "WHERE C_Order_ID=" + line.getC_Order_ID();
		int no = DB.executeUpdate(sql, line.get_TrxName());
		if (no != 1)
			s_log.warning("(1) #" + no);

		MLBRDocLineDetailsTax details = MLBRDocLineDetailsTax.getOfPO(line);		

		if (details == null) {
			if (line.isTaxIncluded())
				sql = "UPDATE C_Order i "
					+ " SET GrandTotal=TotalLines "
					+ "WHERE C_Order_ID=" + line.getC_Order_ID();
			else
				sql = "UPDATE C_Order i "
					+ " SET GrandTotal=TotalLines+"
						+ "(SELECT COALESCE(SUM(TaxAmt),0) FROM C_OrderTax it WHERE i.C_Order_ID=it.C_Order_ID) "
						+ "WHERE C_Order_ID=" + line.getC_Order_ID();
		} else {
			sql = "UPDATE C_Order i "
					+ " SET GrandTotal=TotalLines+"
						+ details.getNotIncludedTaxAmt()
						+ " WHERE C_Order_ID=" + line.getC_Order_ID();
		}
		
		no = DB.executeUpdate(sql, line.get_TrxName());
		if (no != 1)
			s_log.warning("(2) #" + no);

		line.clearParent();
		return no == 1;
	}

	@Override
	public boolean calculateInvoiceTaxTotal(MTaxProvider provider,
			MInvoice invoice) {

		//	Lines
		BigDecimal totalLines = Env.ZERO;
		ArrayList<Integer> taxList = new ArrayList<Integer>();
		MInvoiceLine[] lines = invoice.getLines(true);
		for (int i = 0; i < lines.length; i++)
		{
			MInvoiceLine line = lines[i];
			totalLines = totalLines.add(line.getLineNetAmt());
			Integer taxID = new Integer(line.getC_Tax_ID());
			if (taxID > 0 && !taxList.contains(taxID))
			{
				MTax tax = new MTax(invoice.getCtx(), taxID, invoice.get_TrxName());
				
				if (!tax.getC_TaxProvider().getC_TaxProviderCfg().getTaxProviderClass().equals(TaxProviderFactory.DEFAULT_TAX_PROVIDER))
					continue;
				
				MInvoiceTax iTax = MInvoiceTax.get (line, invoice.getPrecision(), false, invoice.get_TrxName());	//	current Tax
				iTax.setIsTaxIncluded(invoice.isTaxIncluded());
				iTax.setC_TaxProvider_ID(tax.getC_TaxProvider_ID());
				if (!iTax.calculateTaxFromLines())
					return false;
				if (!iTax.save(invoice.get_TrxName()))
					return false;
				taxList.add(taxID);
			}
		}
		
		// Taxes
		Map<Integer, MInvoiceTax> iTaxList = new HashMap<Integer, MInvoiceTax>();
		BigDecimal grandTotal = totalLines;

		MInvoiceTax[] taxes = invoice.getTaxes(true);
		for (int i = 0; i < taxes.length; i++)
		{
			MInvoiceTax iTax = taxes[i];
			String iTaxProviderCfg = iTax.getC_TaxProvider().getC_TaxProviderCfg().getTaxProviderClass();
			if (iTaxProviderCfg == null || !iTax.getC_TaxProvider().getC_TaxProviderCfg().getTaxProviderClass().equals(TaxProviderFactory.DEFAULT_TAX_PROVIDER)) {
				if (!invoice.isTaxIncluded())
					grandTotal = grandTotal.add(iTax.getTaxAmt());
				continue;
			}
			
			MTax tax = new MTax(invoice.getCtx(), iTax.getC_Tax_ID(), invoice.get_TrxName());
			if (tax.isSummary())
			{
				MTax[] cTaxes = tax.getChildTaxes(false);
				for (int j = 0; j < cTaxes.length; j++)
				{
					MTax cTax = cTaxes[j];
					MInvoiceTax newITax = new MInvoiceTax(invoice.getCtx(), 0, invoice.get_TrxName());
					newITax.setAD_Org_ID(invoice.getAD_Org_ID());
					newITax.setC_Invoice_ID(invoice.getC_Invoice_ID());
					newITax.setC_TaxProvider_ID(provider.get_ID());
					newITax.setC_Tax_ID(cTax.getC_Tax_ID());
					newITax.setIsTaxIncluded(invoice.isTaxIncluded());
					newITax.setTaxBaseAmt(Env.ZERO);
					newITax.setTaxAmt(Env.ZERO);
					if (!newITax.save(invoice.get_TrxName()))
						return false;
					
					iTaxList.put(new Integer(cTax.get_ValueAsInt("LBR_TaxGroup_ID")), newITax);
				}
				if (!iTax.delete(true, invoice.get_TrxName()))
					return false;
				if (!iTax.save(invoice.get_TrxName()))
					return false;
			}
		}
		
		// LBR Taxes
		for (int i = 0; i < lines.length; i++)
		{
			MInvoiceLine line = lines[i];
			
			MLBRDocLineDetailsTax details = MLBRDocLineDetailsTax.getOfPO(line);
			
			if (details != null) {
				// ICMS and ICMS-ST
				MLBRDocLineICMS[] icmsLines = MLBRDocLineICMS.getOfDetails(details);
				if (icmsLines.length > 0) {
					MLBRDocLineICMS icms = icmsLines[0];
					
					// ICMS
					if (icms.getLBR_TaxAmt() != null) {
						if (iTaxList.containsKey(MLBRTax.TAX_GROUP_ICMS)) {
							MInvoiceTax newITax = iTaxList.get(MLBRTax.TAX_GROUP_ICMS);
							newITax.setIsTaxIncluded(icms.isTaxIncluded());
							newITax.setTaxBaseAmt(newITax.getTaxBaseAmt().add(icms.getLBR_TaxBaseAmt()));
							newITax.setTaxAmt(newITax.getTaxAmt().add(icms.getLBR_TaxAmt()));
						}
						
						if (!icms.isTaxIncluded())
							grandTotal = grandTotal.add(icms.getLBR_TaxAmt());
					}
					
					// ICMS-ST
					if (icms.getLBR_ICMSST_TaxAmt() != null) {
						if (iTaxList.containsKey(MLBRTax.TAX_GROUP_ICMSST)) {
							MInvoiceTax newITax = iTaxList.get(MLBRTax.TAX_GROUP_ICMSST);
							newITax.setIsTaxIncluded(icms.isLBR_ICMSST_IsTaxIncluded());
							newITax.setTaxBaseAmt(newITax.getTaxBaseAmt().add(icms.getLBR_ICMSST_TaxBaseAmt()));
							newITax.setTaxAmt(newITax.getTaxAmt().add(icms.getLBR_ICMSST_TaxAmt()));
						}
						
						if (!icms.isLBR_ICMSST_IsTaxIncluded())
							grandTotal = grandTotal.add(icms.getLBR_ICMSST_TaxAmt());
					}
				}
				
				// IPI
				MLBRDocLineIPI[] ipiLines = MLBRDocLineIPI.getOfDetails(details);
				if (ipiLines.length > 0) {
					MLBRDocLineIPI ipi = ipiLines[0];
					
					if (ipi.getLBR_TaxAmt() != null) {
						if (iTaxList.containsKey(MLBRTax.TAX_GROUP_IPI)) {
							MInvoiceTax newITax = iTaxList.get(MLBRTax.TAX_GROUP_IPI);
							newITax.setIsTaxIncluded(ipi.isTaxIncluded());
							newITax.setTaxBaseAmt(newITax.getTaxBaseAmt().add(ipi.getLBR_TaxBaseAmt()));
							newITax.setTaxAmt(newITax.getTaxAmt().add(ipi.getLBR_TaxAmt()));
						}
					
						if (!ipi.isTaxIncluded())
							grandTotal = grandTotal.add(ipi.getLBR_TaxAmt());
					}
				}
				
				// PIS
				MLBRDocLinePIS[] pisLines = MLBRDocLinePIS.getOfDetails(details);
				if (pisLines.length > 0) {
					MLBRDocLinePIS pis = pisLines[0];
					
					if (pis.getLBR_TaxAmt() != null) {
						if (iTaxList.containsKey(MLBRTax.TAX_GROUP_PIS)) {
							MInvoiceTax newITax = iTaxList.get(MLBRTax.TAX_GROUP_PIS);
							newITax.setIsTaxIncluded(pis.isTaxIncluded());
							newITax.setTaxBaseAmt(newITax.getTaxBaseAmt().add(pis.getLBR_TaxBaseAmt()));
							newITax.setTaxAmt(newITax.getTaxAmt().add(pis.getLBR_TaxAmt()));
						}
						
						if (!pis.isTaxIncluded())
							grandTotal = grandTotal.add(pis.getLBR_TaxAmt());
					}
				}
				
				// COFINS
				MLBRDocLineCOFINS[] cofinsLines = MLBRDocLineCOFINS.getOfDetails(details);
				if (cofinsLines.length > 0) {
					MLBRDocLineCOFINS cofins = cofinsLines[0];
					
					if (cofins.getLBR_TaxAmt() != null) {
						if (iTaxList.containsKey(MLBRTax.TAX_GROUP_COFINS)) {
							MInvoiceTax newITax = iTaxList.get(MLBRTax.TAX_GROUP_COFINS);
							newITax.setIsTaxIncluded(cofins.isTaxIncluded());
							newITax.setTaxBaseAmt(newITax.getTaxBaseAmt().add(cofins.getLBR_TaxBaseAmt()));
							newITax.setTaxAmt(newITax.getTaxAmt().add(cofins.getLBR_TaxAmt()));
						}
						
						if (!cofins.isTaxIncluded())
							grandTotal = grandTotal.add(cofins.getLBR_TaxAmt());
					}
				}
				
				// Import Tax
				MLBRDocLineImportTax[] importTaxLines = MLBRDocLineImportTax.getOfDetails(details);
				if (importTaxLines.length > 0) {
					MLBRDocLineImportTax importTax = importTaxLines[0];
					
					if (importTax.getLBR_TaxAmt() != null) {
						if (iTaxList.containsKey(MLBRTax.TAX_GROUP_II)) {
							MInvoiceTax newITax = iTaxList.get(MLBRTax.TAX_GROUP_II);
							newITax.setIsTaxIncluded(importTax.isTaxIncluded());
							newITax.setTaxBaseAmt(newITax.getTaxBaseAmt().add(importTax.getLBR_TaxBaseAmt()));
							newITax.setTaxAmt(newITax.getTaxAmt().add(importTax.getLBR_TaxAmt()));
						}
						
						if (!importTax.isTaxIncluded())
							grandTotal = grandTotal.add(importTax.getLBR_TaxAmt());
					}
				}
			}
		}
		
		// Save changed taxes and delete zero amount ones
		Iterator<Entry<Integer, MInvoiceTax>> entries = iTaxList.entrySet().iterator();
		while (entries.hasNext()) {
		  Entry<Integer, MInvoiceTax> thisEntry = (Entry<Integer, MInvoiceTax>) entries.next();
		  MInvoiceTax newITax = thisEntry.getValue();

		  if (newITax.getTaxAmt().signum() == 0)
			  newITax.delete(true, invoice.get_TrxName());
		  else if (!newITax.save(invoice.get_TrxName()))
				return false;
		}
		
		// add surcharges (vOutro)
		grandTotal = grandTotal.add(getTotalSurcharges(invoice));
		
		// add freight (vFrete)
		grandTotal = grandTotal.add(getTotalFreight(invoice));
		
		// add insurance (vSeg)
		grandTotal = grandTotal.add(getTotalInsurance(invoice));
		
		// subtract discount (vDesc)
		grandTotal = grandTotal.subtract(getTotalDiscount(invoice));
		
		invoice.setTotalLines(totalLines);
		invoice.setGrandTotal(grandTotal);
		return true;	
	}

	@Override
	public boolean updateInvoiceTax(MTaxProvider provider, MInvoiceLine line) {
		if (provider.getC_TaxProviderCfg().getTaxProviderClass().equals(TaxProviderFactory.DEFAULT_TAX_PROVIDER))
    		return updateInvoiceTax(false, line, line.getPrecision(), line.get_TrxName());
    	return true;
	}

	@Override
	public boolean recalculateTax(MTaxProvider provider, MInvoiceLine line,
			boolean newRecord) {

		if (!newRecord && line.is_ValueChanged(MInvoiceLine.COLUMNNAME_C_Tax_ID) && !line.getParent().isProcessed())
		{
	    	if (provider.getC_TaxProviderCfg().getTaxProviderClass().equals(TaxProviderFactory.DEFAULT_TAX_PROVIDER))
	    	{
				//	Recalculate Tax for old Tax
				if (!updateInvoiceTax(true, line, line.getPrecision(), line.get_TrxName()))
					return false;
	    	}
		}
		return line.updateHeaderTax();
	}

	@Override
	public boolean updateHeaderTax(MTaxProvider provider, MInvoiceLine line) {
		// Update Invoice Header
		String sql = "UPDATE C_Invoice i"
			+ " SET TotalLines="
				+ "(SELECT COALESCE(SUM(LineNetAmt),0) FROM C_InvoiceLine il WHERE i.C_Invoice_ID=il.C_Invoice_ID) "
			+ "WHERE C_Invoice_ID=" + line.getC_Invoice_ID();
		int no = DB.executeUpdate(sql, line.get_TrxName());
		if (no != 1)
			s_log.warning("(1) #" + no);

		MLBRDocLineDetailsTax details = MLBRDocLineDetailsTax.getOfPO(line);
		
		if (details == null) {
			if (line.isTaxIncluded())
				sql = "UPDATE C_Invoice i "
					+ " SET GrandTotal=TotalLines "
					+ "WHERE C_Invoice_ID=" + line.getC_Invoice_ID();
			else
				sql = "UPDATE C_Invoice i "
					+ " SET GrandTotal=TotalLines+"
						+ "(SELECT COALESCE(SUM(TaxAmt),0) FROM C_InvoiceTax it WHERE i.C_Invoice_ID=it.C_Invoice_ID) "
						+ "WHERE C_Invoice_ID=" + line.getC_Invoice_ID();
		} else {
			sql = "UPDATE C_Invoice i "
					+ " SET GrandTotal=TotalLines+"
						+ details.getNotIncludedTaxAmt()
						+ " WHERE C_Invoice_ID=" + line.getC_Invoice_ID();
		}
		
		no = DB.executeUpdate(sql, line.get_TrxName());
		if (no != 1)
			s_log.warning("(2) #" + no);

		line.clearParent();
		return no == 1;	
	}

	@Override
	public boolean calculateRMATaxTotal(MTaxProvider provider, MRMA rma) {
		//	Lines
		BigDecimal totalLines = Env.ZERO;
		ArrayList<Integer> taxList = new ArrayList<Integer>();
		MRMALine[] lines = rma.getLines(false);
		for (int i = 0; i < lines.length; i++)
		{
			MRMALine line = lines[i];
			totalLines = totalLines.add(line.getLineNetAmt());
			Integer taxID = new Integer(line.getC_Tax_ID());
			if (taxID > 0 && !taxList.contains(taxID))
			{
				MTax tax = new MTax(rma.getCtx(), taxID, rma.get_TrxName());
				if (tax.getC_TaxProvider_ID() == 0 ||
						!tax.getC_TaxProvider().getC_TaxProviderCfg().getTaxProviderClass().equals(TaxProviderFactory.DEFAULT_TAX_PROVIDER))
					continue;
				MRMATax oTax = MRMATax.get (line, rma.getPrecision(), false, rma.get_TrxName());	//	current Tax
				oTax.setIsTaxIncluded(rma.isTaxIncluded());
				oTax.setC_TaxProvider_ID(tax.getC_TaxProvider_ID());
				if (!oTax.calculateTaxFromLines())
					return false;
				if (!oTax.save(rma.get_TrxName()))
					return false;
				taxList.add(taxID);
			}
		}
		
		//	Taxes
		Map<Integer, MRMATax> rmaTaxList = new HashMap<Integer, MRMATax>();
		BigDecimal grandTotal = totalLines;
		MRMATax[] taxes = rma.getTaxes(true);
		for (int i = 0; i < taxes.length; i++)
		{
			MRMATax oTax = taxes[i];
			if (oTax.getC_TaxProvider_ID() == 0 ||
					!oTax.getC_TaxProvider().getC_TaxProviderCfg().getTaxProviderClass().equals(TaxProviderFactory.DEFAULT_TAX_PROVIDER)) {
				if (!rma.isTaxIncluded())
					grandTotal = grandTotal.add(oTax.getTaxAmt());
				continue;
			}
			MTax tax = new MTax(rma.getCtx(), oTax.getC_Tax_ID(), rma.get_TrxName());
			if (tax.isSummary())
			{
				MTax[] cTaxes = tax.getChildTaxes(false);
				for (int j = 0; j < cTaxes.length; j++)
				{
					MTax cTax = cTaxes[j];
					MRMATax newOTax = new MRMATax(rma.getCtx(), 0, rma.get_TrxName());
					newOTax.setAD_Org_ID(rma.getAD_Org_ID());
					newOTax.setM_RMA_ID(rma.getM_RMA_ID());
					newOTax.setC_TaxProvider_ID(provider.get_ID());
					newOTax.setC_Tax_ID(cTax.getC_Tax_ID());
					newOTax.setIsTaxIncluded(rma.isTaxIncluded());
					newOTax.setTaxBaseAmt(Env.ZERO);
					newOTax.setTaxAmt(Env.ZERO);
					if (!newOTax.save(rma.get_TrxName()))
						return false;

					rmaTaxList.put(new Integer(cTax.get_ValueAsInt("LBR_TaxGroup_ID")), newOTax);
				}
				if (!oTax.delete(true, rma.get_TrxName()))
					return false;
				if (!oTax.save(rma.get_TrxName()))
					return false;
			}
		}		
		
		// LBR Taxes
		for (int i = 0; i < lines.length; i++)
		{
			MRMALine line = lines[i];
			
			MLBRDocLineDetailsTax details = MLBRDocLineDetailsTax.getOfPO(line);
			
			if (details != null) {
				// ICMS and ICMS-ST
				MLBRDocLineICMS[] icmsLines = MLBRDocLineICMS.getOfDetails(details);
				if (icmsLines.length > 0) {
					MLBRDocLineICMS icms = icmsLines[0];
					
					// ICMS
					if (icms.getLBR_TaxAmt() != null) {
						if (rmaTaxList.containsKey(MLBRTax.TAX_GROUP_ICMS)) {
							MRMATax newOTax = rmaTaxList.get(MLBRTax.TAX_GROUP_ICMS);
							newOTax.setIsTaxIncluded(icms.isTaxIncluded());
							newOTax.setTaxBaseAmt(newOTax.getTaxBaseAmt().add(icms.getLBR_TaxBaseAmt()));
							newOTax.setTaxAmt(newOTax.getTaxAmt().add(icms.getLBR_TaxAmt()));
						}
						
						if (!icms.isTaxIncluded())
							grandTotal = grandTotal.add(icms.getLBR_TaxAmt());
					}
					
					// ICMS-ST
					if (icms.getLBR_ICMSST_TaxAmt() != null) {
						if (rmaTaxList.containsKey(MLBRTax.TAX_GROUP_ICMSST)) {
							MRMATax newOTax = rmaTaxList.get(MLBRTax.TAX_GROUP_ICMSST);
							newOTax.setIsTaxIncluded(icms.isLBR_ICMSST_IsTaxIncluded());
							newOTax.setTaxBaseAmt(newOTax.getTaxBaseAmt().add(icms.getLBR_ICMSST_TaxBaseAmt()));
							newOTax.setTaxAmt(newOTax.getTaxAmt().add(icms.getLBR_ICMSST_TaxAmt()));
						}
						
						if (!icms.isLBR_ICMSST_IsTaxIncluded())
							grandTotal = grandTotal.add(icms.getLBR_ICMSST_TaxAmt());
					}
				}
				
				// IPI
				MLBRDocLineIPI[] ipiLines = MLBRDocLineIPI.getOfDetails(details);
				if (ipiLines.length > 0) {
					MLBRDocLineIPI ipi = ipiLines[0];
					
					if (ipi.getLBR_TaxAmt() != null) {
						if (rmaTaxList.containsKey(MLBRTax.TAX_GROUP_IPI)) {
							MRMATax newOTax = rmaTaxList.get(MLBRTax.TAX_GROUP_IPI);
							newOTax.setIsTaxIncluded(ipi.isTaxIncluded());
							newOTax.setTaxBaseAmt(newOTax.getTaxBaseAmt().add(ipi.getLBR_TaxBaseAmt()));
							newOTax.setTaxAmt(newOTax.getTaxAmt().add(ipi.getLBR_TaxAmt()));
						}
					
						if (!ipi.isTaxIncluded())
							grandTotal = grandTotal.add(ipi.getLBR_TaxAmt());
					}
				}
				
				// PIS
				MLBRDocLinePIS[] pisLines = MLBRDocLinePIS.getOfDetails(details);
				if (pisLines.length > 0) {
					MLBRDocLinePIS pis = pisLines[0];
					
					if (pis.getLBR_TaxAmt() != null) {
						if (rmaTaxList.containsKey(MLBRTax.TAX_GROUP_PIS)) {
							MRMATax newOTax = rmaTaxList.get(MLBRTax.TAX_GROUP_PIS);
							newOTax.setIsTaxIncluded(pis.isTaxIncluded());
							newOTax.setTaxBaseAmt(newOTax.getTaxBaseAmt().add(pis.getLBR_TaxBaseAmt()));
							newOTax.setTaxAmt(newOTax.getTaxAmt().add(pis.getLBR_TaxAmt()));
						}
						
						if (!pis.isTaxIncluded())
							grandTotal = grandTotal.add(pis.getLBR_TaxAmt());
					}
				}
				
				// COFINS
				MLBRDocLineCOFINS[] cofinsLines = MLBRDocLineCOFINS.getOfDetails(details);
				if (cofinsLines.length > 0) {
					MLBRDocLineCOFINS cofins = cofinsLines[0];
					
					if (cofins.getLBR_TaxAmt() != null) {
						if (rmaTaxList.containsKey(MLBRTax.TAX_GROUP_COFINS)) {
							MRMATax newOTax = rmaTaxList.get(MLBRTax.TAX_GROUP_COFINS);
							newOTax.setIsTaxIncluded(cofins.isTaxIncluded());
							newOTax.setTaxBaseAmt(newOTax.getTaxBaseAmt().add(cofins.getLBR_TaxBaseAmt()));
							newOTax.setTaxAmt(newOTax.getTaxAmt().add(cofins.getLBR_TaxAmt()));
						}
						
						if (!cofins.isTaxIncluded())
							grandTotal = grandTotal.add(cofins.getLBR_TaxAmt());
					}
				}
				
				// Import Tax
				MLBRDocLineImportTax[] importTaxLines = MLBRDocLineImportTax.getOfDetails(details);
				if (importTaxLines.length > 0) {
					MLBRDocLineImportTax importTax = importTaxLines[0];
					
					if (importTax.getLBR_TaxAmt() != null) {
						if (rmaTaxList.containsKey(MLBRTax.TAX_GROUP_II)) {
							MRMATax newOTax = rmaTaxList.get(MLBRTax.TAX_GROUP_II);
							newOTax.setIsTaxIncluded(importTax.isTaxIncluded());
							newOTax.setTaxBaseAmt(newOTax.getTaxBaseAmt().add(importTax.getLBR_TaxBaseAmt()));
							newOTax.setTaxAmt(newOTax.getTaxAmt().add(importTax.getLBR_TaxAmt()));
						}
						
						if (!importTax.isTaxIncluded())
							grandTotal = grandTotal.add(importTax.getLBR_TaxAmt());
					}
				}
			}
		}
		
		// Save changed taxes and delete zero amount ones
		Iterator<Entry<Integer, MRMATax>> entries = rmaTaxList.entrySet().iterator();
		while (entries.hasNext()) {
		  Entry<Integer, MRMATax> thisEntry = (Entry<Integer, MRMATax>) entries.next();
		  MRMATax newOTax = thisEntry.getValue();
		  
		  if (newOTax.getTaxAmt().signum() == 0)
			  newOTax.delete(true, rma.get_TrxName());
		  else if (!newOTax.save(rma.get_TrxName()))
				return false;
		}	
		
		// add surcharges (vOutro)
		grandTotal = grandTotal.add(getTotalSurcharges(rma));
		
		// add freight (vFrete)
		grandTotal = grandTotal.add(getTotalFreight(rma));
		
		// add insurance (vSeg)
		grandTotal = grandTotal.add(getTotalInsurance(rma));
		
		// subtract discount (vDesc)
		grandTotal = grandTotal.subtract(getTotalDiscount(rma));
		
		rma.setAmt(grandTotal);
		return true;	
	}

	@Override
	public boolean updateRMATax(MTaxProvider provider, MRMALine line) {
		if (provider.getC_TaxProviderCfg().getTaxProviderClass().equals(TaxProviderFactory.DEFAULT_TAX_PROVIDER))
    		return updateRMATax(false, line, line.getPrecision(), line.get_TrxName());
    	return true;
	}

	@Override
	public boolean recalculateTax(MTaxProvider provider, MRMALine line,
			boolean newRecord) {

			if (!newRecord && line.is_ValueChanged(MRMALine.COLUMNNAME_C_Tax_ID) && !line.getParent().isProcessed())
			{
		    	if (provider.getC_TaxProviderCfg().getTaxProviderClass().equals(TaxProviderFactory.DEFAULT_TAX_PROVIDER))
		    	{
					//	Recalculate Tax for old Tax
					if (!updateRMATax(true, line, line.getPrecision(), line.get_TrxName()))
						return false;
		    	}
			}
			return line.updateHeaderAmt();
	}

	@Override
	public boolean updateHeaderTax(MTaxProvider provider, MRMALine line) {
		// Update RMA Header
		String sql = "UPDATE M_RMA "
			+ " SET Amt="
			+ "(SELECT COALESCE(SUM(LineNetAmt),0) FROM M_RMALine WHERE M_RMA.M_RMA_ID=M_RMALine.M_RMA_ID) "
			+ "WHERE M_RMA_ID=?";
		int no = DB.executeUpdateEx(sql, new Object[]{line.getM_RMA_ID()}, line.get_TrxName());
		if (no != 1)
			s_log.warning("(1) #" + no);
		
		MLBRDocLineDetailsTax details = MLBRDocLineDetailsTax.getOfPO(line);		

		if (details != null) {
			sql = "UPDATE M_RMA "
				+ " SET Amt="
				+ "(SELECT COALESCE(SUM(LineNetAmt),0) FROM M_RMALine WHERE M_RMA.M_RMA_ID=M_RMALine.M_RMA_ID)+"
				+ details.getNotIncludedTaxAmt()
				+ " WHERE M_RMA_ID=" + line.getM_RMA_ID();
			
			no = DB.executeUpdate(sql, line.get_TrxName());
			if (no != 1)
				s_log.warning("(2) #" + no);
		}

		line.clearParent();
		return no == 1;
	}

	@Override
	public String validateConnection(MTaxProvider provider, ProcessInfo pi)
			throws Exception {
		// TODO Auto-generated method stub
		s_log.log(Level.SEVERE, "DefaultTaxProvider: validateConnection(MTaxProvider provider, ProcessInfo pi)");
		return null;
	}
	
	/**
	 * Recalculate invoice tax
	 * @param oldTax true if the old C_Tax_ID should be used
	 * @return true if success, false otherwise
	 */
	private boolean updateInvoiceTax(boolean oldTax, MInvoiceLine line, int precision, String trxName) {
		MInvoiceTax tax = MInvoiceTax.get (line, precision, oldTax, trxName);
		if (tax != null) {
			if (!tax.calculateTaxFromLines())
				return false;
		
			// red1 - solving BUGS #[ 1701331 ] , #[ 1786103 ]
			if (tax.getTaxAmt().signum() != 0) {
				if (!tax.save(trxName))
					return false;
			}
			else {
				if (!tax.is_new() && !tax.delete(false, trxName))
					return false;
			}
		}
		return true;
	}
	
	/**
	 * Recalculate RMA tax
	 * @param oldTax true if the old C_Tax_ID should be used
	 * @return true if success, false otherwise
	 */
	private boolean updateRMATax(boolean oldTax, MRMALine line, int precision, String trxName) 
    {
		MRMATax tax = MRMATax.get (line, precision, oldTax, trxName);
		if (tax != null) 
		{
			if (!tax.calculateTaxFromLines())
				return false;
			if (tax.getTaxAmt().signum() != 0) 
			{
				if (!tax.save(trxName))
					return false;
			}
			else 
			{
				if (!tax.is_new() && !tax.delete(false, trxName))
					return false;
			}
		}
		return true;
	}
	
	private PO[] getLines(PO po) {
		if (po == null)
			return null;
		
		if (po instanceof MOrder)
			return ((MOrder)po).getLines();
		else if (po instanceof MInvoice)
			return ((MInvoice)po).getLines();
		else if (po instanceof MRMA)
			return ((MRMA)po).getLines(false);
		
		return null;
	}
	
	private BigDecimal getTotalSurcharges(PO po) {		
		BigDecimal totalSurcharges = new BigDecimal( 0 );
		PO lines[] = getLines(po);
		
		for (PO poLine : lines) {
			MLBRDocLineDetailsTax detail = MLBRDocLineDetailsTax.getOfPO(poLine);
			
			if (detail != null) {
				BigDecimal surcharges = detail.getSurcharges();
				totalSurcharges = totalSurcharges.add( surcharges != null ? surcharges : Env.ZERO );
			}
		}
		
		return totalSurcharges;
	}
	
	private BigDecimal getTotalFreight(PO po) {
		BigDecimal totalFreight = new BigDecimal( 0 );
		PO lines[] = getLines(po);
		
		for (PO poLine : lines) {
			MLBRDocLineDetailsTax detail = MLBRDocLineDetailsTax.getOfPO(poLine);
			
			if (detail != null) {
				BigDecimal freight = detail.getFreightAmt();
				totalFreight = totalFreight.add( freight != null ? freight : Env.ZERO );
			}
		}
		
		return totalFreight;
	}
	
	private BigDecimal getTotalInsurance(PO po) {		
		BigDecimal totalInsurance = new BigDecimal( 0 );
		PO lines[] = getLines(po);
		
		for (PO poLine : lines) {
			MLBRDocLineDetailsTax detail = MLBRDocLineDetailsTax.getOfPO(poLine);
			
			if (detail != null) {
				BigDecimal insurance = detail.getInsuredAmount();
				totalInsurance = totalInsurance.add( insurance != null ? insurance : Env.ZERO );
			}
		}
		
		return totalInsurance;
	}
	
	private BigDecimal getTotalDiscount(PO po) {
		BigDecimal totalDiscount = new BigDecimal( 0 );
		PO lines[] = getLines(po);
		
		for (PO poLine : lines) {
			MLBRDocLineDetailsTax detail = MLBRDocLineDetailsTax.getOfPO(poLine);
			
			if (detail != null) {
				BigDecimal discount = detail.getDiscountAmt();
				totalDiscount = totalDiscount.add( discount != null ? discount : Env.ZERO );
			}
		}
		
		return totalDiscount;
	}
}
