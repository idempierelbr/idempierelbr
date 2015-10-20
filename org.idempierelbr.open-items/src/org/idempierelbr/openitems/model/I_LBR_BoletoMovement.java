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

/** Generated Interface for LBR_BoletoMovement
 *  @author iDempiere (generated) 
 *  @version Release 2.1
 */
@SuppressWarnings("all")
public interface I_LBR_BoletoMovement 
{

    /** TableName=LBR_BoletoMovement */
    public static final String Table_Name = "LBR_BoletoMovement";

    /** AD_Table_ID=1000059 */
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

    /** Column name AvailableAmt */
    public static final String COLUMNNAME_AvailableAmt = "AvailableAmt";

	/** Set Available Amount.
	  * Amount available for allocation for this document
	  */
	public void setAvailableAmt (BigDecimal AvailableAmt);

	/** Get Available Amount.
	  * Amount available for allocation for this document
	  */
	public BigDecimal getAvailableAmt();

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

    /** Column name DiscountAmt */
    public static final String COLUMNNAME_DiscountAmt = "DiscountAmt";

	/** Set Discount Amount.
	  * Calculated amount of discount
	  */
	public void setDiscountAmt (BigDecimal DiscountAmt);

	/** Get Discount Amount.
	  * Calculated amount of discount
	  */
	public BigDecimal getDiscountAmt();

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

    /** Column name FeeAmt */
    public static final String COLUMNNAME_FeeAmt = "FeeAmt";

	/** Set Fee Amount.
	  * Fee amount in invoice currency
	  */
	public void setFeeAmt (BigDecimal FeeAmt);

	/** Get Fee Amount.
	  * Fee amount in invoice currency
	  */
	public BigDecimal getFeeAmt();

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

    /** Column name InterestAmt */
    public static final String COLUMNNAME_InterestAmt = "InterestAmt";

	/** Set Interest Amount.
	  * Interest Amount
	  */
	public void setInterestAmt (BigDecimal InterestAmt);

	/** Get Interest Amount.
	  * Interest Amount
	  */
	public BigDecimal getInterestAmt();

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

	public I_LBR_Boleto getLBR_Boleto() throws RuntimeException;

    /** Column name LBR_BoletoMovement_ID */
    public static final String COLUMNNAME_LBR_BoletoMovement_ID = "LBR_BoletoMovement_ID";

	/** Set Boleto Movement	  */
	public void setLBR_BoletoMovement_ID (int LBR_BoletoMovement_ID);

	/** Get Boleto Movement	  */
	public int getLBR_BoletoMovement_ID();

    /** Column name LBR_BoletoMovement_UU */
    public static final String COLUMNNAME_LBR_BoletoMovement_UU = "LBR_BoletoMovement_UU";

	/** Set Boleto Movement	  */
	public void setLBR_BoletoMovement_UU (String LBR_BoletoMovement_UU);

	/** Get Boleto Movement	  */
	public String getLBR_BoletoMovement_UU();

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

    /** Column name LBR_CNAB240MovementType */
    public static final String COLUMNNAME_LBR_CNAB240MovementType = "LBR_CNAB240MovementType";

	/** Set Movement Type	  */
	public void setLBR_CNAB240MovementType (String LBR_CNAB240MovementType);

	/** Get Movement Type	  */
	public String getLBR_CNAB240MovementType();

    /** Column name LBR_CNAB240SeqNo */
    public static final String COLUMNNAME_LBR_CNAB240SeqNo = "LBR_CNAB240SeqNo";

	/** Set CNAB 240 Sequence No.	  */
	public void setLBR_CNAB240SeqNo (int LBR_CNAB240SeqNo);

	/** Get CNAB 240 Sequence No.	  */
	public int getLBR_CNAB240SeqNo();

    /** Column name LBR_CNABDiscount1AP */
    public static final String COLUMNNAME_LBR_CNABDiscount1AP = "LBR_CNABDiscount1AP";

	/** Set Discount 1 Amount/%.
	  * Discount 1 Amount / Percentage used for CNAB 240
	  */
	public void setLBR_CNABDiscount1AP (BigDecimal LBR_CNABDiscount1AP);

	/** Get Discount 1 Amount/%.
	  * Discount 1 Amount / Percentage used for CNAB 240
	  */
	public BigDecimal getLBR_CNABDiscount1AP();

    /** Column name LBR_CNABDiscount1Code */
    public static final String COLUMNNAME_LBR_CNABDiscount1Code = "LBR_CNABDiscount1Code";

	/** Set Discount 1 Code.
	  * Discount 1 Code used for CNAB 240
	  */
	public void setLBR_CNABDiscount1Code (String LBR_CNABDiscount1Code);

	/** Get Discount 1 Code.
	  * Discount 1 Code used for CNAB 240
	  */
	public String getLBR_CNABDiscount1Code();

    /** Column name LBR_CNABDiscount1Date */
    public static final String COLUMNNAME_LBR_CNABDiscount1Date = "LBR_CNABDiscount1Date";

	/** Set Discount 1 Date.
	  * Discount 1 Date used for CNAB 240
	  */
	public void setLBR_CNABDiscount1Date (Timestamp LBR_CNABDiscount1Date);

	/** Get Discount 1 Date.
	  * Discount 1 Date used for CNAB 240
	  */
	public Timestamp getLBR_CNABDiscount1Date();

    /** Column name LBR_CNABDiscount2AP */
    public static final String COLUMNNAME_LBR_CNABDiscount2AP = "LBR_CNABDiscount2AP";

	/** Set Discount 2 Amount/%.
	  * Discount 2 Amount / Percentage used for CNAB 240
	  */
	public void setLBR_CNABDiscount2AP (BigDecimal LBR_CNABDiscount2AP);

	/** Get Discount 2 Amount/%.
	  * Discount 2 Amount / Percentage used for CNAB 240
	  */
	public BigDecimal getLBR_CNABDiscount2AP();

    /** Column name LBR_CNABDiscount2Code */
    public static final String COLUMNNAME_LBR_CNABDiscount2Code = "LBR_CNABDiscount2Code";

	/** Set Discount 2 Code.
	  * Discount 2 Code used for CNAB 240
	  */
	public void setLBR_CNABDiscount2Code (String LBR_CNABDiscount2Code);

	/** Get Discount 2 Code.
	  * Discount 2 Code used for CNAB 240
	  */
	public String getLBR_CNABDiscount2Code();

    /** Column name LBR_CNABDiscount2Date */
    public static final String COLUMNNAME_LBR_CNABDiscount2Date = "LBR_CNABDiscount2Date";

	/** Set Discount 2 Date.
	  * Discount 2 Date used for CNAB 240
	  */
	public void setLBR_CNABDiscount2Date (Timestamp LBR_CNABDiscount2Date);

	/** Get Discount 2 Date.
	  * Discount 2 Date used for CNAB 240
	  */
	public Timestamp getLBR_CNABDiscount2Date();

    /** Column name LBR_CNABDiscount3AP */
    public static final String COLUMNNAME_LBR_CNABDiscount3AP = "LBR_CNABDiscount3AP";

	/** Set Discount 3 Amount/%.
	  * Discount 3 Amount / Percentage used for CNAB 240
	  */
	public void setLBR_CNABDiscount3AP (BigDecimal LBR_CNABDiscount3AP);

	/** Get Discount 3 Amount/%.
	  * Discount 3 Amount / Percentage used for CNAB 240
	  */
	public BigDecimal getLBR_CNABDiscount3AP();

    /** Column name LBR_CNABDiscount3Code */
    public static final String COLUMNNAME_LBR_CNABDiscount3Code = "LBR_CNABDiscount3Code";

	/** Set Discount 3 Code.
	  * Discount 3 Code used for CNAB 240
	  */
	public void setLBR_CNABDiscount3Code (String LBR_CNABDiscount3Code);

	/** Get Discount 3 Code.
	  * Discount 3 Code used for CNAB 240
	  */
	public String getLBR_CNABDiscount3Code();

    /** Column name LBR_CNABDiscount3Date */
    public static final String COLUMNNAME_LBR_CNABDiscount3Date = "LBR_CNABDiscount3Date";

	/** Set Discount 3 Date.
	  * Discount 3 Date used for CNAB 240
	  */
	public void setLBR_CNABDiscount3Date (Timestamp LBR_CNABDiscount3Date);

	/** Get Discount 3 Date.
	  * Discount 3 Date used for CNAB 240
	  */
	public Timestamp getLBR_CNABDiscount3Date();

    /** Column name LBR_CNAB_ID */
    public static final String COLUMNNAME_LBR_CNAB_ID = "LBR_CNAB_ID";

	/** Set CNAB Files	  */
	public void setLBR_CNAB_ID (int LBR_CNAB_ID);

	/** Get CNAB Files	  */
	public int getLBR_CNAB_ID();

	public I_LBR_CNAB getLBR_CNAB() throws RuntimeException;

    /** Column name LBR_Cob_Movimento_ID */
    public static final String COLUMNNAME_LBR_Cob_Movimento_ID = "LBR_Cob_Movimento_ID";

	/** Set Collection Movement	  */
	public void setLBR_Cob_Movimento_ID (int LBR_Cob_Movimento_ID);

	/** Get Collection Movement	  */
	public int getLBR_Cob_Movimento_ID();

	public I_LBR_Cob_Movimento getLBR_Cob_Movimento() throws RuntimeException;

    /** Column name LBR_Cob_Ocorrencia1_ID */
    public static final String COLUMNNAME_LBR_Cob_Ocorrencia1_ID = "LBR_Cob_Ocorrencia1_ID";

	/** Set Collection Occurrence 1	  */
	public void setLBR_Cob_Ocorrencia1_ID (int LBR_Cob_Ocorrencia1_ID);

	/** Get Collection Occurrence 1	  */
	public int getLBR_Cob_Ocorrencia1_ID();

	public I_LBR_Cob_Ocorrencia getLBR_Cob_Ocorrencia1() throws RuntimeException;

    /** Column name LBR_Cob_Ocorrencia2_ID */
    public static final String COLUMNNAME_LBR_Cob_Ocorrencia2_ID = "LBR_Cob_Ocorrencia2_ID";

	/** Set Collection Occurrence 2	  */
	public void setLBR_Cob_Ocorrencia2_ID (int LBR_Cob_Ocorrencia2_ID);

	/** Get Collection Occurrence 2	  */
	public int getLBR_Cob_Ocorrencia2_ID();

	public I_LBR_Cob_Ocorrencia getLBR_Cob_Ocorrencia2() throws RuntimeException;

    /** Column name LBR_Cob_Ocorrencia3_ID */
    public static final String COLUMNNAME_LBR_Cob_Ocorrencia3_ID = "LBR_Cob_Ocorrencia3_ID";

	/** Set Collection Occurrence 3	  */
	public void setLBR_Cob_Ocorrencia3_ID (int LBR_Cob_Ocorrencia3_ID);

	/** Get Collection Occurrence 3	  */
	public int getLBR_Cob_Ocorrencia3_ID();

	public I_LBR_Cob_Ocorrencia getLBR_Cob_Ocorrencia3() throws RuntimeException;

    /** Column name LBR_Cob_Ocorrencia4_ID */
    public static final String COLUMNNAME_LBR_Cob_Ocorrencia4_ID = "LBR_Cob_Ocorrencia4_ID";

	/** Set Collection Occurrence 4	  */
	public void setLBR_Cob_Ocorrencia4_ID (int LBR_Cob_Ocorrencia4_ID);

	/** Get Collection Occurrence 4	  */
	public int getLBR_Cob_Ocorrencia4_ID();

	public I_LBR_Cob_Ocorrencia getLBR_Cob_Ocorrencia4() throws RuntimeException;

    /** Column name LBR_Cob_Ocorrencia5_ID */
    public static final String COLUMNNAME_LBR_Cob_Ocorrencia5_ID = "LBR_Cob_Ocorrencia5_ID";

	/** Set Collection Occurrence 5	  */
	public void setLBR_Cob_Ocorrencia5_ID (int LBR_Cob_Ocorrencia5_ID);

	/** Get Collection Occurrence 5	  */
	public int getLBR_Cob_Ocorrencia5_ID();

	public I_LBR_Cob_Ocorrencia getLBR_Cob_Ocorrencia5() throws RuntimeException;

    /** Column name LBR_Cob_OcorrenciaDate */
    public static final String COLUMNNAME_LBR_Cob_OcorrenciaDate = "LBR_Cob_OcorrenciaDate";

	/** Set Collection Occurrence Date	  */
	public void setLBR_Cob_OcorrenciaDate (Timestamp LBR_Cob_OcorrenciaDate);

	/** Get Collection Occurrence Date	  */
	public Timestamp getLBR_Cob_OcorrenciaDate();

    /** Column name LBR_CollectBankAgencyNo */
    public static final String COLUMNNAME_LBR_CollectBankAgencyNo = "LBR_CollectBankAgencyNo";

	/** Set Collecting Bank Agency No.	  */
	public void setLBR_CollectBankAgencyNo (String LBR_CollectBankAgencyNo);

	/** Get Collecting Bank Agency No.	  */
	public String getLBR_CollectBankAgencyNo();

    /** Column name LBR_CollectBankNo */
    public static final String COLUMNNAME_LBR_CollectBankNo = "LBR_CollectBankNo";

	/** Set Collecting Bank No.	  */
	public void setLBR_CollectBankNo (int LBR_CollectBankNo);

	/** Get Collecting Bank No.	  */
	public int getLBR_CollectBankNo();

    /** Column name LBR_CollectionType */
    public static final String COLUMNNAME_LBR_CollectionType = "LBR_CollectionType";

	/** Set Collection Type	  */
	public void setLBR_CollectionType (String LBR_CollectionType);

	/** Get Collection Type	  */
	public String getLBR_CollectionType();

    /** Column name LBR_ConvenioNo */
    public static final String COLUMNNAME_LBR_ConvenioNo = "LBR_ConvenioNo";

	/** Set Convênio No.	  */
	public void setLBR_ConvenioNo (String LBR_ConvenioNo);

	/** Get Convênio No.	  */
	public String getLBR_ConvenioNo();

    /** Column name LBR_CorrespBankNo */
    public static final String COLUMNNAME_LBR_CorrespBankNo = "LBR_CorrespBankNo";

	/** Set Correspondente Bank Number	  */
	public void setLBR_CorrespBankNo (int LBR_CorrespBankNo);

	/** Get Correspondente Bank Number	  */
	public int getLBR_CorrespBankNo();

    /** Column name LBR_CreditDate */
    public static final String COLUMNNAME_LBR_CreditDate = "LBR_CreditDate";

	/** Set Credit Date	  */
	public void setLBR_CreditDate (Timestamp LBR_CreditDate);

	/** Get Credit Date	  */
	public Timestamp getLBR_CreditDate();

    /** Column name LBR_DocumentNo */
    public static final String COLUMNNAME_LBR_DocumentNo = "LBR_DocumentNo";

	/** Set Document No.
	  * Document sequence number of the document
	  */
	public void setLBR_DocumentNo (String LBR_DocumentNo);

	/** Get Document No.
	  * Document sequence number of the document
	  */
	public String getLBR_DocumentNo();

    /** Column name LBR_FileGeneratingDate */
    public static final String COLUMNNAME_LBR_FileGeneratingDate = "LBR_FileGeneratingDate";

	/** Set File Generating Date	  */
	public void setLBR_FileGeneratingDate (Timestamp LBR_FileGeneratingDate);

	/** Get File Generating Date	  */
	public Timestamp getLBR_FileGeneratingDate();

    /** Column name LBR_InterestAP */
    public static final String COLUMNNAME_LBR_InterestAP = "LBR_InterestAP";

	/** Set Interest Amount/Percentage	  */
	public void setLBR_InterestAP (BigDecimal LBR_InterestAP);

	/** Get Interest Amount/Percentage	  */
	public BigDecimal getLBR_InterestAP();

    /** Column name LBR_InterestCode */
    public static final String COLUMNNAME_LBR_InterestCode = "LBR_InterestCode";

	/** Set Late Payment Interest Code	  */
	public void setLBR_InterestCode (String LBR_InterestCode);

	/** Get Late Payment Interest Code	  */
	public String getLBR_InterestCode();

    /** Column name LBR_InterestDate */
    public static final String COLUMNNAME_LBR_InterestDate = "LBR_InterestDate";

	/** Set Interest Date	  */
	public void setLBR_InterestDate (Timestamp LBR_InterestDate);

	/** Get Interest Date	  */
	public Timestamp getLBR_InterestDate();

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

    /** Column name LBR_LatePaymentPenaltyAP */
    public static final String COLUMNNAME_LBR_LatePaymentPenaltyAP = "LBR_LatePaymentPenaltyAP";

	/** Set Late Payment Penaulty Amount/Percentage	  */
	public void setLBR_LatePaymentPenaltyAP (BigDecimal LBR_LatePaymentPenaltyAP);

	/** Get Late Payment Penaulty Amount/Percentage	  */
	public BigDecimal getLBR_LatePaymentPenaltyAP();

    /** Column name LBR_LatePaymentPenaltyCode */
    public static final String COLUMNNAME_LBR_LatePaymentPenaltyCode = "LBR_LatePaymentPenaltyCode";

	/** Set Late Payment Penaulty Code	  */
	public void setLBR_LatePaymentPenaltyCode (String LBR_LatePaymentPenaltyCode);

	/** Get Late Payment Penaulty Code	  */
	public String getLBR_LatePaymentPenaltyCode();

    /** Column name LBR_LatePaymentPenaltyDate */
    public static final String COLUMNNAME_LBR_LatePaymentPenaltyDate = "LBR_LatePaymentPenaltyDate";

	/** Set Late Payment Penaulty Date	  */
	public void setLBR_LatePaymentPenaltyDate (Timestamp LBR_LatePaymentPenaltyDate);

	/** Get Late Payment Penaulty Date	  */
	public Timestamp getLBR_LatePaymentPenaltyDate();

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

    /** Column name LBR_OtherExpensesAmt */
    public static final String COLUMNNAME_LBR_OtherExpensesAmt = "LBR_OtherExpensesAmt";

	/** Set Other Expenses Amount.
	  * Amount for other expenses
	  */
	public void setLBR_OtherExpensesAmt (BigDecimal LBR_OtherExpensesAmt);

	/** Get Other Expenses Amount.
	  * Amount for other expenses
	  */
	public BigDecimal getLBR_OtherExpensesAmt();

    /** Column name LBR_OtherIncomesAmt */
    public static final String COLUMNNAME_LBR_OtherIncomesAmt = "LBR_OtherIncomesAmt";

	/** Set Other Incomes Amount.
	  * Amount for other incomes
	  */
	public void setLBR_OtherIncomesAmt (BigDecimal LBR_OtherIncomesAmt);

	/** Get Other Incomes Amount.
	  * Amount for other incomes
	  */
	public BigDecimal getLBR_OtherIncomesAmt();

    /** Column name PayAmt */
    public static final String COLUMNNAME_PayAmt = "PayAmt";

	/** Set Payment amount.
	  * Amount being paid
	  */
	public void setPayAmt (BigDecimal PayAmt);

	/** Get Payment amount.
	  * Amount being paid
	  */
	public BigDecimal getPayAmt();

    /** Column name SeqNo */
    public static final String COLUMNNAME_SeqNo = "SeqNo";

	/** Set Sequence.
	  * Method of ordering records;
 lowest number comes first
	  */
	public void setSeqNo (int SeqNo);

	/** Get Sequence.
	  * Method of ordering records;
 lowest number comes first
	  */
	public int getSeqNo();

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
