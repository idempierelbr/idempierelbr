package org.idempierelbr.openitems.callout;

import java.math.BigDecimal;
import java.util.Properties;
import org.adempiere.base.IColumnCallout;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MBankAccount;
import org.compiere.model.MDocType;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoicePaySchedule;
import org.compiere.util.Env;
import org.idempierelbr.base.model.MLBRBankAccountCarteira;
import org.idempierelbr.base.model.MLBRBankAccountConvenio;
import org.idempierelbr.base.model.MLBRBoleto;
import org.idempierelbr.base.model.MLBRCollectionDefault;

public class CalloutBoleto implements IColumnCallout {
	@Override
	public String start(Properties ctx, int WindowNo, GridTab mTab,
			GridField mField, Object value, Object oldValue) {
		
		if (mTab.getTableName().equals(MLBRBoleto.Table_Name))
			if (mField.getColumnName().equals(MLBRBoleto.COLUMNNAME_C_DocType_ID))
				return setDocTypeRelated(ctx, mTab, value);
			else if (mField.getColumnName().equals(MLBRBoleto.COLUMNNAME_C_Invoice_ID))
				return setInvoiceRelated(ctx, mTab, value);
			else if (mField.getColumnName().equals(MLBRBoleto.COLUMNNAME_C_InvoicePaySchedule_ID))
				return setInvoicePaySchedRelated(ctx, mTab, value);
			else if (mField.getColumnName().equals(MLBRBoleto.COLUMNNAME_C_BankAccount_ID))
				return setBankAccountRelated(ctx, mTab, value);
			else if (mField.getColumnName().equals(MLBRBoleto.COLUMNNAME_LBR_BankAccount_Carteira_ID))
				return setCarteiraRelated(ctx, mTab, value);
			else 
				return null;
		else
			return null;
	}
	
	/**
	 * Set the fields related to the selected Document Type
	 */
	private String setDocTypeRelated(Properties ctx, GridTab mTab, Object value) {
		Integer C_DocType_ID = (Integer) value;
		
		if (C_DocType_ID == null || C_DocType_ID == 0) {
			clearBoletoDocTypeRelatedFields(mTab);
			return "";
		}
		
		MDocType dt = new MDocType(ctx, C_DocType_ID, null);
		Integer LBR_Collection_Default_ID = dt.get_ValueAsInt("LBR_Collection_Default_ID");
		
		if (LBR_Collection_Default_ID == null || LBR_Collection_Default_ID == 0) {
			clearBoletoDocTypeRelatedFields(mTab);
			return "";
		}
		
		MLBRCollectionDefault def = new MLBRCollectionDefault(ctx, LBR_Collection_Default_ID, null) ;
			
		mTab.setValue("LBR_CollectionType", def.get_Value("LBR_CollectionType"));
		mTab.setValue("LBR_Accepted", def.get_Value("LBR_Accepted"));
		mTab.setValue("LBR_PartialPayment", def.get_Value("LBR_PartialPayment"));
		mTab.setValue("LBR_DirectDebitNotice", def.get_Value("LBR_DirectDebitNotice"));
		mTab.setValue("LBR_CollectionRegType", def.get_Value("LBR_CollectionRegType"));
		mTab.setValue("LBR_CNAB240DocType", def.get_Value("LBR_CNAB240DocType"));
		
		return "";
	}
	
	/**
	 * Clear the fields related to a Document Type
	 */
	private void clearBoletoDocTypeRelatedFields(GridTab mTab) {
		mTab.setValue("LBR_CollectionType", null);
		mTab.setValue("LBR_Accepted", null);
		mTab.setValue("LBR_PartialPayment", null);
		mTab.setValue("LBR_DirectDebitNotice", null);
		mTab.setValue("LBR_CollectionRegType", null);
		mTab.setValue("LBR_CNAB240DocType", null);
		
		return;
	}
	
	/**
	 * Set the fields related to the selected Invoice
	 */
	private String setInvoiceRelated(Properties ctx, GridTab mTab, Object value) {
		mTab.setValue("LBR_NumberInOrg", null);
		mTab.setValue("DueDate", null);
		mTab.setValue("GrandTotal", null);
					
		Integer C_Invoice_ID = (Integer) value;
		
		if (C_Invoice_ID != null && C_Invoice_ID > 0) {
			MInvoice i = new MInvoice(ctx, C_Invoice_ID, null);
			
			// Only change business partner if it's not set yet
			if (mTab.getValue("C_BPartner_ID") == null) {
				mTab.setValue("C_BPartner_ID", i.getC_BPartner_ID());
				mTab.setValue("C_BPartner_Location_ID", i.getC_BPartner_Location_ID());
				
				MBPartnerLocation[] bpLocations = MBPartnerLocation.getForBPartner(ctx, i.getC_BPartner_ID(), null);
				
				for (MBPartnerLocation bpLocation : bpLocations) {
					if (bpLocation.isPayFrom() && bpLocation.isActive())
						mTab.setValue("C_BPartner_Location_ID", bpLocation.get_ID());
				}
				
			}
			
			// Bank, Account, Correspondent Bank & Currency
			if (i.get_ValueAsInt("LBR_BankAccount_ID") > 0) {
				MBankAccount bA = new MBankAccount(ctx, i.get_ValueAsInt("LBR_BankAccount_ID"), null);
				mTab.setValue("C_Bank_ID", bA.getC_Bank_ID());
				mTab.setValue("C_BankAccount_ID", bA.get_ID());
				mTab.setValue("LBR_CorrespBank_ID", bA.get_ValueAsInt("LBR_CorrespBank_ID"));
				mTab.setValue("LBR_CNAB240Currency", MLBRBoleto.getConvertedCurrencyForCNAB(bA.getC_Currency_ID()));
			}
			
			// Issue & Distribution
			String issueDistrib = i.get_ValueAsString("LBR_CollectionIssueDistrib");
			if (issueDistrib != null) {
				if (issueDistrib.equals("BAN")) {
					mTab.setValue("LBR_IssueType", MLBRBoleto.LBR_ISSUETYPE_1_BancoEmite);
					mTab.setValue("LBR_DistributionType", MLBRBoleto.LBR_DISTRIBUTIONTYPE_1_BancoDistribui);
				} else if (issueDistrib.equals("ORG")) {
					mTab.setValue("LBR_IssueType", MLBRBoleto.LBR_ISSUETYPE_2_ClienteEmite);
					mTab.setValue("LBR_DistributionType", MLBRBoleto.LBR_DISTRIBUTIONTYPE_2_ClienteDistribui);
				}
			}
		}
		
		return "";
	}
	
	/**
	 * Set the fields related to the selected Invoice Payment Schedule
	 */
	private String setInvoicePaySchedRelated(Properties ctx, GridTab mTab, Object value) {
		mTab.setValue("LBR_NumberInOrg", null);
		mTab.setValue("DueDate", null);
		mTab.setValue("GrandTotal", null);
		
		Integer C_InvoicePaySchedule_ID = (Integer) value;
		
		if (C_InvoicePaySchedule_ID != null && C_InvoicePaySchedule_ID > 0) {
			MInvoicePaySchedule sched = new MInvoicePaySchedule(ctx, C_InvoicePaySchedule_ID, null);
		
			// Only change due date if it's not set yet
			if (mTab.getValue("DueDate") == null)
				mTab.setValue("DueDate", sched.getDueDate());
			
			// Only change grand total if it's not set yet
			if (mTab.getValue("GrandTotal") == null ||
					((BigDecimal)mTab.getValue("GrandTotal")).compareTo(Env.ZERO) == 0)
				mTab.setValue("GrandTotal", sched.getDueAmt());
			
			// Number In Org
			mTab.setValue("LBR_NumberInOrg", MLBRBoleto.generateRelativeNumberInOrg(C_InvoicePaySchedule_ID, true, null));
		}
		
		return "";
	}
	
	/**
	 * Set the fields related to the selected Bank Account
	 */
	private String setBankAccountRelated(Properties ctx, GridTab mTab, Object value) {
		Integer C_BankAccount_ID = (Integer) value;
		
		if (C_BankAccount_ID != null && C_BankAccount_ID > 0) {
			MBankAccount bA = new MBankAccount(ctx, C_BankAccount_ID, null);
		
			// Only change currency if it's not set yet
			if (mTab.getValue("LBR_CNAB240Currency") == null)
				mTab.setValue("LBR_CNAB240Currency", MLBRBoleto.getConvertedCurrencyForCNAB(bA.getC_Currency_ID()));
			
			// Only change correspondent bank if it's not set yet
			if (mTab.getValue("LBR_CorrespBank_ID") == null) {
				mTab.setValue("LBR_CorrespBank_ID", bA.get_ValueAsInt("LBR_CorrespBank_ID"));
				mTab.setValue("LBR_NumberInCorrespBank", bA.get_ValueAsInt("LBR_NumberInCorrespBank"));
			}
			
			// Only change convenio/carteira if it's not set yet
			if (mTab.getValue("LBR_BankAccount_Convenio_ID") == null) {
				MLBRBankAccountConvenio[] convenios = MLBRBankAccountConvenio.getConvenios(ctx, C_BankAccount_ID, null);
				
				if (convenios.length > 0) {
					mTab.setValue("LBR_BankAccount_Convenio_ID", convenios[0].get_ID());
					
					MLBRBankAccountCarteira[] carteiras = convenios[0].getCarteiras();
					
					if (carteiras.length > 0) {
						mTab.setValue("LBR_BankAccount_Carteira_ID", carteiras[0].get_ID());
						mTab.setValue("LBR_CarteiraType", carteiras[0].getLBR_CarteiraType());
					}
				}
			}
		}
		
		return "";
	}
	
	/**
	 * Set the fields related to the selected Carteira
	 */
	private String setCarteiraRelated(Properties ctx, GridTab mTab, Object value) {
		Integer LBR_BankAccount_Carteira_ID = (Integer) value;
		
		if (LBR_BankAccount_Carteira_ID != null && LBR_BankAccount_Carteira_ID > 0) {
			MLBRBankAccountCarteira carteira = new MLBRBankAccountCarteira(ctx, LBR_BankAccount_Carteira_ID, null);
			mTab.setValue("LBR_CarteiraType", carteira.getLBR_CarteiraType());
		} else {
			mTab.setValue("LBR_CarteiraType", null);
		}
		
		return "";
	}
}