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

/** Generated Interface for LBR_DI_Addition
 *  @author iDempiere (generated) 
 *  @version Release 11
 */
@SuppressWarnings("all")
public interface I_LBR_DI_Addition 
{

    /** TableName=LBR_DI_Addition */
    public static final String Table_Name = "LBR_DI_Addition";

    /** AD_Table_ID=800001 */
    public static final int Table_ID = 800001;

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 1 - Org 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(1);

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

    /** Column name LBR_BP_Exporter_ID */
    public static final String COLUMNNAME_LBR_BP_Exporter_ID = "LBR_BP_Exporter_ID";

	/** Set Business Partner (Exporter).
	  * Identifies a Business Partner
	  */
	public void setLBR_BP_Exporter_ID (int LBR_BP_Exporter_ID);

	/** Get Business Partner (Exporter).
	  * Identifies a Business Partner
	  */
	public int getLBR_BP_Exporter_ID();

	public org.compiere.model.I_C_BPartner getLBR_BP_Exporter() throws RuntimeException;

    /** Column name LBR_BP_Manufacturer_ID */
    public static final String COLUMNNAME_LBR_BP_Manufacturer_ID = "LBR_BP_Manufacturer_ID";

	/** Set Business Partner (Manufacturer).
	  * Identifies a Business Partner
	  */
	public void setLBR_BP_Manufacturer_ID (int LBR_BP_Manufacturer_ID);

	/** Get Business Partner (Manufacturer).
	  * Identifies a Business Partner
	  */
	public int getLBR_BP_Manufacturer_ID();

	public org.compiere.model.I_C_BPartner getLBR_BP_Manufacturer() throws RuntimeException;

    /** Column name LBR_DI_Addition_ID */
    public static final String COLUMNNAME_LBR_DI_Addition_ID = "LBR_DI_Addition_ID";

	/** Set Import Declaration (DI) Addition.
	  * Identifies an Import Declaration (DI) Addiction
	  */
	public void setLBR_DI_Addition_ID (int LBR_DI_Addition_ID);

	/** Get Import Declaration (DI) Addition.
	  * Identifies an Import Declaration (DI) Addiction
	  */
	public int getLBR_DI_Addition_ID();

    /** Column name LBR_DI_Addition_UU */
    public static final String COLUMNNAME_LBR_DI_Addition_UU = "LBR_DI_Addition_UU";

	/** Set Import Declaration (DI) Addition.
	  * Identifies an Import Declaration (DI) Addiction
	  */
	public void setLBR_DI_Addition_UU (String LBR_DI_Addition_UU);

	/** Get Import Declaration (DI) Addition.
	  * Identifies an Import Declaration (DI) Addiction
	  */
	public String getLBR_DI_Addition_UU();

    /** Column name LBR_DI_ID */
    public static final String COLUMNNAME_LBR_DI_ID = "LBR_DI_ID";

	/** Set Import Declaration (DI).
	  * Identifies an Import Declaration (DI)
	  */
	public void setLBR_DI_ID (int LBR_DI_ID);

	/** Get Import Declaration (DI).
	  * Identifies an Import Declaration (DI)
	  */
	public int getLBR_DI_ID();

	public I_LBR_DI getLBR_DI() throws RuntimeException;

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
}
