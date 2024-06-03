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

/** Generated Interface for LBR_BankAccount_Carteira
 *  @author iDempiere (generated) 
 *  @version Release 11
 */
@SuppressWarnings("all")
public interface I_LBR_BankAccount_Carteira 
{

    /** TableName=LBR_BankAccount_Carteira */
    public static final String Table_Name = "LBR_BankAccount_Carteira";

    /** AD_Table_ID=1000051 */
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

    /** Column name IsDefault */
    public static final String COLUMNNAME_IsDefault = "IsDefault";

	/** Set Default.
	  * Default value
	  */
	public void setIsDefault (boolean IsDefault);

	/** Get Default.
	  * Default value
	  */
	public boolean isDefault();

    /** Column name LBR_BankAccount_Carteira_ID */
    public static final String COLUMNNAME_LBR_BankAccount_Carteira_ID = "LBR_BankAccount_Carteira_ID";

	/** Set Bank Account Carteira	  */
	public void setLBR_BankAccount_Carteira_ID (int LBR_BankAccount_Carteira_ID);

	/** Get Bank Account Carteira	  */
	public int getLBR_BankAccount_Carteira_ID();

    /** Column name LBR_BankAccount_Carteira_UU */
    public static final String COLUMNNAME_LBR_BankAccount_Carteira_UU = "LBR_BankAccount_Carteira_UU";

	/** Set Bank Account Carteira	  */
	public void setLBR_BankAccount_Carteira_UU (String LBR_BankAccount_Carteira_UU);

	/** Get Bank Account Carteira	  */
	public String getLBR_BankAccount_Carteira_UU();

    /** Column name LBR_BankAccount_Convenio_ID */
    public static final String COLUMNNAME_LBR_BankAccount_Convenio_ID = "LBR_BankAccount_Convenio_ID";

	/** Set Bank Account Convênio	  */
	public void setLBR_BankAccount_Convenio_ID (int LBR_BankAccount_Convenio_ID);

	/** Get Bank Account Convênio	  */
	public int getLBR_BankAccount_Convenio_ID();

	public I_LBR_BankAccount_Convenio getLBR_BankAccount_Convenio() throws RuntimeException;

    /** Column name LBR_CarteiraCode */
    public static final String COLUMNNAME_LBR_CarteiraCode = "LBR_CarteiraCode";

	/** Set Carteira Code	  */
	public void setLBR_CarteiraCode (String LBR_CarteiraCode);

	/** Get Carteira Code	  */
	public String getLBR_CarteiraCode();

    /** Column name LBR_CarteiraNo */
    public static final String COLUMNNAME_LBR_CarteiraNo = "LBR_CarteiraNo";

	/** Set Carteira No.	  */
	public void setLBR_CarteiraNo (String LBR_CarteiraNo);

	/** Get Carteira No.	  */
	public String getLBR_CarteiraNo();

    /** Column name LBR_CarteiraType */
    public static final String COLUMNNAME_LBR_CarteiraType = "LBR_CarteiraType";

	/** Set Bank Account Carteira Type	  */
	public void setLBR_CarteiraType (String LBR_CarteiraType);

	/** Get Bank Account Carteira Type	  */
	public String getLBR_CarteiraType();

    /** Column name LBR_SeqNumberInBank_ID */
    public static final String COLUMNNAME_LBR_SeqNumberInBank_ID = "LBR_SeqNumberInBank_ID";

	/** Set Sequence for Number in Bank.
	  * Sequence for Number in Bank
	  */
	public void setLBR_SeqNumberInBank_ID (int LBR_SeqNumberInBank_ID);

	/** Get Sequence for Number in Bank.
	  * Sequence for Number in Bank
	  */
	public int getLBR_SeqNumberInBank_ID();

	public org.compiere.model.I_AD_Sequence getLBR_SeqNumberInBank() throws RuntimeException;

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
