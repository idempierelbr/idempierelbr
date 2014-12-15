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

/** Generated Interface for LBR_BankAccount_Convenio
 *  @author iDempiere (generated) 
 *  @version Release 2.1
 */
@SuppressWarnings("all")
public interface I_LBR_BankAccount_Convenio 
{

    /** TableName=LBR_BankAccount_Convenio */
    public static final String Table_Name = "LBR_BankAccount_Convenio";

    /** AD_Table_ID=1000050 */
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

    /** Column name LBR_BankAccount_Convenio_ID */
    public static final String COLUMNNAME_LBR_BankAccount_Convenio_ID = "LBR_BankAccount_Convenio_ID";

	/** Set Bank Account Convênio	  */
	public void setLBR_BankAccount_Convenio_ID (int LBR_BankAccount_Convenio_ID);

	/** Get Bank Account Convênio	  */
	public int getLBR_BankAccount_Convenio_ID();

    /** Column name LBR_BankAccount_Convenio_UU */
    public static final String COLUMNNAME_LBR_BankAccount_Convenio_UU = "LBR_BankAccount_Convenio_UU";

	/** Set Bank Account Convênio	  */
	public void setLBR_BankAccount_Convenio_UU (String LBR_BankAccount_Convenio_UU);

	/** Get Bank Account Convênio	  */
	public String getLBR_BankAccount_Convenio_UU();

    /** Column name LBR_ConvenioNo */
    public static final String COLUMNNAME_LBR_ConvenioNo = "LBR_ConvenioNo";

	/** Set Convênio No.	  */
	public void setLBR_ConvenioNo (String LBR_ConvenioNo);

	/** Get Convênio No.	  */
	public String getLBR_ConvenioNo();

    /** Column name LBR_SeqCNAB240File_ID */
    public static final String COLUMNNAME_LBR_SeqCNAB240File_ID = "LBR_SeqCNAB240File_ID";

	/** Set Sequence for File (CNAB).
	  * Sequence for File (CNAB)
	  */
	public void setLBR_SeqCNAB240File_ID (int LBR_SeqCNAB240File_ID);

	/** Get Sequence for File (CNAB).
	  * Sequence for File (CNAB)
	  */
	public int getLBR_SeqCNAB240File_ID();

	public org.compiere.model.I_AD_Sequence getLBR_SeqCNAB240File() throws RuntimeException;

    /** Column name LBR_SeqCNAB240Lot_ID */
    public static final String COLUMNNAME_LBR_SeqCNAB240Lot_ID = "LBR_SeqCNAB240Lot_ID";

	/** Set Sequence for Lot (CNAB).
	  * Sequence for Lot (CNAB)
	  */
	public void setLBR_SeqCNAB240Lot_ID (int LBR_SeqCNAB240Lot_ID);

	/** Get Sequence for Lot (CNAB).
	  * Sequence for Lot (CNAB)
	  */
	public int getLBR_SeqCNAB240Lot_ID();

	public org.compiere.model.I_AD_Sequence getLBR_SeqCNAB240Lot() throws RuntimeException;

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
