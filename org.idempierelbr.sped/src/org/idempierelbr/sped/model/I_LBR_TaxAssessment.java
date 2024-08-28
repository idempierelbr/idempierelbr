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
package org.idempierelbr.sped.model;

import java.math.BigDecimal;
import java.sql.Timestamp;

import org.compiere.model.*;
import org.compiere.util.KeyNamePair;
import org.idempierelbr.base.model.I_LBR_TaxName;

/** Generated Interface for LBR_TaxAssessment
 *  @author iDempiere (generated) 
 *  @version Release 2.1
 */
@SuppressWarnings("all")
public interface I_LBR_TaxAssessment 
{

    /** TableName=LBR_TaxAssessment */
    public static final String Table_Name = "LBR_TaxAssessment";

    /** AD_Table_ID=1000065 */
    public static final int Table_ID = MTable.getTable_ID(Table_Name);

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

    /** Column name AmtSourceCr */
    public static final String COLUMNNAME_AmtSourceCr = "AmtSourceCr";


    /** Column name C_Period_ID */
    public static final String COLUMNNAME_C_Period_ID = "C_Period_ID";

	/** Set Period.
	  * Period of the Calendar
	  */
	public void setC_Period_ID (int C_Period_ID);

	/** Get Period.
	  * Period of the Calendar
	  */
	public int getC_Period_ID();

	public org.compiere.model.I_C_Period getC_Period() throws RuntimeException;

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

    /** Column name CumulatedAmt */
    public static final String COLUMNNAME_CumulatedAmt = "CumulatedAmt";

	/** Set Accumulated Amt.
	  * Total Amount
	  */
	public void setCumulatedAmt (BigDecimal CumulatedAmt);

	/** Get Accumulated Amt.
	  * Total Amount
	  */
	public BigDecimal getCumulatedAmt();

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

    /** Column name LBR_Cod_OR */
    public static final String COLUMNNAME_LBR_Cod_OR = "LBR_Cod_OR";

	/** Set Obligation Code	  */
	public void setLBR_Cod_OR (String LBR_Cod_OR);

	/** Get Obligation Code	  */
	public String getLBR_Cod_OR();

    /** Column name LBR_Cod_Rec */
    public static final String COLUMNNAME_LBR_Cod_Rec = "LBR_Cod_Rec";

	/** Set Revenue Code.
	  * Revenue Code specific to state of the federation
	  */
	public void setLBR_Cod_Rec (String LBR_Cod_Rec);

	/** Get Revenue Code.
	  * Revenue Code specific to state of the federation
	  */
	public String getLBR_Cod_Rec();

    /** Column name LBR_Ind_Proc */
    public static final String COLUMNNAME_LBR_Ind_Proc = "LBR_Ind_Proc";

	/** Set Process' Origin Code	  */
	public void setLBR_Ind_Proc (String LBR_Ind_Proc);

	/** Get Process' Origin Code	  */
	public String getLBR_Ind_Proc();

    /** Column name LBR_Num_Proc */
    public static final String COLUMNNAME_LBR_Num_Proc = "LBR_Num_Proc";

	/** Set Process Number.
	  * Process Number or infraction notice
	  */
	public void setLBR_Num_Proc (String LBR_Num_Proc);

	/** Get Process Number.
	  * Process Number or infraction notice
	  */
	public String getLBR_Num_Proc();


    /** Column name LBR_Proc */
    public static final String COLUMNNAME_LBR_Proc = "LBR_Proc";

	/** Set Process Description.
	  * Short description of the process of this record
	  */
	public void setLBR_Proc (String LBR_Proc);

	/** Get Process Description.
	  * Short description of the process of this record
	  */
	public String getLBR_Proc();

    /** Column name LBR_SaldoCredorTransportar */
    public static final String COLUMNNAME_LBR_SaldoCredorTransportar = "LBR_SaldoCredorTransportar";

	/** Set Saldo Credor a Transportar	  */
	public void setLBR_SaldoCredorTransportar (BigDecimal LBR_SaldoCredorTransportar);

	/** Get Saldo Credor a Transportar	  */
	public BigDecimal getLBR_SaldoCredorTransportar();

    /** Column name LBR_TaxAssessment_ID */
    public static final String COLUMNNAME_LBR_TaxAssessment_ID = "LBR_TaxAssessment_ID";

	/** Set Tax Assessment	  */
	public void setLBR_TaxAssessment_ID (int LBR_TaxAssessment_ID);

	/** Get Tax Assessment	  */
	public int getLBR_TaxAssessment_ID();

    /** Column name LBR_TaxName_ID */
    public static final String COLUMNNAME_LBR_TaxName_ID = "LBR_TaxName_ID";

	/** Set Tax Name.
	  * Primary key table LBR_TaxName
	  */
	public void setLBR_TaxName_ID (int LBR_TaxName_ID);

	/** Get Tax Name.
	  * Primary key table LBR_TaxName
	  */
	public int getLBR_TaxName_ID();

	public I_LBR_TaxName getLBR_TaxName() throws RuntimeException;

    /** Column name LBR_Txt_Compl */
    public static final String COLUMNNAME_LBR_Txt_Compl = "LBR_Txt_Compl";

	/** Set Complementary Description.
	  * Complementary description of the obligation
	  */
	public void setLBR_Txt_Compl (String LBR_Txt_Compl);

	/** Get Complementary Description.
	  * Complementary description of the obligation
	  */
	public String getLBR_Txt_Compl();

    /** Column name LBR_VL_OR */
    public static final String COLUMNNAME_LBR_VL_OR = "LBR_VL_OR";

	/** Set Obligation Value	  */
	public void setLBR_VL_OR (BigDecimal LBR_VL_OR);

	/** Get Obligation Value	  */
	public BigDecimal getLBR_VL_OR();

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

    /** Column name Processing */
    public static final String COLUMNNAME_Processing = "Processing";

	/** Set Process Now	  */
	public void setProcessing (boolean Processing);

	/** Get Process Now	  */
	public boolean isProcessing();

    /** Column name TotalAmt */
    public static final String COLUMNNAME_TotalAmt = "TotalAmt";

	/** Set Total Amount.
	  * Total Amount
	  */
	public void setTotalAmt (BigDecimal TotalAmt);

	/** Get Total Amount.
	  * Total Amount
	  */
	public BigDecimal getTotalAmt();

    /** Column name TotalCr */
    public static final String COLUMNNAME_TotalCr = "TotalCr";

	/** Set Total Credit.
	  * Total Credit in document currency
	  */
	public void setTotalCr (BigDecimal TotalCr);

	/** Get Total Credit.
	  * Total Credit in document currency
	  */
	public BigDecimal getTotalCr();

    /** Column name TotalDr */
    public static final String COLUMNNAME_TotalDr = "TotalDr";

	/** Set Total Debit.
	  * Total debit in document currency
	  */
	public void setTotalDr (BigDecimal TotalDr);

	/** Get Total Debit.
	  * Total debit in document currency
	  */
	public BigDecimal getTotalDr();

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
