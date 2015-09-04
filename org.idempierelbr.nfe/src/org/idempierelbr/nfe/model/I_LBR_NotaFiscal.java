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
package org.idempierelbr.nfe.model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Interface for LBR_NotaFiscal
 *  @author iDempiere (generated) 
 *  @version Release 2.0
 */
@SuppressWarnings("all")
public interface I_LBR_NotaFiscal 
{

    /** TableName=LBR_NotaFiscal */
    public static final String Table_Name = "LBR_NotaFiscal";

    /** AD_Table_ID=1000033 */
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

    /** Column name C_City_ID */
    public static final String COLUMNNAME_C_City_ID = "C_City_ID";

	/** Set City.
	  * City
	  */
	public void setC_City_ID (int C_City_ID);

	/** Get City.
	  * City
	  */
	public int getC_City_ID();

	public org.compiere.model.I_C_City getC_City() throws RuntimeException;

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

    /** Column name C_Order_ID */
    public static final String COLUMNNAME_C_Order_ID = "C_Order_ID";

	/** Set Order.
	  * Order
	  */
	public void setC_Order_ID (int C_Order_ID);

	/** Get Order.
	  * Order
	  */
	public int getC_Order_ID();

	public org.compiere.model.I_C_Order getC_Order() throws RuntimeException;

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

    /** Column name C_Region_ID */
    public static final String COLUMNNAME_C_Region_ID = "C_Region_ID";

	/** Set Region.
	  * Identifies a geographical Region
	  */
	public void setC_Region_ID (int C_Region_ID);

	/** Get Region.
	  * Identifies a geographical Region
	  */
	public int getC_Region_ID();

	public org.compiere.model.I_C_Region getC_Region() throws RuntimeException;

    /** Column name DateDelivered */
    public static final String COLUMNNAME_DateDelivered = "DateDelivered";

	/** Set Date Delivered.
	  * Date when the product was delivered
	  */
	public void setDateDelivered (Timestamp DateDelivered);

	/** Get Date Delivered.
	  * Date when the product was delivered
	  */
	public Timestamp getDateDelivered();

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

    /** Column name IsTaxIncluded */
    public static final String COLUMNNAME_IsTaxIncluded = "IsTaxIncluded";

	/** Set Price includes Tax.
	  * Tax is included in the price 
	  */
	public void setIsTaxIncluded (boolean IsTaxIncluded);

	/** Get Price includes Tax.
	  * Tax is included in the price 
	  */
	public boolean isTaxIncluded();

    /** Column name LBR_BP_PickupLocation_ID */
    public static final String COLUMNNAME_LBR_BP_PickupLocation_ID = "LBR_BP_PickupLocation_ID";

	/** Set Partner Location.
	  * Identifies the (Pickup) address for this Business Partner
	  */
	public void setLBR_BP_PickupLocation_ID (int LBR_BP_PickupLocation_ID);

	/** Get Partner Location.
	  * Identifies the (Pickup) address for this Business Partner
	  */
	public int getLBR_BP_PickupLocation_ID();

	public org.compiere.model.I_C_BPartner_Location getLBR_BP_PickupLocation() throws RuntimeException;

    /** Column name LBR_BP_ShipLocation_ID */
    public static final String COLUMNNAME_LBR_BP_ShipLocation_ID = "LBR_BP_ShipLocation_ID";

	/** Set Partner Location.
	  * Identifies the (ship to) address for this Business Partner
	  */
	public void setLBR_BP_ShipLocation_ID (int LBR_BP_ShipLocation_ID);

	/** Get Partner Location.
	  * Identifies the (ship to) address for this Business Partner
	  */
	public int getLBR_BP_ShipLocation_ID();

	public org.compiere.model.I_C_BPartner_Location getLBR_BP_ShipLocation() throws RuntimeException;

    /** Column name LBR_ContingencyDate */
    public static final String COLUMNNAME_LBR_ContingencyDate = "LBR_ContingencyDate";

	/** Set Contingency Date	  */
	public void setLBR_ContingencyDate (Timestamp LBR_ContingencyDate);

	/** Get Contingency Date	  */
	public Timestamp getLBR_ContingencyDate();

    /** Column name LBR_ContingencyReason */
    public static final String COLUMNNAME_LBR_ContingencyReason = "LBR_ContingencyReason";

	/** Set Contingency Reason	  */
	public void setLBR_ContingencyReason (String LBR_ContingencyReason);

	/** Get Contingency Reason	  */
	public String getLBR_ContingencyReason();

    /** Column name LBR_FinNFe */
    public static final String COLUMNNAME_LBR_FinNFe = "LBR_FinNFe";

	/** Set NFe Issue Goal	  */
	public void setLBR_FinNFe (String LBR_FinNFe);

	/** Get NFe Issue Goal	  */
	public String getLBR_FinNFe();

    /** Column name LBR_NFE_DestinationType */
    public static final String COLUMNNAME_LBR_NFE_DestinationType = "LBR_NFE_DestinationType";

	/** Set NFe Destination Type	  */
	public void setLBR_NFE_DestinationType (String LBR_NFE_DestinationType);

	/** Get NFe Destination Type	  */
	public String getLBR_NFE_DestinationType();

    /** Column name LBR_NFeID */
    public static final String COLUMNNAME_LBR_NFeID = "LBR_NFeID";

	/** Set NFe ID	  */
	public void setLBR_NFeID (String LBR_NFeID);

	/** Get NFe ID	  */
	public String getLBR_NFeID();

    /** Column name LBR_NFeIndFinal */
    public static final String COLUMNNAME_LBR_NFeIndFinal = "LBR_NFeIndFinal";

	/** Set Is End User	  */
	public void setLBR_NFeIndFinal (String LBR_NFeIndFinal);

	/** Get Is End User	  */
	public String getLBR_NFeIndFinal();

    /** Column name LBR_NFeIndPres */
    public static final String COLUMNNAME_LBR_NFeIndPres = "LBR_NFeIndPres";

	/** Set Face-to-Face Indicator	  */
	public void setLBR_NFeIndPres (String LBR_NFeIndPres);

	/** Get Face-to-Face Indicator	  */
	public String getLBR_NFeIndPres();

    /** Column name LBR_NFeModel */
    public static final String COLUMNNAME_LBR_NFeModel = "LBR_NFeModel";

	/** Set NF Model	  */
	public void setLBR_NFeModel (String LBR_NFeModel);

	/** Get NF Model	  */
	public String getLBR_NFeModel();

    /** Column name LBR_NFeNatOp */
    public static final String COLUMNNAME_LBR_NFeNatOp = "LBR_NFeNatOp";

	/** Set NFe Nature of Operation	  */
	public void setLBR_NFeNatOp (String LBR_NFeNatOp);

	/** Get NFe Nature of Operation	  */
	public String getLBR_NFeNatOp();

    /** Column name LBR_NFE_OperationType */
    public static final String COLUMNNAME_LBR_NFE_OperationType = "LBR_NFE_OperationType";

	/** Set NFe Operation Type	  */
	public void setLBR_NFE_OperationType (String LBR_NFE_OperationType);

	/** Get NFe Operation Type	  */
	public String getLBR_NFE_OperationType();

    /** Column name LBR_NFeSerie */
    public static final String COLUMNNAME_LBR_NFeSerie = "LBR_NFeSerie";

	/** Set NF Serie	  */
	public void setLBR_NFeSerie (String LBR_NFeSerie);

	/** Get NF Serie	  */
	public String getLBR_NFeSerie();

    /** Column name LBR_NFeStatus */
    public static final String COLUMNNAME_LBR_NFeStatus = "LBR_NFeStatus";

	/** Set NFe Status	  */
	public void setLBR_NFeStatus (String LBR_NFeStatus);

	/** Get NFe Status	  */
	public String getLBR_NFeStatus();

    /** Column name LBR_NFeTpEmis */
    public static final String COLUMNNAME_LBR_NFeTpEmis = "LBR_NFeTpEmis";

	/** Set NFe Issue Type	  */
	public void setLBR_NFeTpEmis (String LBR_NFeTpEmis);

	/** Get NFe Issue Type	  */
	public String getLBR_NFeTpEmis();

    /** Column name LBR_NotaFiscal_ID */
    public static final String COLUMNNAME_LBR_NotaFiscal_ID = "LBR_NotaFiscal_ID";

	/** Set Brazilian Fiscal Invoice (Nota Fiscal).
	  * Brazilian Fiscal Invoice (Nota Fiscal) Identifier
	  */
	public void setLBR_NotaFiscal_ID (int LBR_NotaFiscal_ID);

	/** Get Brazilian Fiscal Invoice (Nota Fiscal).
	  * Brazilian Fiscal Invoice (Nota Fiscal) Identifier
	  */
	public int getLBR_NotaFiscal_ID();

    /** Column name LBR_NotaFiscal_UU */
    public static final String COLUMNNAME_LBR_NotaFiscal_UU = "LBR_NotaFiscal_UU";

	/** Set Brazilian Fiscal Invoice (Nota Fiscal).
	  * Brazilian Fiscal Invoice (Nota Fiscal) Identifier
	  */
	public void setLBR_NotaFiscal_UU (String LBR_NotaFiscal_UU);

	/** Get Brazilian Fiscal Invoice (Nota Fiscal).
	  * Brazilian Fiscal Invoice (Nota Fiscal) Identifier
	  */
	public String getLBR_NotaFiscal_UU();

    /** Column name M_RMA_ID */
    public static final String COLUMNNAME_M_RMA_ID = "M_RMA_ID";

	/** Set RMA.
	  * Return Material Authorization
	  */
	public void setM_RMA_ID (int M_RMA_ID);

	/** Get RMA.
	  * Return Material Authorization
	  */
	public int getM_RMA_ID();

	public org.compiere.model.I_M_RMA getM_RMA() throws RuntimeException;

    /** Column name PaymentRule */
    public static final String COLUMNNAME_PaymentRule = "PaymentRule";

	/** Set Payment Rule.
	  * How you pay the invoice
	  */
	public void setPaymentRule (String PaymentRule);

	/** Get Payment Rule.
	  * How you pay the invoice
	  */
	public String getPaymentRule();

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

    /** Column name TotalLines */
    public static final String COLUMNNAME_TotalLines = "TotalLines";

	/** Set Total Lines.
	  * Total of all document lines
	  */
	public void setTotalLines (BigDecimal TotalLines);

	/** Get Total Lines.
	  * Total of all document lines
	  */
	public BigDecimal getTotalLines();

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

    /** Column name VersionNo */
    public static final String COLUMNNAME_VersionNo = "VersionNo";

	/** Set Version No.
	  * Version Number
	  */
	public void setVersionNo (String VersionNo);

	/** Get Version No.
	  * Version Number
	  */
	public String getVersionNo();
	
	/** Column name LBR_TransactionType */
    public static final String COLUMNNAME_LBR_TransactionType = "LBR_TransactionType";

	/** Set Transaction Type.
	  * Identifies a Transaction Type
	  */
	public void setLBR_TransactionType (String LBR_TransactionType);

	/** Get Transaction Type.
	  * Identifies a Transaction Type
	  */
	public String getLBR_TransactionType();
	
	/** Column name LBR_FiscalInfo */
    public static final String COLUMNNAME_LBR_FiscalInfo = "LBR_FiscalInfo";

	/** Set Fiscal Info.
	  * Fiscal Information
	  */
	public void setLBR_FiscalInfo (String LBR_FiscalInfo);

	/** Get Fiscal Info.
	  * Fiscal Information
	  */
	public String getLBR_FiscalInfo();
	
	/** Column name LBR_TaxPayerInfo */
    public static final String COLUMNNAME_LBR_TaxPayerInfo = "LBR_TaxPayerInfo";

	/** Set Tax Payer Info.
	  * Tax Payer Information
	  */
	public void setLBR_TaxPayerInfo (String LBR_TaxPayerInfo);

	/** Get Tax Payer Info.
	  * Tax Payer Information
	  */
	public String getLBR_TaxPayerInfo();
	
	/** Column name Processing */
    public static final String COLUMNNAME_Processing = "Processing";

	/** Set Process Now	  */
	public void setProcessing (boolean Processing);

	/** Get Process Now	  */
	public boolean isProcessing();
	
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
	
	/** Column name LBR_BP_Ship_ID */
    public static final String COLUMNNAME_LBR_BP_Ship_ID = "LBR_BP_Ship_ID";

	/** Set Business Partner (Ship).
	  * Identifies a Business Partner
	  */
	public void setLBR_BP_Ship_ID (int LBR_BP_Ship_ID);

	/** Get Business Partner (Ship).
	  * Identifies a Business Partner
	  */
	public int getLBR_BP_Ship_ID();

	public org.compiere.model.I_C_BPartner getLBR_BP_Ship() throws RuntimeException;

	/** Column name LBR_BP_Pickup_ID */
    public static final String COLUMNNAME_LBR_BP_Pickup_ID = "LBR_BP_Pickup_ID";

	/** Set Business Partner (Pickup).
	  * Identifies a Business Partner
	  */
	public void setLBR_BP_Pickup_ID (int LBR_BP_Pickup_ID);

	/** Get Business Partner (Pickup).
	  * Identifies a Business Partner
	  */
	public int getLBR_BP_Pickup_ID();

	public org.compiere.model.I_C_BPartner getLBR_BP_Pickup() throws RuntimeException;
	
	/** Column name LBR_DigestValue */
    public static final String COLUMNNAME_LBR_DigestValue = "LBR_DigestValue";

	/** Set DigestValue.
	  * Identifies a DigestValue
	  */
	public void setLBR_DigestValue (String LBR_DigestValue);

	/** Get DigestValue.
	  * Identifies a DigestValue
	  */
	public String getLBR_DigestValue();
	
	/** Column name LBR_LotSendingProt */
    public static final String COLUMNNAME_LBR_LotSendingProt = "LBR_LotSendingProt";

	/** Set NF-e Lot Sending Protocol.
	  * Indicates the protocol of the sending process to Sefaz
	  */
	public void setLBR_LotSendingProt (String LBR_LotSendingProt);

	/** Get NF-e Lot Sending Protocol.
	  * Indicates the protocol of the sending process to Sefaz
	  */
	public String getLBR_LotSendingProt();
	
	/** Column name LBR_IsDocIssuedByOrg */
    public static final String COLUMNNAME_LBR_IsDocIssuedByOrg = "LBR_IsDocIssuedByOrg";

	/** Set Is Document Issued by Client/Org?	  */
	public void setLBR_IsDocIssuedByOrg (boolean LBR_IsDocIssuedByOrg);

	/** Get Is Document Issued by Client/Org?	  */
	public boolean isLBR_IsDocIssuedByOrg();
	
	/** Column name LBR_OwnDateDelivered */
    public static final String COLUMNNAME_LBR_OwnDateDelivered = "LBR_OwnDateDelivered";

	/** Set Declarant Date Delivered.
	  * Date Delivered from the point of view of the declarant
	  */
	public void setLBR_OwnDateDelivered (Timestamp LBR_OwnDateDelivered);

	/** Get Declarant Date Delivered.
	  * Date Delivered from the point of view of the declarant
	  */
	public Timestamp getLBR_OwnDateDelivered();
}
