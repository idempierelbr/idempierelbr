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

/** Generated Interface for LBR_CNAB
 *  @author iDempiere (generated) 
 *  @version Release 11
 */
@SuppressWarnings("all")
public interface I_LBR_CNAB 
{

    /** TableName=LBR_CNAB */
    public static final String Table_Name = "LBR_CNAB";

    /** AD_Table_ID=800012 */
    public static final int Table_ID = 800012;

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

    /** Column name LBR_CNAB_ID */
    public static final String COLUMNNAME_LBR_CNAB_ID = "LBR_CNAB_ID";

	/** Set CNAB Files	  */
	public void setLBR_CNAB_ID (int LBR_CNAB_ID);

	/** Get CNAB Files	  */
	public int getLBR_CNAB_ID();

    /** Column name LBR_CNAB_UU */
    public static final String COLUMNNAME_LBR_CNAB_UU = "LBR_CNAB_UU";

	/** Set LBR_CNAB_UU	  */
	public void setLBR_CNAB_UU (String LBR_CNAB_UU);

	/** Get LBR_CNAB_UU	  */
	public String getLBR_CNAB_UU();

    /** Column name LBR_FileGeneratingDate */
    public static final String COLUMNNAME_LBR_FileGeneratingDate = "LBR_FileGeneratingDate";

	/** Set File Generating Date	  */
	public void setLBR_FileGeneratingDate (Timestamp LBR_FileGeneratingDate);

	/** Get File Generating Date	  */
	public Timestamp getLBR_FileGeneratingDate();

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
