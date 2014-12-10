/******************************************************************************
 * Product: iDempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 1999-2012 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software, you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY, without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program, if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
package org.idempierelbr.openitems.model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Interface for LBR_Boleto
 *  @author iDempiere (generated) 
 *  @version Release 2.1
 */
@SuppressWarnings("all")
public interface I_LBR_Boleto 
{

    /** TableName=LBR_Boleto */
    public static final String Table_Name = "LBR_Boleto";

    /** AD_Table_ID=1000053 */
    public static final int Table_ID = MTable.getTable_ID(Table_Name);

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 1 - Org 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(1);

    /** Load Meta Data */

    /** Column name AD_Client_ID */
    public static final String COLUMNNAME_AD_Client_ID = "AD_Client_ID";

	/** Get Client.
	  * Client/Tenant for this installation.
	  */
	public int getAD_Client_ID();

    /** Column name AD_Org_ID */
    public static final String COLUMNNAME_AD_Org_ID = "AD_Org_ID";

	/** Set Organization.
	  * Organizational entity within client
	  */
	public void setAD_Org_ID (int AD_Org_ID);

	/** Get Organization.
	  * Organizational entity within client
	  */
	public int getAD_Org_ID();

    /** Column name C_BankAccount_ID */
    public static final String COLUMNNAME_C_BankAccount_ID = "C_BankAccount_ID";

	/** Set Bank Account.
	  * Account at the Bank
	  */
	public void setC_BankAccount_ID (int C_BankAccount_ID);

	/** Get Bank Account.
	  * Account at the Bank
	  */
	public int getC_BankAccount_ID();

	public org.compiere.model.I_C_BankAccount getC_BankAccount() throws RuntimeException;

    /** Column name C_Bank_ID */
    public static final String COLUMNNAME_C_Bank_ID = "C_Bank_ID";

	/** Set Bank.
	  * Bank
	  */
	public void setC_Bank_ID (int C_Bank_ID);

	/** Get Bank.
	  * Bank
	  */
	public int getC_Bank_ID();

	public org.compiere.model.I_C_Bank getC_Bank() throws RuntimeException;

    /** Column name C_BPartner_ID */
    public static final String COLUMNNAME_C_BPartner_ID = "C_BPartner_ID";

	/** Set Business Partner .
	  * Identifies a Business Partner
	  */
	public void setC_BPartner_ID (int C_BPartner_ID);

	/** Get Business Partner .
	  * Identifies a Business Partner
	  */
	public int getC_BPartner_ID();

	public org.compiere.model.I_C_BPartner getC_BPartner() throws RuntimeException;

    /** Column name C_BPartner_Location_ID */
    public static final String COLUMNNAME_C_BPartner_Location_ID = "C_BPartner_Location_ID";

	/** Set Partner Location.
	  * Identifies the (ship to) address for this Business Partner
	  */
	public void setC_BPartner_Location_ID (int C_BPartner_Location_ID);

	/** Get Partner Location.
	  * Identifies the (ship to) address for this Business Partner
	  */
	public int getC_BPartner_Location_ID();

	public org.compiere.model.I_C_BPartner_Location getC_BPartner_Location() throws RuntimeException;

    /** Column name C_DocType_ID */
    public static final String COLUMNNAME_C_DocType_ID = "C_DocType_ID";

	/** Set Document Type.
	  * Document type or rules
	  */
	public void setC_DocType_ID (int C_DocType_ID);

	/** Get Document Type.
	  * Document type or rules
	  */
	public int getC_DocType_ID();

	public org.compiere.model.I_C_DocType getC_DocType() throws RuntimeException;

    /** Column name C_Invoice_ID */
    public static final String COLUMNNAME_C_Invoice_ID = "C_Invoice_ID";

	/** Set Invoice.
	  * Invoice Identifier
	  */
	public void setC_Invoice_ID (int C_Invoice_ID);

	/** Get Invoice.
	  * Invoice Identifier
	  */
	public int getC_Invoice_ID();

	public org.compiere.model.I_C_Invoice getC_Invoice() throws RuntimeException;

    /** Column name C_InvoicePaySchedule_ID */
    public static final String COLUMNNAME_C_InvoicePaySchedule_ID = "C_InvoicePaySchedule_ID";

	/** Set Invoice Payment Schedule.
	  * Invoice Payment Schedule
	  */
	public void setC_InvoicePaySchedule_ID (int C_InvoicePaySchedule_ID);

	/** Get Invoice Payment Schedule.
	  * Invoice Payment Schedule
	  */
	public int getC_InvoicePaySchedule_ID();

	public org.compiere.model.I_C_InvoicePaySchedule getC_InvoicePaySchedule() throws RuntimeException;

    /** Column name Created */
    public static final String COLUMNNAME_Created = "Created";

	/** Get Created.
	  * Date this record was created
	  */
	public Timestamp getCreated();

    /** Column name CreatedBy */
    public static final String COLUMNNAME_CreatedBy = "CreatedBy";

	/** Get Created By.
	  * User who created this records
	  */
	public int getCreatedBy();

    /** Column name DateAcct */
    public static final String COLUMNNAME_DateAcct = "DateAcct";

	/** Set Account Date.
	  * Accounting Date
	  */
	public void setDateAcct (Timestamp DateAcct);

	/** Get Account Date.
	  * Accounting Date
	  */
	public Timestamp getDateAcct();

    /** Column name DateDoc */
    public static final String COLUMNNAME_DateDoc = "DateDoc";

	/** Set Document Date.
	  * Date of the Document
	  */
	public void setDateDoc (Timestamp DateDoc);

	/** Get Document Date.
	  * Date of the Document
	  */
	public Timestamp getDateDoc();

    /** Column name Description */
    public static final String COLUMNNAME_Description = "Description";

	/** Set Description.
	  * Optional short description of the record
	  */
	public void setDescription (String Description);

	/** Get Description.
	  * Optional short description of the record
	  */
	public String getDescription();

    /** Column name DocAction */
    public static final String COLUMNNAME_DocAction = "DocAction";

	/** Set Document Action.
	  * The targeted status of the document
	  */
	public void setDocAction (String DocAction);

	/** Get Document Action.
	  * The targeted status of the document
	  */
	public String getDocAction();

    /** Column name DocStatus */
    public static final String COLUMNNAME_DocStatus = "DocStatus";

	/** Set Document Status.
	  * The current status of the document
	  */
	public void setDocStatus (String DocStatus);

	/** Get Document Status.
	  * The current status of the document
	  */
	public String getDocStatus();

    /** Column name DocumentNo */
    public static final String COLUMNNAME_DocumentNo = "DocumentNo";

	/** Set Document No.
	  * Document sequence number of the document
	  */
	public void setDocumentNo (String DocumentNo);

	/** Get Document No.
	  * Document sequence number of the document
	  */
	public String getDocumentNo();

    /** Column name DueDate */
    public static final String COLUMNNAME_DueDate = "DueDate";

	/** Set Due Date.
	  * Date when the payment is due
	  */
	public void setDueDate (Timestamp DueDate);

	/** Get Due Date.
	  * Date when the payment is due
	  */
	public Timestamp getDueDate();

    /** Column name GrandTotal */
    public static final String COLUMNNAME_GrandTotal = "GrandTotal";

	/** Set Grand Total.
	  * Total amount of document
	  */
	public void setGrandTotal (BigDecimal GrandTotal);

	/** Get Grand Total.
	  * Total amount of document
	  */
	public BigDecimal getGrandTotal();

    /** Column name IsActive */
    public static final String COLUMNNAME_IsActive = "IsActive";

	/** Set Active.
	  * The record is active in the system
	  */
	public void setIsActive (boolean IsActive);

	/** Get Active.
	  * The record is active in the system
	  */
	public boolean isActive();

    /** Column name IsPaid */
    public static final String COLUMNNAME_IsPaid = "IsPaid";

	/** Set Paid.
	  * The document is paid
	  */
	public void setIsPaid (boolean IsPaid);

	/** Get Paid.
	  * The document is paid
	  */
	public boolean isPaid();

    /** Column name LBR_Accepted */
    public static final String COLUMNNAME_LBR_Accepted = "LBR_Accepted";

	/** Set Accepted	  */
	public void setLBR_Accepted (String LBR_Accepted);

	/** Get Accepted	  */
	public String getLBR_Accepted();

    /** Column name LBR_BankAccount_Carteira_ID */
    public static final String COLUMNNAME_LBR_BankAccount_Carteira_ID = "LBR_BankAccount_Carteira_ID";

	/** Set Bank Account Carteira	  */
	public void setLBR_BankAccount_Carteira_ID (int LBR_BankAccount_Carteira_ID);

	/** Get Bank Account Carteira	  */
	public int getLBR_BankAccount_Carteira_ID();

	public I_LBR_BankAccount_Carteira getLBR_BankAccount_Carteira() throws RuntimeException;

    /** Column name LBR_BankAccount_Convenio_ID */
    public static final String COLUMNNAME_LBR_BankAccount_Convenio_ID = "LBR_BankAccount_Convenio_ID";

	/** Set Bank Account Convênio	  */
	public void setLBR_BankAccount_Convenio_ID (int LBR_BankAccount_Convenio_ID);

	/** Get Bank Account Convênio	  */
	public int getLBR_BankAccount_Convenio_ID();

	public I_LBR_BankAccount_Convenio getLBR_BankAccount_Convenio() throws RuntimeException;

    /** Column name LBR_BankUse */
    public static final String COLUMNNAME_LBR_BankUse = "LBR_BankUse";

	/** Set Bank Use.
	  * Bank Use
	  */
	public void setLBR_BankUse (String LBR_BankUse);

	/** Get Bank Use.
	  * Bank Use
	  */
	public String getLBR_BankUse();

    /** Column name LBR_Barcode */
    public static final String COLUMNNAME_LBR_Barcode = "LBR_Barcode";

	/** Set Barcode.
	  * Barcode
	  */
	public void setLBR_Barcode (String LBR_Barcode);

	/** Get Barcode.
	  * Barcode
	  */
	public String getLBR_Barcode();

    /** Column name LBR_Boleto_ID */
    public static final String COLUMNNAME_LBR_Boleto_ID = "LBR_Boleto_ID";

	/** Set Brazilian Bank Collection (Boleto).
	  * Brazilian Bank Collection (Boleto) Identifier
	  */
	public void setLBR_Boleto_ID (int LBR_Boleto_ID);

	/** Get Brazilian Bank Collection (Boleto).
	  * Brazilian Bank Collection (Boleto) Identifier
	  */
	public int getLBR_Boleto_ID();

    /** Column name LBR_Boleto_UU */
    public static final String COLUMNNAME_LBR_Boleto_UU = "LBR_Boleto_UU";

	/** Set Brazilian Bank Collection (Boleto).
	  * Brazilian Bank Collection (Boleto) Identifier
	  */
	public void setLBR_Boleto_UU (String LBR_Boleto_UU);

	/** Get Brazilian Bank Collection (Boleto).
	  * Brazilian Bank Collection (Boleto) Identifier
	  */
	public String getLBR_Boleto_UU();

    /** Column name LBR_CarteiraType */
    public static final String COLUMNNAME_LBR_CarteiraType = "LBR_CarteiraType";

	/** Set Bank Account Carteira Type	  */
	public void setLBR_CarteiraType (String LBR_CarteiraType);

	/** Get Bank Account Carteira Type	  */
	public String getLBR_CarteiraType();

    /** Column name LBR_CNAB240Currency */
    public static final String COLUMNNAME_LBR_CNAB240Currency = "LBR_CNAB240Currency";

	/** Set Currency	  */
	public void setLBR_CNAB240Currency (String LBR_CNAB240Currency);

	/** Get Currency	  */
	public String getLBR_CNAB240Currency();

    /** Column name LBR_CNAB240DocType */
    public static final String COLUMNNAME_LBR_CNAB240DocType = "LBR_CNAB240DocType";

	/** Set Febraban Document Type	  */
	public void setLBR_CNAB240DocType (String LBR_CNAB240DocType);

	/** Get Febraban Document Type	  */
	public String getLBR_CNAB240DocType();

    /** Column name LBR_CNAB240MovementType */
    public static final String COLUMNNAME_LBR_CNAB240MovementType = "LBR_CNAB240MovementType";

	/** Set Movement Type	  */
	public void setLBR_CNAB240MovementType (String LBR_CNAB240MovementType);

	/** Get Movement Type	  */
	public String getLBR_CNAB240MovementType();

    /** Column name LBR_Cob_Movimento_ID */
    public static final String COLUMNNAME_LBR_Cob_Movimento_ID = "LBR_Cob_Movimento_ID";

	/** Set Collection Movement	  */
	public void setLBR_Cob_Movimento_ID (int LBR_Cob_Movimento_ID);

	/** Get Collection Movement	  */
	public int getLBR_Cob_Movimento_ID();

	public I_LBR_Cob_Movimento getLBR_Cob_Movimento() throws RuntimeException;

    /** Column name LBR_CollectionRegType */
    public static final String COLUMNNAME_LBR_CollectionRegType = "LBR_CollectionRegType";

	/** Set Registration Type.
	  * Collection Registration Type
	  */
	public void setLBR_CollectionRegType (String LBR_CollectionRegType);

	/** Get Registration Type.
	  * Collection Registration Type
	  */
	public String getLBR_CollectionRegType();

    /** Column name LBR_CollectionType */
    public static final String COLUMNNAME_LBR_CollectionType = "LBR_CollectionType";

	/** Set Collection Type	  */
	public void setLBR_CollectionType (String LBR_CollectionType);

	/** Get Collection Type	  */
	public String getLBR_CollectionType();

    /** Column name LBR_CorrespBank_ID */
    public static final String COLUMNNAME_LBR_CorrespBank_ID = "LBR_CorrespBank_ID";

	/** Set Correspondent Bank.
	  * Correspondent Bank
	  */
	public void setLBR_CorrespBank_ID (int LBR_CorrespBank_ID);

	/** Get Correspondent Bank.
	  * Correspondent Bank
	  */
	public int getLBR_CorrespBank_ID();

	public org.compiere.model.I_C_Bank getLBR_CorrespBank() throws RuntimeException;

    /** Column name LBR_DirectDebitNotice */
    public static final String COLUMNNAME_LBR_DirectDebitNotice = "LBR_DirectDebitNotice";

	/** Set Direct Debit Notice	  */
	public void setLBR_DirectDebitNotice (String LBR_DirectDebitNotice);

	/** Get Direct Debit Notice	  */
	public String getLBR_DirectDebitNotice();

    /** Column name LBR_DistributionType */
    public static final String COLUMNNAME_LBR_DistributionType = "LBR_DistributionType";

	/** Set Distribution Type	  */
	public void setLBR_DistributionType (String LBR_DistributionType);

	/** Get Distribution Type	  */
	public String getLBR_DistributionType();

    /** Column name LBR_Fmt_AgencyClient */
    public static final String COLUMNNAME_LBR_Fmt_AgencyClient = "LBR_Fmt_AgencyClient";

	/** Set Agency and Client Formatted.
	  * Agency and Client Formatted
	  */
	public void setLBR_Fmt_AgencyClient (String LBR_Fmt_AgencyClient);

	/** Get Agency and Client Formatted.
	  * Agency and Client Formatted
	  */
	public String getLBR_Fmt_AgencyClient();

    /** Column name LBR_Fmt_Billfold */
    public static final String COLUMNNAME_LBR_Fmt_Billfold = "LBR_Fmt_Billfold";

	/** Set Billfold Formatted.
	  * Billfold Formatted
	  */
	public void setLBR_Fmt_Billfold (String LBR_Fmt_Billfold);

	/** Get Billfold Formatted.
	  * Billfold Formatted
	  */
	public String getLBR_Fmt_Billfold();

    /** Column name LBR_Fmt_Doctype */
    public static final String COLUMNNAME_LBR_Fmt_Doctype = "LBR_Fmt_Doctype";

	/** Set Document Type Formatted.
	  * Document Type Formatted
	  */
	public void setLBR_Fmt_Doctype (String LBR_Fmt_Doctype);

	/** Get Document Type Formatted.
	  * Document Type Formatted
	  */
	public String getLBR_Fmt_Doctype();

    /** Column name LBR_Fmt_NumberInBank */
    public static final String COLUMNNAME_LBR_Fmt_NumberInBank = "LBR_Fmt_NumberInBank";

	/** Set Number In Bank Formatted.
	  * Number In Bank Formatted
	  */
	public void setLBR_Fmt_NumberInBank (String LBR_Fmt_NumberInBank);

	/** Get Number In Bank Formatted.
	  * Number In Bank Formatted
	  */
	public String getLBR_Fmt_NumberInBank();

    /** Column name LBR_Guarantor_ID */
    public static final String COLUMNNAME_LBR_Guarantor_ID = "LBR_Guarantor_ID";

	/** Set Guarantor (Business Partner).
	  * Identifies a guarantor (Business Partner)
	  */
	public void setLBR_Guarantor_ID (int LBR_Guarantor_ID);

	/** Get Guarantor (Business Partner).
	  * Identifies a guarantor (Business Partner)
	  */
	public int getLBR_Guarantor_ID();

	public org.compiere.model.I_C_BPartner getLBR_Guarantor() throws RuntimeException;

    /** Column name LBR_Guarantor_Location_ID */
    public static final String COLUMNNAME_LBR_Guarantor_Location_ID = "LBR_Guarantor_Location_ID";

	/** Set Guarantor (Partner) Location.
	  * Identifies the address for this guarantor (Business Partner)
	  */
	public void setLBR_Guarantor_Location_ID (int LBR_Guarantor_Location_ID);

	/** Get Guarantor (Partner) Location.
	  * Identifies the address for this guarantor (Business Partner)
	  */
	public int getLBR_Guarantor_Location_ID();

	public org.compiere.model.I_C_BPartner_Location getLBR_Guarantor_Location() throws RuntimeException;

    /** Column name LBR_IOFAmt */
    public static final String COLUMNNAME_LBR_IOFAmt = "LBR_IOFAmt";

	/** Set IOF Amount.
	  * Defines the IOF Amount
	  */
	public void setLBR_IOFAmt (BigDecimal LBR_IOFAmt);

	/** Get IOF Amount.
	  * Defines the IOF Amount
	  */
	public BigDecimal getLBR_IOFAmt();

    /** Column name LBR_IsBaixado */
    public static final String COLUMNNAME_LBR_IsBaixado = "LBR_IsBaixado";

	/** Set Baixado	  */
	public void setLBR_IsBaixado (boolean LBR_IsBaixado);

	/** Get Baixado	  */
	public boolean isLBR_IsBaixado();

    /** Column name LBR_IsProtested */
    public static final String COLUMNNAME_LBR_IsProtested = "LBR_IsProtested";

	/** Set Protested.
	  * The document is protested
	  */
	public void setLBR_IsProtested (boolean LBR_IsProtested);

	/** Get Protested.
	  * The document is protested
	  */
	public boolean isLBR_IsProtested();

    /** Column name LBR_IssueType */
    public static final String COLUMNNAME_LBR_IssueType = "LBR_IssueType";

	/** Set Issue Type	  */
	public void setLBR_IssueType (String LBR_IssueType);

	/** Get Issue Type	  */
	public String getLBR_IssueType();

    /** Column name LBR_IsSustado */
    public static final String COLUMNNAME_LBR_IsSustado = "LBR_IsSustado";

	/** Set Sustado	  */
	public void setLBR_IsSustado (boolean LBR_IsSustado);

	/** Get Sustado	  */
	public boolean isLBR_IsSustado();

    /** Column name LBR_LoanContractNo */
    public static final String COLUMNNAME_LBR_LoanContractNo = "LBR_LoanContractNo";

	/** Set Loan Contract No.	  */
	public void setLBR_LoanContractNo (String LBR_LoanContractNo);

	/** Get Loan Contract No.	  */
	public String getLBR_LoanContractNo();

    /** Column name LBR_NumberInBank */
    public static final String COLUMNNAME_LBR_NumberInBank = "LBR_NumberInBank";

	/** Set Number in the Bank	  */
	public void setLBR_NumberInBank (String LBR_NumberInBank);

	/** Get Number in the Bank	  */
	public String getLBR_NumberInBank();

    /** Column name LBR_NumberInCorrespBank */
    public static final String COLUMNNAME_LBR_NumberInCorrespBank = "LBR_NumberInCorrespBank";

	/** Set Number in the Correspondent Bank	  */
	public void setLBR_NumberInCorrespBank (String LBR_NumberInCorrespBank);

	/** Get Number in the Correspondent Bank	  */
	public String getLBR_NumberInCorrespBank();

    /** Column name LBR_NumberInOrg */
    public static final String COLUMNNAME_LBR_NumberInOrg = "LBR_NumberInOrg";

	/** Set Number in the Org	  */
	public void setLBR_NumberInOrg (String LBR_NumberInOrg);

	/** Get Number in the Org	  */
	public String getLBR_NumberInOrg();

    /** Column name LBR_PartialPayment */
    public static final String COLUMNNAME_LBR_PartialPayment = "LBR_PartialPayment";

	/** Set Authorize Partial Payment	  */
	public void setLBR_PartialPayment (String LBR_PartialPayment);

	/** Get Authorize Partial Payment	  */
	public String getLBR_PartialPayment();

    /** Column name LBR_TypeableLine */
    public static final String COLUMNNAME_LBR_TypeableLine = "LBR_TypeableLine";

	/** Set Typeable Line.
	  * Typeable Line
	  */
	public void setLBR_TypeableLine (String LBR_TypeableLine);

	/** Get Typeable Line.
	  * Typeable Line
	  */
	public String getLBR_TypeableLine();

    /** Column name Posted */
    public static final String COLUMNNAME_Posted = "Posted";

	/** Set Posted.
	  * Posting status
	  */
	public void setPosted (boolean Posted);

	/** Get Posted.
	  * Posting status
	  */
	public boolean isPosted();

    /** Column name Processed */
    public static final String COLUMNNAME_Processed = "Processed";

	/** Set Processed.
	  * The document has been processed
	  */
	public void setProcessed (boolean Processed);

	/** Get Processed.
	  * The document has been processed
	  */
	public boolean isProcessed();

    /** Column name ProcessedOn */
    public static final String COLUMNNAME_ProcessedOn = "ProcessedOn";

	/** Set Processed On.
	  * The date+time (expressed in decimal format) when the document has been processed
	  */
	public void setProcessedOn (BigDecimal ProcessedOn);

	/** Get Processed On.
	  * The date+time (expressed in decimal format) when the document has been processed
	  */
	public BigDecimal getProcessedOn();

    /** Column name Processing */
    public static final String COLUMNNAME_Processing = "Processing";

	/** Set Process Now	  */
	public void setProcessing (boolean Processing);

	/** Get Process Now	  */
	public boolean isProcessing();

    /** Column name Updated */
    public static final String COLUMNNAME_Updated = "Updated";

	/** Get Updated.
	  * Date this record was updated
	  */
	public Timestamp getUpdated();

    /** Column name UpdatedBy */
    public static final String COLUMNNAME_UpdatedBy = "UpdatedBy";

	/** Get Updated By.
	  * User who updated this records
	  */
	public int getUpdatedBy();

    /** Column name WriteOffAmt */
    public static final String COLUMNNAME_WriteOffAmt = "WriteOffAmt";

	/** Set Write-off Amount.
	  * Amount to write-off
	  */
	public void setWriteOffAmt (BigDecimal WriteOffAmt);

	/** Get Write-off Amount.
	  * Amount to write-off
	  */
	public BigDecimal getWriteOffAmt();
}
