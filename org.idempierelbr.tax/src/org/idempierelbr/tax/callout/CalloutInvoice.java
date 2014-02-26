package org.idempierelbr.tax.callout;

import java.util.Map;
import java.util.Properties;

import org.adempiere.base.IColumnCallout;
import org.adempiere.model.POWrapper;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MOrderLine;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MProduct;
import org.compiere.util.Env;
import org.idempierelbr.tax.model.MLBRTax;
import org.idempierelbr.tax.model.MLBRTaxLine;
import org.idempierelbr.tax.wrapper.I_W_C_BPartner;

public class CalloutInvoice implements IColumnCallout {

	@Override
	public String start(Properties ctx, int WindowNo, GridTab mTab,
			GridField mField, Object value, Object oldValue) {
		
		if (mTab.getTableName().equals(MInvoice.Table_Name))
			if (mField.getColumnName().equals(MInvoice.COLUMNNAME_C_BPartner_ID))
				return setTransactionType(ctx, mTab, value);
			else 
				return null;
		else if (mTab.getTableName().equals(MInvoiceLine.Table_Name))
			if (mField.getColumnName().equals(MInvoiceLine.COLUMNNAME_M_Product_ID))
				return createTaxTransaction(ctx, mTab, value);
			else 
				return null;
		else
			return null;
	}
	
	/**
	 * Define o Tipo de Transação com base no Parceiro de Negócios
	 */
	private String setTransactionType(Properties ctx, GridTab mTab, Object value) {
		Integer C_BPartner_ID = (Integer) value;
		
		if (C_BPartner_ID == null || C_BPartner_ID == 0) {
			mTab.setValue("LBR_TransactionType", null);
			return "";
		}
		
		MBPartner bp = new MBPartner(ctx, C_BPartner_ID, null);
		I_W_C_BPartner bpW = POWrapper.create(bp, I_W_C_BPartner.class);
		
		if (Env.isSOTrx(ctx, mTab.getWindowNo()))
			mTab.setValue("LBR_TransactionType", bpW.getLBR_TransactionType_Customer());
		else
			mTab.setValue("LBR_TransactionType", bpW.getLBR_TransactionType_Vendor());
		
		return "";
	}
	
	/**
	 * Cria Tax Transaction com base nas regras fiscais
	 */
	private String createTaxTransaction(Properties ctx, GridTab mTab, Object value) {
		Integer M_Product_ID = (Integer) value;
		
		if (M_Product_ID == null || M_Product_ID == 0) {
			mTab.setValue("LBR_Tax_ID", null);
			return "";
		}

		Integer AD_Org_ID = (Integer) mTab.getValue(MOrderLine.COLUMNNAME_AD_Org_ID);

		if (AD_Org_ID == null)
			AD_Org_ID = 0;
		
		Integer C_Invoice_ID = (Integer) mTab.getValue(MInvoiceLine.COLUMNNAME_C_Invoice_ID);

		if (C_Invoice_ID == null)
			C_Invoice_ID = 0;
		
		MOrgInfo oi = MOrgInfo.get(ctx, AD_Org_ID, null);
		Object[] taxation = null;
		MBPartnerLocation bpLoc = null;

		MInvoice i = new MInvoice (ctx, C_Invoice_ID, null);
		MProduct p = new MProduct (ctx, M_Product_ID, null);
		MBPartner bp = new MBPartner (ctx, i.getC_BPartner_ID(), null);
		bpLoc = (MBPartnerLocation) i.getC_BPartner_Location();
		taxation = MLBRTax.getTaxes (i.getC_DocTypeTarget_ID(), i.isSOTrx(), i.get_ValueAsString("LBR_TransactionType"), p, oi, bp, bpLoc, i.getDateAcct());
		
		if (taxation == null)
			return "";
		
		/**
		 * Content for taxation array slots:
		 * 	0 = Taxes
		 * 	1 = Legal Message
		 * 	2 = CFOP
		 * 	3 = CST
		 */
		@SuppressWarnings("unchecked")
		Map<Integer, MLBRTaxLine> taxes = (Map<Integer, MLBRTaxLine>) taxation[0];
		
		if (taxes.size() > 0)
		{
			MLBRTax tax = new MLBRTax (ctx, 0, null);
			tax.setAD_Org_ID(AD_Org_ID);
			tax.save();

			for (Integer key : taxes.keySet()) {
				MLBRTaxLine tl = taxes.get(key);
				tl.setLBR_Tax_ID(tax.getLBR_Tax_ID());
				tl.save();
			}

			tax.setDescription();
			tax.save();
			mTab.setValue("LBR_Tax_ID", tax.getLBR_Tax_ID());
		}
		
		//if (((Integer) taxation[1]) > 0)
		//	mTab.setValue("LBR_LegalMessage_ID", ((Integer) taxation[1]));
		
		//if (((Integer) taxation[2]) > 0)
		//	mTab.setValue("LBR_CFOP_ID", ((Integer) taxation[2]));
		
		//if (((String) taxation[3]) != null && ((String) taxation[3]).length() > 0)
		//	mTab.setValue("lbr_TaxStatus", p.getlbr_ProductSource() + ((String) taxation[3]));
		
		return null;
	}
}