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
package org.idempierelbr.nfs.model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Interface for LBR_NFS
 *  @author iDempiere (generated) 
 *  @version Release 5.1
 */
@SuppressWarnings("all")
public interface I_LBR_NFS 
{

    /** TableName=LBR_NFS */
    public static final String Table_Name = "LBR_NFS";

    /** AD_Table_ID=800035 */
    public static final int Table_ID = 800035;

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 3 - Client - Org 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(3);

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

    /** Column name AD_User_ID */
    public static final String COLUMNNAME_AD_User_ID = "AD_User_ID";

	/** Set User/Contact.
	  * User within the system - Internal or Business Partner Contact
	  */
	public void setAD_User_ID (int AD_User_ID);

	/** Get User/Contact.
	  * User within the system - Internal or Business Partner Contact
	  */
	public int getAD_User_ID();

	public org.compiere.model.I_AD_User getAD_User() throws RuntimeException;

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

    /** Column name C_Charge_ID */
    public static final String COLUMNNAME_C_Charge_ID = "C_Charge_ID";

	/** Set Charge.
	  * Additional document charges
	  */
	public void setC_Charge_ID (int C_Charge_ID);

	/** Get Charge.
	  * Additional document charges
	  */
	public int getC_Charge_ID();

	public org.compiere.model.I_C_Charge getC_Charge() throws RuntimeException;

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

    /** Column name C_DocTypeTarget_ID */
    public static final String COLUMNNAME_C_DocTypeTarget_ID = "C_DocTypeTarget_ID";

	/** Set Target Document Type.
	  * Target document type for conversing documents
	  */
	public void setC_DocTypeTarget_ID (int C_DocTypeTarget_ID);

	/** Get Target Document Type.
	  * Target document type for conversing documents
	  */
	public int getC_DocTypeTarget_ID();

	public org.compiere.model.I_C_DocType getC_DocTypeTarget() throws RuntimeException;

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

    /** Column name C_InvoiceLine_ID */
    public static final String COLUMNNAME_C_InvoiceLine_ID = "C_InvoiceLine_ID";

	/** Set Invoice Line.
	  * Invoice Detail Line
	  */
	public void setC_InvoiceLine_ID (int C_InvoiceLine_ID);

	/** Get Invoice Line.
	  * Invoice Detail Line
	  */
	public int getC_InvoiceLine_ID();

	public org.compiere.model.I_C_Invoice getC_InvoiceLine() throws RuntimeException;

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

    /** Column name C_OrderLine_ID */
    public static final String COLUMNNAME_C_OrderLine_ID = "C_OrderLine_ID";

	/** Set Sales Order Line.
	  * Sales Order Line
	  */
	public void setC_OrderLine_ID (int C_OrderLine_ID);

	/** Get Sales Order Line.
	  * Sales Order Line
	  */
	public int getC_OrderLine_ID();

	public org.compiere.model.I_C_OrderLine getC_OrderLine() throws RuntimeException;

    /** Column name C_PaymentTerm_ID */
    public static final String COLUMNNAME_C_PaymentTerm_ID = "C_PaymentTerm_ID";

	/** Set Payment Term.
	  * The terms of Payment (timing, discount)
	  */
	public void setC_PaymentTerm_ID (int C_PaymentTerm_ID);

	/** Get Payment Term.
	  * The terms of Payment (timing, discount)
	  */
	public int getC_PaymentTerm_ID();

	public org.compiere.model.I_C_PaymentTerm getC_PaymentTerm() throws RuntimeException;

    /** Column name C_Tax_ID */
    public static final String COLUMNNAME_C_Tax_ID = "C_Tax_ID";

	/** Set Tax.
	  * Tax identifier
	  */
	public void setC_Tax_ID (int C_Tax_ID);

	/** Get Tax.
	  * Tax identifier
	  */
	public int getC_Tax_ID();

	public org.compiere.model.I_C_Tax getC_Tax() throws RuntimeException;

    /** Column name C_UOM_ID */
    public static final String COLUMNNAME_C_UOM_ID = "C_UOM_ID";

	/** Set UOM.
	  * Unit of Measure
	  */
	public void setC_UOM_ID (int C_UOM_ID);

	/** Get UOM.
	  * Unit of Measure
	  */
	public int getC_UOM_ID();

	public org.compiere.model.I_C_UOM getC_UOM() throws RuntimeException;

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

    /** Column name IsApproved */
    public static final String COLUMNNAME_IsApproved = "IsApproved";

	/** Set Approved.
	  * Indicates if this document requires approval
	  */
	public void setIsApproved (boolean IsApproved);

	/** Get Approved.
	  * Indicates if this document requires approval
	  */
	public boolean isApproved();

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

    /** Column name LBR_IntermediateBPartner_ID */
    public static final String COLUMNNAME_LBR_IntermediateBPartner_ID = "LBR_IntermediateBPartner_ID";

	/** Set Parceiro de Negócios Intermediário	  */
	public void setLBR_IntermediateBPartner_ID (int LBR_IntermediateBPartner_ID);

	/** Get Parceiro de Negócios Intermediário	  */
	public int getLBR_IntermediateBPartner_ID();

	public org.compiere.model.I_C_BPartner getLBR_IntermediateBPartner() throws RuntimeException;

    /** Column name LBR_IntermediateBPLocation_ID */
    public static final String COLUMNNAME_LBR_IntermediateBPLocation_ID = "LBR_IntermediateBPLocation_ID";

	/** Set Localização do Parc. de Negócios Intermediário	  */
	public void setLBR_IntermediateBPLocation_ID (int LBR_IntermediateBPLocation_ID);

	/** Get Localização do Parc. de Negócios Intermediário	  */
	public int getLBR_IntermediateBPLocation_ID();

	public org.compiere.model.I_C_BPartner_Location getLBR_IntermediateBPLocation() throws RuntimeException;

    /** Column name LBR_IsDocIssuedByOrg */
    public static final String COLUMNNAME_LBR_IsDocIssuedByOrg = "LBR_IsDocIssuedByOrg";

	/** Set Is Document Issued by Client/Org?	  */
	public void setLBR_IsDocIssuedByOrg (boolean LBR_IsDocIssuedByOrg);

	/** Get Is Document Issued by Client/Org?	  */
	public boolean isLBR_IsDocIssuedByOrg();

    /** Column name LBR_MensagensRetorno */
    public static final String COLUMNNAME_LBR_MensagensRetorno = "LBR_MensagensRetorno";

	/** Set Mensagens de Retorno.
	  * Mensagens de Retorno (erros)
	  */
	public void setLBR_MensagensRetorno (String LBR_MensagensRetorno);

	/** Get Mensagens de Retorno.
	  * Mensagens de Retorno (erros)
	  */
	public String getLBR_MensagensRetorno();

    /** Column name LBR_MotivoCancelamentoNFS */
    public static final String COLUMNNAME_LBR_MotivoCancelamentoNFS = "LBR_MotivoCancelamentoNFS";

	/** Set Motivo de Cancelamento	  */
	public void setLBR_MotivoCancelamentoNFS (String LBR_MotivoCancelamentoNFS);

	/** Get Motivo de Cancelamento	  */
	public String getLBR_MotivoCancelamentoNFS();

    /** Column name LBR_NFS_ID */
    public static final String COLUMNNAME_LBR_NFS_ID = "LBR_NFS_ID";

	/** Set Nota Fiscal de Serviço	  */
	public void setLBR_NFS_ID (int LBR_NFS_ID);

	/** Get Nota Fiscal de Serviço	  */
	public int getLBR_NFS_ID();

    /** Column name LBR_NFS_UU */
    public static final String COLUMNNAME_LBR_NFS_UU = "LBR_NFS_UU";

	/** Set LBR_NFS_UU	  */
	public void setLBR_NFS_UU (String LBR_NFS_UU);

	/** Get LBR_NFS_UU	  */
	public String getLBR_NFS_UU();

    /** Column name LBR_NFSeCodVerificacao */
    public static final String COLUMNNAME_LBR_NFSeCodVerificacao = "LBR_NFSeCodVerificacao";

	/** Set Código de Verificação da NFS-e	  */
	public void setLBR_NFSeCodVerificacao (String LBR_NFSeCodVerificacao);

	/** Get Código de Verificação da NFS-e	  */
	public String getLBR_NFSeCodVerificacao();

    /** Column name LBR_NFSeID */
    public static final String COLUMNNAME_LBR_NFSeID = "LBR_NFSeID";

	/** Set NFS-e ID	  */
	public void setLBR_NFSeID (String LBR_NFSeID);

	/** Get NFS-e ID	  */
	public String getLBR_NFSeID();

    /** Column name LBR_NFSeNumero */
    public static final String COLUMNNAME_LBR_NFSeNumero = "LBR_NFSeNumero";

	/** Set Código da NFS-e	  */
	public void setLBR_NFSeNumero (String LBR_NFSeNumero);

	/** Get Código da NFS-e	  */
	public String getLBR_NFSeNumero();

    /** Column name LBR_NFSeStatus */
    public static final String COLUMNNAME_LBR_NFSeStatus = "LBR_NFSeStatus";

	/** Set Situação da NFS-e	  */
	public void setLBR_NFSeStatus (String LBR_NFSeStatus);

	/** Get Situação da NFS-e	  */
	public String getLBR_NFSeStatus();

    /** Column name LBR_NFSeSubstituida */
    public static final String COLUMNNAME_LBR_NFSeSubstituida = "LBR_NFSeSubstituida";

	/** Set Número da NFS-e Substituída	  */
	public void setLBR_NFSeSubstituida (String LBR_NFSeSubstituida);

	/** Get Número da NFS-e Substituída	  */
	public String getLBR_NFSeSubstituida();

    /** Column name LBR_NFSSerie */
    public static final String COLUMNNAME_LBR_NFSSerie = "LBR_NFSSerie";

	/** Set Série da NFS	  */
	public void setLBR_NFSSerie (String LBR_NFSSerie);

	/** Get Série da NFS	  */
	public String getLBR_NFSSerie();

    /** Column name LBR_NIFTomador */
    public static final String COLUMNNAME_LBR_NIFTomador = "LBR_NIFTomador";

	/** Set Número Nif do Tomador	  */
	public void setLBR_NIFTomador (String LBR_NIFTomador);

	/** Get Número Nif do Tomador	  */
	public String getLBR_NIFTomador();

    /** Column name LBR_ProcCancelNFS */
    public static final String COLUMNNAME_LBR_ProcCancelNFS = "LBR_ProcCancelNFS";

	/** Set Cancelar NFS-e	  */
	public void setLBR_ProcCancelNFS (String LBR_ProcCancelNFS);

	/** Get Cancelar NFS-e	  */
	public String getLBR_ProcCancelNFS();

    /** Column name LBR_ProcPrintNFS */
    public static final String COLUMNNAME_LBR_ProcPrintNFS = "LBR_ProcPrintNFS";

	/** Set Imprimir DANFE	  */
	public void setLBR_ProcPrintNFS (String LBR_ProcPrintNFS);

	/** Get Imprimir DANFE	  */
	public String getLBR_ProcPrintNFS();

    /** Column name LBR_ProcSendEMail */
    public static final String COLUMNNAME_LBR_ProcSendEMail = "LBR_ProcSendEMail";

	/** Set Enviar por e-Mail	  */
	public void setLBR_ProcSendEMail (String LBR_ProcSendEMail);

	/** Get Enviar por e-Mail	  */
	public String getLBR_ProcSendEMail();

    /** Column name LBR_ProcSendNFS */
    public static final String COLUMNNAME_LBR_ProcSendNFS = "LBR_ProcSendNFS";

	/** Set Transmitir NFS-e	  */
	public void setLBR_ProcSendNFS (String LBR_ProcSendNFS);

	/** Get Transmitir NFS-e	  */
	public String getLBR_ProcSendNFS();

    /** Column name LBR_RPSNumero */
    public static final String COLUMNNAME_LBR_RPSNumero = "LBR_RPSNumero";

	/** Set Número da RPS	  */
	public void setLBR_RPSNumero (String LBR_RPSNumero);

	/** Get Número da RPS	  */
	public String getLBR_RPSNumero();

    /** Column name LBR_RPSNumeroSubstituida */
    public static final String COLUMNNAME_LBR_RPSNumeroSubstituida = "LBR_RPSNumeroSubstituida";

	/** Set Número da RPS Substituída	  */
	public void setLBR_RPSNumeroSubstituida (String LBR_RPSNumeroSubstituida);

	/** Get Número da RPS Substituída	  */
	public String getLBR_RPSNumeroSubstituida();

    /** Column name LBR_RPSSerie */
    public static final String COLUMNNAME_LBR_RPSSerie = "LBR_RPSSerie";

	/** Set Série da RPS	  */
	public void setLBR_RPSSerie (String LBR_RPSSerie);

	/** Get Série da RPS	  */
	public String getLBR_RPSSerie();

    /** Column name LBR_RPSSerieSubstituida */
    public static final String COLUMNNAME_LBR_RPSSerieSubstituida = "LBR_RPSSerieSubstituida";

	/** Set Série da RPS Substituída	  */
	public void setLBR_RPSSerieSubstituida (String LBR_RPSSerieSubstituida);

	/** Get Série da RPS Substituída	  */
	public String getLBR_RPSSerieSubstituida();

    /** Column name LBR_RPSStatus */
    public static final String COLUMNNAME_LBR_RPSStatus = "LBR_RPSStatus";

	/** Set Situação da RPS	  */
	public void setLBR_RPSStatus (String LBR_RPSStatus);

	/** Get Situação da RPS	  */
	public String getLBR_RPSStatus();

    /** Column name LBR_RPSTipo */
    public static final String COLUMNNAME_LBR_RPSTipo = "LBR_RPSTipo";

	/** Set Tipo da RPS	  */
	public void setLBR_RPSTipo (String LBR_RPSTipo);

	/** Get Tipo da RPS	  */
	public String getLBR_RPSTipo();

    /** Column name LBR_RPSTipoSubstituida */
    public static final String COLUMNNAME_LBR_RPSTipoSubstituida = "LBR_RPSTipoSubstituida";

	/** Set Tipo da RPS Substituída	  */
	public void setLBR_RPSTipoSubstituida (String LBR_RPSTipoSubstituida);

	/** Get Tipo da RPS Substituída	  */
	public String getLBR_RPSTipoSubstituida();

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

    /** Column name M_PriceList_ID */
    public static final String COLUMNNAME_M_PriceList_ID = "M_PriceList_ID";

	/** Set Price List.
	  * Unique identifier of a Price List
	  */
	public void setM_PriceList_ID (int M_PriceList_ID);

	/** Get Price List.
	  * Unique identifier of a Price List
	  */
	public int getM_PriceList_ID();

	public org.compiere.model.I_M_PriceList getM_PriceList() throws RuntimeException;

    /** Column name M_Product_ID */
    public static final String COLUMNNAME_M_Product_ID = "M_Product_ID";

	/** Set Product.
	  * Product, Service, Item
	  */
	public void setM_Product_ID (int M_Product_ID);

	/** Get Product.
	  * Product, Service, Item
	  */
	public int getM_Product_ID();

	public org.compiere.model.I_M_Product getM_Product() throws RuntimeException;

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

    /** Column name Price */
    public static final String COLUMNNAME_Price = "Price";

	/** Set Price.
	  * Price
	  */
	public void setPrice (BigDecimal Price);

	/** Get Price.
	  * Price
	  */
	public BigDecimal getPrice();

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

    /** Column name Qty */
    public static final String COLUMNNAME_Qty = "Qty";

	/** Set Quantity.
	  * Quantity
	  */
	public void setQty (BigDecimal Qty);

	/** Get Quantity.
	  * Quantity
	  */
	public BigDecimal getQty();

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
}
