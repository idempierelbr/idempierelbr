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
package org.idempierelbr.base.model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Interface for LBR_BoletoDetails
 *  @author iDempiere (generated) 
 *  @version Release 2.0
 */
@SuppressWarnings("all")
public interface I_LBR_BoletoDetails 
{

    /** TableName=LBR_BoletoDetails */
    public static final String Table_Name = "LBR_BoletoDetails";

    /** AD_Table_ID=1000054 */
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

    /** Column name LBR_BoletoDetails_ID */
    public static final String COLUMNNAME_LBR_BoletoDetails_ID = "LBR_BoletoDetails_ID";

	/** Set Boleto Details.
	  * Brazilian Bank Collection (Boleto) Details
	  */
	public void setLBR_BoletoDetails_ID (int LBR_BoletoDetails_ID);

	/** Get Boleto Details.
	  * Brazilian Bank Collection (Boleto) Details
	  */
	public int getLBR_BoletoDetails_ID();

    /** Column name LBR_BoletoDetails_UU */
    public static final String COLUMNNAME_LBR_BoletoDetails_UU = "LBR_BoletoDetails_UU";

	/** Set Boleto Details.
	  * Brazilian Bank Collection (Boleto) Details
	  */
	public void setLBR_BoletoDetails_UU (String LBR_BoletoDetails_UU);

	/** Get Boleto Details.
	  * Brazilian Bank Collection (Boleto) Details
	  */
	public String getLBR_BoletoDetails_UU();

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

    /** Column name LBR_CollectionReturnCode */
    public static final String COLUMNNAME_LBR_CollectionReturnCode = "LBR_CollectionReturnCode";

	/** Set Collection Return Code	  */
	public void setLBR_CollectionReturnCode (String LBR_CollectionReturnCode);

	/** Get Collection Return Code	  */
	public String getLBR_CollectionReturnCode();

    /** Column name LBR_CollectionReturnDays */
    public static final String COLUMNNAME_LBR_CollectionReturnDays = "LBR_CollectionReturnDays";

	/** Set Collection Return Days	  */
	public void setLBR_CollectionReturnDays (int LBR_CollectionReturnDays);

	/** Get Collection Return Days	  */
	public int getLBR_CollectionReturnDays();

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

    /** Column name LBR_Message5 */
    public static final String COLUMNNAME_LBR_Message5 = "LBR_Message5";

	/** Set Message 5	  */
	public void setLBR_Message5 (String LBR_Message5);

	/** Get Message 5	  */
	public String getLBR_Message5();

    /** Column name LBR_Message6 */
    public static final String COLUMNNAME_LBR_Message6 = "LBR_Message6";

	/** Set Message 6	  */
	public void setLBR_Message6 (String LBR_Message6);

	/** Get Message 6	  */
	public String getLBR_Message6();

    /** Column name LBR_Message7 */
    public static final String COLUMNNAME_LBR_Message7 = "LBR_Message7";

	/** Set Message 7	  */
	public void setLBR_Message7 (String LBR_Message7);

	/** Get Message 7	  */
	public String getLBR_Message7();

    /** Column name LBR_Message8 */
    public static final String COLUMNNAME_LBR_Message8 = "LBR_Message8";

	/** Set Message 8	  */
	public void setLBR_Message8 (String LBR_Message8);

	/** Get Message 8	  */
	public String getLBR_Message8();

    /** Column name LBR_Message9 */
    public static final String COLUMNNAME_LBR_Message9 = "LBR_Message9";

	/** Set Message 9	  */
	public void setLBR_Message9 (String LBR_Message9);

	/** Get Message 9	  */
	public String getLBR_Message9();

    /** Column name LBR_ProtestCode */
    public static final String COLUMNNAME_LBR_ProtestCode = "LBR_ProtestCode";

	/** Set Protest Code.
	  * Protest Code
	  */
	public void setLBR_ProtestCode (String LBR_ProtestCode);

	/** Get Protest Code.
	  * Protest Code
	  */
	public String getLBR_ProtestCode();

    /** Column name LBR_ProtestDays */
    public static final String COLUMNNAME_LBR_ProtestDays = "LBR_ProtestDays";

	/** Set Protest Days.
	  * Protest Days
	  */
	public void setLBR_ProtestDays (int LBR_ProtestDays);

	/** Get Protest Days.
	  * Protest Days
	  */
	public int getLBR_ProtestDays();

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
