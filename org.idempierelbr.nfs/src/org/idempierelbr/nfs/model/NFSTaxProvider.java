package org.idempierelbr.nfs.model;

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
import org.idempierelbr.tax.model.MLBRDocLineISSQN;
import org.idempierelbr.tax.model.MLBRDocLineImportTax;
import org.idempierelbr.tax.model.MLBRDocLineOTHER;
import org.idempierelbr.tax.model.MLBRDocLinePIS;
import org.idempierelbr.tax.model.MLBRTax;
import org.idempierelbr.tax.provider.TaxProviderFactory;

public class NFSTaxProvider implements ITaxProviderNFS {
	/** Logger */
	private static CLogger s_log = CLogger.getCLogger(NFSTaxProvider.class);

	@Override
	public boolean calculateNFSTaxTotal(MTaxProvider provider, MLBRNFS nfs) {

		// Lines
		BigDecimal totalLines = nfs.getTotalLines();
		ArrayList<Integer> taxList = new ArrayList<Integer>();
		Integer taxID = new Integer(nfs.getC_Tax_ID());
		if (taxID > 0 && !taxList.contains(taxID)) {
			
			// 
			MTax tax = new MTax(nfs.getCtx(), taxID, nfs.get_TrxName());
			
			// 
			if (tax.getC_TaxProvider_ID() != 0
					|| isLBRTaxProvider(tax.getC_TaxProvider())) {
				MLBRNFSTax nfTax = MLBRNFSTax.get(nfs, nfs.getPrecision(),
						false, nfs.get_TrxName()); // current Tax
				nfTax.setIsTaxIncluded(nfs.isTaxIncluded());
				nfTax.setC_TaxProvider_ID(tax.getC_TaxProvider_ID());
				if (!nfTax.calculateTaxFromLines())
					return false;
				if (!nfTax.save(nfs.get_TrxName()))
					return false;
				taxList.add(taxID);
			}
		}

		// Taxes
		Map<Integer, MLBRNFSTax> nfTaxList = new HashMap<Integer, MLBRNFSTax>();
		BigDecimal grandTotal = totalLines;

		MLBRNFSTax[] taxes = nfs.getTaxes(true);
		for (int i = 0; i < taxes.length; i++) {
			MLBRNFSTax nfTax = taxes[i];
			if (nfTax.getC_TaxProvider_ID() == 0
					|| !isLBRTaxProvider(nfTax.getC_TaxProvider())) {
				if (!nfs.isTaxIncluded())
					grandTotal = grandTotal.add(nfTax.getTaxAmt());
				continue;
			}

			MTax tax = new MTax(nfs.getCtx(), nfTax.getC_Tax_ID(),
					nfs.get_TrxName());
			if (tax.isSummary()) {
				MTax[] cTaxes = tax.getChildTaxes(false);
				for (int j = 0; j < cTaxes.length; j++) {
					MTax cTax = cTaxes[j];
					MLBRNFSTax newNFTax = new MLBRNFSTax(nfs.getCtx(), 0,
							nfs.get_TrxName());
					newNFTax.setAD_Org_ID(nfs.getAD_Org_ID());
					newNFTax.setLBR_NFS_ID(nfs.getLBR_NFS_ID());
					newNFTax.setC_TaxProvider_ID(provider.get_ID());
					newNFTax.setC_Tax_ID(cTax.getC_Tax_ID());
					newNFTax.setIsTaxIncluded(nfs.isTaxIncluded());
					newNFTax.setTaxBaseAmt(Env.ZERO);
					newNFTax.setTaxAmt(Env.ZERO);
					if (!newNFTax.save(nfs.get_TrxName()))
						return false;

					nfTaxList
							.put(new Integer(cTax
									.get_ValueAsInt("LBR_TaxGroup_ID")),
									newNFTax);
				}
				if (!nfTax.delete(true, nfs.get_TrxName()))
					return false;
				if (!nfTax.save(nfs.get_TrxName()))
					return false;
			}
		}

		// LBR Taxes
		MLBRDocLineDetailsNFS details = MLBRDocLineDetailsNFS.getOfPO(nfs);

		if (details != null) {

			// ICMS and ICMS-ST
			MLBRDocLineICMS[] icmsLines = MLBRDocLineICMS.getOfDetails(details);
			if (icmsLines.length > 0) {
				MLBRDocLineICMS icms = icmsLines[0];

				// ICMS
				if (icms.getLBR_TaxAmt() != null) {
					if (nfTaxList.containsKey(MLBRTax.getTaxGroupID(MLBRTax.TAX_GROUP_ICMS_NAME))) {
						MLBRNFSTax newOTax = nfTaxList
								.get(MLBRTax.getTaxGroupID(MLBRTax.TAX_GROUP_ICMS_NAME));
						newOTax.setIsTaxIncluded(icms.isTaxIncluded());
						newOTax.setTaxBaseAmt(newOTax.getTaxBaseAmt().add(
								icms.getLBR_TaxBaseAmt()));
						newOTax.setTaxAmt(newOTax.getTaxAmt().add(
								icms.getLBR_TaxAmt()));
					}

					if (!icms.isTaxIncluded())
						grandTotal = grandTotal.add(icms.getLBR_TaxAmt());
				}

				// ICMS-ST
				if (icms.getLBR_ICMSST_TaxAmt() != null) {
					if (nfTaxList.containsKey(MLBRTax.getTaxGroupID(MLBRTax.TAX_GROUP_ICMSST_NAME))) {
						MLBRNFSTax newOTax = nfTaxList
								.get(MLBRTax.getTaxGroupID(MLBRTax.TAX_GROUP_ICMSST_NAME));
						newOTax.setIsTaxIncluded(icms
								.isLBR_ICMSST_IsTaxIncluded());
						newOTax.setTaxBaseAmt(newOTax.getTaxBaseAmt().add(
								icms.getLBR_ICMSST_TaxBaseAmt()));
						newOTax.setTaxAmt(newOTax.getTaxAmt().add(
								icms.getLBR_ICMSST_TaxAmt()));
					}

					if (!icms.isLBR_ICMSST_IsTaxIncluded())
						grandTotal = grandTotal
								.add(icms.getLBR_ICMSST_TaxAmt());
				}
			}

			// IPI
			MLBRDocLineIPI[] ipiLines = MLBRDocLineIPI.getOfDetails(details);
			if (ipiLines.length > 0) {
				MLBRDocLineIPI ipi = ipiLines[0];

				if (ipi.getLBR_TaxAmt() != null) {
					if (nfTaxList.containsKey(MLBRTax.getTaxGroupID(MLBRTax.TAX_GROUP_IPI_NAME))) {
						MLBRNFSTax newOTax = nfTaxList
								.get(MLBRTax.getTaxGroupID(MLBRTax.TAX_GROUP_IPI_NAME));
						newOTax.setIsTaxIncluded(ipi.isTaxIncluded());
						newOTax.setTaxBaseAmt(newOTax.getTaxBaseAmt().add(
								ipi.getLBR_TaxBaseAmt()));
						newOTax.setTaxAmt(newOTax.getTaxAmt().add(
								ipi.getLBR_TaxAmt()));
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
					if (nfTaxList.containsKey(MLBRTax.getTaxGroupID(MLBRTax.TAX_GROUP_PIS_NAME))) {
						MLBRNFSTax newOTax = nfTaxList
								.get(MLBRTax.getTaxGroupID(MLBRTax.TAX_GROUP_PIS_NAME));
						newOTax.setIsTaxIncluded(pis.isTaxIncluded());
						newOTax.setTaxBaseAmt(newOTax.getTaxBaseAmt().add(
								pis.getLBR_TaxBaseAmt()));
						newOTax.setTaxAmt(newOTax.getTaxAmt().add(
								pis.getLBR_TaxAmt()));
					}

					if (!pis.isTaxIncluded())
						grandTotal = grandTotal.add(pis.getLBR_TaxAmt());
				}
			}

			// COFINS
			MLBRDocLineCOFINS[] cofinsLines = MLBRDocLineCOFINS
					.getOfDetails(details);
			if (cofinsLines.length > 0) {
				MLBRDocLineCOFINS cofins = cofinsLines[0];

				if (cofins.getLBR_TaxAmt() != null) {
					if (nfTaxList.containsKey(MLBRTax.getTaxGroupID(MLBRTax.TAX_GROUP_COFINS_NAME))) {
						MLBRNFSTax newOTax = nfTaxList
								.get(MLBRTax.getTaxGroupID(MLBRTax.TAX_GROUP_COFINS_NAME));
						newOTax.setIsTaxIncluded(cofins.isTaxIncluded());
						newOTax.setTaxBaseAmt(newOTax.getTaxBaseAmt().add(
								cofins.getLBR_TaxBaseAmt()));
						newOTax.setTaxAmt(newOTax.getTaxAmt().add(
								cofins.getLBR_TaxAmt()));
					}

					if (!cofins.isTaxIncluded())
						grandTotal = grandTotal.add(cofins.getLBR_TaxAmt());
				}
			}

			// Import Tax
			MLBRDocLineImportTax[] importTaxLines = MLBRDocLineImportTax
					.getOfDetails(details);
			if (importTaxLines.length > 0) {
				MLBRDocLineImportTax importTax = importTaxLines[0];

				if (importTax.getLBR_TaxAmt() != null) {
					if (nfTaxList.containsKey(MLBRTax.getTaxGroupID(MLBRTax.TAX_GROUP_II_NAME))) {
						MLBRNFSTax newOTax = nfTaxList
								.get(MLBRTax.getTaxGroupID(MLBRTax.TAX_GROUP_II_NAME));
						newOTax.setIsTaxIncluded(importTax.isTaxIncluded());
						newOTax.setTaxBaseAmt(newOTax.getTaxBaseAmt().add(
								importTax.getLBR_TaxBaseAmt()));
						newOTax.setTaxAmt(newOTax.getTaxAmt().add(
								importTax.getLBR_TaxAmt()));
					}

					if (!importTax.isTaxIncluded())
						grandTotal = grandTotal.add(importTax.getLBR_TaxAmt());
				}
			}
			
			// ISSQN
			MLBRDocLineISSQN[] issqnLines = MLBRDocLineISSQN.getOfDetails(details);
			if (issqnLines.length > 0) {
				MLBRDocLineISSQN issqn = issqnLines[0];
				
				if (issqn.getLBR_TaxAmt() != null) {
					if (nfTaxList.containsKey(MLBRTax.getTaxGroupID(MLBRTax.TAX_GROUP_ISSQN_NAME))) {
						MLBRNFSTax newOTax = nfTaxList.get(MLBRTax.getTaxGroupID(MLBRTax.TAX_GROUP_ISSQN_NAME));
						newOTax.setIsTaxIncluded(issqn.isTaxIncluded());
						newOTax.setTaxBaseAmt(newOTax.getTaxBaseAmt().add(issqn.getLBR_TaxBaseAmt()));
						newOTax.setTaxAmt(newOTax.getTaxAmt().add(issqn.getLBR_TaxAmt()));
					}
					
					if (!issqn.isTaxIncluded())
						grandTotal = grandTotal.add(issqn.getLBR_TaxAmt());
				}
			}
			
			// OTHERS
			MLBRDocLineOTHER[] otherTaxes = MLBRDocLineOTHER.getOfDetails(details);
			if (otherTaxes.length > 0) {
				MLBRDocLineOTHER othersTax = otherTaxes[0];
				
				if (othersTax.getLBR_IR_TaxBaseAmt() != null) {
					if (nfTaxList.containsKey(MLBRTax.getTaxGroupID(MLBRTax.TAX_GROUP_IR_NAME))) {
						MLBRNFSTax newOTax = nfTaxList.get(MLBRTax.getTaxGroupID(MLBRTax.TAX_GROUP_IR_NAME));
						newOTax.setIsTaxIncluded(othersTax.isLBR_IR_IsTaxIncluded());
						newOTax.setTaxBaseAmt(newOTax.getTaxBaseAmt().add(othersTax.getLBR_IR_TaxBaseAmt()));
						newOTax.setTaxAmt(newOTax.getTaxAmt().add(othersTax.getLBR_IR_TaxAmt()));
					}
					
					if (!othersTax.isLBR_IR_IsTaxIncluded())
						grandTotal = grandTotal.add(othersTax.getLBR_IR_TaxAmt());
				}
			}
		}

		// Save changed taxes and delete zero amount ones
		Iterator<Entry<Integer, MLBRNFSTax>> entries = nfTaxList.entrySet().iterator();
		while (entries.hasNext()) {
			Entry<Integer, MLBRNFSTax> thisEntry = (Entry<Integer, MLBRNFSTax>) entries.next();
			MLBRNFSTax newNFTax = thisEntry.getValue();

			if (newNFTax.getTaxAmt().signum() == 0)
				newNFTax.delete(true, nfs.get_TrxName());
			else if (!newNFTax.save(nfs.get_TrxName()))
				return false;
		}

		nfs.setTotalLines(totalLines);
		nfs.setGrandTotal(grandTotal);
		return true;
	}

	@Override
	public boolean updateNFSTax(MTaxProvider provider, MLBRNFS nfs) {
		if (isLBRTaxProvider(provider))
			return nfs.updateNFTax(false);
		return true;
	}

	@Override
	public boolean recalculateTax(MTaxProvider provider, MLBRNFS nfs,
			boolean newRecord) {

		if (!newRecord && nfs.is_ValueChanged(MLBRNFS.COLUMNNAME_C_Tax_ID)
				&& !nfs.isProcessed()) {
			if (isLBRTaxProvider(provider)) {
				// Recalculate Tax for old Tax
				if (!nfs.updateNFTax(true))
					return false;
			}
		}
		return nfs.updateHeaderTax();
	}

	@Override
	public boolean updateHeaderTax(MTaxProvider provider, MLBRNFS nfs) {
		//
		String sql = "";

		//
		MLBRDocLineDetailsNFS details = MLBRDocLineDetailsNFS.getOfPO(nfs);

		if (details == null) {
			if (nfs.isTaxIncluded())
				sql = "UPDATE LBR_NFS i " + " SET GrandTotal=TotalLines "
						+ "WHERE LBR_NFS_ID=" + nfs.getLBR_NFS_ID();
			else
				sql = "UPDATE LBR_NFS i "
						+ " SET GrandTotal=TotalLines+"
						+ "(SELECT COALESCE(SUM(TaxAmt),0) FROM LBR_NFSTax it WHERE i.LBR_NFS_ID=it.LBR_NFS_ID) "
						+ "WHERE LBR_NFS_ID=" + nfs.getLBR_NFS_ID();
		} else {
			sql = "UPDATE LBR_NFS i SET GrandTotal=TotalLines+"
					+ details.getNotIncludedTaxAmt() + " WHERE LBR_NFS_ID="
					+ nfs.getLBR_NFS_ID();
		}

		int no  = DB.executeUpdate(sql, nfs.get_TrxName());
		if (no != 1)
			s_log.warning("(1) #" + no);

		return no == 1;
	}

	@Override
	public String validateConnection(MTaxProvider provider, ProcessInfo pi)
			throws Exception {
		// TODO Auto-generated method stub
		s_log.log(Level.SEVERE,
				"DefaultTaxProvider: validateConnection(MTaxProvider provider, ProcessInfo pi)");
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
