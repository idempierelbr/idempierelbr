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

/** Generated Interface for LBR_Collection_Default
 *  @author iDempiere (generated) 
 *  @version Release 11
 */
@SuppressWarnings("all")
public interface I_LBR_Collection_Default 
{

    /** TableName=LBR_Collection_Default */
    public static final String Table_Name = "LBR_Collection_Default";

    /** AD_Table_ID=1000052 */
    public static final int Table_ID = MTable.getTable_ID(Table_Name);

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 3 - Client - Org 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(3);

    /** Load Meta Data */

    /** Column name AD_Client_ID */
    public static final String COLUMNNAME_AD_Client_ID = "AD_Client_ID";

	/** Get Tenant.
	  * Tenant for this installation.
	  */
	public int getAD_Client_ID();

    /** Column name AD_Org_ID */
    public static final String COLUMNNAME_AD_Org_ID = "AD_Org_ID";

	/** Set Organization.
	  * Organizational entity within tenant
	  */
	public void setAD_Org_ID (int AD_Org_ID);

	/** Get Organization.
	  * Organizational entity within tenant
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

    /** Column name LBR_Accepted */
    public static final String COLUMNNAME_LBR_Accepted = "LBR_Accepted";

	/** Set Accepted	  */
	public void setLBR_Accepted (String LBR_Accepted);

	/** Get Accepted	  */
	public String getLBR_Accepted();

    /** Column name LBR_CNAB240DocType */
    public static final String COLUMNNAME_LBR_CNAB240DocType = "LBR_CNAB240DocType";

	/** Set Febraban Document Type	  */
	public void setLBR_CNAB240DocType (String LBR_CNAB240DocType);

	/** Get Febraban Document Type	  */
	public String getLBR_CNAB240DocType();

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

    /** Column name LBR_CollectionType */
    public static final String COLUMNNAME_LBR_CollectionType = "LBR_CollectionType";

	/** Set Collection Type	  */
	public void setLBR_CollectionType (String LBR_CollectionType);

	/** Get Collection Type	  */
	public String getLBR_CollectionType();

    /** Column name LBR_Collection_Default_ID */
    public static final String COLUMNNAME_LBR_Collection_Default_ID = "LBR_Collection_Default_ID";

	/** Set Bank Collection Defaults	  */
	public void setLBR_Collection_Default_ID (int LBR_Collection_Default_ID);

	/** Get Bank Collection Defaults	  */
	public int getLBR_Collection_Default_ID();

    /** Column name LBR_Collection_Default_UU */
    public static final String COLUMNNAME_LBR_Collection_Default_UU = "LBR_Collection_Default_UU";

	/** Set Bank Collection Defaults	  */
	public void setLBR_Collection_Default_UU (String LBR_Collection_Default_UU);

	/** Get Bank Collection Defaults	  */
	public String getLBR_Collection_Default_UU();

    /** Column name LBR_DirectDebitNotice */
    public static final String COLUMNNAME_LBR_DirectDebitNotice = "LBR_DirectDebitNotice";

	/** Set Direct Debit Notice	  */
	public void setLBR_DirectDebitNotice (String LBR_DirectDebitNotice);

	/** Get Direct Debit Notice	  */
	public String getLBR_DirectDebitNotice();

    /** Column name LBR_InterestAP */
    public static final String COLUMNNAME_LBR_InterestAP = "LBR_InterestAP";

	/** Set Interest Amount/Percentage	  */
	public void setLBR_InterestAP (BigDecimal LBR_InterestAP);

	/** Get Interest Amount/Percentage	  */
	public BigDecimal getLBR_InterestAP();

    /** Column name LBR_InterestCharge_ID */
    public static final String COLUMNNAME_LBR_InterestCharge_ID = "LBR_InterestCharge_ID";

	/** Set Interest Charge.
	  * Charge to allocate interests
	  */
	public void setLBR_InterestCharge_ID (int LBR_InterestCharge_ID);

	/** Get Interest Charge.
	  * Charge to allocate interests
	  */
	public int getLBR_InterestCharge_ID();

	public org.compiere.model.I_C_Charge getLBR_InterestCharge() throws RuntimeException;

    /** Column name LBR_InterestCode */
    public static final String COLUMNNAME_LBR_InterestCode = "LBR_InterestCode";

	/** Set Late Payment Interest Code	  */
	public void setLBR_InterestCode (String LBR_InterestCode);

	/** Get Late Payment Interest Code	  */
	public String getLBR_InterestCode();

    /** Column name LBR_InterestDays */
    public static final String COLUMNNAME_LBR_InterestDays = "LBR_InterestDays";

	/** Set Interest Days	  */
	public void setLBR_InterestDays (int LBR_InterestDays);

	/** Get Interest Days	  */
	public int getLBR_InterestDays();

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

    /** Column name LBR_LatePaymentPenaltyDays */
    public static final String COLUMNNAME_LBR_LatePaymentPenaltyDays = "LBR_LatePaymentPenaltyDays";

	/** Set Late Payment Penaulty Days	  */
	public void setLBR_LatePaymentPenaltyDays (int LBR_LatePaymentPenaltyDays);

	/** Get Late Payment Penaulty Days	  */
	public int getLBR_LatePaymentPenaltyDays();

    /** Column name LBR_Message1 */
    public static final String COLUMNNAME_LBR_Message1 = "LBR_Message1";

	/** Set Message 1	  */
	public void setLBR_Message1 (String LBR_Message1);

	/** Get Message 1	  */
	public String getLBR_Message1();

    /** Column name LBR_Message2 */
    public static final String COLUMNNAME_LBR_Message2 = "LBR_Message2";

	/** Set Message 2	  */
	public void setLBR_Message2 (String LBR_Message2);

	/** Get Message 2	  */
	public String getLBR_Message2();

    /** Column name LBR_PartialPayment */
    public static final String COLUMNNAME_LBR_PartialPayment = "LBR_PartialPayment";

	/** Set Authorize Partial Payment	  */
	public void setLBR_PartialPayment (String LBR_PartialPayment);

	/** Get Authorize Partial Payment	  */
	public String getLBR_PartialPayment();

    /** Column name LBR_PaymentAllocationPriority */
    public static final String COLUMNNAME_LBR_PaymentAllocationPriority = "LBR_PaymentAllocationPriority";

	/** Set Payment Allocation Priority	  */
	public void setLBR_PaymentAllocationPriority (String LBR_PaymentAllocationPriority);

	/** Get Payment Allocation Priority	  */
	public String getLBR_PaymentAllocationPriority();

    /** Column name LBR_PenaltyCharge_ID */
    public static final String COLUMNNAME_LBR_PenaltyCharge_ID = "LBR_PenaltyCharge_ID";

	/** Set Penalty Charge.
	  * Charge to allocate penalty payments
	  */
	public void setLBR_PenaltyCharge_ID (int LBR_PenaltyCharge_ID);

	/** Get Penalty Charge.
	  * Charge to allocate penalty payments
	  */
	public int getLBR_PenaltyCharge_ID();

	public org.compiere.model.I_C_Charge getLBR_PenaltyCharge() throws RuntimeException;

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

    /** Column name Name */
    public static final String COLUMNNAME_Name = "Name";

	/** Set Name.
	  * Alphanumeric identifier of the entity
	  */
	public void setName (String Name);

	/** Get Name.
	  * Alphanumeric identifier of the entity
	  */
	public String getName();

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
