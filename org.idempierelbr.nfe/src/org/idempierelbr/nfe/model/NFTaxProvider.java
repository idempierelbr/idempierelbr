package org.idempierelbr.nfe.model;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.logging.Level;

import org.compiere.model.I_C_TaxProvider;
import org.compiere.model.I_C_TaxProviderCfg;
import org.compiere.model.MTax;
import org.compiere.model.MTaxProvider;
import org.compiere.process.ProcessInfo;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.idempierelbr.tax.model.MLBRDocLineCOFINS;
import org.idempierelbr.tax.model.MLBRDocLineICMS;
import org.idempierelbr.tax.model.MLBRDocLineIPI;
import org.idempierelbr.tax.model.MLBRDocLineImportTax;
import org.idempierelbr.tax.model.MLBRDocLinePIS;
import org.idempierelbr.tax.model.MLBRTax;
import org.idempierelbr.tax.provider.TaxProviderFactory;

public class NFTaxProvider implements ITaxProviderNfe {
	/**	Logger			*/
	private static CLogger s_log = CLogger.getCLogger(NFTaxProvider.class);

	@Override
	public boolean calculateNFTaxTotal(MTaxProvider provider, MLBRNotaFiscal nf) {
		//	Lines
		BigDecimal totalLines = Env.ZERO;
		ArrayList<Integer> taxList = new ArrayList<Integer>();
		MLBRNotaFiscalLine[] lines = nf.getLines();
		for (int i = 0; i < lines.length; i++)
		{
			MLBRNotaFiscalLine line = lines[i];
			totalLines = totalLines.add(line.getLineNetAmt());
			Integer taxID = new Integer(line.getC_Tax_ID());
			if (taxID > 0 && !taxList.contains(taxID))
			{
				MTax tax = new MTax(nf.getCtx(), taxID, nf.get_TrxName());
				if (tax.getC_TaxProvider_ID() == 0 || !isLBRTaxProvider(tax.getC_TaxProvider()))
					continue;
				MLBRNotaFiscalTax nfTax = MLBRNotaFiscalTax.get (line, nf.getPrecision(), false, nf.get_TrxName());	//	current Tax
				nfTax.setIsTaxIncluded(nf.isTaxIncluded());
				nfTax.setC_TaxProvider_ID(tax.getC_TaxProvider_ID());
				if (!nfTax.calculateTaxFromLines())
					return false;
				if (!nfTax.save(nf.get_TrxName()))
					return false;
				taxList.add(taxID);
			}
		}
		
		// Taxes
		Map<Integer, MLBRNotaFiscalTax> nfTaxList = new HashMap<Integer, MLBRNotaFiscalTax>();
		BigDecimal grandTotal = totalLines;

		MLBRNotaFiscalTax[] taxes = nf.getTaxes(true);
		for (int i = 0; i < taxes.length; i++)
		{
			MLBRNotaFiscalTax nfTax = taxes[i];
			if (nfTax.getC_TaxProvider_ID() == 0 || !isLBRTaxProvider(nfTax.getC_TaxProvider())) {
				if (!nf.isTaxIncluded())
					grandTotal = grandTotal.add(nfTax.getTaxAmt());
				continue;
			}
			
			MTax tax = new MTax(nf.getCtx(), nfTax.getC_Tax_ID(), nf.get_TrxName());
			if (tax.isSummary())
			{
				MTax[] cTaxes = tax.getChildTaxes(false);
				for (int j = 0; j < cTaxes.length; j++)
				{
					MTax cTax = cTaxes[j];
					MLBRNotaFiscalTax newNFTax = new MLBRNotaFiscalTax(nf.getCtx(), 0, nf.get_TrxName());
					newNFTax.setAD_Org_ID(nf.getAD_Org_ID());
					newNFTax.setLBR_NotaFiscal_ID(nf.getLBR_NotaFiscal_ID());
					newNFTax.setC_TaxProvider_ID(provider.get_ID());
					newNFTax.setC_Tax_ID(cTax.getC_Tax_ID());
					newNFTax.setIsTaxIncluded(nf.isTaxIncluded());
					newNFTax.setTaxBaseAmt(Env.ZERO);
					newNFTax.setTaxAmt(Env.ZERO);
					if (!newNFTax.save(nf.get_TrxName()))
						return false;
					
					nfTaxList.put(new Integer(cTax.get_ValueAsInt("LBR_TaxGroup_ID")), newNFTax);
				}
				if (!nfTax.delete(true, nf.get_TrxName()))
					return false;
				if (!nfTax.save(nf.get_TrxName()))
					return false;
			}
		}
		
		// LBR Taxes
		for (int i = 0; i < lines.length; i++)
		{
			MLBRNotaFiscalLine line = lines[i];
			
			MLBRDocLineDetailsNfe details = MLBRDocLineDetailsNfe.getOfPO(line);
			
			if (details != null) {
				// ICMS and ICMS-ST
				MLBRDocLineICMS[] icmsLines = MLBRDocLineICMS.getOfDetails(details);
				if (icmsLines.length > 0) {
					MLBRDocLineICMS icms = icmsLines[0];
					
					// ICMS
					if (icms.getLBR_TaxAmt() != null) {
						if (nfTaxList.containsKey(MLBRTax.TAX_GROUP_ICMS)) {
							MLBRNotaFiscalTax newOTax = nfTaxList.get(MLBRTax.TAX_GROUP_ICMS);
							newOTax.setIsTaxIncluded(icms.isTaxIncluded());
							newOTax.setTaxBaseAmt(newOTax.getTaxBaseAmt().add(icms.getLBR_TaxBaseAmt()));
							newOTax.setTaxAmt(newOTax.getTaxAmt().add(icms.getLBR_TaxAmt()));
						}
						
						if (!icms.isTaxIncluded())
							grandTotal = grandTotal.add(icms.getLBR_TaxAmt());
					}
					
					// ICMS-ST
					if (icms.getLBR_ICMSST_TaxAmt() != null) {
						if (nfTaxList.containsKey(MLBRTax.TAX_GROUP_ICMSST)) {
							MLBRNotaFiscalTax newOTax = nfTaxList.get(MLBRTax.TAX_GROUP_ICMSST);
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
						if (nfTaxList.containsKey(MLBRTax.TAX_GROUP_IPI)) {
							MLBRNotaFiscalTax newOTax = nfTaxList.get(MLBRTax.TAX_GROUP_IPI);
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
						if (nfTaxList.containsKey(MLBRTax.TAX_GROUP_PIS)) {
							MLBRNotaFiscalTax newOTax = nfTaxList.get(MLBRTax.TAX_GROUP_PIS);
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
						if (nfTaxList.containsKey(MLBRTax.TAX_GROUP_COFINS)) {
							MLBRNotaFiscalTax newOTax = nfTaxList.get(MLBRTax.TAX_GROUP_COFINS);
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
						if (nfTaxList.containsKey(MLBRTax.TAX_GROUP_II)) {
							MLBRNotaFiscalTax newOTax = nfTaxList.get(MLBRTax.TAX_GROUP_II);
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
		Iterator<Entry<Integer, MLBRNotaFiscalTax>> entries = nfTaxList.entrySet().iterator();
		while (entries.hasNext()) {
		  Entry<Integer, MLBRNotaFiscalTax> thisEntry = (Entry<Integer, MLBRNotaFiscalTax>) entries.next();
		  MLBRNotaFiscalTax newNFTax = thisEntry.getValue();
		  
		  if (newNFTax.getTaxAmt().signum() == 0)
			  newNFTax.delete(true, nf.get_TrxName());
		  else if (!newNFTax.save(nf.get_TrxName()))
				return false;
		}
		
		// add surcharges (vOutro)
		grandTotal = grandTotal.add(nf.getTotalSurcharges());
		
		// add freight (vFrete)
		grandTotal = grandTotal.add(nf.getTotalFreight());
		
		// add insurance (vSeg)
		grandTotal = grandTotal.add(nf.getTotalInsurance());
		
		// subtract discount (vDesc)
		grandTotal = grandTotal.subtract(nf.getDiscount());
		
		nf.setTotalLines(totalLines);
		nf.setGrandTotal(grandTotal);
		return true;	
	}

	@Override
	public boolean updateNFTax(MTaxProvider provider, MLBRNotaFiscalLine line) {
		if (isLBRTaxProvider(provider))
			return line.updateNFTax(false);
    	return true;
	}

	@Override
	public boolean recalculateTax(MTaxProvider provider, MLBRNotaFiscalLine line,
			boolean newRecord) {
		
		if (!newRecord && line.is_ValueChanged(MLBRNotaFiscalLine.COLUMNNAME_C_Tax_ID) && !line.getParent().isProcessed())
		{
	    	if (isLBRTaxProvider(provider))
	    	{
				//	Recalculate Tax for old Tax
				if (!line.updateNFTax(true))
					return false;
	    	}
		}
		return line.updateHeaderTax();
	}

	@Override
	public boolean updateHeaderTax(MTaxProvider provider, MLBRNotaFiscalLine line) {
		// Update NF Header
		String sql = "UPDATE LBR_NotaFiscal i"
			+ " SET TotalLines="
				+ "(SELECT COALESCE(SUM(LineNetAmt),0) FROM LBR_NotaFiscalLine il WHERE i.LBR_NotaFiscal_ID=il.LBR_NotaFiscal_ID) "
			+ "WHERE LBR_NotaFiscal_ID=" + line.getLBR_NotaFiscal_ID();
		int no = DB.executeUpdate(sql, line.get_TrxName());
		if (no != 1)
			s_log.warning("(1) #" + no);

		MLBRDocLineDetailsNfe details = MLBRDocLineDetailsNfe.getOfPO(line);		

		if (details == null) {
			if (line.isTaxIncluded())
				sql = "UPDATE LBR_NotaFiscal i "
					+ " SET GrandTotal=TotalLines "
					+ "WHERE LBR_NotaFiscal_ID=" + line.getLBR_NotaFiscal_ID();
			else
				sql = "UPDATE LBR_NotaFiscal i "
					+ " SET GrandTotal=TotalLines+"
						+ "(SELECT COALESCE(SUM(TaxAmt),0) FROM LBR_NotaFiscalTax it WHERE i.LBR_NotaFiscal_ID=it.LBR_NotaFiscal_ID) "
						+ "WHERE LBR_NotaFiscal_ID=" + line.getLBR_NotaFiscal_ID();
		} else {
			sql = "UPDATE LBR_NotaFiscal i "
					+ " SET GrandTotal=TotalLines+"
						+ details.getNotIncludedTaxAmt()
						+ " WHERE LBR_NotaFiscal_ID=" + line.getLBR_NotaFiscal_ID();
		}
		
		no = DB.executeUpdate(sql, line.get_TrxName());
		if (no != 1)
			s_log.warning("(2) #" + no);

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
	
	private boolean isLBRTaxProvider(I_C_TaxProvider i_C_TaxProvider) {
		if (i_C_TaxProvider == null)
			return false;
		
		I_C_TaxProviderCfg cfg = i_C_TaxProvider.getC_TaxProviderCfg();
		
		if (cfg == null)
			return false;
		
		String cfgClass = cfg.getTaxProviderClass();
		
		if (cfgClass == null)
			return false;
		
		if (cfgClass.equals(TaxProviderFactory.DEFAULT_TAX_PROVIDER))
			return true;
		
		return false;
	}
}
