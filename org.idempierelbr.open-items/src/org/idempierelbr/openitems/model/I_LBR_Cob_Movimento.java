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

/** Generated Interface for LBR_Cob_Movimento
 *  @author iDempiere (generated) 
 *  @version Release 2.0
 */
@SuppressWarnings("all")
public interface I_LBR_Cob_Movimento 
{

    /** TableName=LBR_Cob_Movimento */
    public static final String Table_Name = "LBR_Cob_Movimento";

    /** AD_Table_ID=1000058 */
    public static final int Table_ID = MTable.getTable_ID(Table_Name);

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 6 - System - Client 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(6);

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

    /** Column name LBR_Cob_GO_ID */
    public static final String COLUMNNAME_LBR_Cob_GO_ID = "LBR_Cob_GO_ID";

	/** Set Collection Occurrences Group	  */
	public void setLBR_Cob_GO_ID (int LBR_Cob_GO_ID);

	/** Get Collection Occurrences Group	  */
	public int getLBR_Cob_GO_ID();

	public I_LBR_Cob_GO getLBR_Cob_GO() throws RuntimeException;

    /** Column name LBR_Cob_Movimento_ID */
    public static final String COLUMNNAME_LBR_Cob_Movimento_ID = "LBR_Cob_Movimento_ID";

	/** Set Collection Movement	  */
	public void setLBR_Cob_Movimento_ID (int LBR_Cob_Movimento_ID);

	/** Get Collection Movement	  */
	public int getLBR_Cob_Movimento_ID();

    /** Column name LBR_Cob_Movimento_UU */
    public static final String COLUMNNAME_LBR_Cob_Movimento_UU = "LBR_Cob_Movimento_UU";

	/** Set Collection Movement	  */
	public void setLBR_Cob_Movimento_UU (String LBR_Cob_Movimento_UU);

	/** Get Collection Movement	  */
	public String getLBR_Cob_Movimento_UU();

    /** Column name LBR_ParentCob_Movimento_ID */
    public static final String COLUMNNAME_LBR_ParentCob_Movimento_ID = "LBR_ParentCob_Movimento_ID";

	/** Set Parent Collection Movement	  */
	public void setLBR_ParentCob_Movimento_ID (int LBR_ParentCob_Movimento_ID);

	/** Get Parent Collection Movement	  */
	public int getLBR_ParentCob_Movimento_ID();

	public I_LBR_Cob_Movimento getLBR_ParentCob_Movimento() throws RuntimeException;

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

    /** Column name Value */
    public static final String COLUMNNAME_Value = "Value";

	/** Set Search Key.
	  * Search key for the record in the format required - must be unique
	  */
	public void setValue (String Value);

	/** Get Search Key.
	  * Search key for the record in the format required - must be unique
	  */
	public String getValue();
}
